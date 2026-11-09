source_filename = "compiler_parse-3.quick.ll"
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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/parse:Oracle" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/parse:Parser" = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1, i1, i64, i1, i1, i64, i1, i64, i1, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/parse:stackMarks" = type { i64, i64, i64, i64, i64, i64, i64 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/ast:If" = type { ptr, ptr, ptr }
define dso_local ptr @compiler_2fparse_2eGenericFnNames(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l23 = alloca i64
  %l41 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l68 = alloca i64
  %l69 = alloca i64
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/scan:Tokens", ptr %a1, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = sub i64 %t12, 2
  store i64 %t14, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb7
bb4:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l23, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l23, !tbaa !24
  store i64 %t42, ptr %l20, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l20, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  br label %bb29
bb10:
  br label %bb11
bb11:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l9, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l41, !tbaa !27
  %t63 = load i64, ptr %l9, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr %"compiler/token:Token", ptr %t66, i64 %t63
  %t68 = getelementptr %"compiler/token:Token", ptr %t67, i32 0, i32 0
  %t69 = load i32, ptr %t68, !range !{i32 0, i32 114}
  %t71 = trunc i64 37 to i32
  %t72 = icmp eq i32 %t69, %t71
  br i1 %t72, label %bb12, label %bb13
bb12:
  %t74 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t74, ptr %l46, !tbaa !27
  %t75 = load i64, ptr %l9, !tbaa !24
  %t77 = add i64 %t75, 1
  %t79 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr %"compiler/token:Token", ptr %t80, i64 %t77
  %t82 = getelementptr %"compiler/token:Token", ptr %t81, i32 0, i32 0
  %t83 = load i32, ptr %t82, !range !{i32 0, i32 114}
  %t85 = trunc i64 1 to i32
  %t86 = icmp eq i32 %t83, %t85
  store i1 %t86, ptr %l45, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb14
bb14:
  %t88 = load i1, ptr %l45, !tbaa !21
  br i1 %t88, label %bb15, label %bb16
bb15:
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t89, ptr %l52, !tbaa !27
  %t90 = load i64, ptr %l9, !tbaa !24
  %t92 = add i64 %t90, 2
  %t94 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr %"compiler/token:Token", ptr %t95, i64 %t92
  %t97 = getelementptr %"compiler/token:Token", ptr %t96, i32 0, i32 0
  %t98 = load i32, ptr %t97, !range !{i32 0, i32 114}
  %t100 = trunc i64 97 to i32
  %t101 = icmp eq i32 %t98, %t100
  store i1 %t101, ptr %l51, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb17
bb17:
  %t103 = load i1, ptr %l51, !tbaa !21
  br i1 %t103, label %bb18, label %bb19
bb18:
  %t104 = load ptr, ptr %l2, !tbaa !29
  store ptr %t104, ptr %l57, !tbaa !29
  store { i64, ptr } %a0, ptr %l58, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t106, ptr %l59, !tbaa !27
  %t107 = load i64, ptr %l9, !tbaa !24
  %t109 = add i64 %t107, 1
  %t111 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr %"compiler/token:Token", ptr %t112, i64 %t109
  %t114 = getelementptr %"compiler/token:Token", ptr %t113, i32 0, i32 2
  %t115 = load i32, ptr %t114, !tbaa !23
  %t117 = sext i32 %t115 to i64
  store i64 %t117, ptr %l63, !tbaa !24
  %t118 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t118, ptr %l64, !tbaa !27
  %t119 = load i64, ptr %l9, !tbaa !24
  %t121 = add i64 %t119, 1
  %t123 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr %"compiler/token:Token", ptr %t124, i64 %t121
  %t126 = getelementptr %"compiler/token:Token", ptr %t125, i32 0, i32 3
  %t127 = load i32, ptr %t126, !tbaa !23
  %t129 = sext i32 %t127 to i64
  store i64 %t129, ptr %l68, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  store i64 %t131, ptr %l69, !tbaa !24
  %t132 = load i64, ptr %l63, !tbaa !24
  %t133 = icmp sge i64 %t132, 0
  br i1 %t133, label %bb20, label %bb21
bb19:
  br label %bb27
bb20:
  %t135 = load i64, ptr %l63, !tbaa !24
  %t136 = load i64, ptr %l68, !tbaa !24
  %t137 = icmp sle i64 %t135, %t136
  br i1 %t137, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_d732b4b75ca0d086_f16e80b591ad44e2)
  unreachable
bb22:
  %t139 = load i64, ptr %l68, !tbaa !24
  %t140 = load i64, ptr %l69, !tbaa !24
  %t141 = icmp sle i64 %t139, %t140
  br i1 %t141, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_d732b4b75ca0d086_f16e80b591ad44e2)
  unreachable
bb24:
  %t143 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = load i64, ptr %l63, !tbaa !24
  %t146 = load i64, ptr %l68, !tbaa !24
  %t147 = getelementptr i8, ptr %t144, i64 %t145
  %t148 = sub i64 %t146, %t145
  %t149 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t147, 1
  %t151 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v0, ptr %t151, { i64, ptr } %t150)
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_d732b4b75ca0d086_f16e80b591ad44e2)
  unreachable
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t153 = load i64, ptr %l8, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l8, !tbaa !24
  br label %bb8
bb29:
  %t157 = load ptr, ptr %l2, !tbaa !29
  store ptr %t157, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fparse_2ebuiltinType(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) })
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
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) })
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
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) })
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
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t17, ptr %l11
  br label %bb12
bb12:
  %t18 = load i1, ptr %l11, !tbaa !21
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb13
bb13:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb17
bb15:
  %t20 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t22, ptr %l14
  br label %bb16
bb16:
  %t23 = load i1, ptr %l14, !tbaa !21
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb17
bb17:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb21
bb19:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t25, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t27, ptr %l17
  br label %bb20
bb20:
  %t28 = load i1, ptr %l17, !tbaa !21
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb21
bb21:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb25
bb23:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t32, ptr %l20
  br label %bb24
bb24:
  %t33 = load i1, ptr %l20, !tbaa !21
  store i1 %t33, ptr %l18, !tbaa !21
  br label %bb25
bb25:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb29
bb27:
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t35, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t37, ptr %l23
  br label %bb28
bb28:
  %t38 = load i1, ptr %l23, !tbaa !21
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb29
bb29:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb33
bb31:
  %t40 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t40, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t42, ptr %l26
  br label %bb32
bb32:
  %t43 = load i1, ptr %l26, !tbaa !21
  store i1 %t43, ptr %l24, !tbaa !21
  br label %bb33
bb33:
  %t44 = load i1, ptr %l24, !tbaa !21
  br i1 %t44, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb37
bb35:
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t47, ptr %l29
  br label %bb36
bb36:
  %t48 = load i1, ptr %l29, !tbaa !21
  store i1 %t48, ptr %l27, !tbaa !21
  br label %bb37
bb37:
  %t49 = load i1, ptr %l27, !tbaa !21
  br i1 %t49, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb41
bb39:
  %t50 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t52 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t50, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t52, ptr %l32
  br label %bb40
bb40:
  %t53 = load i1, ptr %l32, !tbaa !21
  store i1 %t53, ptr %l30, !tbaa !21
  br label %bb41
bb41:
  %t54 = load i1, ptr %l30, !tbaa !21
  br i1 %t54, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb45
bb43:
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t55, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t57, ptr %l35
  br label %bb44
bb44:
  %t58 = load i1, ptr %l35, !tbaa !21
  store i1 %t58, ptr %l33, !tbaa !21
  br label %bb45
bb45:
  %t59 = load i1, ptr %l33, !tbaa !21
  br i1 %t59, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb49
bb47:
  %t60 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t62 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t60, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t62, ptr %l38
  br label %bb48
bb48:
  %t63 = load i1, ptr %l38, !tbaa !21
  store i1 %t63, ptr %l36, !tbaa !21
  br label %bb49
bb49:
  %t64 = load i1, ptr %l36, !tbaa !21
  br i1 %t64, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb53
bb51:
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t67 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t65, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t67, ptr %l41
  br label %bb52
bb52:
  %t68 = load i1, ptr %l41, !tbaa !21
  store i1 %t68, ptr %l39, !tbaa !21
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t69 = load i1, ptr %l39, !tbaa !21
  store i1 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i1
  %l7 = alloca ptr
  %l10 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Oracle", ptr %t5, i32 0, i32 0
  store ptr %t7, ptr %l7, !tbaa !29
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v1, ptr %v3, ptr %a1, { i64, ptr } %t9)
  store i32 %t12, ptr %l10
  br label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/parse:Oracle", ptr %t13, i32 0, i32 1
  store ptr %t15, ptr %l12, !tbaa !29
  %t16 = ptrtoint ptr %v0 to i64
  store i64 %t16, ptr %l13, !tbaa !24
  %t17 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t17, label %bb6, label %bb7
bb4:
  %t19 = load ptr, ptr %l7, !tbaa !29
  %t20 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %t19, i32 %t20, i1 true)
  br label %bb5
bb5:
  br label %bb9
bb6:
  %t21 = call ptr @__olang_region_make(ptr %v0)
  %t22 = ptrtoint ptr %t21 to i64
  store i64 %t22, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t23, 1
  %t27 = extractvalue { i64, ptr } %t23, 0
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = extractvalue { i64, ptr } %t24, 1
  %t33 = extractvalue { i64, ptr } %t24, 0
  %t34 = add i64 %t30, %t33
  %t35 = load i64, ptr %l13
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = call ptr @__olang_scope_alloc(ptr %t36, i64 %t34)
  call void @olang_textcopy(ptr %t37, ptr %t26, i64 %t27)
  %t38 = getelementptr i8, ptr %t37, i64 %t27
  call void @olang_textcopy(ptr %t38, ptr %t28, i64 %t29)
  %t39 = getelementptr i8, ptr %t38, i64 %t29
  call void @olang_textcopy(ptr %t39, ptr %t32, i64 %t33)
  %t40 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t37, 1
  %t43 = load i64, ptr %l13
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = extractvalue { i64, ptr } %t41, 0
  %t46 = extractvalue { i64, ptr } %t41, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %t44, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  %t51 = load ptr, ptr %l12, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v0, ptr %t51, { i64, ptr } %t50, i1 true)
  br label %bb8
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAddFn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i1
  %l7 = alloca ptr
  %l10 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Oracle", ptr %t5, i32 0, i32 2
  store ptr %t7, ptr %l7, !tbaa !29
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v1, ptr %v3, ptr %a1, { i64, ptr } %t9)
  store i32 %t12, ptr %l10
  br label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/parse:Oracle", ptr %t13, i32 0, i32 3
  store ptr %t15, ptr %l12, !tbaa !29
  %t16 = ptrtoint ptr %v0 to i64
  store i64 %t16, ptr %l13, !tbaa !24
  %t17 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t17, label %bb6, label %bb7
bb4:
  %t19 = load ptr, ptr %l7, !tbaa !29
  %t20 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %t19, i32 %t20, i1 true)
  br label %bb5
bb5:
  br label %bb9
bb6:
  %t21 = call ptr @__olang_region_make(ptr %v0)
  %t22 = ptrtoint ptr %t21 to i64
  store i64 %t22, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t23, 1
  %t27 = extractvalue { i64, ptr } %t23, 0
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = extractvalue { i64, ptr } %t24, 1
  %t33 = extractvalue { i64, ptr } %t24, 0
  %t34 = add i64 %t30, %t33
  %t35 = load i64, ptr %l13
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = call ptr @__olang_scope_alloc(ptr %t36, i64 %t34)
  call void @olang_textcopy(ptr %t37, ptr %t26, i64 %t27)
  %t38 = getelementptr i8, ptr %t37, i64 %t27
  call void @olang_textcopy(ptr %t38, ptr %t28, i64 %t29)
  %t39 = getelementptr i8, ptr %t38, i64 %t29
  call void @olang_textcopy(ptr %t39, ptr %t32, i64 %t33)
  %t40 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t37, 1
  %t43 = load i64, ptr %l13
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = extractvalue { i64, ptr } %t41, 0
  %t46 = extractvalue { i64, ptr } %t41, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %t44, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  %t51 = load ptr, ptr %l12, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v0, ptr %t51, { i64, ptr } %t50, i1 true)
  br label %bb8
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ePos(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/parse:Parser", ptr %a0, i32 0, i32 6
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca i32
  %l7 = alloca i1
  %l11 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l3
  br label %bb1
bb1:
  store i32 %a1, ptr %l5
  %t7 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %l3, ptr %l5)
  store i1 %t7, ptr %l7
  br label %bb2
bb2:
  %t8 = load i1, ptr %l7, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t12)
  store i32 %t14, ptr %l11
  br label %bb6
bb6:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/token:Token"
  %l14 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l25 = alloca i64
  %l28 = alloca { i64, ptr }
  %l35 = alloca ptr
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 7
  %t4 = load i32, ptr %t3, !range !{i32 0, i32 114}
  %t6 = trunc i64 0 to i32
  %t7 = icmp eq i32 %t4, %t6
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/parse:Parser", ptr %t12, i32 0, i32 7
  %t15 = load i32, ptr %t14, !range !{i32 0, i32 114}
  %t18 = getelementptr %"compiler/parse:Parser", ptr %t11, i32 0, i32 9
  store i32 %t15, ptr %t18
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/parse:Parser", ptr %t19, i32 0, i32 7
  store i32 0, ptr %t22
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/scan:Tokens", ptr %t27, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l14, !tbaa !27
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/parse:Parser", ptr %t31, i32 0, i32 6
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = sub i64 %t34, 1
  %t38 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr %"compiler/token:Token", ptr %t39, i64 %t36
  %t41 = getelementptr %"compiler/token:Token", ptr %t40, i32 0, i32 3
  %t42 = load i32, ptr %t41, !tbaa !23
  %t45 = getelementptr %"compiler/parse:Parser", ptr %t23, i32 0, i32 10
  store i32 %t42, ptr %t45, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/parse:Parser", ptr %t46, i32 0, i32 8
  %t49 = load i32, ptr %t48, !tbaa !23
  store i32 %t49, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l21, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/parse:Parser", ptr %t53, i32 0, i32 6
  %t56 = load i64, ptr %t55, !tbaa !24
  %t59 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %t52, i64 %t56)
  store i64 %t59, ptr %l25
  br label %bb4
bb4:
  %t60 = load i64, ptr %l25, !tbaa !24
  %t61 = load ptr, ptr %l21, !tbaa !29
  %t62 = getelementptr %"compiler/parse:Parser", ptr %t61, i32 0, i32 6
  store i64 %t60, ptr %t62, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/parse:Parser", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/scan:Tokens", ptr %t66, i32 0, i32 0
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l28, !tbaa !27
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/parse:Parser", ptr %t70, i32 0, i32 6
  %t73 = load i64, ptr %t72, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr %"compiler/token:Token", ptr %t76, i64 %t73
  %t78 = load %"compiler/token:Token", ptr %t77
  store %"compiler/token:Token" %t78, ptr %l1
  %t80 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 0
  %t81 = load i32, ptr %t80, !range !{i32 0, i32 114}
  %t83 = trunc i64 0 to i32
  %t84 = icmp eq i32 %t81, %t83
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb5, label %bb6
bb5:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l35, !tbaa !29
  %t89 = load ptr, ptr %l35, !tbaa !29
  %t90 = getelementptr %"compiler/parse:Parser", ptr %t89, i32 0, i32 6
  %t91 = load i64, ptr %t90, !tbaa !24
  %t93 = add i64 %t91, 1
  %t95 = load ptr, ptr %l35, !tbaa !29
  %t96 = getelementptr %"compiler/parse:Parser", ptr %t95, i32 0, i32 6
  store i64 %t93, ptr %t96, !tbaa !24
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t97 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 0
  %t98 = load i32, ptr %t97, !range !{i32 0, i32 114}
  %t100 = trunc i64 8 to i32
  %t101 = icmp eq i32 %t98, %t100
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb8, label %bb9
bb8:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 0
  %t107 = load i32, ptr %t106, !range !{i32 0, i32 114}
  %t110 = getelementptr %"compiler/parse:Parser", ptr %t105, i32 0, i32 9
  store i32 %t107, ptr %t110
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 3
  %t113 = load i32, ptr %t112, !tbaa !23
  %t116 = getelementptr %"compiler/parse:Parser", ptr %t111, i32 0, i32 10
  store i32 %t113, ptr %t116, !tbaa !23
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t117 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 2
  %t118 = load i32, ptr %t117, !tbaa !23
  store i32 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eafter(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i1
  %l28 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/parse:Parser", ptr %t2, i32 0, i32 6
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %t1, i64 %t5)
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i64, ptr %l7, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l8, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/parse:Parser", ptr %t11, i32 0, i32 7
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  %t16 = trunc i64 0 to i32
  %t17 = icmp eq i32 %t14, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  store i64 1, ptr %l13, !tbaa !24
  br label %bb4
bb3:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb4
bb4:
  %t21 = load i64, ptr %l8, !tbaa !24
  %t22 = load i64, ptr %l13, !tbaa !24
  %t23 = sub i64 %t21, %t22
  store i64 %t23, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/parse:Parser", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/scan:Tokens", ptr %t33, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t41 = icmp slt i64 %t29, %t38
  store i1 %t41, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t43 = load i1, ptr %l17, !tbaa !21
  %t44 = xor i1 %t43, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = add i64 %t47, 1
  %t52 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %t46, i64 %t49)
  store i64 %t52, ptr %l28
  br label %bb12
bb12:
  %t53 = load i64, ptr %l28, !tbaa !24
  store i64 %t53, ptr %l2, !tbaa !24
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = sub i64 %t54, 1
  store i64 %t56, ptr %l3, !tbaa !24
  br label %bb13
bb13:
  br label %bb5
bb14:
  %t58 = load i64, ptr %l2, !tbaa !24
  store i64 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eampOperator(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/token:Token"
  %l2 = alloca i32
  %l4 = alloca %"compiler/token:Token"
  %l7 = alloca i1
  %l10 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %a0, i64 1)
  store %"compiler/token:Token" %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load %"compiler/token:Token", ptr %l4
  store %"compiler/token:Token" %t4, ptr %l1
  %t5 = load %"compiler/token:Token", ptr %l1
  %t6 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t9 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t5, i8 %t6)
  store i1 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i1, ptr %l7, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t12 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 0
  %t13 = load i32, ptr %t12, !range !{i32 0, i32 114}
  store i32 %t13, ptr %l2
  %t15 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t17 = trunc i64 1 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  %t20 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t22 = trunc i64 2 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  %t25 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t27 = trunc i64 3 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t30 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t32 = trunc i64 4 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  %t35 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t37 = trunc i64 5 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb30
bb17:
  %t40 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t42 = trunc i64 6 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  %t45 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t47 = trunc i64 7 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  %t50 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t52 = trunc i64 105 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_d53533a33422fcdd_fffad862a9b687e9)
  unreachable
bb30:
  %t55 = load i1, ptr %l10, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eatEnd(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l9 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i32, ptr %l3, !range !{i32 0, i32 114}
  store i32 %t4, ptr %l1
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t7 = trunc i64 8 to i32
  %t8 = icmp eq i32 %t5, %t7
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t12 = trunc i64 113 to i32
  %t13 = icmp eq i32 %t10, %t12
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb6:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 0 to i32
  %t19 = icmp eq i32 %t16, %t18
  store i1 %t19, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t21 = load i1, ptr %l9, !tbaa !21
  br i1 %t21, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/parse:Parser", ptr %t23, i32 0, i32 16
  %t26 = load i1, ptr %t25, !tbaa !21
  br i1 %t26, label %bb11, label %bb12
bb11:
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t30 = trunc i64 109 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb13, label %bb14
bb12:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb19
bb13:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb15
bb14:
  %t33 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t35 = trunc i64 111 to i32
  %t36 = icmp eq i32 %t33, %t35
  store i1 %t36, ptr %l18, !tbaa !21
  br label %bb15
bb15:
  %t38 = load i1, ptr %l18, !tbaa !21
  br i1 %t38, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb18
bb17:
  %t39 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t41 = trunc i64 75 to i32
  %t42 = icmp eq i32 %t39, %t41
  store i1 %t42, ptr %l21, !tbaa !21
  br label %bb18
bb18:
  %t44 = load i1, ptr %l21, !tbaa !21
  store i1 %t44, ptr %l15, !tbaa !21
  br label %bb19
bb19:
  %t45 = load i1, ptr %l15, !tbaa !21
  br i1 %t45, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/parse:Parser", ptr %t47, i32 0, i32 14
  %t50 = load i1, ptr %t49, !tbaa !21
  br i1 %t50, label %bb23, label %bb24
bb23:
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t54 = trunc i64 10 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb25, label %bb26
bb24:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb28
bb25:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb27
bb26:
  %t57 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t59 = trunc i64 12 to i32
  %t60 = icmp eq i32 %t57, %t59
  store i1 %t60, ptr %l30, !tbaa !21
  br label %bb27
bb27:
  %t62 = load i1, ptr %l30, !tbaa !21
  store i1 %t62, ptr %l27, !tbaa !21
  br label %bb28
bb28:
  %t63 = load i1, ptr %l27, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattributed(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l15 = alloca i32
  %l18 = alloca i1
  %l19 = alloca ptr
  %l21 = alloca %"compiler/token:Token"
  %l22 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i32
  %l31 = alloca i1
  %l33 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i32
  %l45 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca i32
  %l50 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca i32
  %l58 = alloca ptr
  %l59 = alloca i1
  %l87 = alloca %"compiler/ast:Func"
  %l91 = alloca ptr
  %l92 = alloca i1
  %l101 = alloca %"compiler/source:Span"
  %l115 = alloca %"compiler/ast:TypeDecl"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t202 = alloca { i64, [8 x i64] }, align 8
  %t273 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrs(ptr %v0, ptr %v1, ptr %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l12
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l11
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t8, ptr %l9, !tbaa !27
  br label %bb3
bb2:
  %t9 = load i32, ptr %l12, !tbaa !23
  %t10 = lshr i32 %t9, 16
  %t11 = and i32 %t9, 65535
  %t12 = icmp eq i32 %t10, 1
  %t13 = select i1 %t12, i32 1, i32 0
  %t14 = icmp eq i32 %t9, 0
  %t15 = shl i32 %t13, 16
  %t16 = or i32 %t15, %t11
  %t17 = select i1 %t14, i32 0, i32 %t16
  call void @__olang_scope_close(ptr %s0)
  %t19 = insertvalue { i32, ptr } zeroinitializer, i32 %t17, 0
  store { i32, ptr } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t20, ptr %l1, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t21)
  store i32 %t23, ptr %l15
  br label %bb4
bb4:
  %t24 = load i32, ptr %l15, !range !{i32 0, i32 114}
  store i32 %t24, ptr %l2
  %t25 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t27 = trunc i64 1 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l19, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t31)
  store %"compiler/token:Token" %t33, ptr %l21
  br label %bb7
bb6:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb7:
  %t34 = load ptr, ptr %l19, !tbaa !29
  %t35 = load %"compiler/token:Token", ptr %l21
  %t36 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t34, %"compiler/token:Token" %t35)
  store { i64, ptr } %t36, ptr %l22
  br label %bb8
bb8:
  %t37 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t38, ptr %l23
  br label %bb9
bb9:
  %t39 = load i1, ptr %l23, !tbaa !21
  store i1 %t39, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l18, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t41, i64 1)
  store i32 %t43, ptr %l26
  br label %bb13
bb12:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb14
bb13:
  %t44 = load i32, ptr %l26, !range !{i32 0, i32 114}
  %t46 = trunc i64 37 to i32
  %t47 = icmp eq i32 %t44, %t46
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l24, !tbaa !21
  store i1 %t49, ptr %l3, !tbaa !21
  %t50 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t52 = trunc i64 37 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb17
bb16:
  %t55 = load i1, ptr %l3, !tbaa !21
  store i1 %t55, ptr %l31, !tbaa !21
  br label %bb17
bb17:
  %t57 = load i1, ptr %l31, !tbaa !21
  br i1 %t57, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb24
bb19:
  %t58 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t60 = trunc i64 33 to i32
  %t61 = icmp eq i32 %t58, %t60
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t63, i64 2)
  store i32 %t65, ptr %l38
  br label %bb22
bb21:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb23
bb22:
  %t66 = load i32, ptr %l38, !range !{i32 0, i32 114}
  %t68 = trunc i64 38 to i32
  %t69 = icmp eq i32 %t66, %t68
  %t71 = xor i1 %t69, true
  store i1 %t71, ptr %l36, !tbaa !21
  br label %bb23
bb23:
  %t73 = load i1, ptr %l36, !tbaa !21
  store i1 %t73, ptr %l33, !tbaa !21
  br label %bb24
bb24:
  %t74 = load i1, ptr %l33, !tbaa !21
  %t75 = xor i1 %t74, true
  br i1 %t75, label %bb25, label %bb26
bb25:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrRefused(ptr %v0, ptr %v1, ptr %t77, { i64, ptr } %t78)
  br label %bb27
bb26:
  br label %bb31
bb27:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edecl(ptr %v0, ptr %v1, ptr %t81)
  %t84 = extractvalue { i32, ptr } %t83, 1
  %t85 = extractvalue { i32, ptr } %t83, 0
  store i32 %t85, ptr %l48
  %t86 = icmp ne i32 %t85, 0
  br i1 %t86, label %bb29, label %ok.87, !prof !99
ok.87:
  store ptr %t84, ptr %l47
  br label %bb28
bb28:
  %t88 = load ptr, ptr %l47, !tbaa !29
  store ptr %t88, ptr %l45, !tbaa !29
  br label %bb30
bb29:
  %t89 = load i32, ptr %l48, !tbaa !23
  %t90 = lshr i32 %t89, 16
  %t91 = and i32 %t89, 65535
  %t92 = icmp eq i32 %t90, 1
  %t93 = select i1 %t92, i32 1, i32 0
  %t94 = icmp eq i32 %t89, 0
  %t95 = shl i32 %t93, 16
  %t96 = or i32 %t95, %t91
  %t97 = select i1 %t94, i32 0, i32 %t96
  call void @__olang_scope_close(ptr %s0)
  %t99 = insertvalue { i32, ptr } zeroinitializer, i32 %t97, 0
  store { i32, ptr } %t99, ptr %rv
  br label %ret
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t100 = load ptr, ptr %l45, !tbaa !29
  %t101 = insertvalue { i32, ptr } zeroinitializer, ptr %t100, 1
  store { i32, ptr } %t101, ptr %rv
  br label %ret
bb31:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edecl(ptr %v0, ptr %v1, ptr %t102)
  %t105 = extractvalue { i32, ptr } %t104, 1
  %t106 = extractvalue { i32, ptr } %t104, 0
  store i32 %t106, ptr %l53
  %t107 = icmp ne i32 %t106, 0
  br i1 %t107, label %bb33, label %ok.108, !prof !99
ok.108:
  store ptr %t105, ptr %l52
  br label %bb32
bb32:
  %t109 = load ptr, ptr %l52, !tbaa !29
  store ptr %t109, ptr %l50, !tbaa !29
  br label %bb34
bb33:
  %t110 = load i32, ptr %l53, !tbaa !23
  %t111 = lshr i32 %t110, 16
  %t112 = and i32 %t110, 65535
  %t113 = icmp eq i32 %t111, 1
  %t114 = select i1 %t113, i32 1, i32 0
  %t115 = icmp eq i32 %t110, 0
  %t116 = shl i32 %t114, 16
  %t117 = or i32 %t116, %t112
  %t118 = select i1 %t115, i32 0, i32 %t117
  call void @__olang_scope_close(ptr %s0)
  %t120 = insertvalue { i32, ptr } zeroinitializer, i32 %t118, 0
  store { i32, ptr } %t120, ptr %rv
  br label %ret
bb34:
  %t121 = load ptr, ptr %l50, !tbaa !29
  store ptr %t121, ptr %l4, !tbaa !29
  %t122 = load ptr, ptr %l4, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  br i1 %t124, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_845ef501c057902a_93bdb530eecf7a06)
  unreachable
bb36:
  br label %bb37
bb37:
  %t126 = load ptr, ptr %l4, !tbaa !29
  store ptr %t126, ptr %l5, !tbaa !29
  %t128 = load ptr, ptr %l5, !tbaa !29
  store ptr %t128, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t129 = load ptr, ptr %l58, !tbaa !29
  %t130 = icmp ne ptr %t129, null
  br i1 %t130, label %bb38, label %bb39
bb38:
  %t132 = load ptr, ptr %l58, !tbaa !29
  %t133 = load i64, ptr %t132, !range !{i64 0, i64 11}
  %t135 = icmp eq i64 %t133, 0
  store i1 %t135, ptr %l59, !tbaa !21
  br label %bb39
bb39:
  %t136 = load i1, ptr %l59, !tbaa !21
  br i1 %t136, label %bb40, label %bb41
bb40:
  %t137 = load ptr, ptr %l5, !tbaa !29
  %t139 = getelementptr { i64, [8 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { ptr }, ptr %t139, i32 0, i32 0
  %t141 = load ptr, ptr %t140
  store ptr %t141, ptr %l6, !tbaa !29
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclareAttrs(ptr %v0, ptr %v1, ptr %t143, { i64, ptr } %t144)
  br label %bb43
bb43:
  %t147 = load ptr, ptr %l6, !tbaa !29
  %t149 = getelementptr %"compiler/ast:Func", ptr %t147, i32 0, i32 0
  %t150 = load %"compiler/source:Span", ptr %t149
  %t151 = load ptr, ptr %l6, !tbaa !29
  %t153 = getelementptr %"compiler/ast:Func", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t155 = load ptr, ptr %l6, !tbaa !29
  %t157 = getelementptr %"compiler/ast:Func", ptr %t155, i32 0, i32 2
  %t158 = load i32, ptr %t157, !tbaa !23
  %t159 = load ptr, ptr %l6, !tbaa !29
  %t161 = getelementptr %"compiler/ast:Func", ptr %t159, i32 0, i32 3
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t163 = load ptr, ptr %l6, !tbaa !29
  %t165 = getelementptr %"compiler/ast:Func", ptr %t163, i32 0, i32 4
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  %t167 = load ptr, ptr %l6, !tbaa !29
  %t169 = getelementptr %"compiler/ast:Func", ptr %t167, i32 0, i32 5
  %t170 = load { i64, ptr }, ptr %t169, !tbaa !27
  %t171 = load ptr, ptr %l6, !tbaa !29
  %t173 = getelementptr %"compiler/ast:Func", ptr %t171, i32 0, i32 6
  %t174 = load i1, ptr %t173, !tbaa !21
  %t175 = load ptr, ptr %l6, !tbaa !29
  %t177 = getelementptr %"compiler/ast:Func", ptr %t175, i32 0, i32 7
  %t178 = load i1, ptr %t177, !tbaa !21
  %t179 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t180 = load ptr, ptr %l6, !tbaa !29
  %t182 = getelementptr %"compiler/ast:Func", ptr %t180, i32 0, i32 9
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t184 = load ptr, ptr %l6, !tbaa !29
  %t186 = getelementptr %"compiler/ast:Func", ptr %t184, i32 0, i32 10
  %t187 = load i32, ptr %t186, !tbaa !23
  %t199 = call %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t150, ptr %t154, i32 %t158, ptr %t162, { i64, ptr } %t166, { i64, ptr } %t170, i1 %t174, i1 %t178, { i64, ptr } %t179, ptr %t183, i32 %t187)
  store %"compiler/ast:Func" %t199, ptr %l87
  br label %bb44
bb44:
  %t200 = load %"compiler/ast:Func", ptr %l87
  %t201 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store %"compiler/ast:Func" %t200, ptr %t201
  store { i64, [8 x i64] } zeroinitializer, ptr %t202
  %t203 = getelementptr { i64, [8 x i64] }, ptr %t202, i32 0, i32 0
  store i64 0, ptr %t203
  %t205 = insertvalue { ptr } undef, ptr %t201, 0
  %t206 = getelementptr { i64, [8 x i64] }, ptr %t202, i32 0, i32 1
  store { ptr } %t205, ptr %t206
  %t207 = load { i64, [8 x i64] }, ptr %t202
  %t209 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t207, ptr %t209
  call void @__olang_scope_close(ptr %s0)
  %t211 = insertvalue { i32, ptr } zeroinitializer, ptr %t209, 1
  store { i32, ptr } %t211, ptr %rv
  br label %ret
bb45:
  %t212 = load ptr, ptr %l5, !tbaa !29
  store ptr %t212, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t213 = load ptr, ptr %l91, !tbaa !29
  %t214 = icmp ne ptr %t213, null
  br i1 %t214, label %bb46, label %bb47
bb46:
  %t216 = load ptr, ptr %l91, !tbaa !29
  %t217 = load i64, ptr %t216, !range !{i64 0, i64 11}
  %t219 = icmp eq i64 %t217, 2
  store i1 %t219, ptr %l92, !tbaa !21
  br label %bb47
bb47:
  %t220 = load i1, ptr %l92, !tbaa !21
  br i1 %t220, label %bb48, label %bb49
bb48:
  %t221 = load ptr, ptr %l5, !tbaa !29
  %t223 = getelementptr { i64, [8 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", ptr }, ptr %t223, i32 0, i32 0
  %t225 = load %"compiler/source:Span", ptr %t224
  store %"compiler/source:Span" %t225, ptr %l7
  %t227 = load ptr, ptr %l5, !tbaa !29
  %t229 = getelementptr { i64, [8 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", ptr }, ptr %t229, i32 0, i32 1
  %t231 = load ptr, ptr %t230
  store ptr %t231, ptr %l8, !tbaa !29
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclareAttrs(ptr %v0, ptr %v1, ptr %t233, { i64, ptr } %t234)
  br label %bb51
bb51:
  %t237 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t237, ptr %l101
  %t238 = load ptr, ptr %l8, !tbaa !29
  %t240 = getelementptr %"compiler/ast:TypeDecl", ptr %t238, i32 0, i32 0
  %t241 = load i32, ptr %t240, !tbaa !23
  %t242 = load ptr, ptr %l8, !tbaa !29
  %t244 = getelementptr %"compiler/ast:TypeDecl", ptr %t242, i32 0, i32 1
  %t245 = load { i64, ptr }, ptr %t244, !tbaa !27
  %t246 = load ptr, ptr %l8, !tbaa !29
  %t248 = getelementptr %"compiler/ast:TypeDecl", ptr %t246, i32 0, i32 2
  %t249 = load i1, ptr %t248, !tbaa !21
  %t250 = load ptr, ptr %l8, !tbaa !29
  %t252 = getelementptr %"compiler/ast:TypeDecl", ptr %t250, i32 0, i32 3
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t254 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t255 = load ptr, ptr %l8, !tbaa !29
  %t257 = getelementptr %"compiler/ast:TypeDecl", ptr %t255, i32 0, i32 5
  %t258 = load i32, ptr %t257, !range !{i32 0, i32 3}
  %t259 = load ptr, ptr %l8, !tbaa !29
  %t261 = getelementptr %"compiler/ast:TypeDecl", ptr %t259, i32 0, i32 6
  %t262 = load i1, ptr %t261, !tbaa !21
  %t270 = call %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t241, { i64, ptr } %t245, i1 %t249, ptr %t253, { i64, ptr } %t254, i32 %t258, i1 %t262)
  store %"compiler/ast:TypeDecl" %t270, ptr %l115
  br label %bb52
bb52:
  %t271 = load %"compiler/ast:TypeDecl", ptr %l115
  %t272 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/ast:TypeDecl" %t271, ptr %t272
  store { i64, [8 x i64] } zeroinitializer, ptr %t273
  %t274 = getelementptr { i64, [8 x i64] }, ptr %t273, i32 0, i32 0
  store i64 2, ptr %t274
  %t275 = load %"compiler/source:Span", ptr %l101
  %t276 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t275, 0
  %t278 = insertvalue { %"compiler/source:Span", ptr } %t276, ptr %t272, 1
  %t279 = getelementptr { i64, [8 x i64] }, ptr %t273, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t278, ptr %t279
  %t280 = load { i64, [8 x i64] }, ptr %t273
  %t282 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t280, ptr %t282
  call void @__olang_scope_close(ptr %s0)
  %t284 = insertvalue { i32, ptr } zeroinitializer, ptr %t282, 1
  store { i32, ptr } %t284, ptr %rv
  br label %ret
bb53:
  br i1 true, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t285 = load ptr, ptr %l4, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  %t287 = insertvalue { i32, ptr } zeroinitializer, ptr %t285, 1
  store { i32, ptr } %t287, ptr %rv
  br label %ret
bb57:
  call void @__olang_check_failed(ptr @olang_loc_553e18f991b71cb8_da15bc16be34df94)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrsHere(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 74)
  store i1 %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load i1, ptr %l3, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  %t10 = icmp sle i64 0, 1152921504606846975
  br i1 %t10, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_360e31e75e7227a6_cc849c7425dfde32)
  unreachable
bb6:
  %t12 = mul i64 0, 8
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t16 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t14, 1
  store { i32, { i64, ptr } } %t16, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_360e31e75e7227a6_cc849c7425dfde32)
  unreachable
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrs(ptr %v0, ptr %v1, ptr %t17)
  %t20 = extractvalue { i32, { i64, ptr } } %t19, 1
  %t21 = extractvalue { i32, { i64, ptr } } %t19, 0
  store i32 %t21, ptr %l11
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb10, label %ok.23, !prof !99
ok.23:
  store { i64, ptr } %t20, ptr %l10
  br label %bb9
bb9:
  %t24 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t24, ptr %l8, !tbaa !27
  br label %bb11
bb10:
  %t25 = load i32, ptr %l11, !tbaa !23
  %t26 = lshr i32 %t25, 16
  %t27 = and i32 %t25, 65535
  %t28 = icmp eq i32 %t26, 1
  %t29 = select i1 %t28, i32 1, i32 0
  %t30 = icmp eq i32 %t25, 0
  %t31 = shl i32 %t29, 16
  %t32 = or i32 %t31, %t27
  %t33 = select i1 %t30, i32 0, i32 %t32
  %t35 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t33, 0
  store { i32, { i64, ptr } } %t35, ptr %rv
  br label %ret
bb11:
  %t36 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t37 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t36, 1
  store { i32, { i64, ptr } } %t37, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebody(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 79)
  store i1 %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load i1, ptr %l3, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineBody(ptr %v0, ptr %v1, ptr %t6)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l7
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l6
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t13 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t13, ptr %l4, !tbaa !27
  br label %bb6
bb5:
  %t14 = load i32, ptr %l7, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 1, i32 0
  %t19 = icmp eq i32 %t14, 0
  %t20 = shl i32 %t18, 16
  %t21 = or i32 %t20, %t16
  %t22 = select i1 %t19, i32 0, i32 %t21
  %t24 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t22, 0
  store { i32, { i64, ptr } } %t24, ptr %rv
  br label %ret
bb6:
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t26 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t25, 1
  store { i32, { i64, ptr } } %t26, ptr %rv
  br label %ret
bb7:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t27)
  %t30 = extractvalue { i32, { i64, ptr } } %t29, 1
  %t31 = extractvalue { i32, { i64, ptr } } %t29, 0
  store i32 %t31, ptr %l12
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb9, label %ok.33, !prof !99
ok.33:
  store { i64, ptr } %t30, ptr %l11
  br label %bb8
bb8:
  %t34 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t34, ptr %l9, !tbaa !27
  br label %bb10
bb9:
  %t35 = load i32, ptr %l12, !tbaa !23
  %t36 = lshr i32 %t35, 16
  %t37 = and i32 %t35, 65535
  %t38 = icmp eq i32 %t36, 1
  %t39 = select i1 %t38, i32 1, i32 0
  %t40 = icmp eq i32 %t35, 0
  %t41 = shl i32 %t39, 16
  %t42 = or i32 %t41, %t37
  %t43 = select i1 %t40, i32 0, i32 %t42
  %t45 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t43, 0
  store { i32, { i64, ptr } } %t45, ptr %rv
  br label %ret
bb10:
  %t46 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t47 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t46, 1
  store { i32, { i64, ptr } } %t47, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebranch(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l9 = alloca i32
  %l12 = alloca i1
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l24 = alloca i1
  %l31 = alloca %"compiler/source:Span"
  %l36 = alloca %"compiler/ast:Branch"
  %l42 = alloca %"compiler/source:Span"
  %l45 = alloca %"compiler/ast:Branch"
  %l49 = alloca i1
  %l51 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l55 = alloca i32
  %l59 = alloca i64
  %l62 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i32
  %l70 = alloca i1
  %l78 = alloca i32
  %l88 = alloca i32
  %l91 = alloca %"compiler/source:Span"
  %l96 = alloca %"compiler/ast:Branch"
  %l102 = alloca %"compiler/source:Span"
  %l105 = alloca %"compiler/ast:Branch"
  %s4 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load i32, ptr %l9, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t5, i32 79)
  store i1 %t8, ptr %l12
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/parse:Parser", ptr %t10, i32 0, i32 4
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l15
  br label %bb5
bb4:
  br label %bb27
bb5:
  %t16 = load i64, ptr %l15, !tbaa !24
  store i64 %t16, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineBody(ptr %v0, ptr %v1, ptr %t17)
  %t20 = extractvalue { i32, { i64, ptr } } %t19, 1
  %t21 = extractvalue { i32, { i64, ptr } } %t19, 0
  store i32 %t21, ptr %l19
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb7, label %ok.23, !prof !99
ok.23:
  store { i64, ptr } %t20, ptr %l18
  br label %bb6
bb6:
  %t24 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t24, ptr %l16, !tbaa !27
  br label %bb23
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/parse:Parser", ptr %t25, i32 0, i32 4
  %t28 = load ptr, ptr %t27, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t28)
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/parse:Parser", ptr %t30, i32 0, i32 22
  %t33 = load i1, ptr %t32, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb12
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/parse:Parser", ptr %t35, i32 0, i32 24
  %t38 = load i1, ptr %t37, !tbaa !21
  store i1 %t38, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l24, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t42, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t43 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncFrom(ptr %v0, ptr %t43)
  br label %bb16
bb16:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t45, i32 %t46)
  store %"compiler/source:Span" %t49, ptr %l31
  br label %bb17
bb17:
  %t50 = icmp sge i64 0, 0
  br i1 %t50, label %bb18, label %bb19
bb18:
  %t52 = icmp sle i64 0, 1152921504606846975
  br i1 %t52, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_3a014922d706f8ae_e8b2af70e71e377a)
  unreachable
bb20:
  %t54 = mul i64 0, 8
  %t55 = insertvalue { i64, ptr } undef, i64 0, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load %"compiler/source:Span", ptr %l31
  %t61 = call %"compiler/ast:Branch" @compiler_2fast_3aBranch_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t58, { i64, ptr } %t56, i64 %t57)
  store %"compiler/ast:Branch" %t61, ptr %l36
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_3a014922d706f8ae_e8b2af70e71e377a)
  unreachable
bb22:
  %t62 = load %"compiler/ast:Branch", ptr %l36
  %t63 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/ast:Branch" %t62, ptr %t63
  %t65 = insertvalue { i32, ptr } zeroinitializer, ptr %t63, 1
  store { i32, ptr } %t65, ptr %rv
  br label %ret
bb23:
  %t66 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t66, ptr %l3, !tbaa !27
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/parse:Parser", ptr %t67, i32 0, i32 4
  %t70 = load ptr, ptr %t69, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t70)
  br label %bb24
bb24:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l1, !tbaa !23
  %t76 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t72, i32 %t73)
  store %"compiler/source:Span" %t76, ptr %l42
  br label %bb25
bb25:
  %t77 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t78 = load i64, ptr %l2, !tbaa !24
  %t79 = load %"compiler/source:Span", ptr %l42
  %t82 = call %"compiler/ast:Branch" @compiler_2fast_3aBranch_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t79, { i64, ptr } %t77, i64 %t78)
  store %"compiler/ast:Branch" %t82, ptr %l45
  br label %bb26
bb26:
  %t83 = load %"compiler/ast:Branch", ptr %l45
  %t84 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/ast:Branch" %t83, ptr %t84
  %t86 = insertvalue { i32, ptr } zeroinitializer, ptr %t84, 1
  store { i32, ptr } %t86, ptr %rv
  br label %ret
bb27:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t90 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t87, i32 112)
  store i1 %t90, ptr %l49
  br label %bb28
bb28:
  %t91 = load i1, ptr %l49, !tbaa !21
  %t92 = xor i1 %t91, true
  br i1 %t92, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l51, !tbaa !29
  %t96 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s4, i32 112)
  store { i64, ptr } %t96, ptr %l53
  br label %bb31
bb30:
  br label %bb35
bb31:
  %t97 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  %t99 = extractvalue { i64, ptr } %t97, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t104 = load ptr, ptr %l51, !tbaa !29
  %t106 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s4, ptr %t104, { i64, ptr } %t103)
  store i32 %t106, ptr %l55
  %t107 = icmp ne i32 %t106, 0
  br i1 %t107, label %bb33, label %ok.108, !prof !99
ok.108:
  br label %bb32
bb32:
  br label %bb34
bb33:
  %t109 = load i32, ptr %l55, !tbaa !23
  %t110 = lshr i32 %t109, 16
  %t111 = and i32 %t109, 65535
  %t112 = icmp eq i32 %t110, 1
  %t113 = select i1 %t112, i32 1, i32 0
  %t114 = icmp eq i32 %t109, 0
  %t115 = shl i32 %t113, 16
  %t116 = or i32 %t115, %t111
  %t117 = select i1 %t114, i32 0, i32 %t116
  call void @__olang_scope_close(ptr %s4)
  %t119 = insertvalue { i32, ptr } zeroinitializer, i32 %t117, 0
  store { i32, ptr } %t119, ptr %rv
  br label %ret
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb35:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/parse:Parser", ptr %t120, i32 0, i32 4
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %t123)
  store i64 %t125, ptr %l59
  br label %bb36
bb36:
  %t126 = load i64, ptr %l59, !tbaa !24
  store i64 %t126, ptr %l4, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/parse:Parser", ptr %t127, i32 0, i32 6
  %t130 = load i64, ptr %t129, !tbaa !24
  store i64 %t130, ptr %l5, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t132)
  %t135 = extractvalue { i32, { i64, ptr } } %t134, 1
  %t136 = extractvalue { i32, { i64, ptr } } %t134, 0
  store i32 %t136, ptr %l65
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb38, label %ok.138, !prof !99
ok.138:
  store { i64, ptr } %t135, ptr %l64
  br label %bb37
bb37:
  %t139 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t139, ptr %l62, !tbaa !27
  br label %bb58
bb38:
  br label %bb39
bb39:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/parse:Parser", ptr %t140, i32 0, i32 4
  %t143 = load ptr, ptr %t142, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t143)
  br label %bb40
bb40:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/parse:Parser", ptr %t145, i32 0, i32 22
  %t148 = load i1, ptr %t147, !tbaa !21
  br i1 %t148, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb43
bb42:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/parse:Parser", ptr %t150, i32 0, i32 24
  %t153 = load i1, ptr %t152, !tbaa !21
  store i1 %t153, ptr %l70, !tbaa !21
  br label %bb43
bb43:
  %t155 = load i1, ptr %l70, !tbaa !21
  br i1 %t155, label %bb44, label %bb45
bb44:
  %t157 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t157, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/parse:Parser", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load i64, ptr %l5, !tbaa !24
  %t164 = trunc i64 %t162 to i32
  %t167 = call i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v0, ptr %t161, i32 %t164)
  store i32 %t167, ptr %l78
  br label %bb47
bb47:
  %t168 = load i32, ptr %l78, !tbaa !23
  store i32 %t168, ptr %l6, !tbaa !23
  %t169 = load i32, ptr %l6, !tbaa !23
  %t171 = icmp slt i32 %t169, 0
  br i1 %t171, label %bb48, label %bb49
bb48:
  %t174 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t174, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i32, ptr %l6, !tbaa !23
  %t178 = sext i32 %t176 to i64
  %t181 = getelementptr %"compiler/parse:Parser", ptr %t175, i32 0, i32 6
  store i64 %t178, ptr %t181, !tbaa !24
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/parse:Parser", ptr %t182, i32 0, i32 7
  store i32 0, ptr %t185
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t186)
  store i32 %t188, ptr %l88
  br label %bb51
bb51:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load i32, ptr %l1, !tbaa !23
  %t193 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t189, i32 %t190)
  store %"compiler/source:Span" %t193, ptr %l91
  br label %bb52
bb52:
  %t194 = icmp sge i64 0, 0
  br i1 %t194, label %bb53, label %bb54
bb53:
  %t196 = icmp sle i64 0, 1152921504606846975
  br i1 %t196, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_e5b5865feda95523_92aca47b2e780ecf)
  unreachable
bb55:
  %t198 = mul i64 0, 8
  %t199 = insertvalue { i64, ptr } undef, i64 0, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t201 = load i64, ptr %l4, !tbaa !24
  %t202 = load %"compiler/source:Span", ptr %l91
  %t205 = call %"compiler/ast:Branch" @compiler_2fast_3aBranch_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t202, { i64, ptr } %t200, i64 %t201)
  store %"compiler/ast:Branch" %t205, ptr %l96
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_e5b5865feda95523_92aca47b2e780ecf)
  unreachable
bb57:
  %t206 = load %"compiler/ast:Branch", ptr %l96
  %t207 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/ast:Branch" %t206, ptr %t207
  %t209 = insertvalue { i32, ptr } zeroinitializer, ptr %t207, 1
  store { i32, ptr } %t209, ptr %rv
  br label %ret
bb58:
  %t210 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t210, ptr %l7, !tbaa !27
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/parse:Parser", ptr %t211, i32 0, i32 4
  %t214 = load ptr, ptr %t213, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t214)
  br label %bb59
bb59:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load i32, ptr %l1, !tbaa !23
  %t220 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t216, i32 %t217)
  store %"compiler/source:Span" %t220, ptr %l102
  br label %bb60
bb60:
  %t221 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t222 = load i64, ptr %l4, !tbaa !24
  %t223 = load %"compiler/source:Span", ptr %l102
  %t226 = call %"compiler/ast:Branch" @compiler_2fast_3aBranch_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t223, { i64, ptr } %t221, i64 %t222)
  store %"compiler/ast:Branch" %t226, ptr %l105
  br label %bb61
bb61:
  %t227 = load %"compiler/ast:Branch", ptr %l105
  %t228 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/ast:Branch" %t227, ptr %t228
  %t230 = insertvalue { i32, ptr } zeroinitializer, ptr %t228, 1
  store { i32, ptr } %t230, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { { i64, ptr }, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseBody(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l3 = alloca %"compiler/token:Token"
  %l4 = alloca %"compiler/token:Token"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l10 = alloca i1
  %l11 = alloca i1
  %l14 = alloca i1
  %l16 = alloca i32
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i32
  %l27 = alloca i1
  %l29 = alloca %"compiler/token:Token"
  %l31 = alloca i32
  %l33 = alloca %"compiler/token:Token"
  %l36 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i1
  %l45 = alloca i32
  %l49 = alloca i32
  %l51 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca i32
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i32
  %l69 = alloca i32
  %l70 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l73 = alloca i32
  %l75 = alloca ptr
  %l76 = alloca i32
  %l78 = alloca i32
  %l79 = alloca %"compiler/diagmsg:Msg"
  %l82 = alloca { i64, ptr }
  %l85 = alloca %"compiler/source:Span"
  %l89 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l92 = alloca i32
  %s4 = alloca %olang.scope
  %rv = alloca { i32, { { i64, ptr }, ptr } }
  %t188 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 79)
  store i1 %t4, ptr %l10
  br label %bb1
bb1:
  %t5 = load i1, ptr %l10, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t6 = load i1, ptr %l1, !tbaa !21
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb4, label %bb5
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb4:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb8
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t10, i64 1)
  store i32 %t12, ptr %l16
  br label %bb6
bb6:
  %t13 = load i32, ptr %l16, !range !{i32 0, i32 114}
  %t14 = call i1 @compiler_2fparse_2eleavingWord(i32 %t13)
  store i1 %t14, ptr %l17
  br label %bb7
bb7:
  %t15 = load i1, ptr %l17, !tbaa !21
  store i1 %t15, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t16 = load i1, ptr %l14, !tbaa !21
  store i1 %t16, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t17 = load i1, ptr %l11, !tbaa !21
  br i1 %t17, label %bb10, label %bb11
bb10:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineBody(ptr %v0, ptr %v1, ptr %t18)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l21
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb13, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l20
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t25 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t25, ptr %l18, !tbaa !27
  br label %bb14
bb13:
  %t26 = load i32, ptr %l21, !tbaa !23
  %t27 = lshr i32 %t26, 16
  %t28 = and i32 %t26, 65535
  %t29 = icmp eq i32 %t27, 1
  %t30 = select i1 %t29, i32 1, i32 0
  %t31 = icmp eq i32 %t26, 0
  %t32 = shl i32 %t30, 16
  %t33 = or i32 %t32, %t28
  %t34 = select i1 %t31, i32 0, i32 %t33
  %t36 = insertvalue { i32, { { i64, ptr }, ptr } } zeroinitializer, i32 %t34, 0
  store { i32, { { i64, ptr }, ptr } } %t36, ptr %rv
  br label %ret
bb14:
  %t37 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t40 = insertvalue { { i64, ptr }, ptr } undef, { i64, ptr } %t37, 0
  %t41 = insertvalue { { i64, ptr }, ptr } %t40, ptr null, 1
  %t43 = insertvalue { i32, { { i64, ptr }, ptr } } zeroinitializer, { { i64, ptr }, ptr } %t41, 1
  store { i32, { { i64, ptr }, ptr } } %t43, ptr %rv
  br label %ret
bb15:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t47 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t44, i32 79)
  store i1 %t47, ptr %l27
  br label %bb16
bb16:
  %t48 = load i1, ptr %l27, !tbaa !21
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t49)
  store %"compiler/token:Token" %t51, ptr %l29
  br label %bb19
bb18:
  br label %bb44
bb19:
  %t52 = load %"compiler/token:Token", ptr %l29
  store %"compiler/token:Token" %t52, ptr %l3
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t53)
  store i32 %t55, ptr %l31
  br label %bb20
bb20:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t56)
  store %"compiler/token:Token" %t58, ptr %l33
  br label %bb21
bb21:
  %t59 = load %"compiler/token:Token", ptr %l33
  store %"compiler/token:Token" %t59, ptr %l4
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t63 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t60, i32 8)
  store i1 %t63, ptr %l36
  br label %bb22
bb22:
  %t64 = load i1, ptr %l36, !tbaa !21
  br i1 %t64, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb26
bb24:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t68 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t65, i32 0)
  store i1 %t68, ptr %l40
  br label %bb25
bb25:
  %t69 = load i1, ptr %l40, !tbaa !21
  store i1 %t69, ptr %l37, !tbaa !21
  br label %bb26
bb26:
  %t70 = load i1, ptr %l37, !tbaa !21
  br i1 %t70, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb31
bb28:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/parse:Parser", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 2
  %t76 = load i32, ptr %t75, !tbaa !23
  %t79 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %t74, i32 %t76)
  store i32 %t79, ptr %l45
  br label %bb29
bb29:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/parse:Parser", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t84 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t85 = load i32, ptr %t84, !tbaa !23
  %t88 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %t83, i32 %t85)
  store i32 %t88, ptr %l49
  br label %bb30
bb30:
  %t89 = load i32, ptr %l45, !tbaa !23
  %t90 = load i32, ptr %l49, !tbaa !23
  %t91 = icmp ne i32 %t89, %t90
  store i1 %t91, ptr %l41, !tbaa !21
  br label %bb31
bb31:
  %t93 = load i1, ptr %l41, !tbaa !21
  br i1 %t93, label %bb32, label %bb33
bb32:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l51, !tbaa !29
  %t95 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t96 = load i32, ptr %t95, !tbaa !23
  store i32 %t96, ptr %l52, !tbaa !23
  %t97 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 3
  %t98 = load i32, ptr %t97, !tbaa !23
  store i32 %t98, ptr %l53, !tbaa !23
  %t99 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyOnLine(ptr %v0)
  store %"compiler/diagmsg:Msg" %t99, ptr %l54
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t100 = load ptr, ptr %l51, !tbaa !29
  %t101 = load i32, ptr %l52, !tbaa !23
  %t102 = load i32, ptr %l53, !tbaa !23
  %t103 = load %"compiler/diagmsg:Msg", ptr %l54
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t100, i32 %t101, i32 %t102, %"compiler/diagmsg:Msg" %t103)
  br label %bb35
bb35:
  %t105 = insertvalue { i32, { { i64, ptr }, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, ptr } } %t105, ptr %rv
  br label %ret
bb36:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t106)
  %t109 = extractvalue { i32, ptr } %t108, 1
  %t110 = extractvalue { i32, ptr } %t108, 0
  store i32 %t110, ptr %l59
  %t111 = icmp ne i32 %t110, 0
  br i1 %t111, label %bb38, label %ok.112, !prof !99
ok.112:
  store ptr %t109, ptr %l58
  br label %bb37
bb37:
  %t113 = load ptr, ptr %l58, !tbaa !29
  store ptr %t113, ptr %l56, !tbaa !29
  br label %bb39
bb38:
  %t114 = load i32, ptr %l59, !tbaa !23
  %t115 = lshr i32 %t114, 16
  %t116 = and i32 %t114, 65535
  %t117 = icmp eq i32 %t115, 1
  %t118 = select i1 %t117, i32 1, i32 0
  %t119 = icmp eq i32 %t114, 0
  %t120 = shl i32 %t118, 16
  %t121 = or i32 %t120, %t116
  %t122 = select i1 %t119, i32 0, i32 %t121
  %t124 = insertvalue { i32, { { i64, ptr }, ptr } } zeroinitializer, i32 %t122, 0
  store { i32, { { i64, ptr }, ptr } } %t124, ptr %rv
  br label %ret
bb39:
  %t125 = load ptr, ptr %l56, !tbaa !29
  store ptr %t125, ptr %l5, !tbaa !29
  %t126 = icmp sge i64 0, 0
  br i1 %t126, label %bb40, label %bb41
bb40:
  %t128 = icmp sle i64 0, 1152921504606846975
  br i1 %t128, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_1409caed80efd5ca_aa5da404b7edad6)
  unreachable
bb42:
  %t130 = mul i64 0, 8
  %t131 = insertvalue { i64, ptr } undef, i64 0, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t133 = load ptr, ptr %l5, !tbaa !29
  %t136 = insertvalue { { i64, ptr }, ptr } undef, { i64, ptr } %t132, 0
  %t138 = insertvalue { { i64, ptr }, ptr } %t136, ptr %t133, 1
  %t140 = insertvalue { i32, { { i64, ptr }, ptr } } zeroinitializer, { { i64, ptr }, ptr } %t138, 1
  store { i32, { { i64, ptr }, ptr } } %t140, ptr %rv
  br label %ret
bb43:
  call void @__olang_check_failed(ptr @olang_loc_1409caed80efd5ca_aa5da404b7edad6)
  unreachable
bb44:
  %t141 = load i1, ptr %l1, !tbaa !21
  br i1 %t141, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s4
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t143)
  store i32 %t145, ptr %l69
  br label %bb47
bb46:
  br label %bb58
bb47:
  %t146 = load i32, ptr %l69, !tbaa !23
  store i32 %t146, ptr %l6, !tbaa !23
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %s4, ptr %t147)
  %t150 = extractvalue { i32, { i64, ptr } } %t149, 1
  %t151 = extractvalue { i32, { i64, ptr } } %t149, 0
  store i32 %t151, ptr %l73
  %t152 = icmp ne i32 %t151, 0
  br i1 %t152, label %bb49, label %ok.153, !prof !99
ok.153:
  store { i64, ptr } %t150, ptr %l72
  br label %bb48
bb48:
  %t154 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t154, ptr %l70, !tbaa !27
  br label %bb50
bb49:
  %t155 = load i32, ptr %l73, !tbaa !23
  %t156 = lshr i32 %t155, 16
  %t157 = and i32 %t155, 65535
  %t158 = icmp eq i32 %t156, 1
  %t159 = select i1 %t158, i32 1, i32 0
  %t160 = icmp eq i32 %t155, 0
  %t161 = shl i32 %t159, 16
  %t162 = or i32 %t161, %t157
  %t163 = select i1 %t160, i32 0, i32 %t162
  call void @__olang_scope_close(ptr %s4)
  %t165 = insertvalue { i32, { { i64, ptr }, ptr } } zeroinitializer, i32 %t163, 0
  store { i32, { { i64, ptr }, ptr } } %t165, ptr %rv
  br label %ret
bb50:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l75, !tbaa !29
  %t167 = load i32, ptr %l6, !tbaa !23
  store i32 %t167, ptr %l76, !tbaa !23
  %t168 = load i32, ptr %l6, !tbaa !23
  %t170 = add i32 %t168, 1
  store i32 %t170, ptr %l78, !tbaa !23
  %t171 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueCaseBlock(ptr %v0)
  store %"compiler/diagmsg:Msg" %t171, ptr %l79
  br label %bb51
bb51:
  %t172 = load ptr, ptr %l75, !tbaa !29
  %t173 = load i32, ptr %l76, !tbaa !23
  %t174 = load i32, ptr %l78, !tbaa !23
  %t175 = load %"compiler/diagmsg:Msg", ptr %l79
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t172, i32 %t173, i32 %t174, %"compiler/diagmsg:Msg" %t175)
  br label %bb52
bb52:
  %t176 = icmp sge i64 0, 0
  br i1 %t176, label %bb53, label %bb54
bb53:
  %t178 = icmp sle i64 0, 1152921504606846975
  br i1 %t178, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_2c5c6195a47ae69f_51fb0001bc622feb)
  unreachable
bb55:
  %t180 = mul i64 0, 8
  %t181 = insertvalue { i64, ptr } undef, i64 0, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t182, ptr %l82, !tbaa !27
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l6, !tbaa !23
  %t187 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t183, i32 %t184)
  store %"compiler/source:Span" %t187, ptr %l85
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_2c5c6195a47ae69f_51fb0001bc622feb)
  unreachable
bb57:
  store { i64, [4 x i64] } zeroinitializer, ptr %t188
  %t189 = getelementptr { i64, [4 x i64] }, ptr %t188, i32 0, i32 0
  store i64 27, ptr %t189
  %t190 = load %"compiler/source:Span", ptr %l85
  %t191 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t190, 0
  %t192 = insertvalue { %"compiler/source:Span", ptr } %t191, ptr null, 1
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t188, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t192, ptr %t193
  %t194 = load { i64, [4 x i64] }, ptr %t188
  %t196 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t194, ptr %t196
  %t197 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t198 = insertvalue { { i64, ptr }, ptr } undef, { i64, ptr } %t197, 0
  %t200 = insertvalue { { i64, ptr }, ptr } %t198, ptr %t196, 1
  call void @__olang_scope_close(ptr %s4)
  %t202 = insertvalue { i32, { { i64, ptr }, ptr } } zeroinitializer, { { i64, ptr }, ptr } %t200, 1
  store { i32, { { i64, ptr }, ptr } } %t202, ptr %rv
  br label %ret
bb58:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t203)
  %t206 = extractvalue { i32, { i64, ptr } } %t205, 1
  %t207 = extractvalue { i32, { i64, ptr } } %t205, 0
  store i32 %t207, ptr %l92
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb60, label %ok.209, !prof !99
ok.209:
  store { i64, ptr } %t206, ptr %l91
  br label %bb59
bb59:
  %t210 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t210, ptr %l89, !tbaa !27
  br label %bb61
bb60:
  %t211 = load i32, ptr %l92, !tbaa !23
  %t212 = lshr i32 %t211, 16
  %t213 = and i32 %t211, 65535
  %t214 = icmp eq i32 %t212, 1
  %t215 = select i1 %t214, i32 1, i32 0
  %t216 = icmp eq i32 %t211, 0
  %t217 = shl i32 %t215, 16
  %t218 = or i32 %t217, %t213
  %t219 = select i1 %t216, i32 0, i32 %t218
  %t221 = insertvalue { i32, { { i64, ptr }, ptr } } zeroinitializer, i32 %t219, 0
  store { i32, { { i64, ptr }, ptr } } %t221, ptr %rv
  br label %ret
bb61:
  %t222 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t225 = insertvalue { { i64, ptr }, ptr } undef, { i64, ptr } %t222, 0
  %t226 = insertvalue { { i64, ptr }, ptr } %t225, ptr null, 1
  %t228 = insertvalue { i32, { { i64, ptr }, ptr } } zeroinitializer, { { i64, ptr }, ptr } %t226, 1
  store { i32, { { i64, ptr }, ptr } } %t228, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { { i64, ptr }, ptr } }, ptr %rv
  ret { i32, { { i64, ptr }, ptr } } %rr
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecasePattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca ptr
  %l34 = alloca { i64, ptr }
  %rv = alloca ptr
  %t52 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 35
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eLen_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  store { i64, ptr } %a3, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l7, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t21, ptr %l19, !tbaa !27
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t29, i32 0, i32 35
  store ptr %t31, ptr %l23, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t36 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eitemPattern(ptr %v0, ptr %v2, ptr %v0, ptr %t32, ptr %t27)
  store ptr %t36, ptr %l26
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l23, !tbaa !29
  %t38 = load ptr, ptr %l26, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v0, ptr %t37, ptr %t38)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l6, !tbaa !24
  br label %bb2
bb9:
  store %"compiler/source:Span" %a1, ptr %l29
  store ptr %a2, ptr %l30, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/parse:Parser", ptr %t45, i32 0, i32 35
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v3, ptr %t47, i64 %t48)
  store { i64, ptr } %t51, ptr %l34
  br label %bb10
bb10:
  store { i64, [4 x i64] } zeroinitializer, ptr %t52
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 0
  store i64 2, ptr %t53
  %t54 = load %"compiler/source:Span", ptr %l29
  %t55 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t54, 0
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t57 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t55, ptr %t56, 1
  %t58 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t59 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t57, { i64, ptr } %t58, 2
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t59, ptr %t60
  %t61 = load { i64, [4 x i64] }, ptr %t52
  %t63 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t61, ptr %t63
  store ptr %t63, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseType(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %rv = alloca { i32, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %a0)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l3
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l3, !tbaa !29
  store ptr %t8, ptr %l1, !tbaa !29
  br label %bb3
bb2:
  %t9 = load i32, ptr %l4, !tbaa !23
  %t10 = lshr i32 %t9, 16
  %t11 = and i32 %t9, 65535
  %t12 = icmp eq i32 %t10, 1
  %t13 = select i1 %t12, i32 1, i32 0
  %t14 = icmp eq i32 %t9, 0
  %t15 = shl i32 %t13, 16
  %t16 = or i32 %t15, %t11
  %t17 = select i1 %t14, i32 0, i32 %t16
  %t19 = insertvalue { i32, ptr } zeroinitializer, i32 %t17, 0
  store { i32, ptr } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t21 = insertvalue { i32, ptr } zeroinitializer, ptr %t20, 1
  store { i32, ptr } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseValueComma(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca i32
  %l15 = alloca i64
  %l20 = alloca i1
  %l23 = alloca i64
  %l29 = alloca i32
  %l32 = alloca i1
  %l35 = alloca i1
  %l42 = alloca i1
  %l45 = alloca i1
  %l55 = alloca i1
  %l60 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t8 = trunc i64 75 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t14, i64 %t15)
  store i64 %t18, ptr %l15
  br label %bb5
bb5:
  %t19 = load i64, ptr %l15, !tbaa !24
  store i64 %t19, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l1, !tbaa !24
  %t22 = sub i64 %t20, 1
  store i64 %t22, ptr %l4, !tbaa !24
  br label %bb6
bb6:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t28, i64 %t29)
  store i64 %t32, ptr %l23
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb10
bb9:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t34 = load i64, ptr %l23, !tbaa !24
  %t36 = icmp eq i64 %t34, %t33
  store i1 %t36, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l20, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb11, label %bb12
bb11:
  br label %bb44
bb12:
  br label %bb13
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t41, i64 %t42)
  store i32 %t45, ptr %l29
  br label %bb14
bb14:
  %t46 = load i32, ptr %l29, !range !{i32 0, i32 114}
  store i32 %t46, ptr %l5
  %t47 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t49 = trunc i64 109 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb17
bb16:
  %t52 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t54 = trunc i64 111 to i32
  %t55 = icmp eq i32 %t52, %t54
  store i1 %t55, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t57 = load i1, ptr %l32, !tbaa !21
  br i1 %t57, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb20
bb19:
  %t58 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t60 = trunc i64 113 to i32
  %t61 = icmp eq i32 %t58, %t60
  store i1 %t61, ptr %l35, !tbaa !21
  br label %bb20
bb20:
  %t63 = load i1, ptr %l35, !tbaa !21
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l3, !tbaa !24
  br label %bb42
bb22:
  %t68 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t70 = trunc i64 108 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb25
bb24:
  %t73 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t75 = trunc i64 110 to i32
  %t76 = icmp eq i32 %t73, %t75
  store i1 %t76, ptr %l42, !tbaa !21
  br label %bb25
bb25:
  %t78 = load i1, ptr %l42, !tbaa !21
  br i1 %t78, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb28
bb27:
  %t79 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t81 = trunc i64 112 to i32
  %t82 = icmp eq i32 %t79, %t81
  store i1 %t82, ptr %l45, !tbaa !21
  br label %bb28
bb28:
  %t84 = load i1, ptr %l45, !tbaa !21
  br i1 %t84, label %bb29, label %bb30
bb29:
  %t85 = load i64, ptr %l3, !tbaa !24
  %t87 = icmp eq i64 %t85, 0
  br i1 %t87, label %bb31, label %bb32
bb30:
  %t89 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t91 = trunc i64 79 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb34, label %bb35
bb31:
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t95 = load i64, ptr %l3, !tbaa !24
  %t97 = sub i64 %t95, 1
  store i64 %t97, ptr %l3, !tbaa !24
  br label %bb41
bb34:
  %t99 = load i64, ptr %l3, !tbaa !24
  %t101 = icmp eq i64 %t99, 0
  store i1 %t101, ptr %l55, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb36
bb36:
  %t103 = load i1, ptr %l55, !tbaa !21
  br i1 %t103, label %bb37, label %bb38
bb37:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i64, ptr %l4, !tbaa !24
  %t108 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineStartsCase(ptr %v0, ptr %t104, i64 %t105)
  store i1 %t108, ptr %l60
  br label %bb39
bb38:
  br label %bb40
bb39:
  %t109 = load i1, ptr %l60, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t110 = load i64, ptr %l4, !tbaa !24
  %t112 = sub i64 %t110, 1
  store i64 %t112, ptr %l4, !tbaa !24
  br label %bb43
bb43:
  br label %bb6
bb44:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/token:Token"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i1
  %l19 = alloca i32
  %l22 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca i32
  %l38 = alloca i1
  %l40 = alloca %"compiler/source:Span"
  %l42 = alloca i64
  %l44 = alloca i1
  %l47 = alloca i1
  %l49 = alloca %"compiler/token:Token"
  %l50 = alloca i32
  %l52 = alloca i32
  %l53 = alloca i32
  %l57 = alloca %"compiler/source:Span"
  %l63 = alloca i1
  %l65 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca i32
  %l72 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca i32
  %l82 = alloca i1
  %l85 = alloca i1
  %l89 = alloca ptr
  %l91 = alloca { i64, ptr }
  %l93 = alloca i32
  %l98 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l103 = alloca i64
  %l106 = alloca { i64, ptr }
  %l112 = alloca %"compiler/ast:Catch"
  %l115 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCatch_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l2, !tbaa !29
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t5, i32 12)
  store i1 %t8, ptr %l16
  br label %bb3
bb3:
  %t9 = load i1, ptr %l16, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb85
bb5:
  br label %bb6
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t12)
  store i32 %t14, ptr %l19
  br label %bb7
bb7:
  %t15 = load i32, ptr %l19, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/parse:Parser", ptr %t16, i32 0, i32 31
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l22
  br label %bb8
bb8:
  %t21 = load i64, ptr %l22, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l23
  br label %bb9
bb9:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %t24
  store ptr %t24, ptr %l5, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t26, i32 1)
  store i1 %t29, ptr %l27
  br label %bb10
bb10:
  %t30 = load i1, ptr %l27, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb26
bb13:
  %t31 = load ptr, ptr %l5, !tbaa !29
  store ptr %t31, ptr %l28, !tbaa !29
  %t32 = ptrtoint ptr %v1 to i64
  store i64 %t32, ptr %l30, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t33, label %bb14, label %bb15
bb14:
  %t35 = call ptr @__olang_region_make(ptr %v1)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l30, !tbaa !24
  br label %bb15
bb15:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l30
  %t39 = inttoptr i64 %t38 to ptr
  %t41 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epath(ptr %v0, ptr %t39, ptr %t37)
  %t42 = extractvalue { i32, ptr } %t41, 1
  %t43 = extractvalue { i32, ptr } %t41, 0
  store i32 %t43, ptr %l34
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb17, label %ok.45, !prof !99
ok.45:
  store ptr %t42, ptr %l33
  br label %bb16
bb16:
  %t46 = load ptr, ptr %l33, !tbaa !29
  store ptr %t46, ptr %l29, !tbaa !29
  br label %bb18
bb17:
  %t47 = load i32, ptr %l34, !tbaa !23
  %t48 = lshr i32 %t47, 16
  %t49 = and i32 %t47, 65535
  %t50 = icmp eq i32 %t48, 1
  %t51 = select i1 %t50, i32 1, i32 0
  %t52 = icmp eq i32 %t47, 0
  %t53 = shl i32 %t51, 16
  %t54 = or i32 %t53, %t49
  %t55 = select i1 %t52, i32 0, i32 %t54
  call void @__olang_scope_close(ptr %s1)
  %t57 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t55, 0
  store { i32, { i64, ptr } } %t57, ptr %rv
  br label %ret
bb18:
  %t58 = load ptr, ptr %l28, !tbaa !29
  %t59 = load ptr, ptr %l29, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ePush_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %v1, ptr %t58, ptr %t59)
  br label %bb19
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t63 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t60, i32 75)
  store i1 %t63, ptr %l38
  br label %bb20
bb20:
  %t64 = load i1, ptr %l38, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb21, label %bb22
bb21:
  br label %bb25
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  br label %bb13
bb25:
  br label %bb26
bb26:
  store i32 0, ptr %l6, !tbaa !23
  %t67 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t67, ptr %l40
  br label %bb27
bb27:
  %t68 = load %"compiler/source:Span", ptr %l40
  store %"compiler/source:Span" %t68, ptr %l7
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2eLen_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %t69)
  store i64 %t71, ptr %l42
  br label %bb28
bb28:
  %t72 = load i64, ptr %l42, !tbaa !24
  %t73 = icmp sgt i64 %t72, 0
  br i1 %t73, label %bb29, label %bb30
bb29:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t78 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t75, i32 1)
  store i1 %t78, ptr %l47
  br label %bb31
bb30:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb32
bb31:
  %t79 = load i1, ptr %l47, !tbaa !21
  store i1 %t79, ptr %l44, !tbaa !21
  br label %bb32
bb32:
  %t80 = load i1, ptr %l44, !tbaa !21
  br i1 %t80, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s5
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t81)
  store %"compiler/token:Token" %t83, ptr %l49
  br label %bb35
bb34:
  br label %bb40
bb35:
  %t84 = load %"compiler/token:Token", ptr %l49
  store %"compiler/token:Token" %t84, ptr %l8
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t85)
  %t88 = extractvalue { i32, i32 } %t87, 1
  %t89 = extractvalue { i32, i32 } %t87, 0
  store i32 %t89, ptr %l53
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb37, label %ok.91, !prof !99
ok.91:
  store i32 %t88, ptr %l52
  br label %bb36
bb36:
  %t92 = load i32, ptr %l52, !tbaa !23
  store i32 %t92, ptr %l50, !tbaa !23
  br label %bb38
bb37:
  %t93 = load i32, ptr %l53, !tbaa !23
  %t94 = lshr i32 %t93, 16
  %t95 = and i32 %t93, 65535
  %t96 = icmp eq i32 %t94, 1
  %t97 = select i1 %t96, i32 1, i32 0
  %t98 = icmp eq i32 %t93, 0
  %t99 = shl i32 %t97, 16
  %t100 = or i32 %t99, %t95
  %t101 = select i1 %t98, i32 0, i32 %t100
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s1)
  %t103 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t101, 0
  store { i32, { i64, ptr } } %t103, ptr %rv
  br label %ret
bb38:
  %t104 = load i32, ptr %l50, !tbaa !23
  store i32 %t104, ptr %l6, !tbaa !23
  %t105 = getelementptr %"compiler/token:Token", ptr %l8, i32 0, i32 2
  %t106 = load i32, ptr %t105, !tbaa !23
  %t107 = getelementptr %"compiler/token:Token", ptr %l8, i32 0, i32 3
  %t108 = load i32, ptr %t107, !tbaa !23
  %t111 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s5, i32 %t106, i32 %t108)
  store %"compiler/source:Span" %t111, ptr %l57
  br label %bb39
bb39:
  %t112 = load %"compiler/source:Span", ptr %l57
  store %"compiler/source:Span" %t112, ptr %l7
  call void @__olang_scope_close(ptr %s5)
  br label %bb40
bb40:
  %t113 = icmp sge i64 0, 0
  br i1 %t113, label %bb41, label %bb42
bb41:
  %t115 = icmp sle i64 0, 1152921504606846975
  br i1 %t115, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_e74fa2d3d14c2452_7ce0d57fd3650746)
  unreachable
bb43:
  %t117 = mul i64 0, 8
  %t118 = insertvalue { i64, ptr } undef, i64 0, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t119, ptr %l9, !tbaa !27
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t124 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t121, i32 112)
  store i1 %t124, ptr %l63
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_e74fa2d3d14c2452_7ce0d57fd3650746)
  unreachable
bb45:
  %t125 = load i1, ptr %l63, !tbaa !21
  store i1 %t125, ptr %l10, !tbaa !21
  %t126 = load i1, ptr %l10, !tbaa !21
  br i1 %t126, label %bb46, label %bb47
bb46:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t128)
  %t131 = extractvalue { i32, { i64, ptr } } %t130, 1
  %t132 = extractvalue { i32, { i64, ptr } } %t130, 0
  store i32 %t132, ptr %l68
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb49, label %ok.134, !prof !99
ok.134:
  store { i64, ptr } %t131, ptr %l67
  br label %bb48
bb47:
  br label %bb51
bb48:
  %t135 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t135, ptr %l65, !tbaa !27
  br label %bb50
bb49:
  %t136 = load i32, ptr %l68, !tbaa !23
  %t137 = lshr i32 %t136, 16
  %t138 = and i32 %t136, 65535
  %t139 = icmp eq i32 %t137, 1
  %t140 = select i1 %t139, i32 1, i32 0
  %t141 = icmp eq i32 %t136, 0
  %t142 = shl i32 %t140, 16
  %t143 = or i32 %t142, %t138
  %t144 = select i1 %t141, i32 0, i32 %t143
  call void @__olang_scope_close(ptr %s1)
  %t146 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t144, 0
  store { i32, { i64, ptr } } %t146, ptr %rv
  br label %ret
bb50:
  %t147 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t147, ptr %l9, !tbaa !27
  br label %bb51
bb51:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t151 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t148, i32 44)
  store i1 %t151, ptr %l72
  br label %bb52
bb52:
  %t152 = load i1, ptr %l72, !tbaa !21
  br i1 %t152, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  %t153 = load i1, ptr %l10, !tbaa !21
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb69, label %bb70
bb55:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/parse:Parser", ptr %t157, i32 0, i32 31
  store ptr %t159, ptr %l74, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v0, ptr %t160)
  %t163 = extractvalue { i32, ptr } %t162, 1
  %t164 = extractvalue { i32, ptr } %t162, 0
  store i32 %t164, ptr %l78
  %t165 = icmp ne i32 %t164, 0
  br i1 %t165, label %bb57, label %ok.166, !prof !99
ok.166:
  store ptr %t163, ptr %l77
  br label %bb56
bb56:
  %t167 = load ptr, ptr %l77, !tbaa !29
  store ptr %t167, ptr %l75, !tbaa !29
  br label %bb58
bb57:
  %t168 = load i32, ptr %l78, !tbaa !23
  %t169 = lshr i32 %t168, 16
  %t170 = and i32 %t168, 65535
  %t171 = icmp eq i32 %t169, 1
  %t172 = select i1 %t171, i32 1, i32 0
  %t173 = icmp eq i32 %t168, 0
  %t174 = shl i32 %t172, 16
  %t175 = or i32 %t174, %t170
  %t176 = select i1 %t173, i32 0, i32 %t175
  call void @__olang_scope_close(ptr %s1)
  %t178 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t176, 0
  store { i32, { i64, ptr } } %t178, ptr %rv
  br label %ret
bb58:
  %t179 = load ptr, ptr %l74, !tbaa !29
  %t180 = load ptr, ptr %l75, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t179, ptr %t180)
  br label %bb59
bb59:
  %t183 = xor i1 %a1, true
  br i1 %t183, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb63
bb61:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t188 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t185, i32 75)
  store i1 %t188, ptr %l85
  br label %bb62
bb62:
  %t189 = load i1, ptr %l85, !tbaa !21
  %t190 = xor i1 %t189, true
  store i1 %t190, ptr %l82, !tbaa !21
  br label %bb63
bb63:
  %t192 = load i1, ptr %l82, !tbaa !21
  br i1 %t192, label %bb64, label %bb65
bb64:
  br label %bb68
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  br label %bb55
bb68:
  br label %bb76
bb69:
  store %olang.scope zeroinitializer, ptr %s11
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l89, !tbaa !29
  %t195 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s11, i32 112)
  store { i64, ptr } %t195, ptr %l91
  br label %bb71
bb70:
  br label %bb75
bb71:
  %t196 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 0
  %t198 = extractvalue { i64, ptr } %t196, 1
  %t199 = mul i64 %t197, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t199)
  call void @llvm.memcpy.p0.p0.i64(ptr %t200, ptr %t198, i64 %t199, i1 false)
  %t201 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  %t203 = load ptr, ptr %l89, !tbaa !29
  %t205 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s11, ptr %t203, { i64, ptr } %t202)
  store i32 %t205, ptr %l93
  %t206 = icmp ne i32 %t205, 0
  br i1 %t206, label %bb73, label %ok.207, !prof !99
ok.207:
  br label %bb72
bb72:
  br label %bb74
bb73:
  %t208 = load i32, ptr %l93, !tbaa !23
  %t209 = lshr i32 %t208, 16
  %t210 = and i32 %t208, 65535
  %t211 = icmp eq i32 %t209, 1
  %t212 = select i1 %t211, i32 1, i32 0
  %t213 = icmp eq i32 %t208, 0
  %t214 = shl i32 %t212, 16
  %t215 = or i32 %t214, %t210
  %t216 = select i1 %t213, i32 0, i32 %t215
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s1)
  %t218 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t216, 0
  store { i32, { i64, ptr } } %t218, ptr %rv
  br label %ret
bb74:
  call void @__olang_scope_close(ptr %s11)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/parse:Parser", ptr %t219, i32 0, i32 31
  %t222 = load i64, ptr %l4, !tbaa !24
  %t225 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t221, i64 %t222)
  store { i64, ptr } %t225, ptr %l98
  br label %bb77
bb77:
  %t226 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t226, ptr %l11, !tbaa !27
  %t227 = load ptr, ptr %l2, !tbaa !29
  store ptr %t227, ptr %l99, !tbaa !29
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load i32, ptr %l3, !tbaa !23
  %t232 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t228, i32 %t229)
  store %"compiler/source:Span" %t232, ptr %l102
  br label %bb78
bb78:
  %t233 = ptrtoint ptr %v1 to i64
  store i64 %t233, ptr %l103, !tbaa !24
  %t234 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aCatch_2e1
  br i1 %t234, label %bb79, label %bb80
bb79:
  %t236 = call ptr @__olang_region_make(ptr %v1)
  %t237 = ptrtoint ptr %t236 to i64
  store i64 %t237, ptr %l103, !tbaa !24
  br label %bb80
bb80:
  %t238 = load ptr, ptr %l5, !tbaa !29
  %t239 = load i64, ptr %l103
  %t240 = inttoptr i64 %t239 to ptr
  %t242 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2eToArray_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %t240, ptr %t238)
  store { i64, ptr } %t242, ptr %l106
  br label %bb81
bb81:
  %t243 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t244 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t245 = load i1, ptr %l10, !tbaa !21
  %t246 = load i32, ptr %l6, !tbaa !23
  %t247 = load %"compiler/source:Span", ptr %l7
  %t248 = load %"compiler/source:Span", ptr %l102
  %t249 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t255 = call %"compiler/ast:Catch" @compiler_2fast_3aCatch_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t248, { i64, ptr } %t249, { i64, ptr } %t243, { i64, ptr } %t244, i1 %t245, i32 %t246, %"compiler/source:Span" %t247)
  store %"compiler/ast:Catch" %t255, ptr %l112
  br label %bb82
bb82:
  %t256 = load %"compiler/ast:Catch", ptr %l112
  %t257 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store %"compiler/ast:Catch" %t256, ptr %t257
  %t258 = load ptr, ptr %l99, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCatch_26_3e_2ePush_3ccompiler_2fast_3aCatch_26_3e(ptr %v1, ptr %v1, ptr %t258, ptr %t257)
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s1)
  br label %bb84
bb84:
  br label %bb2
bb85:
  %t260 = load ptr, ptr %l2, !tbaa !29
  %t262 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCatch_26_3e_2eToArray_3ccompiler_2fast_3aCatch_26_3e(ptr %v1, ptr %v1, ptr %t260)
  store { i64, ptr } %t262, ptr %l115
  br label %bb86
bb86:
  %t263 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t264 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t263, 1
  store { i32, { i64, ptr } } %t264, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econdFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i1
  %l8 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i32
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i32
  %l23 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l29 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca i32
  %l35 = alloca %"compiler/source:Span"
  %l39 = alloca %"compiler/source:Span"
  %rv = alloca { i32, ptr }
  %t102 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 9)
  store i1 %t4, ptr %l6
  br label %bb1
bb1:
  %t5 = load i1, ptr %l6, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb8
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/parse:Parser", ptr %t8, i32 0, i32 18
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp eq i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t15)
  store i1 %t17, ptr %l14
  br label %bb6
bb5:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb7
bb6:
  %t18 = load i1, ptr %l14, !tbaa !21
  store i1 %t18, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t19 = load i1, ptr %l12, !tbaa !21
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t20 = load i1, ptr %l8, !tbaa !21
  br i1 %t20, label %bb9, label %bb10
bb9:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = insertvalue { i32, ptr } zeroinitializer, ptr %t21, 1
  store { i32, ptr } %t23, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t24)
  store i32 %t26, ptr %l17
  br label %bb12
bb12:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v2, ptr %t27, i64 1)
  %t30 = extractvalue { i32, ptr } %t29, 1
  %t31 = extractvalue { i32, ptr } %t29, 0
  store i32 %t31, ptr %l21
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb14, label %ok.33, !prof !99
ok.33:
  store ptr %t30, ptr %l20
  br label %bb13
bb13:
  %t34 = load ptr, ptr %l20, !tbaa !29
  store ptr %t34, ptr %l18, !tbaa !29
  br label %bb15
bb14:
  %t35 = load i32, ptr %l21, !tbaa !23
  %t36 = lshr i32 %t35, 16
  %t37 = and i32 %t35, 65535
  %t38 = icmp eq i32 %t36, 1
  %t39 = select i1 %t38, i32 1, i32 0
  %t40 = icmp eq i32 %t35, 0
  %t41 = shl i32 %t39, 16
  %t42 = or i32 %t41, %t37
  %t43 = select i1 %t40, i32 0, i32 %t42
  %t45 = insertvalue { i32, ptr } zeroinitializer, i32 %t43, 0
  store { i32, ptr } %t45, ptr %rv
  br label %ret
bb15:
  %t46 = load ptr, ptr %l18, !tbaa !29
  store ptr %t46, ptr %l2, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t50 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t47, i32 10)
  %t51 = extractvalue { i32, i32 } %t50, 1
  %t52 = extractvalue { i32, i32 } %t50, 0
  store i32 %t52, ptr %l27
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb17, label %ok.54, !prof !99
ok.54:
  store i32 %t51, ptr %l26
  br label %bb16
bb16:
  %t55 = load i32, ptr %l26, !tbaa !23
  store i32 %t55, ptr %l23, !tbaa !23
  br label %bb18
bb17:
  %t56 = load i32, ptr %l27, !tbaa !23
  %t57 = lshr i32 %t56, 16
  %t58 = and i32 %t56, 65535
  %t59 = icmp eq i32 %t57, 1
  %t60 = select i1 %t59, i32 1, i32 0
  %t61 = icmp eq i32 %t56, 0
  %t62 = shl i32 %t60, 16
  %t63 = or i32 %t62, %t58
  %t64 = select i1 %t61, i32 0, i32 %t63
  %t66 = insertvalue { i32, ptr } zeroinitializer, i32 %t64, 0
  store { i32, ptr } %t66, ptr %rv
  br label %ret
bb18:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v2, ptr %t67)
  %t70 = extractvalue { i32, ptr } %t69, 1
  %t71 = extractvalue { i32, ptr } %t69, 0
  store i32 %t71, ptr %l32
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb20, label %ok.73, !prof !99
ok.73:
  store ptr %t70, ptr %l31
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l31, !tbaa !29
  store ptr %t74, ptr %l29, !tbaa !29
  br label %bb21
bb20:
  %t75 = load i32, ptr %l32, !tbaa !23
  %t76 = lshr i32 %t75, 16
  %t77 = and i32 %t75, 65535
  %t78 = icmp eq i32 %t76, 1
  %t79 = select i1 %t78, i32 1, i32 0
  %t80 = icmp eq i32 %t75, 0
  %t81 = shl i32 %t79, 16
  %t82 = or i32 %t81, %t77
  %t83 = select i1 %t80, i32 0, i32 %t82
  %t85 = insertvalue { i32, ptr } zeroinitializer, i32 %t83, 0
  store { i32, ptr } %t85, ptr %rv
  br label %ret
bb21:
  %t86 = load ptr, ptr %l29, !tbaa !29
  store ptr %t86, ptr %l3, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t87)
  store %"compiler/source:Span" %t89, ptr %l35
  br label %bb22
bb22:
  %t90 = getelementptr %"compiler/source:Span", ptr %l35, i32 0, i32 0
  %t91 = load i32, ptr %t90, !tbaa !23
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/parse:Parser", ptr %t92, i32 0, i32 10
  %t95 = load i32, ptr %t94, !tbaa !23
  %t98 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t91, i32 %t95)
  store %"compiler/source:Span" %t98, ptr %l39
  br label %bb23
bb23:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t101 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t102
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 0
  store i64 8, ptr %t103
  %t104 = load %"compiler/source:Span", ptr %l39
  %t105 = insertvalue { %"compiler/source:Span", ptr, ptr, ptr } undef, %"compiler/source:Span" %t104, 0
  %t107 = insertvalue { %"compiler/source:Span", ptr, ptr, ptr } %t105, ptr %t99, 1
  %t109 = insertvalue { %"compiler/source:Span", ptr, ptr, ptr } %t107, ptr %t100, 2
  %t111 = insertvalue { %"compiler/source:Span", ptr, ptr, ptr } %t109, ptr %t101, 3
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr, ptr } %t111, ptr %t112
  %t113 = load { i64, [4 x i64] }, ptr %t102
  %t115 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t113, ptr %t115
  %t117 = insertvalue { i32, ptr } zeroinitializer, ptr %t115, 1
  store { i32, ptr } %t117, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econtractHere(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 110)
  store i1 %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load i1, ptr %l3, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t9 = insertvalue { i32, ptr } zeroinitializer, ptr null, 1
  store { i32, ptr } %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econtract(ptr %v0, ptr %v1, ptr %t10)
  %t13 = extractvalue { i32, ptr } %t12, 1
  %t14 = extractvalue { i32, ptr } %t12, 0
  store i32 %t14, ptr %l9
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb6, label %ok.16, !prof !99
ok.16:
  store ptr %t13, ptr %l8
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l8, !tbaa !29
  store ptr %t17, ptr %l6, !tbaa !29
  br label %bb7
bb6:
  %t18 = load i32, ptr %l9, !tbaa !23
  %t19 = lshr i32 %t18, 16
  %t20 = and i32 %t18, 65535
  %t21 = icmp eq i32 %t19, 1
  %t22 = select i1 %t21, i32 1, i32 0
  %t23 = icmp eq i32 %t18, 0
  %t24 = shl i32 %t22, 16
  %t25 = or i32 %t24, %t20
  %t26 = select i1 %t23, i32 0, i32 %t25
  %t28 = insertvalue { i32, ptr } zeroinitializer, i32 %t26, 0
  store { i32, ptr } %t28, ptr %rv
  br label %ret
bb7:
  %t29 = load ptr, ptr %l6, !tbaa !29
  %t31 = insertvalue { i32, ptr } zeroinitializer, ptr %t29, 1
  store { i32, ptr } %t31, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edecl(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/token:Token"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca %"compiler/token:Token"
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca %"compiler/token:Token"
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l27 = alloca i1
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca i32
  %l34 = alloca i32
  %l36 = alloca i32
  %l40 = alloca i32
  %l43 = alloca i1
  %l44 = alloca i32
  %l46 = alloca i32
  %l47 = alloca i32
  %l51 = alloca i1
  %l53 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l57 = alloca i32
  %l60 = alloca %"compiler/token:Token"
  %l62 = alloca i32
  %l63 = alloca %"compiler/source:Span"
  %l65 = alloca %"compiler/source:Span"
  %l66 = alloca i32
  %l70 = alloca %"compiler/source:Span"
  %l72 = alloca i32
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca i32
  %l78 = alloca %"compiler/source:Span"
  %l84 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca i32
  %l92 = alloca ptr
  %l94 = alloca ptr
  %l95 = alloca i32
  %l103 = alloca i32
  %l106 = alloca i1
  %l108 = alloca i32
  %l109 = alloca i32
  %l111 = alloca i32
  %l112 = alloca i32
  %l116 = alloca %"compiler/source:Span"
  %l118 = alloca i32
  %l120 = alloca %"compiler/source:Span"
  %l121 = alloca i32
  %l124 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l131 = alloca %"compiler/ast:TypeDecl"
  %l135 = alloca %"compiler/source:Span"
  %l137 = alloca %"compiler/source:Span"
  %l138 = alloca i32
  %l142 = alloca i1
  %l143 = alloca ptr
  %l147 = alloca ptr
  %l148 = alloca i32
  %l153 = alloca ptr
  %l155 = alloca { i64, ptr }
  %l157 = alloca i32
  %l159 = alloca ptr
  %l162 = alloca ptr
  %l163 = alloca i32
  %l166 = alloca i32
  %l174 = alloca i32
  %l177 = alloca i1
  %l178 = alloca ptr
  %l180 = alloca ptr
  %l181 = alloca i32
  %l186 = alloca i1
  %l188 = alloca ptr
  %l190 = alloca { i64, ptr }
  %l192 = alloca i32
  %l195 = alloca %"compiler/token:Token"
  %l197 = alloca i32
  %l198 = alloca { i64, ptr }
  %l200 = alloca { i64, ptr }
  %l201 = alloca i32
  %l205 = alloca %"compiler/source:Span"
  %l208 = alloca %"compiler/source:Span"
  %l215 = alloca ptr
  %l217 = alloca ptr
  %l218 = alloca i32
  %l224 = alloca i32
  %l225 = alloca ptr
  %l227 = alloca ptr
  %l228 = alloca i32
  %l232 = alloca i1
  %l233 = alloca ptr
  %l235 = alloca ptr
  %l236 = alloca i32
  %l241 = alloca %"compiler/source:Span"
  %l243 = alloca i32
  %l252 = alloca ptr
  %l254 = alloca %"compiler/token:Token"
  %l255 = alloca { i64, ptr }
  %l256 = alloca i1
  %l257 = alloca i1
  %l259 = alloca i32
  %l263 = alloca i32
  %l264 = alloca ptr
  %l266 = alloca ptr
  %l267 = alloca i32
  %l271 = alloca %"compiler/source:Span"
  %l290 = alloca %"compiler/ast:Func"
  %l295 = alloca i32
  %l299 = alloca %"compiler/token:Token"
  %l300 = alloca i32
  %l302 = alloca i32
  %l303 = alloca i32
  %l306 = alloca i32
  %l307 = alloca ptr
  %l309 = alloca ptr
  %l310 = alloca i32
  %l314 = alloca %"compiler/source:Span"
  %l316 = alloca i32
  %l318 = alloca %"compiler/source:Span"
  %l321 = alloca %"compiler/source:Span"
  %l328 = alloca ptr
  %l330 = alloca ptr
  %l331 = alloca i32
  %l335 = alloca %"compiler/source:Span"
  %l337 = alloca i32
  %l344 = alloca i32
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t160 = alloca { i64, [8 x i64] }, align 8
  %t229 = alloca { i64, [8 x i64] }, align 8
  %t306 = alloca { i64, [6 x i64] }, align 8
  %t326 = alloca { i64, [8 x i64] }, align 8
  %t459 = alloca { i64, [8 x i64] }, align 8
  %t577 = alloca { i64, [8 x i64] }, align 8
  %t699 = alloca { i64, [8 x i64] }, align 8
  %t814 = alloca { i64, [8 x i64] }, align 8
  %t910 = alloca { i64, [4 x i64] }, align 8
  %t921 = alloca { i64, [8 x i64] }, align 8
  %t979 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 74)
  store i1 %t4, ptr %l27
  br label %bb1
bb1:
  %t5 = load i1, ptr %l27, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattributed(ptr %v0, ptr %v1, ptr %t6)
  %t9 = extractvalue { i32, ptr } %t8, 1
  %t10 = extractvalue { i32, ptr } %t8, 0
  store i32 %t10, ptr %l31
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store ptr %t9, ptr %l30
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t13 = load ptr, ptr %l30, !tbaa !29
  store ptr %t13, ptr %l28, !tbaa !29
  br label %bb6
bb5:
  %t14 = load i32, ptr %l31, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 1, i32 0
  %t19 = icmp eq i32 %t14, 0
  %t20 = shl i32 %t18, 16
  %t21 = or i32 %t20, %t16
  %t22 = select i1 %t19, i32 0, i32 %t21
  %t24 = insertvalue { i32, ptr } zeroinitializer, i32 %t22, 0
  store { i32, ptr } %t24, ptr %rv
  br label %ret
bb6:
  %t25 = load ptr, ptr %l28, !tbaa !29
  %t26 = insertvalue { i32, ptr } zeroinitializer, ptr %t25, 1
  store { i32, ptr } %t26, ptr %rv
  br label %ret
bb7:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t27)
  store i32 %t29, ptr %l34
  br label %bb8
bb8:
  %t30 = load i32, ptr %l34, !tbaa !23
  store i32 %t30, ptr %l1, !tbaa !23
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t31)
  store i32 %t33, ptr %l36
  br label %bb9
bb9:
  %t34 = load i32, ptr %l36, !range !{i32 0, i32 114}
  store i32 %t34, ptr %l2
  %t35 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t37 = trunc i64 40 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb39
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t40)
  store i32 %t42, ptr %l40
  br label %bb13
bb13:
  store i32 0, ptr %l3, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t46 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t43, i32 1)
  store i1 %t46, ptr %l43
  br label %bb14
bb14:
  %t47 = load i1, ptr %l43, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t48)
  %t51 = extractvalue { i32, i32 } %t50, 1
  %t52 = extractvalue { i32, i32 } %t50, 0
  store i32 %t52, ptr %l47
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb18, label %ok.54, !prof !99
ok.54:
  store i32 %t51, ptr %l46
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t55 = load i32, ptr %l46, !tbaa !23
  store i32 %t55, ptr %l44, !tbaa !23
  br label %bb19
bb18:
  %t56 = load i32, ptr %l47, !tbaa !23
  %t57 = lshr i32 %t56, 16
  %t58 = and i32 %t56, 65535
  %t59 = icmp eq i32 %t57, 1
  %t60 = select i1 %t59, i32 1, i32 0
  %t61 = icmp eq i32 %t56, 0
  %t62 = shl i32 %t60, 16
  %t63 = or i32 %t62, %t58
  %t64 = select i1 %t61, i32 0, i32 %t63
  %t66 = insertvalue { i32, ptr } zeroinitializer, i32 %t64, 0
  store { i32, ptr } %t66, ptr %rv
  br label %ret
bb19:
  %t67 = load i32, ptr %l44, !tbaa !23
  store i32 %t67, ptr %l3, !tbaa !23
  br label %bb20
bb20:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t68, i32 5)
  store i1 %t71, ptr %l51
  br label %bb21
bb21:
  %t72 = load i1, ptr %l51, !tbaa !21
  %t73 = xor i1 %t72, true
  br i1 %t73, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l53, !tbaa !29
  %t77 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s4, i32 5)
  store { i64, ptr } %t77, ptr %l55
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t78 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load ptr, ptr %l53, !tbaa !29
  %t87 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s4, ptr %t85, { i64, ptr } %t84)
  store i32 %t87, ptr %l57
  %t88 = icmp ne i32 %t87, 0
  br i1 %t88, label %bb26, label %ok.89, !prof !99
ok.89:
  br label %bb25
bb25:
  br label %bb27
bb26:
  %t90 = load i32, ptr %l57, !tbaa !23
  %t91 = lshr i32 %t90, 16
  %t92 = and i32 %t90, 65535
  %t93 = icmp eq i32 %t91, 1
  %t94 = select i1 %t93, i32 1, i32 0
  %t95 = icmp eq i32 %t90, 0
  %t96 = shl i32 %t94, 16
  %t97 = or i32 %t96, %t92
  %t98 = select i1 %t95, i32 0, i32 %t97
  call void @__olang_scope_close(ptr %s4)
  %t100 = insertvalue { i32, ptr } zeroinitializer, i32 %t98, 0
  store { i32, ptr } %t100, ptr %rv
  br label %ret
bb27:
  call void @__olang_scope_close(ptr %s4)
  br label %bb28
bb28:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t101)
  store %"compiler/token:Token" %t103, ptr %l60
  br label %bb29
bb29:
  %t104 = load %"compiler/token:Token", ptr %l60
  store %"compiler/token:Token" %t104, ptr %l4
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t105)
  store i32 %t107, ptr %l62
  br label %bb30
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = call { i32, %"compiler/source:Span" } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elinkClause(ptr %v0, ptr %t108)
  %t111 = extractvalue { i32, %"compiler/source:Span" } %t110, 1
  %t112 = extractvalue { i32, %"compiler/source:Span" } %t110, 0
  store i32 %t112, ptr %l66
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb32, label %ok.114, !prof !99
ok.114:
  store %"compiler/source:Span" %t111, ptr %l65
  br label %bb31
bb31:
  %t115 = load %"compiler/source:Span", ptr %l65
  store %"compiler/source:Span" %t115, ptr %l63
  br label %bb33
bb32:
  %t116 = load i32, ptr %l66, !tbaa !23
  %t117 = lshr i32 %t116, 16
  %t118 = and i32 %t116, 65535
  %t119 = icmp eq i32 %t117, 1
  %t120 = select i1 %t119, i32 1, i32 0
  %t121 = icmp eq i32 %t116, 0
  %t122 = shl i32 %t120, 16
  %t123 = or i32 %t122, %t118
  %t124 = select i1 %t121, i32 0, i32 %t123
  %t126 = insertvalue { i32, ptr } zeroinitializer, i32 %t124, 0
  store { i32, ptr } %t126, ptr %rv
  br label %ret
bb33:
  %t127 = load %"compiler/source:Span", ptr %l63
  store %"compiler/source:Span" %t127, ptr %l5
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i32, ptr %l1, !tbaa !23
  %t132 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t128, i32 %t129)
  store %"compiler/source:Span" %t132, ptr %l70
  br label %bb34
bb34:
  %t133 = load %"compiler/source:Span", ptr %l70
  store %"compiler/source:Span" %t133, ptr %l6
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t134)
  store i32 %t136, ptr %l72
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb36, label %ok.138, !prof !99
ok.138:
  br label %bb35
bb35:
  br label %bb37
bb36:
  %t139 = load i32, ptr %l72, !tbaa !23
  %t140 = lshr i32 %t139, 16
  %t141 = and i32 %t139, 65535
  %t142 = icmp eq i32 %t140, 1
  %t143 = select i1 %t142, i32 1, i32 0
  %t144 = icmp eq i32 %t139, 0
  %t145 = shl i32 %t143, 16
  %t146 = or i32 %t145, %t141
  %t147 = select i1 %t144, i32 0, i32 %t146
  %t149 = insertvalue { i32, ptr } zeroinitializer, i32 %t147, 0
  store { i32, ptr } %t149, ptr %rv
  br label %ret
bb37:
  %t150 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t150, ptr %l74
  %t151 = load i32, ptr %l3, !tbaa !23
  store i32 %t151, ptr %l75, !tbaa !23
  %t152 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 2
  %t153 = load i32, ptr %t152, !tbaa !23
  %t154 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 3
  %t155 = load i32, ptr %t154, !tbaa !23
  %t158 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 %t153, i32 %t155)
  store %"compiler/source:Span" %t158, ptr %l78
  br label %bb38
bb38:
  %t159 = load %"compiler/source:Span", ptr %l5
  store { i64, [8 x i64] } zeroinitializer, ptr %t160
  %t161 = getelementptr { i64, [8 x i64] }, ptr %t160, i32 0, i32 0
  store i64 4, ptr %t161
  %t162 = load %"compiler/source:Span", ptr %l74
  %t163 = insertvalue { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" } undef, %"compiler/source:Span" %t162, 0
  %t164 = load i32, ptr %l75, !tbaa !23
  %t165 = insertvalue { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" } %t163, i32 %t164, 1
  %t166 = load %"compiler/source:Span", ptr %l78
  %t167 = insertvalue { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" } %t165, %"compiler/source:Span" %t166, 2
  %t169 = insertvalue { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" } %t167, %"compiler/source:Span" %t159, 3
  %t170 = getelementptr { i64, [8 x i64] }, ptr %t160, i32 0, i32 1
  store { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" } %t169, ptr %t170
  %t171 = load { i64, [8 x i64] }, ptr %t160
  %t173 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t171, ptr %t173
  %t175 = insertvalue { i32, ptr } zeroinitializer, ptr %t173, 1
  store { i32, ptr } %t175, ptr %rv
  br label %ret
bb39:
  %t176 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t178 = trunc i64 33 to i32
  %t179 = icmp eq i32 %t176, %t178
  br i1 %t179, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeDecl(ptr %v0, ptr %v1, ptr %t181)
  %t184 = extractvalue { i32, ptr } %t183, 1
  %t185 = extractvalue { i32, ptr } %t183, 0
  store i32 %t185, ptr %l87
  %t186 = icmp ne i32 %t185, 0
  br i1 %t186, label %bb44, label %ok.187, !prof !99
ok.187:
  store ptr %t184, ptr %l86
  br label %bb43
bb43:
  %t188 = load ptr, ptr %l86, !tbaa !29
  store ptr %t188, ptr %l84, !tbaa !29
  br label %bb45
bb44:
  %t189 = load i32, ptr %l87, !tbaa !23
  %t190 = lshr i32 %t189, 16
  %t191 = and i32 %t189, 65535
  %t192 = icmp eq i32 %t190, 1
  %t193 = select i1 %t192, i32 1, i32 0
  %t194 = icmp eq i32 %t189, 0
  %t195 = shl i32 %t193, 16
  %t196 = or i32 %t195, %t191
  %t197 = select i1 %t194, i32 0, i32 %t196
  %t199 = insertvalue { i32, ptr } zeroinitializer, i32 %t197, 0
  store { i32, ptr } %t199, ptr %rv
  br label %ret
bb45:
  %t200 = load ptr, ptr %l84, !tbaa !29
  %t202 = insertvalue { i32, ptr } zeroinitializer, ptr %t200, 1
  store { i32, ptr } %t202, ptr %rv
  br label %ret
bb46:
  %t203 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t205 = trunc i64 37 to i32
  %t206 = icmp eq i32 %t203, %t205
  br i1 %t206, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb53
bb49:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efunction(ptr %v0, ptr %v1, ptr %t208)
  %t211 = extractvalue { i32, ptr } %t210, 1
  %t212 = extractvalue { i32, ptr } %t210, 0
  store i32 %t212, ptr %l95
  %t213 = icmp ne i32 %t212, 0
  br i1 %t213, label %bb51, label %ok.214, !prof !99
ok.214:
  store ptr %t211, ptr %l94
  br label %bb50
bb50:
  %t215 = load ptr, ptr %l94, !tbaa !29
  store ptr %t215, ptr %l92, !tbaa !29
  br label %bb52
bb51:
  %t216 = load i32, ptr %l95, !tbaa !23
  %t217 = lshr i32 %t216, 16
  %t218 = and i32 %t216, 65535
  %t219 = icmp eq i32 %t217, 1
  %t220 = select i1 %t219, i32 1, i32 0
  %t221 = icmp eq i32 %t216, 0
  %t222 = shl i32 %t220, 16
  %t223 = or i32 %t222, %t218
  %t224 = select i1 %t221, i32 0, i32 %t223
  %t226 = insertvalue { i32, ptr } zeroinitializer, i32 %t224, 0
  store { i32, ptr } %t226, ptr %rv
  br label %ret
bb52:
  %t227 = load ptr, ptr %l92, !tbaa !29
  store { i64, [8 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [8 x i64] }, ptr %t229, i32 0, i32 0
  store i64 0, ptr %t230
  %t232 = insertvalue { ptr } undef, ptr %t227, 0
  %t233 = getelementptr { i64, [8 x i64] }, ptr %t229, i32 0, i32 1
  store { ptr } %t232, ptr %t233
  %t234 = load { i64, [8 x i64] }, ptr %t229
  %t236 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t234, ptr %t236
  %t238 = insertvalue { i32, ptr } zeroinitializer, ptr %t236, 1
  store { i32, ptr } %t238, ptr %rv
  br label %ret
bb53:
  %t239 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t241 = trunc i64 43 to i32
  %t242 = icmp eq i32 %t239, %t241
  br i1 %t242, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb102
bb56:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t244)
  store i32 %t246, ptr %l103
  br label %bb57
bb57:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t250 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t247, i32 33)
  store i1 %t250, ptr %l106
  br label %bb58
bb58:
  %t251 = load i1, ptr %l106, !tbaa !21
  br i1 %t251, label %bb59, label %bb60
bb59:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t252)
  store i32 %t254, ptr %l108
  br label %bb61
bb60:
  br label %bb78
bb61:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t255)
  %t258 = extractvalue { i32, i32 } %t257, 1
  %t259 = extractvalue { i32, i32 } %t257, 0
  store i32 %t259, ptr %l112
  %t260 = icmp ne i32 %t259, 0
  br i1 %t260, label %bb63, label %ok.261, !prof !99
ok.261:
  store i32 %t258, ptr %l111
  br label %bb62
bb62:
  %t262 = load i32, ptr %l111, !tbaa !23
  store i32 %t262, ptr %l109, !tbaa !23
  br label %bb64
bb63:
  %t263 = load i32, ptr %l112, !tbaa !23
  %t264 = lshr i32 %t263, 16
  %t265 = and i32 %t263, 65535
  %t266 = icmp eq i32 %t264, 1
  %t267 = select i1 %t266, i32 1, i32 0
  %t268 = icmp eq i32 %t263, 0
  %t269 = shl i32 %t267, 16
  %t270 = or i32 %t269, %t265
  %t271 = select i1 %t268, i32 0, i32 %t270
  %t273 = insertvalue { i32, ptr } zeroinitializer, i32 %t271, 0
  store { i32, ptr } %t273, ptr %rv
  br label %ret
bb64:
  %t274 = load i32, ptr %l109, !tbaa !23
  store i32 %t274, ptr %l8, !tbaa !23
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load i32, ptr %l1, !tbaa !23
  %t279 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t275, i32 %t276)
  store %"compiler/source:Span" %t279, ptr %l116
  br label %bb65
bb65:
  %t280 = load %"compiler/source:Span", ptr %l116
  store %"compiler/source:Span" %t280, ptr %l9
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t281)
  store i32 %t283, ptr %l118
  %t284 = icmp ne i32 %t283, 0
  br i1 %t284, label %bb67, label %ok.285, !prof !99
ok.285:
  br label %bb66
bb66:
  br label %bb68
bb67:
  %t286 = load i32, ptr %l118, !tbaa !23
  %t287 = lshr i32 %t286, 16
  %t288 = and i32 %t286, 65535
  %t289 = icmp eq i32 %t287, 1
  %t290 = select i1 %t289, i32 1, i32 0
  %t291 = icmp eq i32 %t286, 0
  %t292 = shl i32 %t290, 16
  %t293 = or i32 %t292, %t288
  %t294 = select i1 %t291, i32 0, i32 %t293
  %t296 = insertvalue { i32, ptr } zeroinitializer, i32 %t294, 0
  store { i32, ptr } %t296, ptr %rv
  br label %ret
bb68:
  %t297 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t297, ptr %l120
  %t298 = load i32, ptr %l8, !tbaa !23
  store i32 %t298, ptr %l121, !tbaa !23
  %t299 = icmp sge i64 0, 0
  br i1 %t299, label %bb69, label %bb70
bb69:
  %t301 = icmp sle i64 0, 1152921504606846975
  br i1 %t301, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_acdf3c0d270865a2_ccca0ad6e9b656fe)
  unreachable
bb71:
  %t303 = mul i64 0, 8
  %t304 = insertvalue { i64, ptr } undef, i64 0, 0
  %t305 = insertvalue { i64, ptr } %t304, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t305, ptr %l124, !tbaa !27
  store { i64, [6 x i64] } zeroinitializer, ptr %t306
  %t307 = getelementptr { i64, [6 x i64] }, ptr %t306, i32 0, i32 0
  store i64 4, ptr %t307
  %t308 = load { i64, [6 x i64] }, ptr %t306
  %t310 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store { i64, [6 x i64] } %t308, ptr %t310
  store ptr %t310, ptr %l126, !tbaa !29
  %t311 = icmp sge i64 0, 0
  br i1 %t311, label %bb73, label %bb74
bb72:
  call void @__olang_check_failed(ptr @olang_loc_acdf3c0d270865a2_ccca0ad6e9b656fe)
  unreachable
bb73:
  %t313 = icmp sle i64 0, 1152921504606846975
  br i1 %t313, label %bb75, label %bb76
bb74:
  call void @__olang_check_failed(ptr @olang_loc_cc3881dfbae8f257_2de1f0f6d1f4ac33)
  unreachable
bb75:
  %t315 = mul i64 0, 8
  %t316 = insertvalue { i64, ptr } undef, i64 0, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t318 = load i32, ptr %l121, !tbaa !23
  %t319 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t320 = load ptr, ptr %l126, !tbaa !29
  %t323 = call %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t318, { i64, ptr } %t319, i1 false, ptr %t320, { i64, ptr } %t317, i32 0, i1 false)
  store %"compiler/ast:TypeDecl" %t323, ptr %l131
  br label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_cc3881dfbae8f257_2de1f0f6d1f4ac33)
  unreachable
bb77:
  %t324 = load %"compiler/ast:TypeDecl", ptr %l131
  %t325 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/ast:TypeDecl" %t324, ptr %t325
  store { i64, [8 x i64] } zeroinitializer, ptr %t326
  %t327 = getelementptr { i64, [8 x i64] }, ptr %t326, i32 0, i32 0
  store i64 2, ptr %t327
  %t328 = load %"compiler/source:Span", ptr %l120
  %t329 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t328, 0
  %t331 = insertvalue { %"compiler/source:Span", ptr } %t329, ptr %t325, 1
  %t332 = getelementptr { i64, [8 x i64] }, ptr %t326, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t331, ptr %t332
  %t333 = load { i64, [8 x i64] }, ptr %t326
  %t335 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t333, ptr %t335
  %t337 = insertvalue { i32, ptr } zeroinitializer, ptr %t335, 1
  store { i32, ptr } %t337, ptr %rv
  br label %ret
bb78:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = call { i32, %"compiler/source:Span" } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elinkClause(ptr %v0, ptr %t338)
  %t341 = extractvalue { i32, %"compiler/source:Span" } %t340, 1
  %t342 = extractvalue { i32, %"compiler/source:Span" } %t340, 0
  store i32 %t342, ptr %l138
  %t343 = icmp ne i32 %t342, 0
  br i1 %t343, label %bb80, label %ok.344, !prof !99
ok.344:
  store %"compiler/source:Span" %t341, ptr %l137
  br label %bb79
bb79:
  %t345 = load %"compiler/source:Span", ptr %l137
  store %"compiler/source:Span" %t345, ptr %l135
  br label %bb81
bb80:
  %t346 = load i32, ptr %l138, !tbaa !23
  %t347 = lshr i32 %t346, 16
  %t348 = and i32 %t346, 65535
  %t349 = icmp eq i32 %t347, 1
  %t350 = select i1 %t349, i32 1, i32 0
  %t351 = icmp eq i32 %t346, 0
  %t352 = shl i32 %t350, 16
  %t353 = or i32 %t352, %t348
  %t354 = select i1 %t351, i32 0, i32 %t353
  %t356 = insertvalue { i32, ptr } zeroinitializer, i32 %t354, 0
  store { i32, ptr } %t356, ptr %rv
  br label %ret
bb81:
  %t357 = load %"compiler/source:Span", ptr %l135
  store %"compiler/source:Span" %t357, ptr %l10
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t361 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t358, i32 112)
  store i1 %t361, ptr %l142
  br label %bb82
bb82:
  %t362 = load i1, ptr %l142, !tbaa !21
  br i1 %t362, label %bb83, label %bb84
bb83:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load i32, ptr %l1, !tbaa !23
  %t365 = load %"compiler/source:Span", ptr %l10
  %t369 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexternBlock(ptr %v0, ptr %v1, ptr %t363, i32 %t364, %"compiler/source:Span" %t365)
  %t370 = extractvalue { i32, ptr } %t369, 1
  %t371 = extractvalue { i32, ptr } %t369, 0
  store i32 %t371, ptr %l148
  %t372 = icmp ne i32 %t371, 0
  br i1 %t372, label %bb86, label %ok.373, !prof !99
ok.373:
  store ptr %t370, ptr %l147
  br label %bb85
bb84:
  br label %bb88
bb85:
  %t374 = load ptr, ptr %l147, !tbaa !29
  store ptr %t374, ptr %l143, !tbaa !29
  br label %bb87
bb86:
  %t375 = load i32, ptr %l148, !tbaa !23
  %t376 = lshr i32 %t375, 16
  %t377 = and i32 %t375, 65535
  %t378 = icmp eq i32 %t376, 1
  %t379 = select i1 %t378, i32 1, i32 0
  %t380 = icmp eq i32 %t375, 0
  %t381 = shl i32 %t379, 16
  %t382 = or i32 %t381, %t377
  %t383 = select i1 %t380, i32 0, i32 %t382
  %t385 = insertvalue { i32, ptr } zeroinitializer, i32 %t383, 0
  store { i32, ptr } %t385, ptr %rv
  br label %ret
bb87:
  %t386 = load ptr, ptr %l143, !tbaa !29
  %t388 = insertvalue { i32, ptr } zeroinitializer, ptr %t386, 1
  store { i32, ptr } %t388, ptr %rv
  br label %ret
bb88:
  %t389 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t390 = load i32, ptr %t389, !tbaa !23
  %t392 = icmp sgt i32 %t390, 0
  br i1 %t392, label %bb89, label %bb90
bb89:
  store %olang.scope zeroinitializer, ptr %s10
  %t394 = load ptr, ptr %l0, !tbaa !29
  store ptr %t394, ptr %l153, !tbaa !29
  %t396 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s10, i32 112)
  store { i64, ptr } %t396, ptr %l155
  br label %bb91
bb90:
  br label %bb95
bb91:
  %t397 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t398 = extractvalue { i64, ptr } %t397, 0
  %t399 = extractvalue { i64, ptr } %t397, 1
  %t400 = mul i64 %t398, 1
  %t401 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t400)
  call void @llvm.memcpy.p0.p0.i64(ptr %t401, ptr %t399, i64 %t400, i1 false)
  %t402 = insertvalue { i64, ptr } undef, i64 %t398, 0
  %t403 = insertvalue { i64, ptr } %t402, ptr %t401, 1
  %t404 = load ptr, ptr %l153, !tbaa !29
  %t406 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s10, ptr %t404, { i64, ptr } %t403)
  store i32 %t406, ptr %l157
  %t407 = icmp ne i32 %t406, 0
  br i1 %t407, label %bb93, label %ok.408, !prof !99
ok.408:
  br label %bb92
bb92:
  br label %bb94
bb93:
  %t409 = load i32, ptr %l157, !tbaa !23
  %t410 = lshr i32 %t409, 16
  %t411 = and i32 %t409, 65535
  %t412 = icmp eq i32 %t410, 1
  %t413 = select i1 %t412, i32 1, i32 0
  %t414 = icmp eq i32 %t409, 0
  %t415 = shl i32 %t413, 16
  %t416 = or i32 %t415, %t411
  %t417 = select i1 %t414, i32 0, i32 %t416
  call void @__olang_scope_close(ptr %s10)
  %t419 = insertvalue { i32, ptr } zeroinitializer, i32 %t417, 0
  store { i32, ptr } %t419, ptr %rv
  br label %ret
bb94:
  call void @__olang_scope_close(ptr %s10)
  br label %bb95
bb95:
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t421 = load i32, ptr %l1, !tbaa !23
  %t424 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexternFn(ptr %v0, ptr %v1, ptr %t420, i32 %t421)
  %t425 = extractvalue { i32, ptr } %t424, 1
  %t426 = extractvalue { i32, ptr } %t424, 0
  store i32 %t426, ptr %l163
  %t427 = icmp ne i32 %t426, 0
  br i1 %t427, label %bb97, label %ok.428, !prof !99
ok.428:
  store ptr %t425, ptr %l162
  br label %bb96
bb96:
  %t429 = load ptr, ptr %l162, !tbaa !29
  store ptr %t429, ptr %l159, !tbaa !29
  br label %bb98
bb97:
  %t430 = load i32, ptr %l163, !tbaa !23
  %t431 = lshr i32 %t430, 16
  %t432 = and i32 %t430, 65535
  %t433 = icmp eq i32 %t431, 1
  %t434 = select i1 %t433, i32 1, i32 0
  %t435 = icmp eq i32 %t430, 0
  %t436 = shl i32 %t434, 16
  %t437 = or i32 %t436, %t432
  %t438 = select i1 %t435, i32 0, i32 %t437
  %t440 = insertvalue { i32, ptr } zeroinitializer, i32 %t438, 0
  store { i32, ptr } %t440, ptr %rv
  br label %ret
bb98:
  %t441 = load ptr, ptr %l159, !tbaa !29
  store ptr %t441, ptr %l11, !tbaa !29
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t442)
  store i32 %t444, ptr %l166
  %t445 = icmp ne i32 %t444, 0
  br i1 %t445, label %bb100, label %ok.446, !prof !99
ok.446:
  br label %bb99
bb99:
  br label %bb101
bb100:
  %t447 = load i32, ptr %l166, !tbaa !23
  %t448 = lshr i32 %t447, 16
  %t449 = and i32 %t447, 65535
  %t450 = icmp eq i32 %t448, 1
  %t451 = select i1 %t450, i32 1, i32 0
  %t452 = icmp eq i32 %t447, 0
  %t453 = shl i32 %t451, 16
  %t454 = or i32 %t453, %t449
  %t455 = select i1 %t452, i32 0, i32 %t454
  %t457 = insertvalue { i32, ptr } zeroinitializer, i32 %t455, 0
  store { i32, ptr } %t457, ptr %rv
  br label %ret
bb101:
  %t458 = load ptr, ptr %l11, !tbaa !29
  store { i64, [8 x i64] } zeroinitializer, ptr %t459
  %t460 = getelementptr { i64, [8 x i64] }, ptr %t459, i32 0, i32 0
  store i64 1, ptr %t460
  %t462 = insertvalue { ptr } undef, ptr %t458, 0
  %t463 = getelementptr { i64, [8 x i64] }, ptr %t459, i32 0, i32 1
  store { ptr } %t462, ptr %t463
  %t464 = load { i64, [8 x i64] }, ptr %t459
  %t466 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t464, ptr %t466
  %t468 = insertvalue { i32, ptr } zeroinitializer, ptr %t466, 1
  store { i32, ptr } %t468, ptr %rv
  br label %ret
bb102:
  %t469 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t471 = trunc i64 41 to i32
  %t472 = icmp eq i32 %t469, %t471
  br i1 %t472, label %bb103, label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb129
bb105:
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t476 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t474)
  store i32 %t476, ptr %l174
  br label %bb106
bb106:
  store ptr null, ptr %l12, !tbaa !29
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t480 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t477, i32 1)
  store i1 %t480, ptr %l177
  br label %bb107
bb107:
  %t481 = load i1, ptr %l177, !tbaa !21
  br i1 %t481, label %bb108, label %bb109
bb108:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epath(ptr %v0, ptr %v1, ptr %t482)
  %t485 = extractvalue { i32, ptr } %t484, 1
  %t486 = extractvalue { i32, ptr } %t484, 0
  store i32 %t486, ptr %l181
  %t487 = icmp ne i32 %t486, 0
  br i1 %t487, label %bb111, label %ok.488, !prof !99
ok.488:
  store ptr %t485, ptr %l180
  br label %bb110
bb109:
  br label %bb113
bb110:
  %t489 = load ptr, ptr %l180, !tbaa !29
  store ptr %t489, ptr %l178, !tbaa !29
  br label %bb112
bb111:
  %t490 = load i32, ptr %l181, !tbaa !23
  %t491 = lshr i32 %t490, 16
  %t492 = and i32 %t490, 65535
  %t493 = icmp eq i32 %t491, 1
  %t494 = select i1 %t493, i32 1, i32 0
  %t495 = icmp eq i32 %t490, 0
  %t496 = shl i32 %t494, 16
  %t497 = or i32 %t496, %t492
  %t498 = select i1 %t495, i32 0, i32 %t497
  %t500 = insertvalue { i32, ptr } zeroinitializer, i32 %t498, 0
  store { i32, ptr } %t500, ptr %rv
  br label %ret
bb112:
  %t501 = load ptr, ptr %l178, !tbaa !29
  store ptr %t501, ptr %l12, !tbaa !29
  br label %bb113
bb113:
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t506 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t503, i32 5)
  store i1 %t506, ptr %l186
  br label %bb114
bb114:
  %t507 = load i1, ptr %l186, !tbaa !21
  %t508 = xor i1 %t507, true
  br i1 %t508, label %bb115, label %bb116
bb115:
  store %olang.scope zeroinitializer, ptr %s13
  %t510 = load ptr, ptr %l0, !tbaa !29
  store ptr %t510, ptr %l188, !tbaa !29
  %t512 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s13, i32 5)
  store { i64, ptr } %t512, ptr %l190
  br label %bb117
bb116:
  br label %bb121
bb117:
  %t513 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t514 = extractvalue { i64, ptr } %t513, 0
  %t515 = extractvalue { i64, ptr } %t513, 1
  %t516 = mul i64 %t514, 1
  %t517 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t516)
  call void @llvm.memcpy.p0.p0.i64(ptr %t517, ptr %t515, i64 %t516, i1 false)
  %t518 = insertvalue { i64, ptr } undef, i64 %t514, 0
  %t519 = insertvalue { i64, ptr } %t518, ptr %t517, 1
  %t520 = load ptr, ptr %l188, !tbaa !29
  %t522 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s13, ptr %t520, { i64, ptr } %t519)
  store i32 %t522, ptr %l192
  %t523 = icmp ne i32 %t522, 0
  br i1 %t523, label %bb119, label %ok.524, !prof !99
ok.524:
  br label %bb118
bb118:
  br label %bb120
bb119:
  %t525 = load i32, ptr %l192, !tbaa !23
  %t526 = lshr i32 %t525, 16
  %t527 = and i32 %t525, 65535
  %t528 = icmp eq i32 %t526, 1
  %t529 = select i1 %t528, i32 1, i32 0
  %t530 = icmp eq i32 %t525, 0
  %t531 = shl i32 %t529, 16
  %t532 = or i32 %t531, %t527
  %t533 = select i1 %t530, i32 0, i32 %t532
  call void @__olang_scope_close(ptr %s13)
  %t535 = insertvalue { i32, ptr } zeroinitializer, i32 %t533, 0
  store { i32, ptr } %t535, ptr %rv
  br label %ret
bb120:
  call void @__olang_scope_close(ptr %s13)
  br label %bb121
bb121:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t536)
  store %"compiler/token:Token" %t538, ptr %l195
  br label %bb122
bb122:
  %t539 = load %"compiler/token:Token", ptr %l195
  store %"compiler/token:Token" %t539, ptr %l13
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t542 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t540)
  store i32 %t542, ptr %l197
  br label %bb123
bb123:
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t545 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t543)
  %t546 = extractvalue { i32, { i64, ptr } } %t545, 1
  %t547 = extractvalue { i32, { i64, ptr } } %t545, 0
  store i32 %t547, ptr %l201
  %t548 = icmp ne i32 %t547, 0
  br i1 %t548, label %bb125, label %ok.549, !prof !99
ok.549:
  store { i64, ptr } %t546, ptr %l200
  br label %bb124
bb124:
  %t550 = load { i64, ptr }, ptr %l200, !tbaa !27
  store { i64, ptr } %t550, ptr %l198, !tbaa !27
  br label %bb126
bb125:
  %t551 = load i32, ptr %l201, !tbaa !23
  %t552 = lshr i32 %t551, 16
  %t553 = and i32 %t551, 65535
  %t554 = icmp eq i32 %t552, 1
  %t555 = select i1 %t554, i32 1, i32 0
  %t556 = icmp eq i32 %t551, 0
  %t557 = shl i32 %t555, 16
  %t558 = or i32 %t557, %t553
  %t559 = select i1 %t556, i32 0, i32 %t558
  %t561 = insertvalue { i32, ptr } zeroinitializer, i32 %t559, 0
  store { i32, ptr } %t561, ptr %rv
  br label %ret
bb126:
  %t562 = load { i64, ptr }, ptr %l198, !tbaa !27
  store { i64, ptr } %t562, ptr %l14, !tbaa !27
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load i32, ptr %l1, !tbaa !23
  %t567 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t563, i32 %t564)
  store %"compiler/source:Span" %t567, ptr %l205
  br label %bb127
bb127:
  %t568 = getelementptr %"compiler/token:Token", ptr %l13, i32 0, i32 2
  %t569 = load i32, ptr %t568, !tbaa !23
  %t570 = getelementptr %"compiler/token:Token", ptr %l13, i32 0, i32 3
  %t571 = load i32, ptr %t570, !tbaa !23
  %t574 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 %t569, i32 %t571)
  store %"compiler/source:Span" %t574, ptr %l208
  br label %bb128
bb128:
  %t575 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t576 = load ptr, ptr %l12, !tbaa !29
  store { i64, [8 x i64] } zeroinitializer, ptr %t577
  %t578 = getelementptr { i64, [8 x i64] }, ptr %t577, i32 0, i32 0
  store i64 6, ptr %t578
  %t579 = load %"compiler/source:Span", ptr %l205
  %t580 = insertvalue { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr } undef, %"compiler/source:Span" %t579, 0
  %t581 = load %"compiler/source:Span", ptr %l208
  %t582 = insertvalue { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr } %t580, %"compiler/source:Span" %t581, 1
  %t584 = insertvalue { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr } %t582, { i64, ptr } %t575, 2
  %t586 = insertvalue { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr } %t584, ptr %t576, 3
  %t587 = getelementptr { i64, [8 x i64] }, ptr %t577, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr } %t586, ptr %t587
  %t588 = load { i64, [8 x i64] }, ptr %t577
  %t590 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t588, ptr %t590
  %t592 = insertvalue { i32, ptr } zeroinitializer, ptr %t590, 1
  store { i32, ptr } %t592, ptr %rv
  br label %ret
bb129:
  %t593 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t595 = trunc i64 9 to i32
  %t596 = icmp eq i32 %t593, %t595
  br i1 %t596, label %bb130, label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb136
bb132:
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t600 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopIf(ptr %v0, ptr %v1, ptr %t598)
  %t601 = extractvalue { i32, ptr } %t600, 1
  %t602 = extractvalue { i32, ptr } %t600, 0
  store i32 %t602, ptr %l218
  %t603 = icmp ne i32 %t602, 0
  br i1 %t603, label %bb134, label %ok.604, !prof !99
ok.604:
  store ptr %t601, ptr %l217
  br label %bb133
bb133:
  %t605 = load ptr, ptr %l217, !tbaa !29
  store ptr %t605, ptr %l215, !tbaa !29
  br label %bb135
bb134:
  %t606 = load i32, ptr %l218, !tbaa !23
  %t607 = lshr i32 %t606, 16
  %t608 = and i32 %t606, 65535
  %t609 = icmp eq i32 %t607, 1
  %t610 = select i1 %t609, i32 1, i32 0
  %t611 = icmp eq i32 %t606, 0
  %t612 = shl i32 %t610, 16
  %t613 = or i32 %t612, %t608
  %t614 = select i1 %t611, i32 0, i32 %t613
  %t616 = insertvalue { i32, ptr } zeroinitializer, i32 %t614, 0
  store { i32, ptr } %t616, ptr %rv
  br label %ret
bb135:
  %t617 = load ptr, ptr %l215, !tbaa !29
  %t619 = insertvalue { i32, ptr } zeroinitializer, ptr %t617, 1
  store { i32, ptr } %t619, ptr %rv
  br label %ret
bb136:
  %t620 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t622 = trunc i64 24 to i32
  %t623 = icmp eq i32 %t620, %t622
  br i1 %t623, label %bb137, label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb155
bb139:
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t627 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t625)
  store i32 %t627, ptr %l224
  br label %bb140
bb140:
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t630 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t628)
  %t631 = extractvalue { i32, ptr } %t630, 1
  %t632 = extractvalue { i32, ptr } %t630, 0
  store i32 %t632, ptr %l228
  %t633 = icmp ne i32 %t632, 0
  br i1 %t633, label %bb142, label %ok.634, !prof !99
ok.634:
  store ptr %t631, ptr %l227
  br label %bb141
bb141:
  %t635 = load ptr, ptr %l227, !tbaa !29
  store ptr %t635, ptr %l225, !tbaa !29
  br label %bb143
bb142:
  %t636 = load i32, ptr %l228, !tbaa !23
  %t637 = lshr i32 %t636, 16
  %t638 = and i32 %t636, 65535
  %t639 = icmp eq i32 %t637, 1
  %t640 = select i1 %t639, i32 1, i32 0
  %t641 = icmp eq i32 %t636, 0
  %t642 = shl i32 %t640, 16
  %t643 = or i32 %t642, %t638
  %t644 = select i1 %t641, i32 0, i32 %t643
  %t646 = insertvalue { i32, ptr } zeroinitializer, i32 %t644, 0
  store { i32, ptr } %t646, ptr %rv
  br label %ret
bb143:
  %t647 = load ptr, ptr %l225, !tbaa !29
  store ptr %t647, ptr %l15, !tbaa !29
  store ptr null, ptr %l16, !tbaa !29
  %t648 = load ptr, ptr %l0, !tbaa !29
  %t651 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t648, i32 75)
  store i1 %t651, ptr %l232
  br label %bb144
bb144:
  %t652 = load i1, ptr %l232, !tbaa !21
  br i1 %t652, label %bb145, label %bb146
bb145:
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t655 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t653)
  %t656 = extractvalue { i32, ptr } %t655, 1
  %t657 = extractvalue { i32, ptr } %t655, 0
  store i32 %t657, ptr %l236
  %t658 = icmp ne i32 %t657, 0
  br i1 %t658, label %bb148, label %ok.659, !prof !99
ok.659:
  store ptr %t656, ptr %l235
  br label %bb147
bb146:
  br label %bb150
bb147:
  %t660 = load ptr, ptr %l235, !tbaa !29
  store ptr %t660, ptr %l233, !tbaa !29
  br label %bb149
bb148:
  %t661 = load i32, ptr %l236, !tbaa !23
  %t662 = lshr i32 %t661, 16
  %t663 = and i32 %t661, 65535
  %t664 = icmp eq i32 %t662, 1
  %t665 = select i1 %t664, i32 1, i32 0
  %t666 = icmp eq i32 %t661, 0
  %t667 = shl i32 %t665, 16
  %t668 = or i32 %t667, %t663
  %t669 = select i1 %t666, i32 0, i32 %t668
  %t671 = insertvalue { i32, ptr } zeroinitializer, i32 %t669, 0
  store { i32, ptr } %t671, ptr %rv
  br label %ret
bb149:
  %t672 = load ptr, ptr %l233, !tbaa !29
  store ptr %t672, ptr %l16, !tbaa !29
  br label %bb150
bb150:
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t675 = load i32, ptr %l1, !tbaa !23
  %t678 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t674, i32 %t675)
  store %"compiler/source:Span" %t678, ptr %l241
  br label %bb151
bb151:
  %t679 = load %"compiler/source:Span", ptr %l241
  store %"compiler/source:Span" %t679, ptr %l17
  %t680 = load ptr, ptr %l0, !tbaa !29
  %t682 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t680)
  store i32 %t682, ptr %l243
  %t683 = icmp ne i32 %t682, 0
  br i1 %t683, label %bb153, label %ok.684, !prof !99
ok.684:
  br label %bb152
bb152:
  br label %bb154
bb153:
  %t685 = load i32, ptr %l243, !tbaa !23
  %t686 = lshr i32 %t685, 16
  %t687 = and i32 %t685, 65535
  %t688 = icmp eq i32 %t686, 1
  %t689 = select i1 %t688, i32 1, i32 0
  %t690 = icmp eq i32 %t685, 0
  %t691 = shl i32 %t689, 16
  %t692 = or i32 %t691, %t687
  %t693 = select i1 %t690, i32 0, i32 %t692
  %t695 = insertvalue { i32, ptr } zeroinitializer, i32 %t693, 0
  store { i32, ptr } %t695, ptr %rv
  br label %ret
bb154:
  %t696 = load %"compiler/source:Span", ptr %l17
  %t697 = load ptr, ptr %l15, !tbaa !29
  %t698 = load ptr, ptr %l16, !tbaa !29
  store { i64, [8 x i64] } zeroinitializer, ptr %t699
  %t700 = getelementptr { i64, [8 x i64] }, ptr %t699, i32 0, i32 0
  store i64 9, ptr %t700
  %t702 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t696, 0
  %t704 = insertvalue { %"compiler/source:Span", ptr, ptr } %t702, ptr %t697, 1
  %t706 = insertvalue { %"compiler/source:Span", ptr, ptr } %t704, ptr %t698, 2
  %t707 = getelementptr { i64, [8 x i64] }, ptr %t699, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t706, ptr %t707
  %t708 = load { i64, [8 x i64] }, ptr %t699
  %t710 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t708, ptr %t710
  %t712 = insertvalue { i32, ptr } zeroinitializer, ptr %t710, 1
  store { i32, ptr } %t712, ptr %rv
  br label %ret
bb155:
  %t713 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t715 = trunc i64 1 to i32
  %t716 = icmp eq i32 %t713, %t715
  br i1 %t716, label %bb156, label %bb157
bb156:
  br label %bb158
bb157:
  br label %bb199
bb158:
  store %olang.scope zeroinitializer, ptr %s17
  %t718 = load ptr, ptr %l0, !tbaa !29
  store ptr %t718, ptr %l252, !tbaa !29
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t721 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t719)
  store %"compiler/token:Token" %t721, ptr %l254
  br label %bb159
bb159:
  %t722 = load ptr, ptr %l252, !tbaa !29
  %t723 = load %"compiler/token:Token", ptr %l254
  %t724 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t722, %"compiler/token:Token" %t723)
  store { i64, ptr } %t724, ptr %l255
  br label %bb160
bb160:
  %t725 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t726 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s17, { i64, ptr } %t725, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t726, ptr %l256
  br label %bb161
bb161:
  %t727 = load i1, ptr %l256, !tbaa !21
  br i1 %t727, label %bb162, label %bb163
bb162:
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t730 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t728, i64 1)
  store i32 %t730, ptr %l259
  br label %bb164
bb163:
  store i1 false, ptr %l257, !tbaa !21
  br label %bb165
bb164:
  %t731 = load i32, ptr %l259, !range !{i32 0, i32 114}
  %t733 = trunc i64 37 to i32
  %t734 = icmp eq i32 %t731, %t733
  store i1 %t734, ptr %l257, !tbaa !21
  br label %bb165
bb165:
  %t736 = load i1, ptr %l257, !tbaa !21
  br i1 %t736, label %bb166, label %bb167
bb166:
  %t737 = load ptr, ptr %l0, !tbaa !29
  %t739 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t737)
  store i32 %t739, ptr %l263
  br label %bb168
bb167:
  br label %bb174
bb168:
  %t740 = load ptr, ptr %l0, !tbaa !29
  %t742 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efunction(ptr %v0, ptr %v1, ptr %t740)
  %t743 = extractvalue { i32, ptr } %t742, 1
  %t744 = extractvalue { i32, ptr } %t742, 0
  store i32 %t744, ptr %l267
  %t745 = icmp ne i32 %t744, 0
  br i1 %t745, label %bb170, label %ok.746, !prof !99
ok.746:
  store ptr %t743, ptr %l266
  br label %bb169
bb169:
  %t747 = load ptr, ptr %l266, !tbaa !29
  store ptr %t747, ptr %l264, !tbaa !29
  br label %bb171
bb170:
  %t748 = load i32, ptr %l267, !tbaa !23
  %t749 = lshr i32 %t748, 16
  %t750 = and i32 %t748, 65535
  %t751 = icmp eq i32 %t749, 1
  %t752 = select i1 %t751, i32 1, i32 0
  %t753 = icmp eq i32 %t748, 0
  %t754 = shl i32 %t752, 16
  %t755 = or i32 %t754, %t750
  %t756 = select i1 %t753, i32 0, i32 %t755
  call void @__olang_scope_close(ptr %s17)
  %t758 = insertvalue { i32, ptr } zeroinitializer, i32 %t756, 0
  store { i32, ptr } %t758, ptr %rv
  br label %ret
bb171:
  %t759 = load ptr, ptr %l264, !tbaa !29
  store ptr %t759, ptr %l18, !tbaa !29
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t761 = load i32, ptr %l1, !tbaa !23
  %t764 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t760, i32 %t761)
  store %"compiler/source:Span" %t764, ptr %l271
  br label %bb172
bb172:
  %t765 = load ptr, ptr %l18, !tbaa !29
  %t767 = getelementptr %"compiler/ast:Func", ptr %t765, i32 0, i32 1
  %t768 = load ptr, ptr %t767, !tbaa !29
  %t769 = load ptr, ptr %l18, !tbaa !29
  %t771 = getelementptr %"compiler/ast:Func", ptr %t769, i32 0, i32 2
  %t772 = load i32, ptr %t771, !tbaa !23
  %t773 = load ptr, ptr %l18, !tbaa !29
  %t775 = getelementptr %"compiler/ast:Func", ptr %t773, i32 0, i32 3
  %t776 = load ptr, ptr %t775, !tbaa !29
  %t777 = load ptr, ptr %l18, !tbaa !29
  %t779 = getelementptr %"compiler/ast:Func", ptr %t777, i32 0, i32 4
  %t780 = load { i64, ptr }, ptr %t779, !tbaa !27
  %t781 = load ptr, ptr %l18, !tbaa !29
  %t783 = getelementptr %"compiler/ast:Func", ptr %t781, i32 0, i32 5
  %t784 = load { i64, ptr }, ptr %t783, !tbaa !27
  %t785 = load ptr, ptr %l18, !tbaa !29
  %t787 = getelementptr %"compiler/ast:Func", ptr %t785, i32 0, i32 6
  %t788 = load i1, ptr %t787, !tbaa !21
  %t789 = load ptr, ptr %l18, !tbaa !29
  %t791 = getelementptr %"compiler/ast:Func", ptr %t789, i32 0, i32 8
  %t792 = load { i64, ptr }, ptr %t791, !tbaa !27
  %t793 = load ptr, ptr %l18, !tbaa !29
  %t795 = getelementptr %"compiler/ast:Func", ptr %t793, i32 0, i32 9
  %t796 = load ptr, ptr %t795, !tbaa !29
  %t797 = load ptr, ptr %l18, !tbaa !29
  %t799 = getelementptr %"compiler/ast:Func", ptr %t797, i32 0, i32 10
  %t800 = load i32, ptr %t799, !tbaa !23
  %t801 = load %"compiler/source:Span", ptr %l271
  %t811 = call %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t801, ptr %t768, i32 %t772, ptr %t776, { i64, ptr } %t780, { i64, ptr } %t784, i1 %t788, i1 true, { i64, ptr } %t792, ptr %t796, i32 %t800)
  store %"compiler/ast:Func" %t811, ptr %l290
  br label %bb173
bb173:
  %t812 = load %"compiler/ast:Func", ptr %l290
  %t813 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store %"compiler/ast:Func" %t812, ptr %t813
  store { i64, [8 x i64] } zeroinitializer, ptr %t814
  %t815 = getelementptr { i64, [8 x i64] }, ptr %t814, i32 0, i32 0
  store i64 0, ptr %t815
  %t817 = insertvalue { ptr } undef, ptr %t813, 0
  %t818 = getelementptr { i64, [8 x i64] }, ptr %t814, i32 0, i32 1
  store { ptr } %t817, ptr %t818
  %t819 = load { i64, [8 x i64] }, ptr %t814
  %t821 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t819, ptr %t821
  call void @__olang_scope_close(ptr %s17)
  %t823 = insertvalue { i32, ptr } zeroinitializer, ptr %t821, 1
  store { i32, ptr } %t823, ptr %rv
  br label %ret
bb174:
  %t824 = load ptr, ptr %l0, !tbaa !29
  %t826 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t824, i64 1)
  store i32 %t826, ptr %l295
  br label %bb175
bb175:
  %t827 = load i32, ptr %l295, !range !{i32 0, i32 114}
  %t829 = trunc i64 78 to i32
  %t830 = icmp eq i32 %t827, %t829
  br i1 %t830, label %bb176, label %bb177
bb176:
  %t832 = load ptr, ptr %l0, !tbaa !29
  %t834 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t832)
  store %"compiler/token:Token" %t834, ptr %l299
  br label %bb178
bb177:
  br label %bb191
bb178:
  %t835 = load %"compiler/token:Token", ptr %l299
  store %"compiler/token:Token" %t835, ptr %l19
  %t836 = load ptr, ptr %l0, !tbaa !29
  %t838 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t836)
  %t839 = extractvalue { i32, i32 } %t838, 1
  %t840 = extractvalue { i32, i32 } %t838, 0
  store i32 %t840, ptr %l303
  %t841 = icmp ne i32 %t840, 0
  br i1 %t841, label %bb180, label %ok.842, !prof !99
ok.842:
  store i32 %t839, ptr %l302
  br label %bb179
bb179:
  %t843 = load i32, ptr %l302, !tbaa !23
  store i32 %t843, ptr %l300, !tbaa !23
  br label %bb181
bb180:
  %t844 = load i32, ptr %l303, !tbaa !23
  %t845 = lshr i32 %t844, 16
  %t846 = and i32 %t844, 65535
  %t847 = icmp eq i32 %t845, 1
  %t848 = select i1 %t847, i32 1, i32 0
  %t849 = icmp eq i32 %t844, 0
  %t850 = shl i32 %t848, 16
  %t851 = or i32 %t850, %t846
  %t852 = select i1 %t849, i32 0, i32 %t851
  call void @__olang_scope_close(ptr %s17)
  %t854 = insertvalue { i32, ptr } zeroinitializer, i32 %t852, 0
  store { i32, ptr } %t854, ptr %rv
  br label %ret
bb181:
  %t855 = load i32, ptr %l300, !tbaa !23
  store i32 %t855, ptr %l20, !tbaa !23
  %t856 = load ptr, ptr %l0, !tbaa !29
  %t858 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t856)
  store i32 %t858, ptr %l306
  br label %bb182
bb182:
  %t859 = load ptr, ptr %l0, !tbaa !29
  %t861 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t859)
  %t862 = extractvalue { i32, ptr } %t861, 1
  %t863 = extractvalue { i32, ptr } %t861, 0
  store i32 %t863, ptr %l310
  %t864 = icmp ne i32 %t863, 0
  br i1 %t864, label %bb184, label %ok.865, !prof !99
ok.865:
  store ptr %t862, ptr %l309
  br label %bb183
bb183:
  %t866 = load ptr, ptr %l309, !tbaa !29
  store ptr %t866, ptr %l307, !tbaa !29
  br label %bb185
bb184:
  %t867 = load i32, ptr %l310, !tbaa !23
  %t868 = lshr i32 %t867, 16
  %t869 = and i32 %t867, 65535
  %t870 = icmp eq i32 %t868, 1
  %t871 = select i1 %t870, i32 1, i32 0
  %t872 = icmp eq i32 %t867, 0
  %t873 = shl i32 %t871, 16
  %t874 = or i32 %t873, %t869
  %t875 = select i1 %t872, i32 0, i32 %t874
  call void @__olang_scope_close(ptr %s17)
  %t877 = insertvalue { i32, ptr } zeroinitializer, i32 %t875, 0
  store { i32, ptr } %t877, ptr %rv
  br label %ret
bb185:
  %t878 = load ptr, ptr %l307, !tbaa !29
  store ptr %t878, ptr %l21, !tbaa !29
  %t879 = load ptr, ptr %l0, !tbaa !29
  %t880 = load i32, ptr %l1, !tbaa !23
  %t883 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t879, i32 %t880)
  store %"compiler/source:Span" %t883, ptr %l314
  br label %bb186
bb186:
  %t884 = load %"compiler/source:Span", ptr %l314
  store %"compiler/source:Span" %t884, ptr %l22
  %t885 = load ptr, ptr %l0, !tbaa !29
  %t887 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t885)
  store i32 %t887, ptr %l316
  %t888 = icmp ne i32 %t887, 0
  br i1 %t888, label %bb188, label %ok.889, !prof !99
ok.889:
  br label %bb187
bb187:
  br label %bb189
bb188:
  %t890 = load i32, ptr %l316, !tbaa !23
  %t891 = lshr i32 %t890, 16
  %t892 = and i32 %t890, 65535
  %t893 = icmp eq i32 %t891, 1
  %t894 = select i1 %t893, i32 1, i32 0
  %t895 = icmp eq i32 %t890, 0
  %t896 = shl i32 %t894, 16
  %t897 = or i32 %t896, %t892
  %t898 = select i1 %t895, i32 0, i32 %t897
  call void @__olang_scope_close(ptr %s17)
  %t900 = insertvalue { i32, ptr } zeroinitializer, i32 %t898, 0
  store { i32, ptr } %t900, ptr %rv
  br label %ret
bb189:
  %t901 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t901, ptr %l318
  %t902 = getelementptr %"compiler/token:Token", ptr %l19, i32 0, i32 2
  %t903 = load i32, ptr %t902, !tbaa !23
  %t904 = getelementptr %"compiler/token:Token", ptr %l19, i32 0, i32 3
  %t905 = load i32, ptr %t904, !tbaa !23
  %t908 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 %t903, i32 %t905)
  store %"compiler/source:Span" %t908, ptr %l321
  br label %bb190
bb190:
  %t909 = load i32, ptr %l20, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t910
  %t911 = getelementptr { i64, [4 x i64] }, ptr %t910, i32 0, i32 0
  store i64 0, ptr %t911
  %t912 = load %"compiler/source:Span", ptr %l321
  %t913 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t912, 0
  %t915 = insertvalue { %"compiler/source:Span", i32 } %t913, i32 %t909, 1
  %t916 = getelementptr { i64, [4 x i64] }, ptr %t910, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t915, ptr %t916
  %t917 = load { i64, [4 x i64] }, ptr %t910
  %t919 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t917, ptr %t919
  %t920 = load ptr, ptr %l21, !tbaa !29
  store { i64, [8 x i64] } zeroinitializer, ptr %t921
  %t922 = getelementptr { i64, [8 x i64] }, ptr %t921, i32 0, i32 0
  store i64 8, ptr %t922
  %t923 = load %"compiler/source:Span", ptr %l318
  %t924 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t923, 0
  %t926 = insertvalue { %"compiler/source:Span", ptr, ptr } %t924, ptr %t919, 1
  %t928 = insertvalue { %"compiler/source:Span", ptr, ptr } %t926, ptr %t920, 2
  %t929 = getelementptr { i64, [8 x i64] }, ptr %t921, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t928, ptr %t929
  %t930 = load { i64, [8 x i64] }, ptr %t921
  %t932 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t930, ptr %t932
  call void @__olang_scope_close(ptr %s17)
  %t934 = insertvalue { i32, ptr } zeroinitializer, ptr %t932, 1
  store { i32, ptr } %t934, ptr %rv
  br label %ret
bb191:
  %t935 = load ptr, ptr %l0, !tbaa !29
  %t937 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclNames(ptr %v0, ptr %v1, ptr %t935, i1 false)
  %t938 = extractvalue { i32, ptr } %t937, 1
  %t939 = extractvalue { i32, ptr } %t937, 0
  store i32 %t939, ptr %l331
  %t940 = icmp ne i32 %t939, 0
  br i1 %t940, label %bb193, label %ok.941, !prof !99
ok.941:
  store ptr %t938, ptr %l330
  br label %bb192
bb192:
  %t942 = load ptr, ptr %l330, !tbaa !29
  store ptr %t942, ptr %l328, !tbaa !29
  br label %bb194
bb193:
  %t943 = load i32, ptr %l331, !tbaa !23
  %t944 = lshr i32 %t943, 16
  %t945 = and i32 %t943, 65535
  %t946 = icmp eq i32 %t944, 1
  %t947 = select i1 %t946, i32 1, i32 0
  %t948 = icmp eq i32 %t943, 0
  %t949 = shl i32 %t947, 16
  %t950 = or i32 %t949, %t945
  %t951 = select i1 %t948, i32 0, i32 %t950
  call void @__olang_scope_close(ptr %s17)
  %t953 = insertvalue { i32, ptr } zeroinitializer, i32 %t951, 0
  store { i32, ptr } %t953, ptr %rv
  br label %ret
bb194:
  %t954 = load ptr, ptr %l328, !tbaa !29
  store ptr %t954, ptr %l23, !tbaa !29
  %t955 = load ptr, ptr %l0, !tbaa !29
  %t956 = load i32, ptr %l1, !tbaa !23
  %t959 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t955, i32 %t956)
  store %"compiler/source:Span" %t959, ptr %l335
  br label %bb195
bb195:
  %t960 = load %"compiler/source:Span", ptr %l335
  store %"compiler/source:Span" %t960, ptr %l24
  %t961 = load ptr, ptr %l0, !tbaa !29
  %t963 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t961)
  store i32 %t963, ptr %l337
  %t964 = icmp ne i32 %t963, 0
  br i1 %t964, label %bb197, label %ok.965, !prof !99
ok.965:
  br label %bb196
bb196:
  br label %bb198
bb197:
  %t966 = load i32, ptr %l337, !tbaa !23
  %t967 = lshr i32 %t966, 16
  %t968 = and i32 %t966, 65535
  %t969 = icmp eq i32 %t967, 1
  %t970 = select i1 %t969, i32 1, i32 0
  %t971 = icmp eq i32 %t966, 0
  %t972 = shl i32 %t970, 16
  %t973 = or i32 %t972, %t968
  %t974 = select i1 %t971, i32 0, i32 %t973
  call void @__olang_scope_close(ptr %s17)
  %t976 = insertvalue { i32, ptr } zeroinitializer, i32 %t974, 0
  store { i32, ptr } %t976, ptr %rv
  br label %ret
bb198:
  %t977 = load %"compiler/source:Span", ptr %l24
  %t978 = load ptr, ptr %l23, !tbaa !29
  store { i64, [8 x i64] } zeroinitializer, ptr %t979
  %t980 = getelementptr { i64, [8 x i64] }, ptr %t979, i32 0, i32 0
  store i64 3, ptr %t980
  %t982 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t977, 0
  %t984 = insertvalue { %"compiler/source:Span", ptr } %t982, ptr %t978, 1
  %t985 = getelementptr { i64, [8 x i64] }, ptr %t979, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t984, ptr %t985
  %t986 = load { i64, [8 x i64] }, ptr %t979
  %t988 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t986, ptr %t988
  call void @__olang_scope_close(ptr %s17)
  %t990 = insertvalue { i32, ptr } zeroinitializer, ptr %t988, 1
  store { i32, ptr } %t990, ptr %rv
  br label %ret
bb199:
  br i1 true, label %bb200, label %bb201
bb200:
  br label %bb202
bb201:
  br label %bb206
bb202:
  store %olang.scope zeroinitializer, ptr %s20
  %t991 = load ptr, ptr %l0, !tbaa !29
  %t993 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s20, ptr %t991, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i32 %t993, ptr %l344
  %t994 = icmp ne i32 %t993, 0
  br i1 %t994, label %bb204, label %ok.995, !prof !99
ok.995:
  br label %bb203
bb203:
  br label %bb205
bb204:
  %t996 = load i32, ptr %l344, !tbaa !23
  %t997 = lshr i32 %t996, 16
  %t998 = and i32 %t996, 65535
  %t999 = icmp eq i32 %t997, 1
  %t1000 = select i1 %t999, i32 1, i32 0
  %t1001 = icmp eq i32 %t996, 0
  %t1002 = shl i32 %t1000, 16
  %t1003 = or i32 %t1002, %t998
  %t1004 = select i1 %t1001, i32 0, i32 %t1003
  call void @__olang_scope_close(ptr %s20)
  %t1006 = insertvalue { i32, ptr } zeroinitializer, i32 %t1004, 0
  store { i32, ptr } %t1006, ptr %rv
  br label %ret
bb205:
  call void @__olang_scope_close(ptr %s20)
  br label %bb207
bb206:
  call void @__olang_check_failed(ptr @olang_loc_88d6a58aae0d0f1b_e8616324f90aa74f)
  unreachable
bb207:
  call void @__olang_check_failed(ptr @olang_loc_4c5382a5570ff51a_b7435337e0d4770e)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendsRendering(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i1
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca i32
  %l47 = alloca i1
  %l52 = alloca i64
  %l60 = alloca i32
  %l66 = alloca i64
  %l69 = alloca i64
  %l71 = alloca i1
  %l74 = alloca i32
  %l75 = alloca i1
  %l82 = alloca i32
  %l88 = alloca i32
  %l91 = alloca i1
  %l95 = alloca i32
  %l96 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisOperandEnd(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i1, ptr %l14, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 256, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t38 = load i64, ptr %l24, !tbaa !24
  store i64 %t38, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb12, label %bb13
bb12:
  br label %bb54
bb13:
  br label %bb14
bb14:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l8, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i64, ptr %l2, !tbaa !24
  %t62 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t58, i64 %t59)
  store i32 %t62, ptr %l44
  br label %bb15
bb15:
  %t63 = load i32, ptr %l44, !range !{i32 0, i32 114}
  store i32 %t63, ptr %l9
  %t64 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t66 = trunc i64 109 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb18
bb17:
  %t69 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t71 = trunc i64 111 to i32
  %t72 = icmp eq i32 %t69, %t71
  store i1 %t72, ptr %l47, !tbaa !21
  br label %bb18
bb18:
  %t74 = load i1, ptr %l47, !tbaa !21
  br i1 %t74, label %bb19, label %bb20
bb19:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l2, !tbaa !24
  %t79 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eopenerOf(ptr %v0, ptr %t75, i64 %t76)
  store i64 %t79, ptr %l52
  br label %bb21
bb20:
  br label %bb39
bb21:
  %t80 = load i64, ptr %l52, !tbaa !24
  store i64 %t80, ptr %l2, !tbaa !24
  %t81 = load i64, ptr %l2, !tbaa !24
  %t83 = icmp slt i64 %t81, 0
  br i1 %t83, label %bb22, label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t86 = load i64, ptr %l2, !tbaa !24
  %t88 = sub i64 %t86, 1
  store i64 %t88, ptr %l10, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i64, ptr %l10, !tbaa !24
  %t94 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t90, i64 %t91)
  store i32 %t94, ptr %l60
  br label %bb25
bb25:
  %t95 = load i32, ptr %l60, !range !{i32 0, i32 114}
  %t97 = trunc i64 105 to i32
  %t98 = icmp eq i32 %t95, %t97
  br i1 %t98, label %bb26, label %bb27
bb26:
  store i1 true, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t101, i64 %t102)
  store i64 %t105, ptr %l66
  br label %bb29
bb29:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l2, !tbaa !24
  %t110 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t106, i64 %t107)
  store i64 %t110, ptr %l69
  br label %bb30
bb30:
  %t111 = load i64, ptr %l66, !tbaa !24
  %t112 = load i64, ptr %l69, !tbaa !24
  %t113 = icmp eq i64 %t111, %t112
  br i1 %t113, label %bb31, label %bb32
bb31:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i64, ptr %l10, !tbaa !24
  %t119 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t115, i64 %t116)
  store i32 %t119, ptr %l74
  br label %bb33
bb32:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb35
bb33:
  %t120 = load i32, ptr %l74, !range !{i32 0, i32 114}
  %t121 = call i1 @compiler_2fparse_2eisOperandTail(i32 %t120)
  store i1 %t121, ptr %l75
  br label %bb34
bb34:
  %t122 = load i1, ptr %l75, !tbaa !21
  store i1 %t122, ptr %l71, !tbaa !21
  br label %bb35
bb35:
  %t123 = load i1, ptr %l71, !tbaa !21
  br i1 %t123, label %bb36, label %bb37
bb36:
  %t124 = load i64, ptr %l10, !tbaa !24
  store i64 %t124, ptr %l2, !tbaa !24
  br label %bb53
bb37:
  br label %bb38
bb38:
  store i1 false, ptr %rv
  br label %ret
bb39:
  %t127 = load i64, ptr %l2, !tbaa !24
  %t129 = sub i64 %t127, 1
  store i64 %t129, ptr %l11, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i64, ptr %l11, !tbaa !24
  %t135 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t131, i64 %t132)
  store i32 %t135, ptr %l82
  br label %bb40
bb40:
  %t136 = load i32, ptr %l82, !range !{i32 0, i32 114}
  %t138 = trunc i64 105 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb41, label %bb42
bb41:
  store i1 true, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i64, ptr %l11, !tbaa !24
  %t146 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t142, i64 %t143)
  store i32 %t146, ptr %l88
  br label %bb44
bb44:
  %t147 = load i32, ptr %l88, !range !{i32 0, i32 114}
  %t149 = trunc i64 76 to i32
  %t150 = icmp eq i32 %t147, %t149
  br i1 %t150, label %bb45, label %bb46
bb45:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i64, ptr %l2, !tbaa !24
  %t155 = sub i64 %t153, 2
  %t158 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t152, i64 %t155)
  store i32 %t158, ptr %l95
  br label %bb47
bb46:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb49
bb47:
  %t159 = load i32, ptr %l95, !range !{i32 0, i32 114}
  %t160 = call i1 @compiler_2fparse_2eisOperandTail(i32 %t159)
  store i1 %t160, ptr %l96
  br label %bb48
bb48:
  %t161 = load i1, ptr %l96, !tbaa !21
  store i1 %t161, ptr %l91, !tbaa !21
  br label %bb49
bb49:
  %t162 = load i1, ptr %l91, !tbaa !21
  br i1 %t162, label %bb50, label %bb51
bb50:
  %t163 = load i64, ptr %l2, !tbaa !24
  %t165 = sub i64 %t163, 2
  store i64 %t165, ptr %l2, !tbaa !24
  br label %bb53
bb51:
  br label %bb52
bb52:
  store i1 false, ptr %rv
  br label %ret
bb53:
  %t168 = load i64, ptr %l7, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l7, !tbaa !24
  br label %bb11
bb54:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/token:Token"
  %l11 = alloca %"compiler/token:Token"
  %l13 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca i32
  %l21 = alloca { i64, [3 x i64] }
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca i64
  %l31 = alloca i1
  %l38 = alloca ptr
  %rv = alloca i32
  %t41 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 21
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load i64, ptr @G_2ecompiler_2fparse_2eMaxNesting, !tbaa !24
  %t8 = icmp sge i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/parse:Parser", ptr %t10, i32 0, i32 22
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb2:
  br label %bb10
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/parse:Parser", ptr %t17, i32 0, i32 22
  store i1 true, ptr %t19, !tbaa !21
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t20)
  store %"compiler/token:Token" %t22, ptr %l11
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t23 = load %"compiler/token:Token", ptr %l11
  store %"compiler/token:Token" %t23, ptr %l1
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t24, i32 0, i32 4
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l13, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/parse:Parser", ptr %t28, i32 0, i32 5
  %t31 = load i64, ptr %t30, !tbaa !24
  store i64 %t31, ptr %l15, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t32)
  store i32 %t34, ptr %l17
  br label %bb6
bb6:
  %t35 = load i32, ptr %l17, !tbaa !23
  %t36 = sext i32 %t35 to i64
  %t37 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 3
  %t38 = load i32, ptr %t37, !tbaa !23
  %t40 = sext i32 %t38 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t41, i32 0, i32 0
  store i64 3, ptr %t42
  %t43 = load i64, ptr %l15, !tbaa !24
  %t44 = insertvalue { i64, i64, i64 } undef, i64 %t43, 0
  %t46 = insertvalue { i64, i64, i64 } %t44, i64 %t36, 1
  %t48 = insertvalue { i64, i64, i64 } %t46, i64 %t40, 2
  %t49 = getelementptr { i64, [3 x i64] }, ptr %t41, i32 0, i32 1
  store { i64, i64, i64 } %t48, ptr %t49
  %t50 = load { i64, [3 x i64] }, ptr %t41
  store { i64, [3 x i64] } %t50, ptr %l21
  %t51 = load i64, ptr @G_2ecompiler_2fparse_2eMaxNesting, !tbaa !24
  %t53 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNesting(ptr %v0, i64 %t51)
  store %"compiler/diagmsg:Msg" %t53, ptr %l23
  br label %bb7
bb7:
  %t54 = load ptr, ptr %l13, !tbaa !29
  %t55 = load { i64, [3 x i64] }, ptr %l21
  %t56 = load %"compiler/diagmsg:Msg", ptr %l23
  %t57 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorUnheld(ptr %v0, ptr %v0, ptr %t54, { i64, [3 x i64] } %t55, %"compiler/diagmsg:Msg" %t56)
  store i64 %t57, ptr %l24
  br label %bb8
bb8:
  br label %bb9
bb9:
  store i32 65536, ptr %rv
  br label %ret
bb10:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/parse:Parser", ptr %t59, i32 0, i32 21
  %t62 = load i64, ptr %t61, !tbaa !24
  %t64 = add i64 %t62, 1
  %t65 = load i64, ptr @G_2ecompiler_2fparse_2eMaxNesting, !tbaa !24
  %t68 = icmp eq i64 %t64, %t65
  br i1 %t68, label %bb11, label %bb12
bb11:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/parse:Parser", ptr %t70, i32 0, i32 23
  %t73 = load i64, ptr %t72, !tbaa !24
  %t75 = icmp slt i64 %t73, 0
  store i1 %t75, ptr %l31, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb13
bb13:
  %t77 = load i1, ptr %l31, !tbaa !21
  br i1 %t77, label %bb14, label %bb15
bb14:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/parse:Parser", ptr %t79, i32 0, i32 6
  %t82 = load i64, ptr %t81, !tbaa !24
  %t85 = getelementptr %"compiler/parse:Parser", ptr %t78, i32 0, i32 23
  store i64 %t82, ptr %t85, !tbaa !24
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l38, !tbaa !29
  %t87 = load ptr, ptr %l38, !tbaa !29
  %t88 = getelementptr %"compiler/parse:Parser", ptr %t87, i32 0, i32 21
  %t89 = load i64, ptr %t88, !tbaa !24
  %t91 = add i64 %t89, 1
  %t93 = load ptr, ptr %l38, !tbaa !29
  %t94 = getelementptr %"compiler/parse:Parser", ptr %t93, i32 0, i32 21
  store i64 %t91, ptr %t94, !tbaa !24
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i32
  %l30 = alloca i1
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i1
  %l39 = alloca i32
  %l42 = alloca i64
  %l45 = alloca i32
  %l48 = alloca i64
  %l53 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l78 = alloca i64
  %l82 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l92 = alloca i1
  %l94 = alloca i32
  %l95 = alloca %"compiler/source:Span"
  %l96 = alloca i32
  %l97 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t210 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l15
  br label %bb2
bb2:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  store ptr %t6, ptr %l3, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t8, i32 1)
  store i1 %t11, ptr %l19
  br label %bb3
bb3:
  %t12 = load i1, ptr %l19, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb19
bb6:
  %t13 = load ptr, ptr %l3, !tbaa !29
  store ptr %t13, ptr %l20, !tbaa !29
  %t14 = ptrtoint ptr %v1 to i64
  store i64 %t14, ptr %l22, !tbaa !24
  %t15 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t15, label %bb7, label %bb8
bb7:
  %t17 = call ptr @__olang_region_make(ptr %v1)
  %t18 = ptrtoint ptr %t17 to i64
  store i64 %t18, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l22
  %t21 = inttoptr i64 %t20 to ptr
  %t23 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epath(ptr %v0, ptr %t21, ptr %t19)
  %t24 = extractvalue { i32, ptr } %t23, 1
  %t25 = extractvalue { i32, ptr } %t23, 0
  store i32 %t25, ptr %l26
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb10, label %ok.27, !prof !99
ok.27:
  store ptr %t24, ptr %l25
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l25, !tbaa !29
  store ptr %t28, ptr %l21, !tbaa !29
  br label %bb11
bb10:
  %t29 = load i32, ptr %l26, !tbaa !23
  %t30 = lshr i32 %t29, 16
  %t31 = and i32 %t29, 65535
  %t32 = icmp eq i32 %t30, 1
  %t33 = select i1 %t32, i32 1, i32 0
  %t34 = icmp eq i32 %t29, 0
  %t35 = shl i32 %t33, 16
  %t36 = or i32 %t35, %t31
  %t37 = select i1 %t34, i32 0, i32 %t36
  %t39 = insertvalue { i32, ptr } zeroinitializer, i32 %t37, 0
  store { i32, ptr } %t39, ptr %rv
  br label %ret
bb11:
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t41 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ePush_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %v1, ptr %t40, ptr %t41)
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t45 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t42, i32 75)
  store i1 %t45, ptr %l30
  br label %bb13
bb13:
  %t46 = load i1, ptr %l30, !tbaa !21
  %t47 = xor i1 %t46, true
  br i1 %t47, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb6
bb18:
  br label %bb19
bb19:
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l32
  br label %bb20
bb20:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  %t51 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  store ptr %t51, ptr %l4, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t56 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t53, i32 112)
  store i1 %t56, ptr %l36
  br label %bb21
bb21:
  %t57 = load i1, ptr %l36, !tbaa !21
  br i1 %t57, label %bb22, label %bb23
bb22:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t62 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorWords(ptr %v0, ptr %v1, ptr %t58, ptr %t59)
  store i32 %t62, ptr %l39
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb25, label %ok.64, !prof !99
ok.64:
  br label %bb24
bb23:
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2eLen_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %t65)
  store i64 %t67, ptr %l42
  br label %bb27
bb24:
  br label %bb26
bb25:
  %t68 = load i32, ptr %l39, !tbaa !23
  %t69 = lshr i32 %t68, 16
  %t70 = and i32 %t68, 65535
  %t71 = icmp eq i32 %t69, 1
  %t72 = select i1 %t71, i32 1, i32 0
  %t73 = icmp eq i32 %t68, 0
  %t74 = shl i32 %t72, 16
  %t75 = or i32 %t74, %t70
  %t76 = select i1 %t73, i32 0, i32 %t75
  %t78 = insertvalue { i32, ptr } zeroinitializer, i32 %t76, 0
  store { i32, ptr } %t78, ptr %rv
  br label %ret
bb26:
  br label %bb34
bb27:
  %t79 = load i64, ptr %l42, !tbaa !24
  %t80 = icmp eq i64 %t79, 0
  br i1 %t80, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s6, ptr %t82, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i32 %t84, ptr %l45
  %t85 = icmp ne i32 %t84, 0
  br i1 %t85, label %bb31, label %ok.86, !prof !99
ok.86:
  br label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb32
bb31:
  %t87 = load i32, ptr %l45, !tbaa !23
  %t88 = lshr i32 %t87, 16
  %t89 = and i32 %t87, 65535
  %t90 = icmp eq i32 %t88, 1
  %t91 = select i1 %t90, i32 1, i32 0
  %t92 = icmp eq i32 %t87, 0
  %t93 = shl i32 %t91, 16
  %t94 = or i32 %t93, %t89
  %t95 = select i1 %t92, i32 0, i32 %t94
  call void @__olang_scope_close(ptr %s6)
  %t97 = insertvalue { i32, ptr } zeroinitializer, i32 %t95, 0
  store { i32, ptr } %t97, ptr %rv
  br label %ret
bb32:
  call void @__olang_scope_close(ptr %s6)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t98 = load ptr, ptr %l4, !tbaa !29
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2eLen__H880e577cb0df1a24f608b8ef0d16c17a(ptr %v1, ptr %t98)
  store i64 %t100, ptr %l48
  br label %bb35
bb35:
  %t101 = load i64, ptr %l48, !tbaa !24
  %t102 = icmp sge i64 %t101, 0
  br i1 %t102, label %bb36, label %bb37
bb36:
  %t104 = load i64, ptr %l48, !tbaa !24
  %t105 = icmp sle i64 %t104, 2305843009213693951
  br i1 %t105, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_789713e4eee702da_477f9e47229ca02e)
  unreachable
bb38:
  %t107 = load i64, ptr %l48, !tbaa !24
  %t108 = mul i64 %t107, 4
  %t109 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t108)
  %t110 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t112 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t112, ptr %lp5
  %t114 = load ptr, ptr %lp5
  store { i64, ptr } %t111, ptr %t114, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t115 = load ptr, ptr %l4, !tbaa !29
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2eLen__H880e577cb0df1a24f608b8ef0d16c17a(ptr %v1, ptr %t115)
  store i64 %t117, ptr %l53
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_789713e4eee702da_477f9e47229ca02e)
  unreachable
bb40:
  %t118 = load i64, ptr %l53, !tbaa !24
  store i64 %t118, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t119 = load i64, ptr %l7, !tbaa !24
  %t120 = load i64, ptr %l6, !tbaa !24
  %t123 = icmp sgt i64 %t119, %t120
  br i1 %t123, label %bb41, label %bb42
bb41:
  %t125 = load i64, ptr %l8, !tbaa !24
  %t127 = icmp sgt i64 %t125, 0
  br i1 %t127, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb46
bb43:
  %t129 = load i64, ptr %l7, !tbaa !24
  %t130 = load i64, ptr %l6, !tbaa !24
  %t133 = sub i64 %t129, %t130
  %t134 = load i64, ptr %l8, !tbaa !24
  %t137 = add i64 %t133, %t134
  %t139 = sub i64 %t137, 1
  %t140 = load i64, ptr %l8, !tbaa !24
  %t143 = sdiv i64 %t139, %t140
  store i64 %t143, ptr %l60, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb45
bb45:
  %t145 = load i64, ptr %l60, !tbaa !24
  store i64 %t145, ptr %l57, !tbaa !24
  br label %bb46
bb46:
  %t146 = load i64, ptr %l57, !tbaa !24
  store i64 %t146, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb47
bb47:
  store %olang.scope zeroinitializer, ptr %s8
  %t147 = load i64, ptr %l10, !tbaa !24
  %t148 = load i64, ptr %l9, !tbaa !24
  %t151 = icmp slt i64 %t147, %t148
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s8)
  br label %bb53
bb49:
  br label %bb50
bb50:
  %t155 = load i64, ptr %l6, !tbaa !24
  %t156 = load i64, ptr %l10, !tbaa !24
  %t157 = load i64, ptr %l8, !tbaa !24
  %t160 = mul i64 %t156, %t157
  %t163 = add i64 %t155, %t160
  store i64 %t163, ptr %l11, !tbaa !24
  %t165 = load i64, ptr %l11, !tbaa !24
  store i64 %t165, ptr %l78, !tbaa !24
  %t166 = load ptr, ptr %l4, !tbaa !29
  %t168 = load i64, ptr %l11, !tbaa !24
  %t171 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2eAt_3ccompiler_2fast_3aCaseDecl_26_3e(ptr %v1, ptr %s8, ptr %t166, i64 %t168)
  store ptr %t171, ptr %l82
  br label %bb51
bb51:
  %t172 = load ptr, ptr %l82, !tbaa !29
  %t174 = getelementptr %"compiler/ast:CaseDecl", ptr %t172, i32 0, i32 1
  %t175 = load i32, ptr %t174, !tbaa !23
  %t177 = load ptr, ptr %lp5
  %t178 = load i64, ptr %l78, !tbaa !24
  %t179 = getelementptr { i64, ptr }, ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr i32, ptr %t180, i64 %t178
  store i32 %t175, ptr %t181, !tbaa !33
  call void @__olang_scope_close(ptr %s8)
  br label %bb52
bb52:
  %t182 = load i64, ptr %l10, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l10, !tbaa !24
  br label %bb47
bb53:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t190 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t186, i32 %a1)
  store %"compiler/source:Span" %t190, ptr %l89
  br label %bb54
bb54:
  %t191 = load %"compiler/source:Span", ptr %l89
  store %"compiler/source:Span" %t191, ptr %l12
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t195 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t192, i32 8)
  store i1 %t195, ptr %l92
  br label %bb55
bb55:
  %t196 = load i1, ptr %l92, !tbaa !21
  br i1 %t196, label %bb56, label %bb57
bb56:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t197)
  store i32 %t199, ptr %l94
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb59
bb59:
  %t200 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t200, ptr %l95
  store i32 %a2, ptr %l96, !tbaa !23
  %t202 = load ptr, ptr %lp5
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  store { i64, ptr } %t203, ptr %l97, !tbaa !27
  %t204 = load ptr, ptr %l3, !tbaa !29
  %t206 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2eToArray_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %v1, ptr %t204)
  store { i64, ptr } %t206, ptr %l99
  br label %bb60
bb60:
  %t207 = load ptr, ptr %l4, !tbaa !29
  %t209 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2eToAr_H44f8de0685d71649bf169c234c7a8f4c(ptr %v1, ptr %v1, ptr %t207)
  store { i64, ptr } %t209, ptr %l101
  br label %bb61
bb61:
  store { i64, [8 x i64] } zeroinitializer, ptr %t210
  %t211 = getelementptr { i64, [8 x i64] }, ptr %t210, i32 0, i32 0
  store i64 5, ptr %t211
  %t212 = load %"compiler/source:Span", ptr %l95
  %t213 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t212, 0
  %t214 = load i32, ptr %l96, !tbaa !23
  %t215 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t213, i32 %t214, 1
  %t216 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t217 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t215, { i64, ptr } %t216, 2
  %t218 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t219 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t217, { i64, ptr } %t218, 3
  %t220 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t221 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t219, { i64, ptr } %t220, 4
  %t222 = getelementptr { i64, [8 x i64] }, ptr %t210, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t221, ptr %t222
  %t223 = load { i64, [8 x i64] }, ptr %t210
  %t225 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t223, ptr %t225
  %t227 = insertvalue { i32, ptr } zeroinitializer, ptr %t225, 1
  store { i32, ptr } %t227, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"compiler/token:Token"
  %l5 = alloca i1
  %l11 = alloca i1
  %l14 = alloca %"compiler/token:Token"
  %l15 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 22
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 24
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l5, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i32 65536, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehint(ptr %v0, ptr %v1, ptr %t13, { i64, ptr } %t14)
  store i1 %t17, ptr %l11
  br label %bb7
bb7:
  %t18 = load i1, ptr %l11, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t21)
  store %"compiler/token:Token" %t23, ptr %l14
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t24 = load %"compiler/token:Token", ptr %l14
  store %"compiler/token:Token" %t24, ptr %l2
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l15, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t26)
  store i32 %t28, ptr %l17
  br label %bb11
bb11:
  %t29 = getelementptr %"compiler/token:Token", ptr %l2, i32 0, i32 3
  %t30 = load i32, ptr %t29, !tbaa !23
  store i32 %t30, ptr %l18, !tbaa !23
  %t31 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efound(ptr %v0, ptr %v0, ptr %t32)
  store { i64, ptr } %t34, ptr %l21
  br label %bb12
bb12:
  %t35 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExpected(ptr %v1, ptr %v0, ptr %v0, { i64, ptr } %t42, { i64, ptr } %t41)
  store %"compiler/diagmsg:Msg" %t44, ptr %l23
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l15, !tbaa !29
  %t46 = load i32, ptr %l17, !tbaa !23
  %t47 = load i32, ptr %l18, !tbaa !23
  %t48 = load %"compiler/diagmsg:Msg", ptr %l23
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t45, i32 %t46, i32 %t47, %"compiler/diagmsg:Msg" %t48)
  br label %bb14
bb14:
  br label %bb15
bb15:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2efieldAttrs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i1
  %l16 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i1
  %l33 = alloca %"compiler/source:Span"
  %l47 = alloca %"compiler/ast:VarDecl"
  %l53 = alloca i1
  %l58 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca i32
  %l67 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca ptr
  %t97 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb29
bb5:
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = getelementptr %"compiler/ast:VarDecl", ptr %t22, i32 0, i32 5
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = getelementptr %"compiler/ast:VarDecl", ptr %t27, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = icmp eq i64 %t32, 1
  store i1 %t34, ptr %l16, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t36 = load i1, ptr %l16, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t39 = getelementptr %"compiler/ast:VarDecl", ptr %t37, i32 0, i32 2
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb11, label %bb12
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb11:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb13
bb12:
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = getelementptr %"compiler/ast:VarDecl", ptr %t46, i32 0, i32 3
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = icmp sgt i64 %t51, 0
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l26, !tbaa !21
  store i1 %t55, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l21, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclareAttrs(ptr %v0, ptr %v2, ptr %t57, { i64, ptr } %t58)
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t61 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t61, ptr %l33
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/ast:VarDecl", ptr %t62, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t68 = getelementptr %"compiler/ast:VarDecl", ptr %t66, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t72 = getelementptr %"compiler/ast:VarDecl", ptr %t70, i32 0, i32 2
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load ptr, ptr %l4, !tbaa !29
  %t76 = getelementptr %"compiler/ast:VarDecl", ptr %t74, i32 0, i32 3
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t80 = getelementptr %"compiler/ast:VarDecl", ptr %t78, i32 0, i32 4
  %t81 = load i1, ptr %t80, !tbaa !21
  %t82 = load ptr, ptr %l4, !tbaa !29
  %t84 = getelementptr %"compiler/ast:VarDecl", ptr %t82, i32 0, i32 5
  %t85 = load i1, ptr %t84, !tbaa !21
  %t86 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t94 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %t65, { i64, ptr } %t69, ptr %t73, { i64, ptr } %t77, i1 %t81, i1 %t85, { i64, ptr } %t86, i1 false)
  store %"compiler/ast:VarDecl" %t94, ptr %l47
  br label %bb18
bb18:
  %t95 = load %"compiler/ast:VarDecl", ptr %l47
  %t96 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t95, ptr %t96
  store { i64, [4 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 0
  store i64 1, ptr %t98
  %t99 = load %"compiler/source:Span", ptr %l33
  %t100 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t99, 0
  %t102 = insertvalue { %"compiler/source:Span", ptr } %t100, ptr %t96, 1
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t102, ptr %t103
  %t104 = load { i64, [4 x i64] }, ptr %t97
  %t106 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t104, ptr %t106
  store ptr %t106, ptr %rv
  br label %ret
bb19:
  %t108 = load ptr, ptr %l4, !tbaa !29
  %t110 = getelementptr %"compiler/ast:VarDecl", ptr %t108, i32 0, i32 5
  %t111 = load i1, ptr %t110, !tbaa !21
  br i1 %t111, label %bb20, label %bb21
bb20:
  %t113 = load ptr, ptr %l4, !tbaa !29
  %t115 = getelementptr %"compiler/ast:VarDecl", ptr %t113, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t120 = icmp eq i64 %t118, 1
  store i1 %t120, ptr %l53, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb22
bb22:
  %t122 = load i1, ptr %l53, !tbaa !21
  br i1 %t122, label %bb23, label %bb24
bb23:
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t123, ptr %l58, !tbaa !27
  %t124 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr ptr, ptr %t125, i64 0
  %t127 = load ptr, ptr %t126, !tbaa !39
  %t129 = getelementptr %"compiler/ast:Attr", ptr %t127, i32 0, i32 0
  %t130 = load %"compiler/source:Span", ptr %t129
  store %"compiler/source:Span" %t130, ptr %l5
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l61, !tbaa !29
  %t133 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t134 = load i32, ptr %t133, !tbaa !23
  store i32 %t134, ptr %l62, !tbaa !23
  %t135 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t136 = load i32, ptr %t135, !tbaa !23
  store i32 %t136, ptr %l63, !tbaa !23
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/parse:Parser", ptr %t137, i32 0, i32 2
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t141 = load ptr, ptr %l4, !tbaa !29
  %t143 = getelementptr %"compiler/ast:VarDecl", ptr %t141, i32 0, i32 0
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l67, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr i32, ptr %t146, i64 0
  %t148 = load i32, ptr %t147, !tbaa !33
  %t151 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t140, i32 %t148)
  store { i64, ptr } %t151, ptr %l69
  br label %bb25
bb24:
  br label %bb28
bb25:
  %t152 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t153 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrPun(ptr %v0, ptr %v0, { i64, ptr } %t152)
  store %"compiler/diagmsg:Msg" %t153, ptr %l70
  br label %bb26
bb26:
  %t154 = load ptr, ptr %l61, !tbaa !29
  %t155 = load i32, ptr %l62, !tbaa !23
  %t156 = load i32, ptr %l63, !tbaa !23
  %t157 = load %"compiler/diagmsg:Msg", ptr %l70
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t154, i32 %t155, i32 %t156, %"compiler/diagmsg:Msg" %t157)
  br label %bb27
bb27:
  %t158 = load ptr, ptr %l1, !tbaa !29
  store ptr %t158, ptr %rv
  br label %ret
bb28:
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_c5f7d3d7474f6415_ffaba5dab3442011)
  unreachable
bb34:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrRefused(ptr %v0, ptr %v2, ptr %t160, { i64, ptr } %t161)
  br label %bb35
bb35:
  %t164 = load ptr, ptr %l1, !tbaa !29
  store ptr %t164, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eforSource(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca i1
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l19 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i32
  %rv = alloca { i32, ptr }
  %t36 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 30)
  store i1 %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load i1, ptr %l5, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t6)
  store i32 %t8, ptr %l7
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t9 = load i32, ptr %l7, !tbaa !23
  store i32 %t9, ptr %l1, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprList(ptr %v0, ptr %v1, ptr %t10)
  %t13 = extractvalue { i32, { i64, ptr } } %t12, 1
  %t14 = extractvalue { i32, { i64, ptr } } %t12, 0
  store i32 %t14, ptr %l11
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb6, label %ok.16, !prof !99
ok.16:
  store { i64, ptr } %t13, ptr %l10
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t17, ptr %l8, !tbaa !27
  br label %bb7
bb6:
  %t18 = load i32, ptr %l11, !tbaa !23
  %t19 = lshr i32 %t18, 16
  %t20 = and i32 %t18, 65535
  %t21 = icmp eq i32 %t19, 1
  %t22 = select i1 %t21, i32 1, i32 0
  %t23 = icmp eq i32 %t18, 0
  %t24 = shl i32 %t22, 16
  %t25 = or i32 %t24, %t20
  %t26 = select i1 %t23, i32 0, i32 %t25
  %t28 = insertvalue { i32, ptr } zeroinitializer, i32 %t26, 0
  store { i32, ptr } %t28, ptr %rv
  br label %ret
bb7:
  %t29 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t29, ptr %l2, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t30, i32 %t31)
  store %"compiler/source:Span" %t34, ptr %l15
  br label %bb8
bb8:
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 0
  store i64 24, ptr %t37
  %t38 = load %"compiler/source:Span", ptr %l15
  %t39 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t38, 0
  %t41 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t39, { i64, ptr } %t35, 1
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t41, ptr %t42
  %t43 = load { i64, [4 x i64] }, ptr %t36
  %t45 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t43, ptr %t45
  %t47 = insertvalue { i32, ptr } zeroinitializer, ptr %t45, 1
  store { i32, ptr } %t47, ptr %rv
  br label %ret
bb9:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t48)
  %t51 = extractvalue { i32, ptr } %t50, 1
  %t52 = extractvalue { i32, ptr } %t50, 0
  store i32 %t52, ptr %l22
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb11, label %ok.54, !prof !99
ok.54:
  store ptr %t51, ptr %l21
  br label %bb10
bb10:
  %t55 = load ptr, ptr %l21, !tbaa !29
  store ptr %t55, ptr %l19, !tbaa !29
  br label %bb12
bb11:
  %t56 = load i32, ptr %l22, !tbaa !23
  %t57 = lshr i32 %t56, 16
  %t58 = and i32 %t56, 65535
  %t59 = icmp eq i32 %t57, 1
  %t60 = select i1 %t59, i32 1, i32 0
  %t61 = icmp eq i32 %t56, 0
  %t62 = shl i32 %t60, 16
  %t63 = or i32 %t62, %t58
  %t64 = select i1 %t61, i32 0, i32 %t63
  %t66 = insertvalue { i32, ptr } zeroinitializer, i32 %t64, 0
  store { i32, ptr } %t66, ptr %rv
  br label %ret
bb12:
  %t67 = load ptr, ptr %l19, !tbaa !29
  %t68 = insertvalue { i32, ptr } zeroinitializer, ptr %t67, 1
  store { i32, ptr } %t68, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l5 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = getelementptr %"compiler/parse:Parser", ptr %a0, i32 0, i32 10
  %t5 = load i32, ptr %t4, !tbaa !23
  %t8 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %a1, i32 %t5)
  store %"compiler/source:Span" %t8, ptr %l5
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efunction(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca %"compiler/token:Token"
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l21 = alloca i1
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i32
  %l31 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i32
  %l37 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i32
  %l43 = alloca i1
  %l45 = alloca %"compiler/token:Token"
  %l46 = alloca i32
  %l48 = alloca i32
  %l49 = alloca i32
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i32
  %l64 = alloca %"compiler/source:Span"
  %l65 = alloca i32
  %l72 = alloca i32
  %l75 = alloca i32
  %l76 = alloca i32
  %l78 = alloca i32
  %l80 = alloca i32
  %l81 = alloca i32
  %l84 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l95 = alloca i32
  %l98 = alloca i32
  %l100 = alloca i32
  %l101 = alloca i32
  %l108 = alloca i1
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l112 = alloca i32
  %l117 = alloca i1
  %l122 = alloca ptr
  %l128 = alloca ptr
  %l130 = alloca ptr
  %l131 = alloca i32
  %l135 = alloca i1
  %l136 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l139 = alloca i32
  %l142 = alloca ptr
  %l145 = alloca %"compiler/source:Span"
  %l146 = alloca ptr
  %l147 = alloca i32
  %l148 = alloca ptr
  %l151 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l158 = alloca %"compiler/ast:Func"
  %l165 = alloca %"compiler/source:Span"
  %l166 = alloca ptr
  %l167 = alloca i32
  %l168 = alloca ptr
  %l169 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l176 = alloca %"compiler/ast:Func"
  %s4 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t170 = alloca i64
  %t181 = alloca { i64, [5 x i64] }, align 8
  %t435 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 37)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l17
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l16
  br label %bb1
bb1:
  %t9 = load i32, ptr %l16, !tbaa !23
  store i32 %t9, ptr %l13, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l17, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  %t20 = insertvalue { i32, ptr } zeroinitializer, i32 %t18, 0
  store { i32, ptr } %t20, ptr %rv
  br label %ret
bb3:
  %t21 = load i32, ptr %l13, !tbaa !23
  store i32 %t21, ptr %l1, !tbaa !23
  store ptr null, ptr %l2, !tbaa !29
  store i32 0, ptr %l3, !tbaa !23
  store ptr null, ptr %l4, !tbaa !29
  store i32 0, ptr %l5, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t25 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t22, i32 108)
  store i1 %t25, ptr %l21
  br label %bb4
bb4:
  %t26 = load i1, ptr %l21, !tbaa !21
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/parse:Parser", ptr %t27, i32 0, i32 51
  store i1 true, ptr %t29, !tbaa !21
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparam(ptr %v0, ptr %v1, ptr %t30, i1 false)
  %t33 = extractvalue { i32, ptr } %t32, 1
  %t34 = extractvalue { i32, ptr } %t32, 0
  store i32 %t34, ptr %l26
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb8, label %ok.36, !prof !99
ok.36:
  store ptr %t33, ptr %l25
  br label %bb7
bb6:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eownerAhead(ptr %v0, ptr %t37)
  store i1 %t39, ptr %l43
  br label %bb17
bb7:
  %t40 = load ptr, ptr %l25, !tbaa !29
  store ptr %t40, ptr %l23, !tbaa !29
  br label %bb10
bb8:
  br label %bb9
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/parse:Parser", ptr %t41, i32 0, i32 51
  store i1 false, ptr %t43, !tbaa !21
  %t45 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t45, ptr %rv
  br label %ret
bb10:
  %t46 = load ptr, ptr %l23, !tbaa !29
  store ptr %t46, ptr %l2, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/parse:Parser", ptr %t48, i32 0, i32 51
  store i1 false, ptr %t50, !tbaa !21
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t54 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t51, i32 109)
  %t55 = extractvalue { i32, i32 } %t54, 1
  %t56 = extractvalue { i32, i32 } %t54, 0
  store i32 %t56, ptr %l35
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb12, label %ok.58, !prof !99
ok.58:
  store i32 %t55, ptr %l34
  br label %bb11
bb11:
  %t59 = load i32, ptr %l34, !tbaa !23
  store i32 %t59, ptr %l31, !tbaa !23
  br label %bb13
bb12:
  %t60 = load i32, ptr %l35, !tbaa !23
  %t61 = lshr i32 %t60, 16
  %t62 = and i32 %t60, 65535
  %t63 = icmp eq i32 %t61, 1
  %t64 = select i1 %t63, i32 1, i32 0
  %t65 = icmp eq i32 %t60, 0
  %t66 = shl i32 %t64, 16
  %t67 = or i32 %t66, %t62
  %t68 = select i1 %t65, i32 0, i32 %t67
  %t70 = insertvalue { i32, ptr } zeroinitializer, i32 %t68, 0
  store { i32, ptr } %t70, ptr %rv
  br label %ret
bb13:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %t71)
  %t74 = extractvalue { i32, i32 } %t73, 1
  %t75 = extractvalue { i32, i32 } %t73, 0
  store i32 %t75, ptr %l40
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb15, label %ok.77, !prof !99
ok.77:
  store i32 %t74, ptr %l39
  br label %bb14
bb14:
  %t78 = load i32, ptr %l39, !tbaa !23
  store i32 %t78, ptr %l37, !tbaa !23
  br label %bb16
bb15:
  %t79 = load i32, ptr %l40, !tbaa !23
  %t80 = lshr i32 %t79, 16
  %t81 = and i32 %t79, 65535
  %t82 = icmp eq i32 %t80, 1
  %t83 = select i1 %t82, i32 1, i32 0
  %t84 = icmp eq i32 %t79, 0
  %t85 = shl i32 %t83, 16
  %t86 = or i32 %t85, %t81
  %t87 = select i1 %t84, i32 0, i32 %t86
  %t89 = insertvalue { i32, ptr } zeroinitializer, i32 %t87, 0
  store { i32, ptr } %t89, ptr %rv
  br label %ret
bb16:
  %t90 = load i32, ptr %l37, !tbaa !23
  store i32 %t90, ptr %l3, !tbaa !23
  br label %bb54
bb17:
  %t91 = load i1, ptr %l43, !tbaa !21
  br i1 %t91, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t92)
  store %"compiler/token:Token" %t94, ptr %l45
  br label %bb20
bb19:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t95)
  %t98 = extractvalue { i32, i32 } %t97, 1
  %t99 = extractvalue { i32, i32 } %t97, 0
  store i32 %t99, ptr %l101
  %t100 = icmp ne i32 %t99, 0
  br i1 %t100, label %bb51, label %ok.101, !prof !99
ok.101:
  store i32 %t98, ptr %l100
  br label %bb50
bb20:
  %t102 = load %"compiler/token:Token", ptr %l45
  store %"compiler/token:Token" %t102, ptr %l6
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t103)
  %t106 = extractvalue { i32, i32 } %t105, 1
  %t107 = extractvalue { i32, i32 } %t105, 0
  store i32 %t107, ptr %l49
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb22, label %ok.109, !prof !99
ok.109:
  store i32 %t106, ptr %l48
  br label %bb21
bb21:
  %t110 = load i32, ptr %l48, !tbaa !23
  store i32 %t110, ptr %l46, !tbaa !23
  br label %bb23
bb22:
  %t111 = load i32, ptr %l49, !tbaa !23
  %t112 = lshr i32 %t111, 16
  %t113 = and i32 %t111, 65535
  %t114 = icmp eq i32 %t112, 1
  %t115 = select i1 %t114, i32 1, i32 0
  %t116 = icmp eq i32 %t111, 0
  %t117 = shl i32 %t115, 16
  %t118 = or i32 %t117, %t113
  %t119 = select i1 %t116, i32 0, i32 %t118
  call void @__olang_scope_close(ptr %s4)
  %t121 = insertvalue { i32, ptr } zeroinitializer, i32 %t119, 0
  store { i32, ptr } %t121, ptr %rv
  br label %ret
bb23:
  %t122 = load i32, ptr %l46, !tbaa !23
  store i32 %t122, ptr %l7, !tbaa !23
  %t123 = icmp sge i64 0, 0
  br i1 %t123, label %bb24, label %bb25
bb24:
  %t125 = icmp sle i64 0, 1152921504606846975
  br i1 %t125, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_4c43f34f877e1376_ed14b5a1f1e9a1ea)
  unreachable
bb26:
  %t127 = mul i64 0, 8
  %t128 = insertvalue { i64, ptr } undef, i64 0, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t129, ptr %l8, !tbaa !27
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t134 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t131, i32 97)
  store i1 %t134, ptr %l56
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_4c43f34f877e1376_ed14b5a1f1e9a1ea)
  unreachable
bb28:
  %t135 = load i1, ptr %l56, !tbaa !21
  br i1 %t135, label %bb29, label %bb30
bb29:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v1, ptr %t136)
  %t139 = extractvalue { i32, { i64, ptr } } %t138, 1
  %t140 = extractvalue { i32, { i64, ptr } } %t138, 0
  store i32 %t140, ptr %l60
  %t141 = icmp ne i32 %t140, 0
  br i1 %t141, label %bb32, label %ok.142, !prof !99
ok.142:
  store { i64, ptr } %t139, ptr %l59
  br label %bb31
bb30:
  br label %bb34
bb31:
  %t143 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t143, ptr %l57, !tbaa !27
  br label %bb33
bb32:
  %t144 = load i32, ptr %l60, !tbaa !23
  %t145 = lshr i32 %t144, 16
  %t146 = and i32 %t144, 65535
  %t147 = icmp eq i32 %t145, 1
  %t148 = select i1 %t147, i32 1, i32 0
  %t149 = icmp eq i32 %t144, 0
  %t150 = shl i32 %t148, 16
  %t151 = or i32 %t150, %t146
  %t152 = select i1 %t149, i32 0, i32 %t151
  call void @__olang_scope_close(ptr %s4)
  %t154 = insertvalue { i32, ptr } zeroinitializer, i32 %t152, 0
  store { i32, ptr } %t154, ptr %rv
  br label %ret
bb33:
  %t155 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t155, ptr %l8, !tbaa !27
  br label %bb34
bb34:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/token:Token", ptr %l6, i32 0, i32 2
  %t158 = load i32, ptr %t157, !tbaa !23
  %t161 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t156, i32 %t158)
  store %"compiler/source:Span" %t161, ptr %l64
  br label %bb35
bb35:
  %t162 = load i32, ptr %l7, !tbaa !23
  store i32 %t162, ptr %l65, !tbaa !23
  %t163 = icmp sge i64 1, 0
  br i1 %t163, label %bb36, label %bb37
bb36:
  %t165 = icmp sle i64 1, 2305843009213693951
  br i1 %t165, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_6416c01e12aaae0b_a3305b3dd64c2cbf)
  unreachable
bb38:
  %t167 = mul i64 1, 4
  %t168 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t167)
  %t169 = load i32, ptr %l65, !tbaa !23
  store i64 0, ptr %t170
  br label %fill.171
fill.171:
  %t174 = load i64, ptr %t170
  %t175 = icmp slt i64 %t174, 1
  br i1 %t175, label %fillb.172, label %filld.173
fillb.172:
  %t176 = getelementptr i32, ptr %t168, i64 %t174
  store i32 %t169, ptr %t176
  %t177 = add i64 %t174, 1
  store i64 %t177, ptr %t170
  br label %fill.171
filld.173:
  %t178 = insertvalue { i64, ptr } undef, i64 1, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t168, 1
  %t180 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t181
  %t182 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 0
  store i64 0, ptr %t182
  %t183 = load %"compiler/source:Span", ptr %l64
  %t184 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t183, 0
  %t186 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t184, { i64, ptr } %t179, 1
  %t188 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t186, { i64, ptr } %t180, 2
  %t189 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t188, ptr %t189
  %t190 = load { i64, [5 x i64] }, ptr %t181
  %t192 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t190, ptr %t192
  store ptr %t192, ptr %l4, !tbaa !29
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t197 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t194, i32 76)
  %t198 = extractvalue { i32, i32 } %t197, 1
  %t199 = extractvalue { i32, i32 } %t197, 0
  store i32 %t199, ptr %l76
  %t200 = icmp ne i32 %t199, 0
  br i1 %t200, label %bb41, label %ok.201, !prof !99
ok.201:
  store i32 %t198, ptr %l75
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_6416c01e12aaae0b_a3305b3dd64c2cbf)
  unreachable
bb40:
  %t202 = load i32, ptr %l75, !tbaa !23
  store i32 %t202, ptr %l72, !tbaa !23
  br label %bb42
bb41:
  %t203 = load i32, ptr %l76, !tbaa !23
  %t204 = lshr i32 %t203, 16
  %t205 = and i32 %t203, 65535
  %t206 = icmp eq i32 %t204, 1
  %t207 = select i1 %t206, i32 1, i32 0
  %t208 = icmp eq i32 %t203, 0
  %t209 = shl i32 %t207, 16
  %t210 = or i32 %t209, %t205
  %t211 = select i1 %t208, i32 0, i32 %t210
  call void @__olang_scope_close(ptr %s4)
  %t213 = insertvalue { i32, ptr } zeroinitializer, i32 %t211, 0
  store { i32, ptr } %t213, ptr %rv
  br label %ret
bb42:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %t214)
  %t217 = extractvalue { i32, i32 } %t216, 1
  %t218 = extractvalue { i32, i32 } %t216, 0
  store i32 %t218, ptr %l81
  %t219 = icmp ne i32 %t218, 0
  br i1 %t219, label %bb44, label %ok.220, !prof !99
ok.220:
  store i32 %t217, ptr %l80
  br label %bb43
bb43:
  %t221 = load i32, ptr %l80, !tbaa !23
  store i32 %t221, ptr %l78, !tbaa !23
  br label %bb45
bb44:
  %t222 = load i32, ptr %l81, !tbaa !23
  %t223 = lshr i32 %t222, 16
  %t224 = and i32 %t222, 65535
  %t225 = icmp eq i32 %t223, 1
  %t226 = select i1 %t225, i32 1, i32 0
  %t227 = icmp eq i32 %t222, 0
  %t228 = shl i32 %t226, 16
  %t229 = or i32 %t228, %t224
  %t230 = select i1 %t227, i32 0, i32 %t229
  call void @__olang_scope_close(ptr %s4)
  %t232 = insertvalue { i32, ptr } zeroinitializer, i32 %t230, 0
  store { i32, ptr } %t232, ptr %rv
  br label %ret
bb45:
  %t233 = load i32, ptr %l78, !tbaa !23
  store i32 %t233, ptr %l5, !tbaa !23
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/parse:Parser", ptr %t234, i32 0, i32 2
  %t237 = load ptr, ptr %t236, !tbaa !29
  store ptr %t237, ptr %l84, !tbaa !29
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/parse:Parser", ptr %t238, i32 0, i32 2
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t242 = load i32, ptr %l7, !tbaa !23
  %t245 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t241, i32 %t242)
  store { i64, ptr } %t245, ptr %l88
  br label %bb46
bb46:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/parse:Parser", ptr %t246, i32 0, i32 2
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t250 = load i32, ptr %l5, !tbaa !23
  %t253 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t249, i32 %t250)
  store { i64, ptr } %t253, ptr %l92
  br label %bb47
bb47:
  %t254 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = extractvalue { i64, ptr } %t254, 0
  %t257 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t259 = add i64 %t256, %t258
  %t260 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t263 = add i64 %t259, %t262
  %t264 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t263)
  call void @olang_textcopy(ptr %t264, ptr %t255, i64 %t256)
  %t265 = getelementptr i8, ptr %t264, i64 %t256
  call void @olang_textcopy(ptr %t265, ptr %t257, i64 %t258)
  %t266 = getelementptr i8, ptr %t265, i64 %t258
  call void @olang_textcopy(ptr %t266, ptr %t261, i64 %t262)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t264, 1
  %t270 = extractvalue { i64, ptr } %t268, 0
  %t271 = extractvalue { i64, ptr } %t268, 1
  %t272 = mul i64 %t270, 1
  %t273 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t272)
  call void @llvm.memcpy.p0.p0.i64(ptr %t273, ptr %t271, i64 %t272, i1 false)
  %t274 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  %t276 = load ptr, ptr %l84, !tbaa !29
  %t278 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s4, ptr %t276, { i64, ptr } %t275)
  store i32 %t278, ptr %l95
  br label %bb48
bb48:
  %t279 = load i32, ptr %l95, !tbaa !23
  store i32 %t279, ptr %l3, !tbaa !23
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereceiverVars(ptr %v0, ptr %v1, ptr %t280, ptr %t281, i1 false)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s4)
  br label %bb53
bb50:
  %t284 = load i32, ptr %l100, !tbaa !23
  store i32 %t284, ptr %l98, !tbaa !23
  br label %bb52
bb51:
  %t285 = load i32, ptr %l101, !tbaa !23
  %t286 = lshr i32 %t285, 16
  %t287 = and i32 %t285, 65535
  %t288 = icmp eq i32 %t286, 1
  %t289 = select i1 %t288, i32 1, i32 0
  %t290 = icmp eq i32 %t285, 0
  %t291 = shl i32 %t289, 16
  %t292 = or i32 %t291, %t287
  %t293 = select i1 %t290, i32 0, i32 %t292
  %t295 = insertvalue { i32, ptr } zeroinitializer, i32 %t293, 0
  store { i32, ptr } %t295, ptr %rv
  br label %ret
bb52:
  %t296 = load i32, ptr %l98, !tbaa !23
  store i32 %t296, ptr %l3, !tbaa !23
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t297 = icmp sge i64 0, 0
  br i1 %t297, label %bb55, label %bb56
bb55:
  %t299 = icmp sle i64 0, 1152921504606846975
  br i1 %t299, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_79faa04a2077f0a8_b4c818f5d0d3035c)
  unreachable
bb57:
  %t301 = mul i64 0, 8
  %t302 = insertvalue { i64, ptr } undef, i64 0, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t303, ptr %l9, !tbaa !27
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t308 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t305, i32 97)
  store i1 %t308, ptr %l108
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_79faa04a2077f0a8_b4c818f5d0d3035c)
  unreachable
bb59:
  %t309 = load i1, ptr %l108, !tbaa !21
  br i1 %t309, label %bb60, label %bb61
bb60:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeParams(ptr %v0, ptr %v1, ptr %t310)
  %t313 = extractvalue { i32, { i64, ptr } } %t312, 1
  %t314 = extractvalue { i32, { i64, ptr } } %t312, 0
  store i32 %t314, ptr %l112
  %t315 = icmp ne i32 %t314, 0
  br i1 %t315, label %bb63, label %ok.316, !prof !99
ok.316:
  store { i64, ptr } %t313, ptr %l111
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t317 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t317, ptr %l109, !tbaa !27
  br label %bb64
bb63:
  %t318 = load i32, ptr %l112, !tbaa !23
  %t319 = lshr i32 %t318, 16
  %t320 = and i32 %t318, 65535
  %t321 = icmp eq i32 %t319, 1
  %t322 = select i1 %t321, i32 1, i32 0
  %t323 = icmp eq i32 %t318, 0
  %t324 = shl i32 %t322, 16
  %t325 = or i32 %t324, %t320
  %t326 = select i1 %t323, i32 0, i32 %t325
  %t328 = insertvalue { i32, ptr } zeroinitializer, i32 %t326, 0
  store { i32, ptr } %t328, ptr %rv
  br label %ret
bb64:
  %t329 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t329, ptr %l9, !tbaa !27
  br label %bb65
bb65:
  %t330 = load ptr, ptr %l2, !tbaa !29
  %t332 = icmp eq ptr %t330, null
  %t334 = xor i1 %t332, true
  br i1 %t334, label %bb66, label %bb67
bb66:
  %t336 = load ptr, ptr %l2, !tbaa !29
  %t338 = getelementptr %"compiler/ast:Param", ptr %t336, i32 0, i32 2
  %t339 = load ptr, ptr %t338, !tbaa !29
  %t341 = icmp eq ptr %t339, null
  %t343 = xor i1 %t341, true
  store i1 %t343, ptr %l117, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb68
bb68:
  %t345 = load i1, ptr %l117, !tbaa !21
  br i1 %t345, label %bb69, label %bb70
bb69:
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l122, !tbaa !29
  %t347 = load ptr, ptr %l2, !tbaa !29
  %t349 = getelementptr %"compiler/ast:Param", ptr %t347, i32 0, i32 2
  %t350 = load ptr, ptr %t349, !tbaa !29
  %t352 = icmp eq ptr %t350, null
  br i1 %t352, label %bb71, label %bb72
bb70:
  br label %bb75
bb71:
  call void @__olang_check_failed(ptr @olang_loc_7ae9d5317a3d4e8f_1e272ac5502f090b)
  unreachable
bb72:
  br label %bb73
bb73:
  %t354 = load ptr, ptr %l2, !tbaa !29
  %t356 = getelementptr %"compiler/ast:Param", ptr %t354, i32 0, i32 2
  %t357 = load ptr, ptr %t356, !tbaa !29
  %t358 = load ptr, ptr %l122, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereceiverVars(ptr %v0, ptr %v1, ptr %t358, ptr %t357, i1 false)
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %t360, i1 false, i1 false, i1 true)
  %t363 = extractvalue { i32, ptr } %t362, 1
  %t364 = extractvalue { i32, ptr } %t362, 0
  store i32 %t364, ptr %l131
  %t365 = icmp ne i32 %t364, 0
  br i1 %t365, label %bb77, label %ok.366, !prof !99
ok.366:
  store ptr %t363, ptr %l130
  br label %bb76
bb76:
  %t367 = load ptr, ptr %l130, !tbaa !29
  store ptr %t367, ptr %l128, !tbaa !29
  br label %bb78
bb77:
  %t368 = load i32, ptr %l131, !tbaa !23
  %t369 = lshr i32 %t368, 16
  %t370 = and i32 %t368, 65535
  %t371 = icmp eq i32 %t369, 1
  %t372 = select i1 %t371, i32 1, i32 0
  %t373 = icmp eq i32 %t368, 0
  %t374 = shl i32 %t372, 16
  %t375 = or i32 %t374, %t370
  %t376 = select i1 %t373, i32 0, i32 %t375
  %t378 = insertvalue { i32, ptr } zeroinitializer, i32 %t376, 0
  store { i32, ptr } %t378, ptr %rv
  br label %ret
bb78:
  %t379 = load ptr, ptr %l128, !tbaa !29
  store ptr %t379, ptr %l10, !tbaa !29
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t383 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t380, i32 112)
  store i1 %t383, ptr %l135
  br label %bb79
bb79:
  %t384 = load i1, ptr %l135, !tbaa !21
  store i1 %t384, ptr %l11, !tbaa !21
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t385)
  %t388 = extractvalue { i32, { i64, ptr } } %t387, 1
  %t389 = extractvalue { i32, { i64, ptr } } %t387, 0
  store i32 %t389, ptr %l139
  %t390 = icmp ne i32 %t389, 0
  br i1 %t390, label %bb81, label %ok.391, !prof !99
ok.391:
  store { i64, ptr } %t388, ptr %l138
  br label %bb80
bb80:
  %t392 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t392, ptr %l136, !tbaa !27
  br label %bb97
bb81:
  br label %bb82
bb82:
  %t393 = load i1, ptr %l11, !tbaa !21
  br i1 %t393, label %bb83, label %bb84
bb83:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/parse:Parser", ptr %t395, i32 0, i32 39
  store ptr %t397, ptr %l142, !tbaa !29
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load i32, ptr %l1, !tbaa !23
  %t402 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t398, i32 %t399)
  store %"compiler/source:Span" %t402, ptr %l145
  br label %bb85
bb84:
  br label %bb96
bb85:
  %t403 = load ptr, ptr %l2, !tbaa !29
  store ptr %t403, ptr %l146, !tbaa !29
  %t404 = load i32, ptr %l3, !tbaa !23
  store i32 %t404, ptr %l147, !tbaa !23
  %t405 = load ptr, ptr %l10, !tbaa !29
  store ptr %t405, ptr %l148, !tbaa !29
  %t406 = icmp sge i64 0, 0
  br i1 %t406, label %bb86, label %bb87
bb86:
  %t408 = icmp sle i64 0, 1152921504606846975
  br i1 %t408, label %bb88, label %bb89
bb87:
  call void @__olang_check_failed(ptr @olang_loc_a8fa7275eec9c062_f04ec61276511d7e)
  unreachable
bb88:
  %t410 = mul i64 0, 8
  %t411 = insertvalue { i64, ptr } undef, i64 0, 0
  %t412 = insertvalue { i64, ptr } %t411, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t412, ptr %l151, !tbaa !27
  %t413 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t413, ptr %l152, !tbaa !27
  %t414 = icmp sge i64 0, 0
  br i1 %t414, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_a8fa7275eec9c062_f04ec61276511d7e)
  unreachable
bb90:
  %t416 = icmp sle i64 0, 1152921504606846975
  br i1 %t416, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_6486cff29aa18f17_5166ac325e8f72b3)
  unreachable
bb92:
  %t418 = mul i64 0, 8
  %t419 = insertvalue { i64, ptr } undef, i64 0, 0
  %t420 = insertvalue { i64, ptr } %t419, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t421 = load ptr, ptr %l4, !tbaa !29
  %t422 = load i32, ptr %l5, !tbaa !23
  %t423 = load %"compiler/source:Span", ptr %l145
  %t424 = load ptr, ptr %l146, !tbaa !29
  %t425 = load i32, ptr %l147, !tbaa !23
  %t426 = load ptr, ptr %l148, !tbaa !29
  %t427 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t428 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t432 = call %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v1, ptr %v1, ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v0, %"compiler/source:Span" %t423, ptr %t424, i32 %t425, ptr %t426, { i64, ptr } %t427, { i64, ptr } %t428, i1 false, i1 false, { i64, ptr } %t420, ptr %t421, i32 %t422)
  store %"compiler/ast:Func" %t432, ptr %l158
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_6486cff29aa18f17_5166ac325e8f72b3)
  unreachable
bb94:
  %t433 = load %"compiler/ast:Func", ptr %l158
  %t434 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 104, i64 8)
  store %"compiler/ast:Func" %t433, ptr %t434
  store { i64, [8 x i64] } zeroinitializer, ptr %t435
  %t436 = getelementptr { i64, [8 x i64] }, ptr %t435, i32 0, i32 0
  store i64 0, ptr %t436
  %t438 = insertvalue { ptr } undef, ptr %t434, 0
  %t439 = getelementptr { i64, [8 x i64] }, ptr %t435, i32 0, i32 1
  store { ptr } %t438, ptr %t439
  %t440 = load { i64, [8 x i64] }, ptr %t435
  %t442 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store { i64, [8 x i64] } %t440, ptr %t442
  %t443 = load ptr, ptr %l142, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t443, ptr %t442)
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t446 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t446, ptr %rv
  br label %ret
bb97:
  %t447 = load { i64, ptr }, ptr %l136, !tbaa !27
  store { i64, ptr } %t447, ptr %l12, !tbaa !27
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load i32, ptr %l1, !tbaa !23
  %t452 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t448, i32 %t449)
  store %"compiler/source:Span" %t452, ptr %l165
  br label %bb98
bb98:
  %t453 = load ptr, ptr %l2, !tbaa !29
  store ptr %t453, ptr %l166, !tbaa !29
  %t454 = load i32, ptr %l3, !tbaa !23
  store i32 %t454, ptr %l167, !tbaa !23
  %t455 = load ptr, ptr %l10, !tbaa !29
  store ptr %t455, ptr %l168, !tbaa !29
  %t456 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t456, ptr %l169, !tbaa !27
  %t457 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t457, ptr %l170, !tbaa !27
  %t458 = icmp sge i64 0, 0
  br i1 %t458, label %bb99, label %bb100
bb99:
  %t460 = icmp sle i64 0, 1152921504606846975
  br i1 %t460, label %bb101, label %bb102
bb100:
  call void @__olang_check_failed(ptr @olang_loc_cf732662ad9bcd74_880057418bdbda90)
  unreachable
bb101:
  %t462 = mul i64 0, 8
  %t463 = insertvalue { i64, ptr } undef, i64 0, 0
  %t464 = insertvalue { i64, ptr } %t463, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t465 = load ptr, ptr %l4, !tbaa !29
  %t466 = load i32, ptr %l5, !tbaa !23
  %t467 = load %"compiler/source:Span", ptr %l165
  %t468 = load ptr, ptr %l166, !tbaa !29
  %t469 = load i32, ptr %l167, !tbaa !23
  %t470 = load ptr, ptr %l168, !tbaa !29
  %t471 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t472 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t476 = call %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t467, ptr %t468, i32 %t469, ptr %t470, { i64, ptr } %t471, { i64, ptr } %t472, i1 true, i1 false, { i64, ptr } %t464, ptr %t465, i32 %t466)
  store %"compiler/ast:Func" %t476, ptr %l176
  br label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_cf732662ad9bcd74_880057418bdbda90)
  unreachable
bb103:
  %t477 = load %"compiler/ast:Func", ptr %l176
  %t478 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store %"compiler/ast:Func" %t477, ptr %t478
  %t480 = insertvalue { i32, ptr } zeroinitializer, ptr %t478, 1
  store { i32, ptr } %t480, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2egrouped(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eFuncSig(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Sig", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = icmp sgt i64 %t15, 1
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb7
bb6:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/ast:Sig", ptr %t19, i32 0, i32 3
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = icmp sgt i64 %t24, 1
  store i1 %t26, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l12, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/ast:Sig", ptr %t30, i32 0, i32 2
  %t33 = load i1, ptr %t32, !tbaa !21
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t40 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %a0, i32 77)
  store i1 %t40, ptr %l24
  br label %bb13
bb12:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb13:
  %t41 = load i1, ptr %l24, !tbaa !21
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t42 = load i1, ptr %l21, !tbaa !21
  store i1 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eidenStmt(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"compiler/token:Token"
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %lp6 = alloca ptr
  %l7 = alloca %"compiler/token:Token"
  %l10 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l25 = alloca %"compiler/token:Token"
  %l26 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l33 = alloca %"compiler/source:Span"
  %l35 = alloca i32
  %l37 = alloca i64
  %l39 = alloca i32
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l47 = alloca %"compiler/source:Span"
  %l50 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l57 = alloca %"compiler/ast:VarDecl"
  %l64 = alloca i1
  %l67 = alloca i1
  %l70 = alloca i1
  %l73 = alloca i1
  %l76 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l86 = alloca %"compiler/token:Token"
  %l87 = alloca i32
  %l89 = alloca i32
  %l90 = alloca i32
  %l92 = alloca ptr
  %l93 = alloca ptr
  %l94 = alloca i32
  %l95 = alloca ptr
  %l96 = alloca i32
  %l99 = alloca %"compiler/source:Span"
  %l100 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca i32
  %l104 = alloca ptr
  %l106 = alloca ptr
  %l107 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t93 = alloca i64
  %t126 = alloca i64
  %t160 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i32, ptr %l10, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t5, i64 1)
  store i32 %t7, ptr %l12
  br label %bb2
bb2:
  %t8 = load i32, ptr %l12, !range !{i32 0, i32 114}
  store i32 %t8, ptr %l2
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/parse:Parser", ptr %t9, i32 0, i32 12
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t16 = trunc i64 8 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb11
bb5:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb7
bb6:
  %t19 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t21 = trunc i64 113 to i32
  %t22 = icmp eq i32 %t19, %t21
  store i1 %t22, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l18, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb10
bb9:
  %t25 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t27 = trunc i64 0 to i32
  %t28 = icmp eq i32 %t25, %t27
  store i1 %t28, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t30 = load i1, ptr %l21, !tbaa !21
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb11
bb11:
  %t31 = load i1, ptr %l15, !tbaa !21
  br i1 %t31, label %bb12, label %bb13
bb12:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t32)
  store %"compiler/token:Token" %t34, ptr %l25
  br label %bb14
bb13:
  br label %bb44
bb14:
  %t35 = load %"compiler/token:Token", ptr %l25
  store %"compiler/token:Token" %t35, ptr %l3
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t36)
  %t39 = extractvalue { i32, i32 } %t38, 1
  %t40 = extractvalue { i32, i32 } %t38, 0
  store i32 %t40, ptr %l29
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb16, label %ok.42, !prof !99
ok.42:
  store i32 %t39, ptr %l28
  br label %bb15
bb15:
  %t43 = load i32, ptr %l28, !tbaa !23
  store i32 %t43, ptr %l26, !tbaa !23
  br label %bb17
bb16:
  %t44 = load i32, ptr %l29, !tbaa !23
  %t45 = lshr i32 %t44, 16
  %t46 = and i32 %t44, 65535
  %t47 = icmp eq i32 %t45, 1
  %t48 = select i1 %t47, i32 1, i32 0
  %t49 = icmp eq i32 %t44, 0
  %t50 = shl i32 %t48, 16
  %t51 = or i32 %t50, %t46
  %t52 = select i1 %t49, i32 0, i32 %t51
  %t54 = insertvalue { i32, ptr } zeroinitializer, i32 %t52, 0
  store { i32, ptr } %t54, ptr %rv
  br label %ret
bb17:
  %t55 = load i32, ptr %l26, !tbaa !23
  store i32 %t55, ptr %l4, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l1, !tbaa !23
  %t60 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t56, i32 %t57)
  store %"compiler/source:Span" %t60, ptr %l33
  br label %bb18
bb18:
  %t61 = load %"compiler/source:Span", ptr %l33
  store %"compiler/source:Span" %t61, ptr %l5
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t62)
  store i32 %t64, ptr %l35
  %t65 = icmp ne i32 %t64, 0
  br i1 %t65, label %bb20, label %ok.66, !prof !99
ok.66:
  br label %bb19
bb19:
  br label %bb21
bb20:
  %t67 = load i32, ptr %l35, !tbaa !23
  %t68 = lshr i32 %t67, 16
  %t69 = and i32 %t67, 65535
  %t70 = icmp eq i32 %t68, 1
  %t71 = select i1 %t70, i32 1, i32 0
  %t72 = icmp eq i32 %t67, 0
  %t73 = shl i32 %t71, 16
  %t74 = or i32 %t73, %t69
  %t75 = select i1 %t72, i32 0, i32 %t74
  %t77 = insertvalue { i32, ptr } zeroinitializer, i32 %t75, 0
  store { i32, ptr } %t77, ptr %rv
  br label %ret
bb21:
  %t78 = ptrtoint ptr %v1 to i64
  store i64 %t78, ptr %l37, !tbaa !24
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e0
  br i1 %t79, label %bb22, label %bb23
bb22:
  %t81 = call ptr @__olang_region_make(ptr %v1)
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l37, !tbaa !24
  br label %bb23
bb23:
  %t83 = load i32, ptr %l4, !tbaa !23
  store i32 %t83, ptr %l39, !tbaa !23
  %t84 = icmp sge i64 1, 0
  br i1 %t84, label %bb24, label %bb25
bb24:
  %t86 = icmp sle i64 1, 2305843009213693951
  br i1 %t86, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_13a9b66eb9aa3f96_3dd1d0a593daf8ba)
  unreachable
bb26:
  %t88 = mul i64 1, 4
  %t89 = load i64, ptr %l37
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = call ptr @__olang_scope_alloc(ptr %t90, i64 %t88)
  %t92 = load i32, ptr %l39, !tbaa !23
  store i64 0, ptr %t93
  br label %fill.94
fill.94:
  %t97 = load i64, ptr %t93
  %t98 = icmp slt i64 %t97, 1
  br i1 %t98, label %fillb.95, label %filld.96
fillb.95:
  %t99 = getelementptr i32, ptr %t91, i64 %t97
  store i32 %t92, ptr %t99
  %t100 = add i64 %t97, 1
  store i64 %t100, ptr %t93
  br label %fill.94
filld.96:
  %t101 = insertvalue { i64, ptr } undef, i64 1, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t91, 1
  store { i64, ptr } %t102, ptr %l42, !tbaa !27
  %t103 = ptrtoint ptr %v1 to i64
  store i64 %t103, ptr %l43, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e1
  br i1 %t104, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_13a9b66eb9aa3f96_3dd1d0a593daf8ba)
  unreachable
bb28:
  %t106 = call ptr @__olang_region_make(ptr %v1)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l43, !tbaa !24
  br label %bb29
bb29:
  %t108 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t109 = load i32, ptr %t108, !tbaa !23
  %t110 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 3
  %t111 = load i32, ptr %t110, !tbaa !23
  %t112 = load i64, ptr %l43
  %t113 = inttoptr i64 %t112 to ptr
  %t116 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %t113, i32 %t109, i32 %t111)
  store %"compiler/source:Span" %t116, ptr %l47
  br label %bb30
bb30:
  %t117 = icmp sge i64 1, 0
  br i1 %t117, label %bb31, label %bb32
bb31:
  %t119 = icmp sle i64 1, 1152921504606846975
  br i1 %t119, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_13a9b66eb9aa3f96_3dd1d0a593daf8ba)
  unreachable
bb33:
  %t121 = mul i64 1, 8
  %t122 = load i64, ptr %l43
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = call ptr @__olang_scope_alloc(ptr %t123, i64 %t121)
  %t125 = load %"compiler/source:Span", ptr %l47
  store i64 0, ptr %t126
  br label %fill.127
fill.127:
  %t130 = load i64, ptr %t126
  %t131 = icmp slt i64 %t130, 1
  br i1 %t131, label %fillb.128, label %filld.129
fillb.128:
  %t132 = getelementptr %"compiler/source:Span", ptr %t124, i64 %t130
  store %"compiler/source:Span" %t125, ptr %t132
  %t133 = add i64 %t130, 1
  store i64 %t133, ptr %t126
  br label %fill.127
filld.129:
  %t134 = insertvalue { i64, ptr } undef, i64 1, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t124, 1
  store { i64, ptr } %t135, ptr %l50, !tbaa !27
  %t136 = icmp sge i64 0, 0
  br i1 %t136, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_13a9b66eb9aa3f96_3dd1d0a593daf8ba)
  unreachable
bb35:
  %t138 = icmp sle i64 0, 1152921504606846975
  br i1 %t138, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_b5d05676e64fefab_5744e152e232520f)
  unreachable
bb37:
  %t140 = mul i64 0, 8
  %t141 = insertvalue { i64, ptr } undef, i64 0, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t142, ptr %l53, !tbaa !27
  %t143 = icmp sge i64 0, 0
  br i1 %t143, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_b5d05676e64fefab_5744e152e232520f)
  unreachable
bb39:
  %t145 = icmp sle i64 0, 1152921504606846975
  br i1 %t145, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_33a9d3c17503db48_610ee650de967ac)
  unreachable
bb41:
  %t147 = mul i64 0, 8
  %t148 = insertvalue { i64, ptr } undef, i64 0, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t150 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t151 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t154 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t150, { i64, ptr } %t151, ptr null, { i64, ptr } %t152, i1 false, i1 true, { i64, ptr } %t149, i1 false)
  store %"compiler/ast:VarDecl" %t154, ptr %l57
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_33a9d3c17503db48_610ee650de967ac)
  unreachable
bb43:
  %t155 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 88, i64 8)
  store ptr %t155, ptr %lp6
  %t156 = load %"compiler/ast:VarDecl", ptr %l57
  %t157 = load ptr, ptr %lp6
  store %"compiler/ast:VarDecl" %t156, ptr %t157
  %t158 = load %"compiler/source:Span", ptr %l5
  %t159 = load ptr, ptr %lp6
  store { i64, [4 x i64] } zeroinitializer, ptr %t160
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t160, i32 0, i32 0
  store i64 1, ptr %t161
  %t163 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t158, 0
  %t165 = insertvalue { %"compiler/source:Span", ptr } %t163, ptr %t159, 1
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t160, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t165, ptr %t166
  %t167 = load { i64, [4 x i64] }, ptr %t160
  %t169 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t167, ptr %t169
  %t171 = insertvalue { i32, ptr } zeroinitializer, ptr %t169, 1
  store { i32, ptr } %t171, ptr %rv
  br label %ret
bb44:
  %t172 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t174 = trunc i64 80 to i32
  %t175 = icmp eq i32 %t172, %t174
  br i1 %t175, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb47
bb46:
  %t177 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t179 = trunc i64 1 to i32
  %t180 = icmp eq i32 %t177, %t179
  store i1 %t180, ptr %l64, !tbaa !21
  br label %bb47
bb47:
  %t182 = load i1, ptr %l64, !tbaa !21
  br i1 %t182, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb50
bb49:
  %t183 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t185 = trunc i64 39 to i32
  %t186 = icmp eq i32 %t183, %t185
  store i1 %t186, ptr %l67, !tbaa !21
  br label %bb50
bb50:
  %t188 = load i1, ptr %l67, !tbaa !21
  br i1 %t188, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb53
bb52:
  %t189 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t191 = trunc i64 52 to i32
  %t192 = icmp eq i32 %t189, %t191
  store i1 %t192, ptr %l70, !tbaa !21
  br label %bb53
bb53:
  %t194 = load i1, ptr %l70, !tbaa !21
  br i1 %t194, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb56
bb55:
  %t195 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t197 = trunc i64 37 to i32
  %t198 = icmp eq i32 %t195, %t197
  store i1 %t198, ptr %l73, !tbaa !21
  br label %bb56
bb56:
  %t200 = load i1, ptr %l73, !tbaa !21
  br i1 %t200, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb59
bb58:
  %t201 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t203 = trunc i64 35 to i32
  %t204 = icmp eq i32 %t201, %t203
  store i1 %t204, ptr %l76, !tbaa !21
  br label %bb59
bb59:
  %t206 = load i1, ptr %l76, !tbaa !21
  br i1 %t206, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb62
bb61:
  %t207 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t209 = trunc i64 34 to i32
  %t210 = icmp eq i32 %t207, %t209
  store i1 %t210, ptr %l79, !tbaa !21
  br label %bb62
bb62:
  %t212 = load i1, ptr %l79, !tbaa !21
  br i1 %t212, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb65
bb64:
  %t213 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t215 = trunc i64 67 to i32
  %t216 = icmp eq i32 %t213, %t215
  store i1 %t216, ptr %l82, !tbaa !21
  br label %bb65
bb65:
  %t218 = load i1, ptr %l82, !tbaa !21
  br i1 %t218, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s2
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t219)
  store %"compiler/token:Token" %t221, ptr %l86
  br label %bb68
bb67:
  br label %bb77
bb68:
  %t222 = load %"compiler/token:Token", ptr %l86
  store %"compiler/token:Token" %t222, ptr %l7
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t223)
  %t226 = extractvalue { i32, i32 } %t225, 1
  %t227 = extractvalue { i32, i32 } %t225, 0
  store i32 %t227, ptr %l90
  %t228 = icmp ne i32 %t227, 0
  br i1 %t228, label %bb70, label %ok.229, !prof !99
ok.229:
  store i32 %t226, ptr %l89
  br label %bb69
bb69:
  %t230 = load i32, ptr %l89, !tbaa !23
  store i32 %t230, ptr %l87, !tbaa !23
  br label %bb71
bb70:
  %t231 = load i32, ptr %l90, !tbaa !23
  %t232 = lshr i32 %t231, 16
  %t233 = and i32 %t231, 65535
  %t234 = icmp eq i32 %t232, 1
  %t235 = select i1 %t234, i32 1, i32 0
  %t236 = icmp eq i32 %t231, 0
  %t237 = shl i32 %t235, 16
  %t238 = or i32 %t237, %t233
  %t239 = select i1 %t236, i32 0, i32 %t238
  call void @__olang_scope_close(ptr %s2)
  %t241 = insertvalue { i32, ptr } zeroinitializer, i32 %t239, 0
  store { i32, ptr } %t241, ptr %rv
  br label %ret
bb71:
  %t242 = load i32, ptr %l87, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l93, !tbaa !29
  %t244 = load i32, ptr %l1, !tbaa !23
  store i32 %t244, ptr %l94, !tbaa !23
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l95, !tbaa !29
  store i32 %t242, ptr %l96, !tbaa !23
  %t247 = getelementptr %"compiler/token:Token", ptr %l7, i32 0, i32 2
  %t248 = load i32, ptr %t247, !tbaa !23
  %t249 = getelementptr %"compiler/token:Token", ptr %l7, i32 0, i32 3
  %t250 = load i32, ptr %t249, !tbaa !23
  %t253 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t248, i32 %t250)
  store %"compiler/source:Span" %t253, ptr %l99
  br label %bb72
bb72:
  %t254 = load ptr, ptr %l95, !tbaa !29
  %t255 = load i32, ptr %l96, !tbaa !23
  %t256 = load %"compiler/source:Span", ptr %l99
  %t257 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eone(ptr %v0, ptr %v1, ptr %t254, i32 %t255, %"compiler/source:Span" %t256)
  store ptr %t257, ptr %l100
  br label %bb73
bb73:
  %t258 = load ptr, ptr %l93, !tbaa !29
  %t259 = load i32, ptr %l94, !tbaa !23
  %t260 = load ptr, ptr %l100, !tbaa !29
  %t261 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evarDecl(ptr %v0, ptr %v1, ptr %v1, ptr %t258, i32 %t259, ptr %t260)
  %t262 = extractvalue { i32, ptr } %t261, 1
  %t263 = extractvalue { i32, ptr } %t261, 0
  store i32 %t263, ptr %l102
  %t264 = icmp ne i32 %t263, 0
  br i1 %t264, label %bb75, label %ok.265, !prof !99
ok.265:
  store ptr %t262, ptr %l101
  br label %bb74
bb74:
  %t266 = load ptr, ptr %l101, !tbaa !29
  store ptr %t266, ptr %l92, !tbaa !29
  br label %bb76
bb75:
  %t267 = load i32, ptr %l102, !tbaa !23
  %t268 = lshr i32 %t267, 16
  %t269 = and i32 %t267, 65535
  %t270 = icmp eq i32 %t268, 1
  %t271 = select i1 %t270, i32 1, i32 0
  %t272 = icmp eq i32 %t267, 0
  %t273 = shl i32 %t271, 16
  %t274 = or i32 %t273, %t269
  %t275 = select i1 %t272, i32 0, i32 %t274
  call void @__olang_scope_close(ptr %s2)
  %t277 = insertvalue { i32, ptr } zeroinitializer, i32 %t275, 0
  store { i32, ptr } %t277, ptr %rv
  br label %ret
bb76:
  call void @__olang_scope_close(ptr %s2)
  %t278 = load ptr, ptr %l92, !tbaa !29
  %t279 = insertvalue { i32, ptr } zeroinitializer, ptr %t278, 1
  store { i32, ptr } %t279, ptr %rv
  br label %ret
bb77:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprStmt(ptr %v0, ptr %v1, ptr %t280)
  %t283 = extractvalue { i32, ptr } %t282, 1
  %t284 = extractvalue { i32, ptr } %t282, 0
  store i32 %t284, ptr %l107
  %t285 = icmp ne i32 %t284, 0
  br i1 %t285, label %bb79, label %ok.286, !prof !99
ok.286:
  store ptr %t283, ptr %l106
  br label %bb78
bb78:
  %t287 = load ptr, ptr %l106, !tbaa !29
  store ptr %t287, ptr %l104, !tbaa !29
  br label %bb80
bb79:
  %t288 = load i32, ptr %l107, !tbaa !23
  %t289 = lshr i32 %t288, 16
  %t290 = and i32 %t288, 65535
  %t291 = icmp eq i32 %t289, 1
  %t292 = select i1 %t291, i32 1, i32 0
  %t293 = icmp eq i32 %t288, 0
  %t294 = shl i32 %t292, 16
  %t295 = or i32 %t294, %t290
  %t296 = select i1 %t293, i32 0, i32 %t295
  %t298 = insertvalue { i32, ptr } zeroinitializer, i32 %t296, 0
  store { i32, ptr } %t298, ptr %rv
  br label %ret
bb80:
  %t299 = load ptr, ptr %l104, !tbaa !29
  %t300 = insertvalue { i32, ptr } zeroinitializer, ptr %t299, 1
  store { i32, ptr } %t300, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisQualifiedType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i64
  %l12 = alloca ptr
  %l14 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l18 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fparse_2eisPath(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/parse:Parser", ptr %t8, i32 0, i32 3
  %t11 = load ptr, ptr %t10, !tbaa !29
  store ptr %t11, ptr %l7, !tbaa !29
  %t12 = ptrtoint ptr %v0 to i64
  store i64 %t12, ptr %l8, !tbaa !24
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e3
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr %v0)
  %t17 = ptrtoint ptr %t16 to i64
  store i64 %t17, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/parse:Parser", ptr %t18, i32 0, i32 3
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Oracle", ptr %t21, i32 0, i32 1
  store ptr %t23, ptr %l12, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l14, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t28)
  store %"compiler/source:Span" %t30, ptr %l16
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l14, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l16
  %t33 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eTextOf(ptr %v0, ptr %v0, ptr %t31, %"compiler/source:Span" %t32)
  store { i64, ptr } %t33, ptr %l17
  br label %bb8
bb8:
  %t34 = load i64, ptr %l8
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = load i64, ptr %l8
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = load ptr, ptr %l12, !tbaa !29
  %t39 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t40 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %t35, ptr %t37, ptr %t38, { i64, ptr } %t39)
  store i1 %t40, ptr %l18
  br label %bb9
bb9:
  %t41 = load i1, ptr %l18, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/parse:stackMarks" @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarks(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l22 = alloca %"compiler/parse:stackMarks"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/parse:stackMarks"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 31
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 32
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eLen_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l6
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/parse:Parser", ptr %t11, i32 0, i32 33
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eLen_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l9
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/parse:Parser", ptr %t16, i32 0, i32 34
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2eLen_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l12
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 35
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eLen_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l15
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/parse:Parser", ptr %t26, i32 0, i32 36
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l18
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/parse:Parser", ptr %t31, i32 0, i32 37
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l21
  br label %bb7
bb7:
  %t36 = load i64, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l9, !tbaa !24
  %t39 = load i64, ptr %l12, !tbaa !24
  %t40 = load i64, ptr %l15, !tbaa !24
  %t41 = load i64, ptr %l18, !tbaa !24
  %t42 = load i64, ptr %l21, !tbaa !24
  %t43 = call %"compiler/parse:stackMarks" @compiler_2fparse_3astackMarks_2ector(ptr %s0, i64 %t36, i64 %t37, i64 %t38, i64 %t39, i64 %t40, i64 %t41, i64 %t42)
  store %"compiler/parse:stackMarks" %t43, ptr %l22
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load %"compiler/parse:stackMarks", ptr %l22
  store %"compiler/parse:stackMarks" %t44, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/parse:stackMarks", ptr %rv
  ret %"compiler/parse:stackMarks" %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enullMark(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l5 = alloca i1
  %l7 = alloca i32
  %l13 = alloca %"compiler/token:Token"
  %l14 = alloca i32
  %l16 = alloca %"compiler/token:Token"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 77)
  store i1 %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load i1, ptr %l3, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t8, i64 1)
  store i32 %t10, ptr %l7
  br label %bb4
bb4:
  %t11 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t13 = trunc i64 101 to i32
  %t14 = icmp eq i32 %t11, %t13
  %t16 = xor i1 %t14, true
  store i1 %t16, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l5, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t20, i64 0)
  store %"compiler/token:Token" %t22, ptr %l13
  br label %bb9
bb9:
  %t23 = getelementptr %"compiler/token:Token", ptr %l13, i32 0, i32 3
  %t24 = load i32, ptr %t23, !tbaa !23
  store i32 %t24, ptr %l14, !tbaa !23
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t25, i64 1)
  store %"compiler/token:Token" %t27, ptr %l16
  br label %bb10
bb10:
  %t28 = getelementptr %"compiler/token:Token", ptr %l16, i32 0, i32 2
  %t29 = load i32, ptr %t28, !tbaa !23
  %t30 = load i32, ptr %l14, !tbaa !23
  %t32 = icmp eq i32 %t30, %t29
  store i1 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eoperandStartBefore(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l38 = alloca i32
  %l41 = alloca i1
  %l46 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i64
  %l59 = alloca i1
  %l62 = alloca i32
  %l63 = alloca i1
  %l67 = alloca i1
  %l71 = alloca i32
  %l74 = alloca i1
  %l78 = alloca i32
  %l79 = alloca i1
  %l86 = alloca i32
  %l89 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 256, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t3 = load i64, ptr %l4, !tbaa !24
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l18, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l18, !tbaa !24
  store i64 %t29, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l15, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb50
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l8, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l2, !tbaa !24
  %t53 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t49, i64 %t50)
  store i32 %t53, ptr %l38
  br label %bb11
bb11:
  %t54 = load i32, ptr %l38, !range !{i32 0, i32 114}
  store i32 %t54, ptr %l9
  %t55 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t57 = trunc i64 109 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb14
bb13:
  %t60 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t62 = trunc i64 111 to i32
  %t63 = icmp eq i32 %t60, %t62
  store i1 %t63, ptr %l41, !tbaa !21
  br label %bb14
bb14:
  %t65 = load i1, ptr %l41, !tbaa !21
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l2, !tbaa !24
  %t70 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eopenerOf(ptr %v0, ptr %t66, i64 %t67)
  store i64 %t70, ptr %l46
  br label %bb17
bb16:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l2, !tbaa !24
  %t75 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisOperandEnd(ptr %v0, ptr %t71, i64 %t72)
  store i1 %t75, ptr %l67
  br label %bb31
bb17:
  %t76 = load i64, ptr %l46, !tbaa !24
  store i64 %t76, ptr %l2, !tbaa !24
  %t77 = load i64, ptr %l2, !tbaa !24
  %t79 = icmp slt i64 %t77, 0
  br i1 %t79, label %bb18, label %bb19
bb18:
  store i64 -1, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t82 = load i64, ptr %l2, !tbaa !24
  %t84 = sub i64 %t82, 1
  store i64 %t84, ptr %l10, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i64, ptr %l10, !tbaa !24
  %t90 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t86, i64 %t87)
  store i64 %t90, ptr %l54
  br label %bb21
bb21:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l2, !tbaa !24
  %t95 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t91, i64 %t92)
  store i64 %t95, ptr %l57
  br label %bb22
bb22:
  %t96 = load i64, ptr %l54, !tbaa !24
  %t97 = load i64, ptr %l57, !tbaa !24
  %t98 = icmp eq i64 %t96, %t97
  br i1 %t98, label %bb23, label %bb24
bb23:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t100, i64 %t101)
  store i32 %t104, ptr %l62
  br label %bb25
bb24:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb27
bb25:
  %t105 = load i32, ptr %l62, !range !{i32 0, i32 114}
  %t106 = call i1 @compiler_2fparse_2eisOperandTail(i32 %t105)
  store i1 %t106, ptr %l63
  br label %bb26
bb26:
  %t107 = load i1, ptr %l63, !tbaa !21
  store i1 %t107, ptr %l59, !tbaa !21
  br label %bb27
bb27:
  %t108 = load i1, ptr %l59, !tbaa !21
  br i1 %t108, label %bb28, label %bb29
bb28:
  %t109 = load i64, ptr %l10, !tbaa !24
  store i64 %t109, ptr %l2, !tbaa !24
  br label %bb49
bb29:
  br label %bb30
bb30:
  br label %bb44
bb31:
  %t111 = load i1, ptr %l67, !tbaa !21
  br i1 %t111, label %bb32, label %bb33
bb32:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l2, !tbaa !24
  %t115 = sub i64 %t113, 1
  %t118 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t112, i64 %t115)
  store i32 %t118, ptr %l71
  br label %bb34
bb33:
  store i64 -1, ptr %rv
  br label %ret
bb34:
  %t120 = load i32, ptr %l71, !range !{i32 0, i32 114}
  %t122 = trunc i64 76 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb35, label %bb36
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l2, !tbaa !24
  %t128 = sub i64 %t126, 2
  %t131 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t125, i64 %t128)
  store i32 %t131, ptr %l78
  br label %bb37
bb36:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb39
bb37:
  %t132 = load i32, ptr %l78, !range !{i32 0, i32 114}
  %t133 = call i1 @compiler_2fparse_2eisOperandTail(i32 %t132)
  store i1 %t133, ptr %l79
  br label %bb38
bb38:
  %t134 = load i1, ptr %l79, !tbaa !21
  store i1 %t134, ptr %l74, !tbaa !21
  br label %bb39
bb39:
  %t135 = load i1, ptr %l74, !tbaa !21
  br i1 %t135, label %bb40, label %bb41
bb40:
  %t136 = load i64, ptr %l2, !tbaa !24
  %t138 = sub i64 %t136, 2
  store i64 %t138, ptr %l2, !tbaa !24
  br label %bb49
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i64, ptr %l2, !tbaa !24
  %t143 = sub i64 %t141, 1
  %t146 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t140, i64 %t143)
  store i32 %t146, ptr %l86
  br label %bb45
bb45:
  %t147 = load i32, ptr %l86, !range !{i32 0, i32 114}
  %t149 = trunc i64 105 to i32
  %t150 = icmp eq i32 %t147, %t149
  br i1 %t150, label %bb46, label %bb47
bb46:
  store i64 -1, ptr %l89, !tbaa !24
  br label %bb48
bb47:
  %t152 = load i64, ptr %l2, !tbaa !24
  store i64 %t152, ptr %l89, !tbaa !24
  br label %bb48
bb48:
  %t154 = load i64, ptr %l89, !tbaa !24
  store i64 %t154, ptr %rv
  br label %ret
bb49:
  %t155 = load i64, ptr %l7, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l7, !tbaa !24
  br label %bb7
bb50:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eownerAhead(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l6 = alloca i1
  %l10 = alloca i32
  %l15 = alloca i32
  %l25 = alloca i32
  %l40 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
  %l54 = alloca i1
  %l58 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 1)
  store i1 %t4, ptr %l6
  br label %bb1
bb1:
  %t5 = load i1, ptr %l6, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t9, i64 1)
  store i32 %t11, ptr %l10
  br label %bb5
bb5:
  %t12 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t14 = trunc i64 76 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t18, i64 1)
  store i32 %t20, ptr %l15
  br label %bb9
bb9:
  %t21 = load i32, ptr %l15, !range !{i32 0, i32 114}
  %t23 = trunc i64 97 to i32
  %t24 = icmp eq i32 %t21, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  store i64 0, ptr %l1, !tbaa !24
  store i64 1, ptr %l2, !tbaa !24
  br label %bb13
bb13:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp slt i64 %t29, 256
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb14, label %bb15
bb14:
  br label %bb47
bb15:
  br label %bb16
bb16:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t35, i64 %t36)
  store i32 %t39, ptr %l25
  br label %bb17
bb17:
  %t40 = load i32, ptr %l25, !range !{i32 0, i32 114}
  store i32 %t40, ptr %l3
  %t41 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t43 = trunc i64 97 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb18, label %bb19
bb18:
  %t46 = load i64, ptr %l1, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l1, !tbaa !24
  br label %bb38
bb19:
  %t50 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t52 = trunc i64 99 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb20, label %bb21
bb20:
  %t55 = load i64, ptr %l1, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l1, !tbaa !24
  br label %bb37
bb21:
  %t59 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t61 = trunc i64 107 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb22, label %bb23
bb22:
  %t64 = load i64, ptr %l1, !tbaa !24
  %t66 = sub i64 %t64, 2
  store i64 %t66, ptr %l1, !tbaa !24
  br label %bb36
bb23:
  %t68 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t70 = trunc i64 108 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb26
bb25:
  %t73 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t75 = trunc i64 8 to i32
  %t76 = icmp eq i32 %t73, %t75
  store i1 %t76, ptr %l40, !tbaa !21
  br label %bb26
bb26:
  %t78 = load i1, ptr %l40, !tbaa !21
  br i1 %t78, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb29
bb28:
  %t79 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t81 = trunc i64 0 to i32
  %t82 = icmp eq i32 %t79, %t81
  store i1 %t82, ptr %l43, !tbaa !21
  br label %bb29
bb29:
  %t84 = load i1, ptr %l43, !tbaa !21
  br i1 %t84, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb32
bb31:
  %t85 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t87 = trunc i64 112 to i32
  %t88 = icmp eq i32 %t85, %t87
  store i1 %t88, ptr %l46, !tbaa !21
  br label %bb32
bb32:
  %t90 = load i1, ptr %l46, !tbaa !21
  br i1 %t90, label %bb33, label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t92 = load i64, ptr %l1, !tbaa !24
  %t94 = icmp sle i64 %t92, 0
  br i1 %t94, label %bb39, label %bb40
bb39:
  %t96 = load i64, ptr %l1, !tbaa !24
  %t98 = icmp eq i64 %t96, 0
  br i1 %t98, label %bb41, label %bb42
bb40:
  br label %bb45
bb41:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l2, !tbaa !24
  %t103 = add i64 %t101, 1
  %t106 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t100, i64 %t103)
  store i32 %t106, ptr %l58
  br label %bb43
bb42:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb44
bb43:
  %t107 = load i32, ptr %l58, !range !{i32 0, i32 114}
  %t109 = trunc i64 76 to i32
  %t110 = icmp eq i32 %t107, %t109
  store i1 %t110, ptr %l54, !tbaa !21
  br label %bb44
bb44:
  %t112 = load i1, ptr %l54, !tbaa !21
  store i1 %t112, ptr %rv
  br label %ret
bb45:
  %t113 = load i64, ptr %l2, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l2, !tbaa !24
  br label %bb46
bb46:
  br label %bb13
bb47:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epackedWord(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l9 = alloca { i64, ptr }
  %l11 = alloca i64
  %l16 = alloca i32
  %l21 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i1
  %l34 = alloca ptr
  %l36 = alloca i32
  %l38 = alloca %"compiler/token:Token"
  %l39 = alloca i32
  %l40 = alloca %"compiler/diagmsg:Msg"
  %l42 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 55)
  store i1 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load i1, ptr %l4, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/parse:Parser", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/scan:Tokens", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l9, !tbaa !27
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eafter(ptr %v0, ptr %t16, i64 1)
  store i64 %t18, ptr %l11
  br label %bb5
bb5:
  %t19 = load i64, ptr %l11, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/token:Token", ptr %t21, i64 %t19
  %t23 = getelementptr %"compiler/token:Token", ptr %t22, i32 0, i32 0
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 114}
  store i32 %t24, ptr %l1
  %t26 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t28 = trunc i64 34 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t31)
  store i32 %t33, ptr %l16
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  %t35 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t37 = trunc i64 35 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t42 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t44 = trunc i64 22 to i32
  %t45 = icmp eq i32 %t42, %t44
  %t47 = xor i1 %t45, true
  store i1 %t47, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t49 = load i1, ptr %l21, !tbaa !21
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t50 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t52 = trunc i64 36 to i32
  %t53 = icmp eq i32 %t50, %t52
  %t55 = xor i1 %t53, true
  store i1 %t55, ptr %l25, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t57 = load i1, ptr %l25, !tbaa !21
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t58 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t60 = trunc i64 38 to i32
  %t61 = icmp eq i32 %t58, %t60
  %t63 = xor i1 %t61, true
  store i1 %t63, ptr %l29, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t65 = load i1, ptr %l29, !tbaa !21
  br i1 %t65, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l34, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t68)
  store i32 %t70, ptr %l36
  br label %bb22
bb22:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t71)
  store %"compiler/token:Token" %t73, ptr %l38
  br label %bb23
bb23:
  %t74 = getelementptr %"compiler/token:Token", ptr %l38, i32 0, i32 3
  %t75 = load i32, ptr %t74, !tbaa !23
  store i32 %t75, ptr %l39, !tbaa !23
  %t76 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedNotStruct(ptr %v0)
  store %"compiler/diagmsg:Msg" %t76, ptr %l40
  br label %bb24
bb24:
  %t77 = load ptr, ptr %l34, !tbaa !29
  %t78 = load i32, ptr %l36, !tbaa !23
  %t79 = load i32, ptr %l39, !tbaa !23
  %t80 = load %"compiler/diagmsg:Msg", ptr %l40
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t77, i32 %t78, i32 %t79, %"compiler/diagmsg:Msg" %t80)
  br label %bb25
bb25:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t81)
  store i32 %t83, ptr %l42
  br label %bb26
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca i1
  %l28 = alloca { i64, ptr }
  %l29 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l63 = alloca i1
  %l68 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca i1
  %l84 = alloca i1
  %l89 = alloca ptr
  %l94 = alloca ptr
  %l95 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca ptr
  %l108 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l132 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  %t34 = alloca { i64, [4 x i64] }, align 8
  %t47 = alloca { i64, [4 x i64] }, align 8
  %t60 = alloca { i64, [4 x i64] }, align 8
  %t88 = alloca { i64, [4 x i64] }, align 8
  %t142 = alloca { i64, [4 x i64] }, align 8
  %t196 = alloca { i64, [4 x i64] }, align 8
  %t280 = alloca { i64, [4 x i64] }, align 8
  %t293 = alloca { i64, [4 x i64] }, align 8
  %t308 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t2 = load ptr, ptr %l17, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l17, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l18, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l18, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb14
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/parse:Parser", ptr %t22, i32 0, i32 2
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t26 = load i32, ptr %l4, !tbaa !23
  %t29 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t25, i32 %t26)
  store { i64, ptr } %t29, ptr %l28
  br label %bb6
bb6:
  %t30 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t30, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t31, ptr %l29
  br label %bb7
bb7:
  %t32 = load i1, ptr %l29, !tbaa !21
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t33 = load %"compiler/source:Span", ptr %l3
  store { i64, [4 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 0
  store i64 0, ptr %t35
  %t37 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t33, 0
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  store { %"compiler/source:Span" } %t37, ptr %t38
  %t39 = load { i64, [4 x i64] }, ptr %t34
  %t41 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t39, ptr %t41
  call void @__olang_scope_close(ptr %s1)
  store ptr %t41, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t43 = load i1, ptr %l2, !tbaa !21
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load %"compiler/source:Span", ptr %l3
  %t46 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t47
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 0
  store i64 1, ptr %t48
  %t50 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t45, 0
  %t52 = insertvalue { %"compiler/source:Span", ptr } %t50, ptr %t46, 1
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t52, ptr %t53
  %t54 = load { i64, [4 x i64] }, ptr %t47
  %t56 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t54, ptr %t56
  call void @__olang_scope_close(ptr %s1)
  store ptr %t56, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t58 = load %"compiler/source:Span", ptr %l3
  %t59 = load i32, ptr %l4, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t60
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 0
  store i64 3, ptr %t61
  %t63 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t58, 0
  %t65 = insertvalue { %"compiler/source:Span", i32 } %t63, i32 %t59, 1
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t65, ptr %t66
  %t67 = load { i64, [4 x i64] }, ptr %t60
  %t69 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t67, ptr %t69
  call void @__olang_scope_close(ptr %s1)
  store ptr %t69, ptr %rv
  br label %ret
bb14:
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t72 = load ptr, ptr %l42, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb15, label %bb16
bb15:
  %t75 = load ptr, ptr %l42, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 30}
  %t78 = icmp eq i64 %t76, 14
  store i1 %t78, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t79 = load i1, ptr %l43, !tbaa !21
  br i1 %t79, label %bb17, label %bb18
bb17:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t82, i32 0, i32 0
  %t84 = load %"compiler/source:Span", ptr %t83
  store %"compiler/source:Span" %t84, ptr %l5
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t86 = load %"compiler/source:Span", ptr %l5
  %t87 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 0
  store i64 1, ptr %t89
  %t91 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t86, 0
  %t93 = insertvalue { %"compiler/source:Span", ptr } %t91, ptr %t87, 1
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t93, ptr %t94
  %t95 = load { i64, [4 x i64] }, ptr %t88
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t95, ptr %t97
  store ptr %t97, ptr %rv
  br label %ret
bb20:
  %t99 = load ptr, ptr %l1, !tbaa !29
  store ptr %t99, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t100 = load ptr, ptr %l52, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb21, label %bb22
bb21:
  %t103 = load ptr, ptr %l52, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 30}
  %t106 = icmp eq i64 %t104, 12
  store i1 %t106, ptr %l53, !tbaa !21
  br label %bb22
bb22:
  %t107 = load i1, ptr %l53, !tbaa !21
  br i1 %t107, label %bb23, label %bb24
bb23:
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t110, i32 0, i32 0
  %t112 = load %"compiler/source:Span", ptr %t111
  store %"compiler/source:Span" %t112, ptr %l6
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t116, i32 0, i32 1
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l7, !tbaa !29
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr { i64, [4 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t122, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123
  store { i64, ptr } %t124, ptr %l8, !tbaa !27
  br label %bb25
bb24:
  br label %bb31
bb25:
  %t126 = load ptr, ptr %l7, !tbaa !29
  %t128 = call i1 @compiler_2fparse_2eisPatPath(ptr %v1, ptr %t126)
  store i1 %t128, ptr %l63
  br label %bb26
bb26:
  %t129 = load i1, ptr %l63, !tbaa !21
  br i1 %t129, label %bb27, label %bb28
bb27:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l6
  %t132 = load ptr, ptr %l7, !tbaa !29
  %t133 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t138 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecasePattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t130, %"compiler/source:Span" %t131, ptr %t132, { i64, ptr } %t133)
  store ptr %t138, ptr %l68
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t139 = load ptr, ptr %l68, !tbaa !29
  store ptr %t139, ptr %rv
  br label %ret
bb30:
  %t140 = load %"compiler/source:Span", ptr %l6
  %t141 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t142
  %t143 = getelementptr { i64, [4 x i64] }, ptr %t142, i32 0, i32 0
  store i64 4, ptr %t143
  %t145 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t140, 0
  %t147 = insertvalue { %"compiler/source:Span", ptr } %t145, ptr %t141, 1
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t142, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t147, ptr %t148
  %t149 = load { i64, [4 x i64] }, ptr %t142
  %t151 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t149, ptr %t151
  store ptr %t151, ptr %rv
  br label %ret
bb31:
  %t153 = load ptr, ptr %l1, !tbaa !29
  store ptr %t153, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t154 = load ptr, ptr %l73, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb32, label %bb33
bb32:
  %t157 = load ptr, ptr %l73, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 30}
  %t160 = icmp eq i64 %t158, 15
  store i1 %t160, ptr %l74, !tbaa !21
  br label %bb33
bb33:
  %t161 = load i1, ptr %l74, !tbaa !21
  br i1 %t161, label %bb34, label %bb35
bb34:
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t164 = getelementptr { i64, [4 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t164, i32 0, i32 0
  %t166 = load %"compiler/source:Span", ptr %t165
  store %"compiler/source:Span" %t166, ptr %l9
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [4 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t170, i32 0, i32 1
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l10, !tbaa !29
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr { i64, [4 x i64] }, ptr %t174, i32 0, i32 1
  %t177 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t176, i32 0, i32 2
  %t178 = load { i64, ptr }, ptr %t177
  store { i64, ptr } %t178, ptr %l11, !tbaa !27
  br label %bb36
bb35:
  br label %bb42
bb36:
  %t180 = load ptr, ptr %l10, !tbaa !29
  %t182 = call i1 @compiler_2fparse_2eisPath(ptr %v1, ptr %t180)
  store i1 %t182, ptr %l84
  br label %bb37
bb37:
  %t183 = load i1, ptr %l84, !tbaa !21
  br i1 %t183, label %bb38, label %bb39
bb38:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load %"compiler/source:Span", ptr %l9
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t187 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t192 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelemsPattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t184, %"compiler/source:Span" %t185, ptr %t186, { i64, ptr } %t187)
  store ptr %t192, ptr %l89
  br label %bb40
bb39:
  br label %bb41
bb40:
  %t193 = load ptr, ptr %l89, !tbaa !29
  store ptr %t193, ptr %rv
  br label %ret
bb41:
  %t194 = load %"compiler/source:Span", ptr %l9
  %t195 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t196, i32 0, i32 0
  store i64 4, ptr %t197
  %t199 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t194, 0
  %t201 = insertvalue { %"compiler/source:Span", ptr } %t199, ptr %t195, 1
  %t202 = getelementptr { i64, [4 x i64] }, ptr %t196, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t201, ptr %t202
  %t203 = load { i64, [4 x i64] }, ptr %t196
  %t205 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t203, ptr %t205
  store ptr %t205, ptr %rv
  br label %ret
bb42:
  %t207 = load ptr, ptr %l1, !tbaa !29
  store ptr %t207, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t208 = load ptr, ptr %l94, !tbaa !29
  %t209 = icmp ne ptr %t208, null
  br i1 %t209, label %bb43, label %bb44
bb43:
  %t211 = load ptr, ptr %l94, !tbaa !29
  %t212 = load i64, ptr %t211, !range !{i64 0, i64 30}
  %t214 = icmp eq i64 %t212, 17
  store i1 %t214, ptr %l95, !tbaa !21
  br label %bb44
bb44:
  %t215 = load i1, ptr %l95, !tbaa !21
  br i1 %t215, label %bb45, label %bb46
bb45:
  %t216 = load ptr, ptr %l1, !tbaa !29
  %t218 = getelementptr { i64, [4 x i64] }, ptr %t216, i32 0, i32 1
  %t219 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t218, i32 0, i32 0
  %t220 = load %"compiler/source:Span", ptr %t219
  store %"compiler/source:Span" %t220, ptr %l12
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t224 = getelementptr { i64, [4 x i64] }, ptr %t222, i32 0, i32 1
  %t225 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t224, i32 0, i32 2
  %t226 = load { i64, ptr }, ptr %t225
  store { i64, ptr } %t226, ptr %l13, !tbaa !27
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load %"compiler/source:Span", ptr %l12
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t236 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelemsPattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t228, %"compiler/source:Span" %t229, ptr %t230, { i64, ptr } %t231)
  store ptr %t236, ptr %l106
  br label %bb48
bb48:
  %t237 = load ptr, ptr %l106, !tbaa !29
  store ptr %t237, ptr %rv
  br label %ret
bb49:
  %t238 = load ptr, ptr %l1, !tbaa !29
  store ptr %t238, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t239 = load ptr, ptr %l107, !tbaa !29
  %t240 = icmp ne ptr %t239, null
  br i1 %t240, label %bb50, label %bb51
bb50:
  %t242 = load ptr, ptr %l107, !tbaa !29
  %t243 = load i64, ptr %t242, !range !{i64 0, i64 30}
  %t245 = icmp eq i64 %t243, 28
  store i1 %t245, ptr %l108, !tbaa !21
  br label %bb51
bb51:
  %t246 = load i1, ptr %l108, !tbaa !21
  br i1 %t246, label %bb52, label %bb53
bb52:
  %t247 = load ptr, ptr %l1, !tbaa !29
  %t249 = getelementptr { i64, [4 x i64] }, ptr %t247, i32 0, i32 1
  %t250 = getelementptr { %"compiler/source:Span", ptr }, ptr %t249, i32 0, i32 0
  %t251 = load %"compiler/source:Span", ptr %t250
  store %"compiler/source:Span" %t251, ptr %l14
  %t253 = load ptr, ptr %l1, !tbaa !29
  %t255 = getelementptr { i64, [4 x i64] }, ptr %t253, i32 0, i32 1
  %t256 = getelementptr { %"compiler/source:Span", ptr }, ptr %t255, i32 0, i32 1
  %t257 = load ptr, ptr %t256
  store ptr %t257, ptr %l15, !tbaa !29
  br label %bb54
bb53:
  br label %bb69
bb54:
  %t259 = load ptr, ptr %l15, !tbaa !29
  store ptr %t259, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t260 = load ptr, ptr %l115, !tbaa !29
  %t261 = icmp ne ptr %t260, null
  br i1 %t261, label %bb55, label %bb56
bb55:
  %t263 = load ptr, ptr %l115, !tbaa !29
  %t264 = load i64, ptr %t263, !range !{i64 0, i64 30}
  %t266 = icmp eq i64 %t264, 0
  store i1 %t266, ptr %l116, !tbaa !21
  br label %bb56
bb56:
  %t267 = load i1, ptr %l116, !tbaa !21
  br i1 %t267, label %bb57, label %bb58
bb57:
  %t268 = load ptr, ptr %l15, !tbaa !29
  %t270 = getelementptr { i64, [4 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", i32 }, ptr %t270, i32 0, i32 1
  %t272 = load i32, ptr %t271
  store i32 %t272, ptr %l16, !tbaa !23
  br label %bb59
bb58:
  br label %bb63
bb59:
  %t274 = load i1, ptr %l2, !tbaa !21
  %t276 = xor i1 %t274, true
  br i1 %t276, label %bb60, label %bb61
bb60:
  %t278 = load %"compiler/source:Span", ptr %l14
  %t279 = load i32, ptr %l16, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t280
  %t281 = getelementptr { i64, [4 x i64] }, ptr %t280, i32 0, i32 0
  store i64 7, ptr %t281
  %t283 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t278, 0
  %t285 = insertvalue { %"compiler/source:Span", i32 } %t283, i32 %t279, 1
  %t286 = getelementptr { i64, [4 x i64] }, ptr %t280, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t285, ptr %t286
  %t287 = load { i64, [4 x i64] }, ptr %t280
  %t289 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t287, ptr %t289
  store ptr %t289, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  br label %bb68
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_7ff84c49a98c5d65_799121c0214ef509)
  unreachable
bb68:
  %t291 = load %"compiler/source:Span", ptr %l14
  %t292 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t293
  %t294 = getelementptr { i64, [4 x i64] }, ptr %t293, i32 0, i32 0
  store i64 4, ptr %t294
  %t296 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t291, 0
  %t298 = insertvalue { %"compiler/source:Span", ptr } %t296, ptr %t292, 1
  %t299 = getelementptr { i64, [4 x i64] }, ptr %t293, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t298, ptr %t299
  %t300 = load { i64, [4 x i64] }, ptr %t293
  %t302 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t300, ptr %t302
  store ptr %t302, ptr %rv
  br label %ret
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb74
bb72:
  %t304 = load ptr, ptr %l1, !tbaa !29
  %t306 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t304)
  store %"compiler/source:Span" %t306, ptr %l132
  br label %bb73
bb73:
  %t307 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t308
  %t309 = getelementptr { i64, [4 x i64] }, ptr %t308, i32 0, i32 0
  store i64 4, ptr %t309
  %t310 = load %"compiler/source:Span", ptr %l132
  %t311 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t310, 0
  %t313 = insertvalue { %"compiler/source:Span", ptr } %t311, ptr %t307, 1
  %t314 = getelementptr { i64, [4 x i64] }, ptr %t308, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t313, ptr %t314
  %t315 = load { i64, [4 x i64] }, ptr %t308
  %t317 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t315, ptr %t317
  store ptr %t317, ptr %rv
  br label %ret
bb74:
  call void @__olang_check_failed(ptr @olang_loc_2af5dad726595634_740c4fa339a5cf38)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epiece(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca i32
  %l10 = alloca i1
  %l12 = alloca i32
  %l16 = alloca i32
  %l19 = alloca %"compiler/source:Span"
  %l23 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l30 = alloca i32
  %l33 = alloca i1
  %l36 = alloca i1
  %l40 = alloca i32
  %l42 = alloca i32
  %l43 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca i32
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca i32
  %l54 = alloca %"compiler/source:Span"
  %l61 = alloca ptr
  %l63 = alloca ptr
  %l64 = alloca i32
  %l68 = alloca %"compiler/source:Span"
  %rv = alloca { i32, ptr }
  %t36 = alloca { i64, [4 x i64] }, align 8
  %t128 = alloca { i64, [4 x i64] }, align 8
  %t140 = alloca { i64, [4 x i64] }, align 8
  %t180 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i32, ptr %l7, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t5, i32 5)
  store i1 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t10)
  store i32 %t12, ptr %l12
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb6, label %ok.14, !prof !99
ok.14:
  br label %bb5
bb4:
  br label %bb11
bb5:
  br label %bb7
bb6:
  %t15 = load i32, ptr %l12, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  %t25 = insertvalue { i32, ptr } zeroinitializer, i32 %t23, 0
  store { i32, ptr } %t25, ptr %rv
  br label %ret
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t26)
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t28)
  store i32 %t30, ptr %l16
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t31, i32 %t32)
  store %"compiler/source:Span" %t35, ptr %l19
  br label %bb10
bb10:
  store { i64, [4 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 0
  store i64 1, ptr %t37
  %t38 = load %"compiler/source:Span", ptr %l19
  %t39 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t38, 0
  %t41 = insertvalue { %"compiler/source:Span", i32 } %t39, i32 5, 1
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t41, ptr %t42
  %t43 = load { i64, [4 x i64] }, ptr %t36
  %t45 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t43, ptr %t45
  %t47 = insertvalue { i32, ptr } zeroinitializer, ptr %t45, 1
  store { i32, ptr } %t47, ptr %rv
  br label %ret
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t51 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t48, i32 105)
  %t52 = extractvalue { i32, i32 } %t51, 1
  %t53 = extractvalue { i32, i32 } %t51, 0
  store i32 %t53, ptr %l27
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb13, label %ok.55, !prof !99
ok.55:
  store i32 %t52, ptr %l26
  br label %bb12
bb12:
  %t56 = load i32, ptr %l26, !tbaa !23
  store i32 %t56, ptr %l23, !tbaa !23
  br label %bb14
bb13:
  %t57 = load i32, ptr %l27, !tbaa !23
  %t58 = lshr i32 %t57, 16
  %t59 = and i32 %t57, 65535
  %t60 = icmp eq i32 %t58, 1
  %t61 = select i1 %t60, i32 1, i32 0
  %t62 = icmp eq i32 %t57, 0
  %t63 = shl i32 %t61, 16
  %t64 = or i32 %t63, %t59
  %t65 = select i1 %t62, i32 0, i32 %t64
  %t67 = insertvalue { i32, ptr } zeroinitializer, i32 %t65, 0
  store { i32, ptr } %t67, ptr %rv
  br label %ret
bb14:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t68)
  store i32 %t70, ptr %l30
  br label %bb15
bb15:
  %t71 = load i32, ptr %l30, !range !{i32 0, i32 114}
  store i32 %t71, ptr %l2
  %t72 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t74 = trunc i64 69 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb18
bb17:
  %t77 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t79 = trunc i64 104 to i32
  %t80 = icmp eq i32 %t77, %t79
  store i1 %t80, ptr %l33, !tbaa !21
  br label %bb18
bb18:
  %t82 = load i1, ptr %l33, !tbaa !21
  br i1 %t82, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb21
bb20:
  %t83 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t85 = trunc i64 105 to i32
  %t86 = icmp eq i32 %t83, %t85
  store i1 %t86, ptr %l36, !tbaa !21
  br label %bb21
bb21:
  %t88 = load i1, ptr %l36, !tbaa !21
  br i1 %t88, label %bb22, label %bb23
bb22:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t89)
  store i32 %t91, ptr %l40
  br label %bb24
bb23:
  br label %bb31
bb24:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t92)
  store i32 %t94, ptr %l42
  br label %bb25
bb25:
  %t95 = load i32, ptr %l42, !tbaa !23
  store i32 %t95, ptr %l3, !tbaa !23
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfix(ptr %v0, ptr %v1, ptr %t96)
  %t99 = extractvalue { i32, ptr } %t98, 1
  %t100 = extractvalue { i32, ptr } %t98, 0
  store i32 %t100, ptr %l46
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb27, label %ok.102, !prof !99
ok.102:
  store ptr %t99, ptr %l45
  br label %bb26
bb26:
  %t103 = load ptr, ptr %l45, !tbaa !29
  store ptr %t103, ptr %l43, !tbaa !29
  br label %bb28
bb27:
  %t104 = load i32, ptr %l46, !tbaa !23
  %t105 = lshr i32 %t104, 16
  %t106 = and i32 %t104, 65535
  %t107 = icmp eq i32 %t105, 1
  %t108 = select i1 %t107, i32 1, i32 0
  %t109 = icmp eq i32 %t104, 0
  %t110 = shl i32 %t108, 16
  %t111 = or i32 %t110, %t106
  %t112 = select i1 %t109, i32 0, i32 %t111
  %t114 = insertvalue { i32, ptr } zeroinitializer, i32 %t112, 0
  store { i32, ptr } %t114, ptr %rv
  br label %ret
bb28:
  %t115 = load ptr, ptr %l43, !tbaa !29
  store ptr %t115, ptr %l4, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l1, !tbaa !23
  %t120 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t116, i32 %t117)
  store %"compiler/source:Span" %t120, ptr %l50
  br label %bb29
bb29:
  store i32 105, ptr %l51
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr %l3, !tbaa !23
  %t125 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t121, i32 %t122)
  store %"compiler/source:Span" %t125, ptr %l54
  br label %bb30
bb30:
  %t126 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t127 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t128
  %t129 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 0
  store i64 3, ptr %t129
  %t130 = load %"compiler/source:Span", ptr %l54
  %t131 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t130, 0
  %t133 = insertvalue { %"compiler/source:Span", i32, ptr } %t131, i32 %t126, 1
  %t135 = insertvalue { %"compiler/source:Span", i32, ptr } %t133, ptr %t127, 2
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t135, ptr %t136
  %t137 = load { i64, [4 x i64] }, ptr %t128
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t137, ptr %t139
  store { i64, [4 x i64] } zeroinitializer, ptr %t140
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 0
  store i64 3, ptr %t141
  %t142 = load %"compiler/source:Span", ptr %l50
  %t143 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t142, 0
  %t144 = load i32, ptr %l51, !range !{i32 0, i32 114}
  %t145 = insertvalue { %"compiler/source:Span", i32, ptr } %t143, i32 %t144, 1
  %t147 = insertvalue { %"compiler/source:Span", i32, ptr } %t145, ptr %t139, 2
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t147, ptr %t148
  %t149 = load { i64, [4 x i64] }, ptr %t140
  %t151 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t149, ptr %t151
  %t153 = insertvalue { i32, ptr } zeroinitializer, ptr %t151, 1
  store { i32, ptr } %t153, ptr %rv
  br label %ret
bb31:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfix(ptr %v0, ptr %v1, ptr %t154)
  %t157 = extractvalue { i32, ptr } %t156, 1
  %t158 = extractvalue { i32, ptr } %t156, 0
  store i32 %t158, ptr %l64
  %t159 = icmp ne i32 %t158, 0
  br i1 %t159, label %bb33, label %ok.160, !prof !99
ok.160:
  store ptr %t157, ptr %l63
  br label %bb32
bb32:
  %t161 = load ptr, ptr %l63, !tbaa !29
  store ptr %t161, ptr %l61, !tbaa !29
  br label %bb34
bb33:
  %t162 = load i32, ptr %l64, !tbaa !23
  %t163 = lshr i32 %t162, 16
  %t164 = and i32 %t162, 65535
  %t165 = icmp eq i32 %t163, 1
  %t166 = select i1 %t165, i32 1, i32 0
  %t167 = icmp eq i32 %t162, 0
  %t168 = shl i32 %t166, 16
  %t169 = or i32 %t168, %t164
  %t170 = select i1 %t167, i32 0, i32 %t169
  %t172 = insertvalue { i32, ptr } zeroinitializer, i32 %t170, 0
  store { i32, ptr } %t172, ptr %rv
  br label %ret
bb34:
  %t173 = load ptr, ptr %l61, !tbaa !29
  store ptr %t173, ptr %l5, !tbaa !29
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load i32, ptr %l1, !tbaa !23
  %t178 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t174, i32 %t175)
  store %"compiler/source:Span" %t178, ptr %l68
  br label %bb35
bb35:
  %t179 = load ptr, ptr %l5, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t180
  %t181 = getelementptr { i64, [4 x i64] }, ptr %t180, i32 0, i32 0
  store i64 3, ptr %t181
  %t182 = load %"compiler/source:Span", ptr %l68
  %t183 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t182, 0
  %t185 = insertvalue { %"compiler/source:Span", i32, ptr } %t183, i32 105, 1
  %t187 = insertvalue { %"compiler/source:Span", i32, ptr } %t185, ptr %t179, 2
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t180, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t187, ptr %t188
  %t189 = load { i64, [4 x i64] }, ptr %t180
  %t191 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t189, ptr %t191
  %t193 = insertvalue { i32, ptr } zeroinitializer, ptr %t191, 1
  store { i32, ptr } %t193, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprimary(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l17 = alloca %"compiler/token:Token"
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %lp21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l24 = alloca i32
  %l28 = alloca i32
  %l30 = alloca i32
  %l44 = alloca i32
  %l47 = alloca %"compiler/source:Span"
  %l54 = alloca i32
  %l58 = alloca ptr
  %l67 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca ptr
  %l81 = alloca ptr
  %l86 = alloca i32
  %l89 = alloca i32
  %l90 = alloca i32
  %l98 = alloca %"compiler/source:Span"
  %l105 = alloca i32
  %l106 = alloca ptr
  %l108 = alloca ptr
  %l109 = alloca i32
  %l113 = alloca %"compiler/source:Span"
  %l125 = alloca i32
  %l126 = alloca ptr
  %l128 = alloca ptr
  %l129 = alloca i32
  %l131 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l135 = alloca i32
  %l139 = alloca %"compiler/source:Span"
  %l147 = alloca i32
  %l150 = alloca ptr
  %l152 = alloca ptr
  %l153 = alloca i32
  %l155 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l159 = alloca i32
  %l163 = alloca %"compiler/source:Span"
  %l166 = alloca %"compiler/source:Span"
  %l167 = alloca ptr
  %l168 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l175 = alloca %"compiler/ast:Func"
  %l181 = alloca ptr
  %l183 = alloca ptr
  %l184 = alloca i32
  %l188 = alloca %"compiler/source:Span"
  %l195 = alloca i32
  %l197 = alloca i1
  %l198 = alloca ptr
  %l200 = alloca ptr
  %l201 = alloca i32
  %l206 = alloca %"compiler/source:Span"
  %l212 = alloca ptr
  %l214 = alloca ptr
  %l215 = alloca i32
  %l217 = alloca ptr
  %l221 = alloca ptr
  %l222 = alloca i32
  %l227 = alloca %"compiler/token:Token"
  %l229 = alloca i32
  %l231 = alloca ptr
  %l234 = alloca { i64, ptr }
  %l235 = alloca i32
  %l238 = alloca i1
  %l243 = alloca i1
  %l245 = alloca i32
  %l246 = alloca { i64, ptr }
  %l248 = alloca { i64, ptr }
  %l249 = alloca i32
  %l253 = alloca %"compiler/source:Span"
  %l256 = alloca %"compiler/source:Span"
  %l262 = alloca ptr
  %l266 = alloca ptr
  %l267 = alloca i32
  %l271 = alloca i1
  %l276 = alloca i1
  %l277 = alloca i1
  %l279 = alloca i1
  %l280 = alloca i1
  %l282 = alloca i1
  %l287 = alloca i1
  %l289 = alloca i1
  %l291 = alloca i1
  %l292 = alloca ptr
  %l294 = alloca %"compiler/token:Token"
  %l295 = alloca i32
  %l297 = alloca %"compiler/token:Token"
  %l298 = alloca i32
  %l301 = alloca { i64, ptr }
  %l302 = alloca %"compiler/diagmsg:Msg"
  %l304 = alloca i32
  %l305 = alloca { i64, ptr }
  %l307 = alloca { i64, ptr }
  %l308 = alloca i32
  %l312 = alloca %"compiler/source:Span"
  %l315 = alloca %"compiler/source:Span"
  %l324 = alloca i1
  %l326 = alloca i32
  %l329 = alloca i1
  %l331 = alloca i32
  %l335 = alloca i32
  %l337 = alloca i1
  %l340 = alloca %"compiler/source:Span"
  %l341 = alloca i32
  %l344 = alloca { i64, ptr }
  %l350 = alloca ptr
  %l351 = alloca ptr
  %l352 = alloca i32
  %l356 = alloca ptr
  %l357 = alloca ptr
  %l358 = alloca i32
  %l362 = alloca %"compiler/source:Span"
  %l369 = alloca i32
  %l372 = alloca i1
  %l375 = alloca i1
  %l377 = alloca i32
  %l380 = alloca i1
  %l385 = alloca i1
  %l387 = alloca i32
  %l390 = alloca %"compiler/source:Span"
  %l391 = alloca i32
  %l394 = alloca { i64, ptr }
  %l403 = alloca ptr
  %l404 = alloca ptr
  %l408 = alloca ptr
  %l409 = alloca i32
  %l412 = alloca i32
  %l415 = alloca %"compiler/source:Span"
  %l422 = alloca i32
  %l425 = alloca i32
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t48 = alloca { i64, [4 x i64] }, align 8
  %t177 = alloca { i64, [4 x i64] }, align 8
  %t223 = alloca { i64, [4 x i64] }, align 8
  %t303 = alloca { i64, [4 x i64] }, align 8
  %t406 = alloca { i64, [4 x i64] }, align 8
  %t449 = alloca { i64, [4 x i64] }, align 8
  %t500 = alloca { i64, [4 x i64] }, align 8
  %t639 = alloca { i64, [4 x i64] }, align 8
  %t650 = alloca { i64, [4 x i64] }, align 8
  %t789 = alloca { i64, [4 x i64] }, align 8
  %t800 = alloca { i64, [4 x i64] }, align 8
  %t857 = alloca i64
  %t874 = alloca { i64, [5 x i64] }, align 8
  %t924 = alloca { i64, [4 x i64] }, align 8
  %t993 = alloca i64
  %t1010 = alloca { i64, [5 x i64] }, align 8
  %t1065 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l28
  br label %bb1
bb1:
  %t4 = load i32, ptr %l28, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t5)
  store i32 %t7, ptr %l30
  br label %bb2
bb2:
  %t8 = load i32, ptr %l30, !range !{i32 0, i32 114}
  store i32 %t8, ptr %l2
  %t9 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t11 = trunc i64 2 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  %t14 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t16 = trunc i64 3 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb5, label %bb6
bb5:
  br label %bb15
bb6:
  %t19 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t21 = trunc i64 4 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb7, label %bb8
bb7:
  br label %bb15
bb8:
  %t24 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t26 = trunc i64 6 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t29 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t31 = trunc i64 7 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t36 = trunc i64 5 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t39)
  store i32 %t41, ptr %l44
  br label %bb16
bb16:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t42, i32 %t43)
  store %"compiler/source:Span" %t46, ptr %l47
  br label %bb17
bb17:
  %t47 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store { i64, [4 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 0
  store i64 1, ptr %t49
  %t50 = load %"compiler/source:Span", ptr %l47
  %t51 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t50, 0
  %t53 = insertvalue { %"compiler/source:Span", i32 } %t51, i32 %t47, 1
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t53, ptr %t54
  %t55 = load { i64, [4 x i64] }, ptr %t48
  %t57 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t55, ptr %t57
  %t59 = insertvalue { i32, ptr } zeroinitializer, ptr %t57, 1
  store { i32, ptr } %t59, ptr %rv
  br label %ret
bb18:
  %t60 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t62 = trunc i64 108 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb32
bb21:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t65)
  store i32 %t67, ptr %l54
  br label %bb22
bb22:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/parse:Parser", ptr %t68, i32 0, i32 11
  %t71 = load i1, ptr %t70, !tbaa !21
  store i1 %t71, ptr %l3, !tbaa !21
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/parse:Parser", ptr %t73, i32 0, i32 11
  store i1 false, ptr %t75, !tbaa !21
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l58, !tbaa !29
  %t77 = load ptr, ptr %l58, !tbaa !29
  %t78 = getelementptr %"compiler/parse:Parser", ptr %t77, i32 0, i32 18
  %t79 = load i64, ptr %t78, !tbaa !24
  %t81 = add i64 %t79, 1
  %t83 = load ptr, ptr %l58, !tbaa !29
  %t84 = getelementptr %"compiler/parse:Parser", ptr %t83, i32 0, i32 18
  store i64 %t81, ptr %t84, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/parse:Parser", ptr %t85, i32 0, i32 19
  %t88 = load i1, ptr %t87, !tbaa !21
  store i1 %t88, ptr %l4, !tbaa !21
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/parse:Parser", ptr %t90, i32 0, i32 20
  %t93 = load i1, ptr %t92, !tbaa !21
  store i1 %t93, ptr %l5, !tbaa !21
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/parse:Parser", ptr %t95, i32 0, i32 19
  store i1 true, ptr %t97, !tbaa !21
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/parse:Parser", ptr %t98, i32 0, i32 20
  store i1 false, ptr %t100, !tbaa !21
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t101)
  %t104 = extractvalue { i32, ptr } %t103, 1
  %t105 = extractvalue { i32, ptr } %t103, 0
  store i32 %t105, ptr %l70
  %t106 = icmp ne i32 %t105, 0
  br i1 %t106, label %bb24, label %ok.107, !prof !99
ok.107:
  store ptr %t104, ptr %l69
  br label %bb23
bb23:
  %t108 = load ptr, ptr %l69, !tbaa !29
  store ptr %t108, ptr %l67, !tbaa !29
  br label %bb26
bb24:
  br label %bb25
bb25:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l71, !tbaa !29
  %t110 = load ptr, ptr %l71, !tbaa !29
  %t111 = getelementptr %"compiler/parse:Parser", ptr %t110, i32 0, i32 18
  %t112 = load i64, ptr %t111, !tbaa !24
  %t114 = sub i64 %t112, 1
  %t116 = load ptr, ptr %l71, !tbaa !29
  %t117 = getelementptr %"compiler/parse:Parser", ptr %t116, i32 0, i32 18
  store i64 %t114, ptr %t117, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i1, ptr %l4, !tbaa !21
  %t122 = getelementptr %"compiler/parse:Parser", ptr %t118, i32 0, i32 19
  store i1 %t119, ptr %t122, !tbaa !21
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i1, ptr %l5, !tbaa !21
  %t127 = getelementptr %"compiler/parse:Parser", ptr %t123, i32 0, i32 20
  store i1 %t124, ptr %t127, !tbaa !21
  %t129 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t129, ptr %rv
  br label %ret
bb26:
  %t130 = load ptr, ptr %l67, !tbaa !29
  store ptr %t130, ptr %l6, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i1, ptr %l5, !tbaa !21
  %t135 = getelementptr %"compiler/parse:Parser", ptr %t131, i32 0, i32 20
  store i1 %t132, ptr %t135, !tbaa !21
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l81, !tbaa !29
  %t137 = load ptr, ptr %l81, !tbaa !29
  %t138 = getelementptr %"compiler/parse:Parser", ptr %t137, i32 0, i32 18
  %t139 = load i64, ptr %t138, !tbaa !24
  %t141 = sub i64 %t139, 1
  %t143 = load ptr, ptr %l81, !tbaa !29
  %t144 = getelementptr %"compiler/parse:Parser", ptr %t143, i32 0, i32 18
  store i64 %t141, ptr %t144, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i1, ptr %l3, !tbaa !21
  %t149 = getelementptr %"compiler/parse:Parser", ptr %t145, i32 0, i32 11
  store i1 %t146, ptr %t149, !tbaa !21
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t153 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t150, i32 109)
  %t154 = extractvalue { i32, i32 } %t153, 1
  %t155 = extractvalue { i32, i32 } %t153, 0
  store i32 %t155, ptr %l90
  %t156 = icmp ne i32 %t155, 0
  br i1 %t156, label %bb28, label %ok.157, !prof !99
ok.157:
  store i32 %t154, ptr %l89
  br label %bb27
bb27:
  %t158 = load i32, ptr %l89, !tbaa !23
  store i32 %t158, ptr %l86, !tbaa !23
  br label %bb30
bb28:
  br label %bb29
bb29:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i1, ptr %l4, !tbaa !21
  %t163 = getelementptr %"compiler/parse:Parser", ptr %t159, i32 0, i32 19
  store i1 %t160, ptr %t163, !tbaa !21
  %t165 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t165, ptr %rv
  br label %ret
bb30:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i1, ptr %l4, !tbaa !21
  %t170 = getelementptr %"compiler/parse:Parser", ptr %t166, i32 0, i32 19
  store i1 %t167, ptr %t170, !tbaa !21
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i32, ptr %l1, !tbaa !23
  %t175 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t171, i32 %t172)
  store %"compiler/source:Span" %t175, ptr %l98
  br label %bb31
bb31:
  %t176 = load ptr, ptr %l6, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t177
  %t178 = getelementptr { i64, [4 x i64] }, ptr %t177, i32 0, i32 0
  store i64 2, ptr %t178
  %t179 = load %"compiler/source:Span", ptr %l98
  %t180 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t179, 0
  %t182 = insertvalue { %"compiler/source:Span", ptr } %t180, ptr %t176, 1
  %t183 = getelementptr { i64, [4 x i64] }, ptr %t177, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t182, ptr %t183
  %t184 = load { i64, [4 x i64] }, ptr %t177
  %t186 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t184, ptr %t186
  %t188 = insertvalue { i32, ptr } zeroinitializer, ptr %t186, 1
  store { i32, ptr } %t188, ptr %rv
  br label %ret
bb32:
  %t189 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t191 = trunc i64 51 to i32
  %t192 = icmp eq i32 %t189, %t191
  br i1 %t192, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb41
bb35:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t194)
  store i32 %t196, ptr %l105
  br label %bb36
bb36:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t197)
  %t200 = extractvalue { i32, ptr } %t199, 1
  %t201 = extractvalue { i32, ptr } %t199, 0
  store i32 %t201, ptr %l109
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb38, label %ok.203, !prof !99
ok.203:
  store ptr %t200, ptr %l108
  br label %bb37
bb37:
  %t204 = load ptr, ptr %l108, !tbaa !29
  store ptr %t204, ptr %l106, !tbaa !29
  br label %bb39
bb38:
  %t205 = load i32, ptr %l109, !tbaa !23
  %t206 = lshr i32 %t205, 16
  %t207 = and i32 %t205, 65535
  %t208 = icmp eq i32 %t206, 1
  %t209 = select i1 %t208, i32 1, i32 0
  %t210 = icmp eq i32 %t205, 0
  %t211 = shl i32 %t209, 16
  %t212 = or i32 %t211, %t207
  %t213 = select i1 %t210, i32 0, i32 %t212
  %t215 = insertvalue { i32, ptr } zeroinitializer, i32 %t213, 0
  store { i32, ptr } %t215, ptr %rv
  br label %ret
bb39:
  %t216 = load ptr, ptr %l106, !tbaa !29
  store ptr %t216, ptr %l7, !tbaa !29
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i32, ptr %l1, !tbaa !23
  %t221 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t217, i32 %t218)
  store %"compiler/source:Span" %t221, ptr %l113
  br label %bb40
bb40:
  %t222 = load ptr, ptr %l7, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t223
  %t224 = getelementptr { i64, [4 x i64] }, ptr %t223, i32 0, i32 0
  store i64 3, ptr %t224
  %t225 = load %"compiler/source:Span", ptr %l113
  %t226 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t225, 0
  %t228 = insertvalue { %"compiler/source:Span", i32, ptr } %t226, i32 51, 1
  %t230 = insertvalue { %"compiler/source:Span", i32, ptr } %t228, ptr %t222, 2
  %t231 = getelementptr { i64, [4 x i64] }, ptr %t223, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t230, ptr %t231
  %t232 = load { i64, [4 x i64] }, ptr %t223
  %t234 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t232, ptr %t234
  %t236 = insertvalue { i32, ptr } zeroinitializer, ptr %t234, 1
  store { i32, ptr } %t236, ptr %rv
  br label %ret
bb41:
  %t237 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t239 = trunc i64 11 to i32
  %t240 = icmp eq i32 %t237, %t239
  br i1 %t240, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb53
bb44:
  %t242 = load i32, ptr %l1, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/parse:Parser", ptr %t243, i32 0, i32 25
  %t246 = load i32, ptr %t245, !tbaa !23
  %t249 = icmp eq i32 %t242, %t246
  store i1 %t249, ptr %l8, !tbaa !21
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t251)
  store i32 %t253, ptr %l125
  br label %bb45
bb45:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t254)
  %t257 = extractvalue { i32, ptr } %t256, 1
  %t258 = extractvalue { i32, ptr } %t256, 0
  store i32 %t258, ptr %l129
  %t259 = icmp ne i32 %t258, 0
  br i1 %t259, label %bb47, label %ok.260, !prof !99
ok.260:
  store ptr %t257, ptr %l128
  br label %bb46
bb46:
  %t261 = load ptr, ptr %l128, !tbaa !29
  store ptr %t261, ptr %l126, !tbaa !29
  br label %bb48
bb47:
  %t262 = load i32, ptr %l129, !tbaa !23
  %t263 = lshr i32 %t262, 16
  %t264 = and i32 %t262, 65535
  %t265 = icmp eq i32 %t263, 1
  %t266 = select i1 %t265, i32 1, i32 0
  %t267 = icmp eq i32 %t262, 0
  %t268 = shl i32 %t266, 16
  %t269 = or i32 %t268, %t264
  %t270 = select i1 %t267, i32 0, i32 %t269
  %t272 = insertvalue { i32, ptr } zeroinitializer, i32 %t270, 0
  store { i32, ptr } %t272, ptr %rv
  br label %ret
bb48:
  %t273 = load ptr, ptr %l126, !tbaa !29
  store ptr %t273, ptr %l9, !tbaa !29
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i1, ptr %l8, !tbaa !21
  %t278 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %t274, i1 %t275)
  %t279 = extractvalue { i32, { i64, ptr } } %t278, 1
  %t280 = extractvalue { i32, { i64, ptr } } %t278, 0
  store i32 %t280, ptr %l135
  %t281 = icmp ne i32 %t280, 0
  br i1 %t281, label %bb50, label %ok.282, !prof !99
ok.282:
  store { i64, ptr } %t279, ptr %l134
  br label %bb49
bb49:
  %t283 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t283, ptr %l131, !tbaa !27
  br label %bb51
bb50:
  %t284 = load i32, ptr %l135, !tbaa !23
  %t285 = lshr i32 %t284, 16
  %t286 = and i32 %t284, 65535
  %t287 = icmp eq i32 %t285, 1
  %t288 = select i1 %t287, i32 1, i32 0
  %t289 = icmp eq i32 %t284, 0
  %t290 = shl i32 %t288, 16
  %t291 = or i32 %t290, %t286
  %t292 = select i1 %t289, i32 0, i32 %t291
  %t294 = insertvalue { i32, ptr } zeroinitializer, i32 %t292, 0
  store { i32, ptr } %t294, ptr %rv
  br label %ret
bb51:
  %t295 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t295, ptr %l10, !tbaa !27
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load i32, ptr %l1, !tbaa !23
  %t300 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t296, i32 %t297)
  store %"compiler/source:Span" %t300, ptr %l139
  br label %bb52
bb52:
  %t301 = load ptr, ptr %l9, !tbaa !29
  %t302 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t303
  %t304 = getelementptr { i64, [4 x i64] }, ptr %t303, i32 0, i32 0
  store i64 21, ptr %t304
  %t305 = load %"compiler/source:Span", ptr %l139
  %t306 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t305, 0
  %t308 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t306, ptr %t301, 1
  %t310 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t308, { i64, ptr } %t302, 2
  %t311 = getelementptr { i64, [4 x i64] }, ptr %t303, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t310, ptr %t311
  %t312 = load { i64, [4 x i64] }, ptr %t303
  %t314 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t312, ptr %t314
  %t316 = insertvalue { i32, ptr } zeroinitializer, ptr %t314, 1
  store { i32, ptr } %t316, ptr %rv
  br label %ret
bb53:
  %t317 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t319 = trunc i64 37 to i32
  %t320 = icmp eq i32 %t317, %t319
  br i1 %t320, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb75
bb56:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t322)
  store i32 %t324, ptr %l147
  br label %bb57
bb57:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/parse:Parser", ptr %t325, i32 0, i32 20
  %t328 = load i1, ptr %t327, !tbaa !21
  store i1 %t328, ptr %l11, !tbaa !21
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %t330, i1 true, i1 true, i1 false)
  %t333 = extractvalue { i32, ptr } %t332, 1
  %t334 = extractvalue { i32, ptr } %t332, 0
  store i32 %t334, ptr %l153
  %t335 = icmp ne i32 %t334, 0
  br i1 %t335, label %bb59, label %ok.336, !prof !99
ok.336:
  store ptr %t333, ptr %l152
  br label %bb58
bb58:
  %t337 = load ptr, ptr %l152, !tbaa !29
  store ptr %t337, ptr %l150, !tbaa !29
  br label %bb60
bb59:
  %t338 = load i32, ptr %l153, !tbaa !23
  %t339 = lshr i32 %t338, 16
  %t340 = and i32 %t338, 65535
  %t341 = icmp eq i32 %t339, 1
  %t342 = select i1 %t341, i32 1, i32 0
  %t343 = icmp eq i32 %t338, 0
  %t344 = shl i32 %t342, 16
  %t345 = or i32 %t344, %t340
  %t346 = select i1 %t343, i32 0, i32 %t345
  %t348 = insertvalue { i32, ptr } zeroinitializer, i32 %t346, 0
  store { i32, ptr } %t348, ptr %rv
  br label %ret
bb60:
  %t349 = load ptr, ptr %l150, !tbaa !29
  store ptr %t349, ptr %l12, !tbaa !29
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load i1, ptr %l11, !tbaa !21
  %t354 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elambdaBody(ptr %v0, ptr %v1, ptr %t350, i1 %t351)
  %t355 = extractvalue { i32, { i64, ptr } } %t354, 1
  %t356 = extractvalue { i32, { i64, ptr } } %t354, 0
  store i32 %t356, ptr %l159
  %t357 = icmp ne i32 %t356, 0
  br i1 %t357, label %bb62, label %ok.358, !prof !99
ok.358:
  store { i64, ptr } %t355, ptr %l158
  br label %bb61
bb61:
  %t359 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t359, ptr %l155, !tbaa !27
  br label %bb63
bb62:
  %t360 = load i32, ptr %l159, !tbaa !23
  %t361 = lshr i32 %t360, 16
  %t362 = and i32 %t360, 65535
  %t363 = icmp eq i32 %t361, 1
  %t364 = select i1 %t363, i32 1, i32 0
  %t365 = icmp eq i32 %t360, 0
  %t366 = shl i32 %t364, 16
  %t367 = or i32 %t366, %t362
  %t368 = select i1 %t365, i32 0, i32 %t367
  %t370 = insertvalue { i32, ptr } zeroinitializer, i32 %t368, 0
  store { i32, ptr } %t370, ptr %rv
  br label %ret
bb63:
  %t371 = load { i64, ptr }, ptr %l155, !tbaa !27
  store { i64, ptr } %t371, ptr %l13, !tbaa !27
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l1, !tbaa !23
  %t376 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t372, i32 %t373)
  store %"compiler/source:Span" %t376, ptr %l163
  br label %bb64
bb64:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load i32, ptr %l1, !tbaa !23
  %t381 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t377, i32 %t378)
  store %"compiler/source:Span" %t381, ptr %l166
  br label %bb65
bb65:
  %t382 = load ptr, ptr %l12, !tbaa !29
  store ptr %t382, ptr %l167, !tbaa !29
  %t383 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t383, ptr %l168, !tbaa !27
  %t384 = icmp sge i64 0, 0
  br i1 %t384, label %bb66, label %bb67
bb66:
  %t386 = icmp sle i64 0, 1152921504606846975
  br i1 %t386, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_b6007e4d1245e4d6_5e9becbf0504ee4a)
  unreachable
bb68:
  %t388 = mul i64 0, 8
  %t389 = insertvalue { i64, ptr } undef, i64 0, 0
  %t390 = insertvalue { i64, ptr } %t389, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t390, ptr %l171, !tbaa !27
  %t391 = icmp sge i64 0, 0
  br i1 %t391, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_b6007e4d1245e4d6_5e9becbf0504ee4a)
  unreachable
bb70:
  %t393 = icmp sle i64 0, 1152921504606846975
  br i1 %t393, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_fd55a40e832939eb_76ee8367288fff1f)
  unreachable
bb72:
  %t395 = mul i64 0, 8
  %t396 = insertvalue { i64, ptr } undef, i64 0, 0
  %t397 = insertvalue { i64, ptr } %t396, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t398 = load %"compiler/source:Span", ptr %l166
  %t399 = load ptr, ptr %l167, !tbaa !29
  %t400 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t401 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t403 = call %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t398, ptr null, i32 0, ptr %t399, { i64, ptr } %t400, { i64, ptr } %t401, i1 true, i1 false, { i64, ptr } %t397, ptr null, i32 0)
  store %"compiler/ast:Func" %t403, ptr %l175
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_fd55a40e832939eb_76ee8367288fff1f)
  unreachable
bb74:
  %t404 = load %"compiler/ast:Func", ptr %l175
  %t405 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store %"compiler/ast:Func" %t404, ptr %t405
  store { i64, [4 x i64] } zeroinitializer, ptr %t406
  %t407 = getelementptr { i64, [4 x i64] }, ptr %t406, i32 0, i32 0
  store i64 22, ptr %t407
  %t408 = load %"compiler/source:Span", ptr %l163
  %t409 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t408, 0
  %t411 = insertvalue { %"compiler/source:Span", ptr } %t409, ptr %t405, 1
  %t412 = getelementptr { i64, [4 x i64] }, ptr %t406, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t411, ptr %t412
  %t413 = load { i64, [4 x i64] }, ptr %t406
  %t415 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t413, ptr %t415
  %t417 = insertvalue { i32, ptr } zeroinitializer, ptr %t415, 1
  store { i32, ptr } %t417, ptr %rv
  br label %ret
bb75:
  %t418 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t420 = trunc i64 31 to i32
  %t421 = icmp eq i32 %t418, %t420
  br i1 %t421, label %bb76, label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb83
bb78:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ematchBody(ptr %v0, ptr %v1, ptr %t423, i1 true)
  %t426 = extractvalue { i32, ptr } %t425, 1
  %t427 = extractvalue { i32, ptr } %t425, 0
  store i32 %t427, ptr %l184
  %t428 = icmp ne i32 %t427, 0
  br i1 %t428, label %bb80, label %ok.429, !prof !99
ok.429:
  store ptr %t426, ptr %l183
  br label %bb79
bb79:
  %t430 = load ptr, ptr %l183, !tbaa !29
  store ptr %t430, ptr %l181, !tbaa !29
  br label %bb81
bb80:
  %t431 = load i32, ptr %l184, !tbaa !23
  %t432 = lshr i32 %t431, 16
  %t433 = and i32 %t431, 65535
  %t434 = icmp eq i32 %t432, 1
  %t435 = select i1 %t434, i32 1, i32 0
  %t436 = icmp eq i32 %t431, 0
  %t437 = shl i32 %t435, 16
  %t438 = or i32 %t437, %t433
  %t439 = select i1 %t436, i32 0, i32 %t438
  %t441 = insertvalue { i32, ptr } zeroinitializer, i32 %t439, 0
  store { i32, ptr } %t441, ptr %rv
  br label %ret
bb81:
  %t442 = load ptr, ptr %l181, !tbaa !29
  store ptr %t442, ptr %l14, !tbaa !29
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load i32, ptr %l1, !tbaa !23
  %t447 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t443, i32 %t444)
  store %"compiler/source:Span" %t447, ptr %l188
  br label %bb82
bb82:
  %t448 = load ptr, ptr %l14, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t449
  %t450 = getelementptr { i64, [4 x i64] }, ptr %t449, i32 0, i32 0
  store i64 23, ptr %t450
  %t451 = load %"compiler/source:Span", ptr %l188
  %t452 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t451, 0
  %t454 = insertvalue { %"compiler/source:Span", ptr } %t452, ptr %t448, 1
  %t455 = getelementptr { i64, [4 x i64] }, ptr %t449, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t454, ptr %t455
  %t456 = load { i64, [4 x i64] }, ptr %t449
  %t458 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t456, ptr %t458
  %t460 = insertvalue { i32, ptr } zeroinitializer, ptr %t458, 1
  store { i32, ptr } %t460, ptr %rv
  br label %ret
bb83:
  %t461 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t463 = trunc i64 21 to i32
  %t464 = icmp eq i32 %t461, %t463
  br i1 %t464, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb96
bb86:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t468 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t466)
  store i32 %t468, ptr %l195
  br label %bb87
bb87:
  store ptr null, ptr %l15, !tbaa !29
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t471 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2emessageHere(ptr %v0, ptr %t469)
  store i1 %t471, ptr %l197
  br label %bb88
bb88:
  %t472 = load i1, ptr %l197, !tbaa !21
  br i1 %t472, label %bb89, label %bb90
bb89:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t473)
  %t476 = extractvalue { i32, ptr } %t475, 1
  %t477 = extractvalue { i32, ptr } %t475, 0
  store i32 %t477, ptr %l201
  %t478 = icmp ne i32 %t477, 0
  br i1 %t478, label %bb92, label %ok.479, !prof !99
ok.479:
  store ptr %t476, ptr %l200
  br label %bb91
bb90:
  br label %bb94
bb91:
  %t480 = load ptr, ptr %l200, !tbaa !29
  store ptr %t480, ptr %l198, !tbaa !29
  br label %bb93
bb92:
  %t481 = load i32, ptr %l201, !tbaa !23
  %t482 = lshr i32 %t481, 16
  %t483 = and i32 %t481, 65535
  %t484 = icmp eq i32 %t482, 1
  %t485 = select i1 %t484, i32 1, i32 0
  %t486 = icmp eq i32 %t481, 0
  %t487 = shl i32 %t485, 16
  %t488 = or i32 %t487, %t483
  %t489 = select i1 %t486, i32 0, i32 %t488
  %t491 = insertvalue { i32, ptr } zeroinitializer, i32 %t489, 0
  store { i32, ptr } %t491, ptr %rv
  br label %ret
bb93:
  %t492 = load ptr, ptr %l198, !tbaa !29
  store ptr %t492, ptr %l15, !tbaa !29
  br label %bb94
bb94:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load i32, ptr %l1, !tbaa !23
  %t498 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t494, i32 %t495)
  store %"compiler/source:Span" %t498, ptr %l206
  br label %bb95
bb95:
  %t499 = load ptr, ptr %l15, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t500
  %t501 = getelementptr { i64, [4 x i64] }, ptr %t500, i32 0, i32 0
  store i64 27, ptr %t501
  %t502 = load %"compiler/source:Span", ptr %l206
  %t503 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t502, 0
  %t505 = insertvalue { %"compiler/source:Span", ptr } %t503, ptr %t499, 1
  %t506 = getelementptr { i64, [4 x i64] }, ptr %t500, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t505, ptr %t506
  %t507 = load { i64, [4 x i64] }, ptr %t500
  %t509 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t507, ptr %t509
  %t511 = insertvalue { i32, ptr } zeroinitializer, ptr %t509, 1
  store { i32, ptr } %t511, ptr %rv
  br label %ret
bb96:
  %t512 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t514 = trunc i64 52 to i32
  %t515 = icmp eq i32 %t512, %t514
  br i1 %t515, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb106
bb99:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t519 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t517)
  %t520 = extractvalue { i32, ptr } %t519, 1
  %t521 = extractvalue { i32, ptr } %t519, 0
  store i32 %t521, ptr %l215
  %t522 = icmp ne i32 %t521, 0
  br i1 %t522, label %bb101, label %ok.523, !prof !99
ok.523:
  store ptr %t520, ptr %l214
  br label %bb100
bb100:
  %t524 = load ptr, ptr %l214, !tbaa !29
  store ptr %t524, ptr %l212, !tbaa !29
  br label %bb102
bb101:
  %t525 = load i32, ptr %l215, !tbaa !23
  %t526 = lshr i32 %t525, 16
  %t527 = and i32 %t525, 65535
  %t528 = icmp eq i32 %t526, 1
  %t529 = select i1 %t528, i32 1, i32 0
  %t530 = icmp eq i32 %t525, 0
  %t531 = shl i32 %t529, 16
  %t532 = or i32 %t531, %t527
  %t533 = select i1 %t530, i32 0, i32 %t532
  %t535 = insertvalue { i32, ptr } zeroinitializer, i32 %t533, 0
  store { i32, ptr } %t535, ptr %rv
  br label %ret
bb102:
  %t536 = load ptr, ptr %l212, !tbaa !29
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t538 = load i32, ptr %l1, !tbaa !23
  %t543 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2earrayLit(ptr %v0, ptr %v1, ptr %v1, ptr %t537, i32 %t538, ptr %t536)
  %t544 = extractvalue { i32, ptr } %t543, 1
  %t545 = extractvalue { i32, ptr } %t543, 0
  store i32 %t545, ptr %l222
  %t546 = icmp ne i32 %t545, 0
  br i1 %t546, label %bb104, label %ok.547, !prof !99
ok.547:
  store ptr %t544, ptr %l221
  br label %bb103
bb103:
  %t548 = load ptr, ptr %l221, !tbaa !29
  store ptr %t548, ptr %l217, !tbaa !29
  br label %bb105
bb104:
  %t549 = load i32, ptr %l222, !tbaa !23
  %t550 = lshr i32 %t549, 16
  %t551 = and i32 %t549, 65535
  %t552 = icmp eq i32 %t550, 1
  %t553 = select i1 %t552, i32 1, i32 0
  %t554 = icmp eq i32 %t549, 0
  %t555 = shl i32 %t553, 16
  %t556 = or i32 %t555, %t551
  %t557 = select i1 %t554, i32 0, i32 %t556
  %t559 = insertvalue { i32, ptr } zeroinitializer, i32 %t557, 0
  store { i32, ptr } %t559, ptr %rv
  br label %ret
bb105:
  %t560 = load ptr, ptr %l217, !tbaa !29
  %t561 = insertvalue { i32, ptr } zeroinitializer, ptr %t560, 1
  store { i32, ptr } %t561, ptr %rv
  br label %ret
bb106:
  %t562 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t564 = trunc i64 1 to i32
  %t565 = icmp eq i32 %t562, %t564
  br i1 %t565, label %bb107, label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb228
bb109:
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t569 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t567)
  store %"compiler/token:Token" %t569, ptr %l227
  br label %bb110
bb110:
  %t570 = load %"compiler/token:Token", ptr %l227
  store %"compiler/token:Token" %t570, ptr %l17
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t573 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t571, i64 1)
  store i32 %t573, ptr %l229
  br label %bb111
bb111:
  %t574 = load i32, ptr %l229, !range !{i32 0, i32 114}
  store i32 %t574, ptr %l18
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t577 = getelementptr %"compiler/parse:Parser", ptr %t575, i32 0, i32 2
  %t578 = load ptr, ptr %t577, !tbaa !29
  store ptr %t578, ptr %l231, !tbaa !29
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t580 = load %"compiler/token:Token", ptr %l17
  %t583 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t579, %"compiler/token:Token" %t580)
  store { i64, ptr } %t583, ptr %l234
  br label %bb112
bb112:
  %t584 = load ptr, ptr %l231, !tbaa !29
  %t585 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t586 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t584, { i64, ptr } %t585)
  store i32 %t586, ptr %l235
  br label %bb113
bb113:
  %t587 = load i32, ptr %l235, !tbaa !23
  store i32 %t587, ptr %l19, !tbaa !23
  %t588 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t590 = trunc i64 97 to i32
  %t591 = icmp eq i32 %t588, %t590
  br i1 %t591, label %bb114, label %bb115
bb114:
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t595 = getelementptr %"compiler/parse:Parser", ptr %t593, i32 0, i32 3
  %t596 = load ptr, ptr %t595, !tbaa !29
  %t598 = getelementptr %"compiler/parse:Oracle", ptr %t596, i32 0, i32 0
  %t599 = load i32, ptr %l19, !tbaa !23
  %t602 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t598, i32 %t599)
  store i1 %t602, ptr %l243
  br label %bb116
bb115:
  store i1 false, ptr %l238, !tbaa !21
  br label %bb117
bb116:
  %t603 = load i1, ptr %l243, !tbaa !21
  store i1 %t603, ptr %l238, !tbaa !21
  br label %bb117
bb117:
  %t604 = load i1, ptr %l238, !tbaa !21
  br i1 %t604, label %bb118, label %bb119
bb118:
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t607 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t605)
  store i32 %t607, ptr %l245
  br label %bb120
bb119:
  br label %bb129
bb120:
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t610 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v1, ptr %t608)
  %t611 = extractvalue { i32, { i64, ptr } } %t610, 1
  %t612 = extractvalue { i32, { i64, ptr } } %t610, 0
  store i32 %t612, ptr %l249
  %t613 = icmp ne i32 %t612, 0
  br i1 %t613, label %bb122, label %ok.614, !prof !99
ok.614:
  store { i64, ptr } %t611, ptr %l248
  br label %bb121
bb121:
  %t615 = load { i64, ptr }, ptr %l248, !tbaa !27
  store { i64, ptr } %t615, ptr %l246, !tbaa !27
  br label %bb123
bb122:
  %t616 = load i32, ptr %l249, !tbaa !23
  %t617 = lshr i32 %t616, 16
  %t618 = and i32 %t616, 65535
  %t619 = icmp eq i32 %t617, 1
  %t620 = select i1 %t619, i32 1, i32 0
  %t621 = icmp eq i32 %t616, 0
  %t622 = shl i32 %t620, 16
  %t623 = or i32 %t622, %t618
  %t624 = select i1 %t621, i32 0, i32 %t623
  %t626 = insertvalue { i32, ptr } zeroinitializer, i32 %t624, 0
  store { i32, ptr } %t626, ptr %rv
  br label %ret
bb123:
  %t627 = load { i64, ptr }, ptr %l246, !tbaa !27
  store { i64, ptr } %t627, ptr %l20, !tbaa !27
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t629 = load i32, ptr %l1, !tbaa !23
  %t632 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t628, i32 %t629)
  store %"compiler/source:Span" %t632, ptr %l253
  br label %bb124
bb124:
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t634 = load i32, ptr %l1, !tbaa !23
  %t637 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t633, i32 %t634)
  store %"compiler/source:Span" %t637, ptr %l256
  br label %bb125
bb125:
  %t638 = load i32, ptr %l19, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t639
  %t640 = getelementptr { i64, [4 x i64] }, ptr %t639, i32 0, i32 0
  store i64 0, ptr %t640
  %t641 = load %"compiler/source:Span", ptr %l256
  %t642 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t641, 0
  %t644 = insertvalue { %"compiler/source:Span", i32 } %t642, i32 %t638, 1
  %t645 = getelementptr { i64, [4 x i64] }, ptr %t639, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t644, ptr %t645
  %t646 = load { i64, [4 x i64] }, ptr %t639
  %t648 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t646, ptr %t648
  %t649 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t650
  %t651 = getelementptr { i64, [4 x i64] }, ptr %t650, i32 0, i32 0
  store i64 13, ptr %t651
  %t652 = load %"compiler/source:Span", ptr %l253
  %t653 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t652, 0
  %t655 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t653, ptr %t648, 1
  %t657 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t655, { i64, ptr } %t649, 2
  %t658 = getelementptr { i64, [4 x i64] }, ptr %t650, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t657, ptr %t658
  %t659 = load { i64, [4 x i64] }, ptr %t650
  %t660 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store ptr %t660, ptr %lp21
  %t662 = load ptr, ptr %lp21
  store { i64, [4 x i64] } %t659, ptr %t662
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t664 = load i32, ptr %l1, !tbaa !23
  %t665 = load ptr, ptr %lp21
  %t669 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eliteralAfterType(ptr %v0, ptr %v1, ptr %v1, ptr %t663, i32 %t664, ptr %t665)
  %t670 = extractvalue { i32, ptr } %t669, 1
  %t671 = extractvalue { i32, ptr } %t669, 0
  store i32 %t671, ptr %l267
  %t672 = icmp ne i32 %t671, 0
  br i1 %t672, label %bb127, label %ok.673, !prof !99
ok.673:
  store ptr %t670, ptr %l266
  br label %bb126
bb126:
  %t674 = load ptr, ptr %l266, !tbaa !29
  store ptr %t674, ptr %l262, !tbaa !29
  br label %bb128
bb127:
  %t675 = load i32, ptr %l267, !tbaa !23
  %t676 = lshr i32 %t675, 16
  %t677 = and i32 %t675, 65535
  %t678 = icmp eq i32 %t676, 1
  %t679 = select i1 %t678, i32 1, i32 0
  %t680 = icmp eq i32 %t675, 0
  %t681 = shl i32 %t679, 16
  %t682 = or i32 %t681, %t677
  %t683 = select i1 %t680, i32 0, i32 %t682
  %t685 = insertvalue { i32, ptr } zeroinitializer, i32 %t683, 0
  store { i32, ptr } %t685, ptr %rv
  br label %ret
bb128:
  %t686 = load ptr, ptr %l262, !tbaa !29
  %t687 = insertvalue { i32, ptr } zeroinitializer, ptr %t686, 1
  store { i32, ptr } %t687, ptr %rv
  br label %ret
bb129:
  %t688 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t690 = trunc i64 97 to i32
  %t691 = icmp eq i32 %t688, %t690
  br i1 %t691, label %bb130, label %bb131
bb130:
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t695 = getelementptr %"compiler/parse:Parser", ptr %t693, i32 0, i32 3
  %t696 = load ptr, ptr %t695, !tbaa !29
  %t698 = getelementptr %"compiler/parse:Oracle", ptr %t696, i32 0, i32 2
  %t699 = load i32, ptr %l19, !tbaa !23
  %t702 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t698, i32 %t699)
  store i1 %t702, ptr %l276
  br label %bb132
bb131:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb141
bb132:
  %t703 = load i1, ptr %l276, !tbaa !21
  br i1 %t703, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l277, !tbaa !21
  br label %bb136
bb134:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t706 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsCall(ptr %v0, ptr %t704, i64 1)
  store i1 %t706, ptr %l279
  br label %bb135
bb135:
  %t707 = load i1, ptr %l279, !tbaa !21
  store i1 %t707, ptr %l277, !tbaa !21
  br label %bb136
bb136:
  %t708 = load i1, ptr %l277, !tbaa !21
  br i1 %t708, label %bb137, label %bb138
bb137:
  store i1 true, ptr %l280, !tbaa !21
  br label %bb140
bb138:
  %t709 = load ptr, ptr %l0, !tbaa !29
  %t711 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2espacedTypeArgs(ptr %v0, ptr %t709, i64 1)
  store i1 %t711, ptr %l282
  br label %bb139
bb139:
  %t712 = load i1, ptr %l282, !tbaa !21
  store i1 %t712, ptr %l280, !tbaa !21
  br label %bb140
bb140:
  %t713 = load i1, ptr %l280, !tbaa !21
  store i1 %t713, ptr %l271, !tbaa !21
  br label %bb141
bb141:
  %t714 = load i1, ptr %l271, !tbaa !21
  br i1 %t714, label %bb142, label %bb143
bb142:
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t717 = getelementptr %"compiler/parse:Parser", ptr %t715, i32 0, i32 3
  %t718 = load ptr, ptr %t717, !tbaa !29
  %t720 = getelementptr %"compiler/parse:Oracle", ptr %t718, i32 0, i32 2
  %t721 = load i32, ptr %l19, !tbaa !23
  %t724 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t720, i32 %t721)
  store i1 %t724, ptr %l287
  br label %bb144
bb143:
  br label %bb163
bb144:
  %t725 = load i1, ptr %l287, !tbaa !21
  %t726 = xor i1 %t725, true
  br i1 %t726, label %bb145, label %bb146
bb145:
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t730 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2espacedTypeArgs(ptr %v0, ptr %t728, i64 1)
  store i1 %t730, ptr %l291
  br label %bb147
bb146:
  store i1 false, ptr %l289, !tbaa !21
  br label %bb148
bb147:
  %t731 = load i1, ptr %l291, !tbaa !21
  store i1 %t731, ptr %l289, !tbaa !21
  br label %bb148
bb148:
  %t732 = load i1, ptr %l289, !tbaa !21
  br i1 %t732, label %bb149, label %bb150
bb149:
  %t733 = load ptr, ptr %l0, !tbaa !29
  store ptr %t733, ptr %l292, !tbaa !29
  %t734 = load ptr, ptr %l0, !tbaa !29
  %t736 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t734, i64 1)
  store %"compiler/token:Token" %t736, ptr %l294
  br label %bb151
bb150:
  br label %bb156
bb151:
  %t737 = getelementptr %"compiler/token:Token", ptr %l294, i32 0, i32 2
  %t738 = load i32, ptr %t737, !tbaa !23
  store i32 %t738, ptr %l295, !tbaa !23
  %t739 = load ptr, ptr %l0, !tbaa !29
  %t741 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t739, i64 1)
  store %"compiler/token:Token" %t741, ptr %l297
  br label %bb152
bb152:
  %t742 = getelementptr %"compiler/token:Token", ptr %l297, i32 0, i32 3
  %t743 = load i32, ptr %t742, !tbaa !23
  store i32 %t743, ptr %l298, !tbaa !23
  %t744 = load ptr, ptr %l0, !tbaa !29
  %t745 = load %"compiler/token:Token", ptr %l17
  %t748 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t744, %"compiler/token:Token" %t745)
  store { i64, ptr } %t748, ptr %l301
  br label %bb153
bb153:
  %t749 = load { i64, ptr }, ptr %l301, !tbaa !27
  %t750 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsSpaced(ptr %v0, ptr %v0, { i64, ptr } %t749)
  store %"compiler/diagmsg:Msg" %t750, ptr %l302
  br label %bb154
bb154:
  %t751 = load ptr, ptr %l292, !tbaa !29
  %t752 = load i32, ptr %l295, !tbaa !23
  %t753 = load i32, ptr %l298, !tbaa !23
  %t754 = load %"compiler/diagmsg:Msg", ptr %l302
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t751, i32 %t752, i32 %t753, %"compiler/diagmsg:Msg" %t754)
  br label %bb155
bb155:
  br label %bb156
bb156:
  %t755 = load ptr, ptr %l0, !tbaa !29
  %t757 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t755)
  store i32 %t757, ptr %l304
  br label %bb157
bb157:
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t760 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v1, ptr %t758)
  %t761 = extractvalue { i32, { i64, ptr } } %t760, 1
  %t762 = extractvalue { i32, { i64, ptr } } %t760, 0
  store i32 %t762, ptr %l308
  %t763 = icmp ne i32 %t762, 0
  br i1 %t763, label %bb159, label %ok.764, !prof !99
ok.764:
  store { i64, ptr } %t761, ptr %l307
  br label %bb158
bb158:
  %t765 = load { i64, ptr }, ptr %l307, !tbaa !27
  store { i64, ptr } %t765, ptr %l305, !tbaa !27
  br label %bb160
bb159:
  %t766 = load i32, ptr %l308, !tbaa !23
  %t767 = lshr i32 %t766, 16
  %t768 = and i32 %t766, 65535
  %t769 = icmp eq i32 %t767, 1
  %t770 = select i1 %t769, i32 1, i32 0
  %t771 = icmp eq i32 %t766, 0
  %t772 = shl i32 %t770, 16
  %t773 = or i32 %t772, %t768
  %t774 = select i1 %t771, i32 0, i32 %t773
  %t776 = insertvalue { i32, ptr } zeroinitializer, i32 %t774, 0
  store { i32, ptr } %t776, ptr %rv
  br label %ret
bb160:
  %t777 = load { i64, ptr }, ptr %l305, !tbaa !27
  store { i64, ptr } %t777, ptr %l22, !tbaa !27
  %t778 = load ptr, ptr %l0, !tbaa !29
  %t779 = load i32, ptr %l1, !tbaa !23
  %t782 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t778, i32 %t779)
  store %"compiler/source:Span" %t782, ptr %l312
  br label %bb161
bb161:
  %t783 = load ptr, ptr %l0, !tbaa !29
  %t784 = load i32, ptr %l1, !tbaa !23
  %t787 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t783, i32 %t784)
  store %"compiler/source:Span" %t787, ptr %l315
  br label %bb162
bb162:
  %t788 = load i32, ptr %l19, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t789
  %t790 = getelementptr { i64, [4 x i64] }, ptr %t789, i32 0, i32 0
  store i64 0, ptr %t790
  %t791 = load %"compiler/source:Span", ptr %l315
  %t792 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t791, 0
  %t794 = insertvalue { %"compiler/source:Span", i32 } %t792, i32 %t788, 1
  %t795 = getelementptr { i64, [4 x i64] }, ptr %t789, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t794, ptr %t795
  %t796 = load { i64, [4 x i64] }, ptr %t789
  %t798 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t796, ptr %t798
  %t799 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t800
  %t801 = getelementptr { i64, [4 x i64] }, ptr %t800, i32 0, i32 0
  store i64 13, ptr %t801
  %t802 = load %"compiler/source:Span", ptr %l312
  %t803 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t802, 0
  %t805 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t803, ptr %t798, 1
  %t807 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t805, { i64, ptr } %t799, 2
  %t808 = getelementptr { i64, [4 x i64] }, ptr %t800, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t807, ptr %t808
  %t809 = load { i64, [4 x i64] }, ptr %t800
  %t811 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t809, ptr %t811
  %t813 = insertvalue { i32, ptr } zeroinitializer, ptr %t811, 1
  store { i32, ptr } %t813, ptr %rv
  br label %ret
bb163:
  %t814 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t816 = trunc i64 77 to i32
  %t817 = icmp eq i32 %t814, %t816
  br i1 %t817, label %bb164, label %bb165
bb164:
  %t819 = load ptr, ptr %l0, !tbaa !29
  %t821 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t819, i64 2)
  store i32 %t821, ptr %l326
  br label %bb166
bb165:
  store i1 false, ptr %l324, !tbaa !21
  br label %bb167
bb166:
  %t822 = load i32, ptr %l326, !range !{i32 0, i32 114}
  %t824 = trunc i64 101 to i32
  %t825 = icmp eq i32 %t822, %t824
  store i1 %t825, ptr %l324, !tbaa !21
  br label %bb167
bb167:
  %t827 = load i1, ptr %l324, !tbaa !21
  br i1 %t827, label %bb168, label %bb169
bb168:
  %t828 = load ptr, ptr %l0, !tbaa !29
  %t830 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t828, i64 3)
  store i32 %t830, ptr %l331
  br label %bb170
bb169:
  store i1 false, ptr %l329, !tbaa !21
  br label %bb171
bb170:
  %t831 = load i32, ptr %l331, !range !{i32 0, i32 114}
  %t833 = trunc i64 110 to i32
  %t834 = icmp eq i32 %t831, %t833
  store i1 %t834, ptr %l329, !tbaa !21
  br label %bb171
bb171:
  %t836 = load i1, ptr %l329, !tbaa !21
  br i1 %t836, label %bb172, label %bb173
bb172:
  %t837 = load ptr, ptr %l0, !tbaa !29
  %t839 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t837)
  store i32 %t839, ptr %l335
  br label %bb174
bb173:
  br label %bb193
bb174:
  %t840 = load ptr, ptr %l0, !tbaa !29
  %t842 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enullMark(ptr %v0, ptr %t840)
  store i1 %t842, ptr %l337
  br label %bb175
bb175:
  %t843 = load i1, ptr %l337, !tbaa !21
  br i1 %t843, label %bb176, label %bb177
bb176:
  %t844 = load ptr, ptr %l0, !tbaa !29
  %t845 = load i32, ptr %l1, !tbaa !23
  %t848 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t844, i32 %t845)
  store %"compiler/source:Span" %t848, ptr %l340
  br label %bb178
bb177:
  br label %bb191
bb178:
  %t849 = load i32, ptr %l19, !tbaa !23
  store i32 %t849, ptr %l341, !tbaa !23
  %t850 = icmp sge i64 1, 0
  br i1 %t850, label %bb179, label %bb180
bb179:
  %t852 = icmp sle i64 1, 2305843009213693951
  br i1 %t852, label %bb181, label %bb182
bb180:
  call void @__olang_check_failed(ptr @olang_loc_f58c14e72eb20088_8619c4b6e2d8c1bc)
  unreachable
bb181:
  %t854 = mul i64 1, 4
  %t855 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t854)
  %t856 = load i32, ptr %l341, !tbaa !23
  store i64 0, ptr %t857
  br label %fill.858
fill.858:
  %t861 = load i64, ptr %t857
  %t862 = icmp slt i64 %t861, 1
  br i1 %t862, label %fillb.859, label %filld.860
fillb.859:
  %t863 = getelementptr i32, ptr %t855, i64 %t861
  store i32 %t856, ptr %t863
  %t864 = add i64 %t861, 1
  store i64 %t864, ptr %t857
  br label %fill.858
filld.860:
  %t865 = insertvalue { i64, ptr } undef, i64 1, 0
  %t866 = insertvalue { i64, ptr } %t865, ptr %t855, 1
  store { i64, ptr } %t866, ptr %l344, !tbaa !27
  %t867 = icmp sge i64 0, 0
  br i1 %t867, label %bb183, label %bb184
bb182:
  call void @__olang_check_failed(ptr @olang_loc_f58c14e72eb20088_8619c4b6e2d8c1bc)
  unreachable
bb183:
  %t869 = icmp sle i64 0, 1152921504606846975
  br i1 %t869, label %bb185, label %bb186
bb184:
  call void @__olang_check_failed(ptr @olang_loc_f58c14e72eb20088_8619c4b6e2d8c1bc)
  unreachable
bb185:
  %t871 = mul i64 0, 8
  %t872 = insertvalue { i64, ptr } undef, i64 0, 0
  %t873 = insertvalue { i64, ptr } %t872, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [5 x i64] } zeroinitializer, ptr %t874
  %t875 = getelementptr { i64, [5 x i64] }, ptr %t874, i32 0, i32 0
  store i64 0, ptr %t875
  %t876 = load %"compiler/source:Span", ptr %l340
  %t877 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t876, 0
  %t878 = load { i64, ptr }, ptr %l344, !tbaa !27
  %t879 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t877, { i64, ptr } %t878, 1
  %t881 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t879, { i64, ptr } %t873, 2
  %t882 = getelementptr { i64, [5 x i64] }, ptr %t874, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t881, ptr %t882
  %t883 = load { i64, [5 x i64] }, ptr %t874
  %t885 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t883, ptr %t885
  %t887 = load ptr, ptr %l0, !tbaa !29
  store ptr %t887, ptr %l351, !tbaa !29
  %t888 = load i32, ptr %l1, !tbaa !23
  store i32 %t888, ptr %l352, !tbaa !23
  %t889 = load ptr, ptr %l0, !tbaa !29
  %t890 = load i32, ptr %l1, !tbaa !23
  %t895 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarkers(ptr %v0, ptr %v1, ptr %v1, ptr %t889, i32 %t890, ptr %t885)
  store ptr %t895, ptr %l356
  br label %bb187
bb186:
  call void @__olang_check_failed(ptr @olang_loc_f58c14e72eb20088_8619c4b6e2d8c1bc)
  unreachable
bb187:
  %t896 = load ptr, ptr %l351, !tbaa !29
  %t897 = load i32, ptr %l352, !tbaa !23
  %t898 = load ptr, ptr %l356, !tbaa !29
  %t899 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2earrayLit(ptr %v0, ptr %v1, ptr %v1, ptr %t896, i32 %t897, ptr %t898)
  %t900 = extractvalue { i32, ptr } %t899, 1
  %t901 = extractvalue { i32, ptr } %t899, 0
  store i32 %t901, ptr %l358
  %t902 = icmp ne i32 %t901, 0
  br i1 %t902, label %bb189, label %ok.903, !prof !99
ok.903:
  store ptr %t900, ptr %l357
  br label %bb188
bb188:
  %t904 = load ptr, ptr %l357, !tbaa !29
  store ptr %t904, ptr %l350, !tbaa !29
  br label %bb190
bb189:
  %t905 = load i32, ptr %l358, !tbaa !23
  %t906 = lshr i32 %t905, 16
  %t907 = and i32 %t905, 65535
  %t908 = icmp eq i32 %t906, 1
  %t909 = select i1 %t908, i32 1, i32 0
  %t910 = icmp eq i32 %t905, 0
  %t911 = shl i32 %t909, 16
  %t912 = or i32 %t911, %t907
  %t913 = select i1 %t910, i32 0, i32 %t912
  %t915 = insertvalue { i32, ptr } zeroinitializer, i32 %t913, 0
  store { i32, ptr } %t915, ptr %rv
  br label %ret
bb190:
  %t916 = load ptr, ptr %l350, !tbaa !29
  %t917 = insertvalue { i32, ptr } zeroinitializer, ptr %t916, 1
  store { i32, ptr } %t917, ptr %rv
  br label %ret
bb191:
  %t918 = load ptr, ptr %l0, !tbaa !29
  %t919 = load i32, ptr %l1, !tbaa !23
  %t922 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t918, i32 %t919)
  store %"compiler/source:Span" %t922, ptr %l362
  br label %bb192
bb192:
  %t923 = load i32, ptr %l19, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t924
  %t925 = getelementptr { i64, [4 x i64] }, ptr %t924, i32 0, i32 0
  store i64 0, ptr %t925
  %t926 = load %"compiler/source:Span", ptr %l362
  %t927 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t926, 0
  %t929 = insertvalue { %"compiler/source:Span", i32 } %t927, i32 %t923, 1
  %t930 = getelementptr { i64, [4 x i64] }, ptr %t924, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t929, ptr %t930
  %t931 = load { i64, [4 x i64] }, ptr %t924
  %t933 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t931, ptr %t933
  %t935 = insertvalue { i32, ptr } zeroinitializer, ptr %t933, 1
  store { i32, ptr } %t935, ptr %rv
  br label %ret
bb193:
  %t936 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t938 = trunc i64 101 to i32
  %t939 = icmp eq i32 %t936, %t938
  br i1 %t939, label %bb194, label %bb195
bb194:
  %t941 = load ptr, ptr %l0, !tbaa !29
  %t943 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t941, i64 2)
  store i32 %t943, ptr %l369
  br label %bb196
bb195:
  br label %bb225
bb196:
  %t944 = load i32, ptr %l369, !range !{i32 0, i32 114}
  store i32 %t944, ptr %l24
  %t945 = load i32, ptr %l24, !range !{i32 0, i32 114}
  %t947 = trunc i64 110 to i32
  %t948 = icmp eq i32 %t945, %t947
  br i1 %t948, label %bb197, label %bb198
bb197:
  store i1 true, ptr %l372, !tbaa !21
  br label %bb207
bb198:
  %t950 = load i32, ptr %l24, !range !{i32 0, i32 114}
  %t952 = trunc i64 1 to i32
  %t953 = icmp eq i32 %t950, %t952
  br i1 %t953, label %bb199, label %bb200
bb199:
  %t955 = load ptr, ptr %l0, !tbaa !29
  %t957 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t955, i64 3)
  store i32 %t957, ptr %l377
  br label %bb201
bb200:
  store i1 false, ptr %l375, !tbaa !21
  br label %bb202
bb201:
  %t958 = load i32, ptr %l377, !range !{i32 0, i32 114}
  %t960 = trunc i64 110 to i32
  %t961 = icmp eq i32 %t958, %t960
  store i1 %t961, ptr %l375, !tbaa !21
  br label %bb202
bb202:
  %t963 = load i1, ptr %l375, !tbaa !21
  br i1 %t963, label %bb203, label %bb204
bb203:
  %t964 = load ptr, ptr %l0, !tbaa !29
  %t966 = getelementptr %"compiler/parse:Parser", ptr %t964, i32 0, i32 3
  %t967 = load ptr, ptr %t966, !tbaa !29
  %t969 = getelementptr %"compiler/parse:Oracle", ptr %t967, i32 0, i32 0
  %t970 = load i32, ptr %l19, !tbaa !23
  %t973 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t969, i32 %t970)
  store i1 %t973, ptr %l385
  br label %bb205
bb204:
  store i1 false, ptr %l380, !tbaa !21
  br label %bb206
bb205:
  %t974 = load i1, ptr %l385, !tbaa !21
  store i1 %t974, ptr %l380, !tbaa !21
  br label %bb206
bb206:
  %t975 = load i1, ptr %l380, !tbaa !21
  store i1 %t975, ptr %l372, !tbaa !21
  br label %bb207
bb207:
  %t976 = load i1, ptr %l372, !tbaa !21
  br i1 %t976, label %bb208, label %bb209
bb208:
  %t977 = load ptr, ptr %l0, !tbaa !29
  %t979 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t977)
  store i32 %t979, ptr %l387
  br label %bb210
bb209:
  br label %bb224
bb210:
  %t980 = load ptr, ptr %l0, !tbaa !29
  %t981 = load i32, ptr %l1, !tbaa !23
  %t984 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t980, i32 %t981)
  store %"compiler/source:Span" %t984, ptr %l390
  br label %bb211
bb211:
  %t985 = load i32, ptr %l19, !tbaa !23
  store i32 %t985, ptr %l391, !tbaa !23
  %t986 = icmp sge i64 1, 0
  br i1 %t986, label %bb212, label %bb213
bb212:
  %t988 = icmp sle i64 1, 2305843009213693951
  br i1 %t988, label %bb214, label %bb215
bb213:
  call void @__olang_check_failed(ptr @olang_loc_d2214e5e459742f5_916a1717a0b2dd09)
  unreachable
bb214:
  %t990 = mul i64 1, 4
  %t991 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t990)
  %t992 = load i32, ptr %l391, !tbaa !23
  store i64 0, ptr %t993
  br label %fill.994
fill.994:
  %t997 = load i64, ptr %t993
  %t998 = icmp slt i64 %t997, 1
  br i1 %t998, label %fillb.995, label %filld.996
fillb.995:
  %t999 = getelementptr i32, ptr %t991, i64 %t997
  store i32 %t992, ptr %t999
  %t1000 = add i64 %t997, 1
  store i64 %t1000, ptr %t993
  br label %fill.994
filld.996:
  %t1001 = insertvalue { i64, ptr } undef, i64 1, 0
  %t1002 = insertvalue { i64, ptr } %t1001, ptr %t991, 1
  store { i64, ptr } %t1002, ptr %l394, !tbaa !27
  %t1003 = icmp sge i64 0, 0
  br i1 %t1003, label %bb216, label %bb217
bb215:
  call void @__olang_check_failed(ptr @olang_loc_d2214e5e459742f5_916a1717a0b2dd09)
  unreachable
bb216:
  %t1005 = icmp sle i64 0, 1152921504606846975
  br i1 %t1005, label %bb218, label %bb219
bb217:
  call void @__olang_check_failed(ptr @olang_loc_d2214e5e459742f5_916a1717a0b2dd09)
  unreachable
bb218:
  %t1007 = mul i64 0, 8
  %t1008 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1009 = insertvalue { i64, ptr } %t1008, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [5 x i64] } zeroinitializer, ptr %t1010
  %t1011 = getelementptr { i64, [5 x i64] }, ptr %t1010, i32 0, i32 0
  store i64 0, ptr %t1011
  %t1012 = load %"compiler/source:Span", ptr %l390
  %t1013 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t1012, 0
  %t1014 = load { i64, ptr }, ptr %l394, !tbaa !27
  %t1015 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t1013, { i64, ptr } %t1014, 1
  %t1017 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t1015, { i64, ptr } %t1009, 2
  %t1018 = getelementptr { i64, [5 x i64] }, ptr %t1010, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t1017, ptr %t1018
  %t1019 = load { i64, [5 x i64] }, ptr %t1010
  %t1021 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t1019, ptr %t1021
  %t1023 = load ptr, ptr %l0, !tbaa !29
  %t1024 = load i32, ptr %l1, !tbaa !23
  %t1029 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarkers(ptr %v0, ptr %v1, ptr %v1, ptr %t1023, i32 %t1024, ptr %t1021)
  store ptr %t1029, ptr %l403
  br label %bb220
bb219:
  call void @__olang_check_failed(ptr @olang_loc_d2214e5e459742f5_916a1717a0b2dd09)
  unreachable
bb220:
  %t1030 = load ptr, ptr %l403, !tbaa !29
  %t1031 = load ptr, ptr %l0, !tbaa !29
  %t1032 = load i32, ptr %l1, !tbaa !23
  %t1037 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2earrayLit(ptr %v0, ptr %v1, ptr %v1, ptr %t1031, i32 %t1032, ptr %t1030)
  %t1038 = extractvalue { i32, ptr } %t1037, 1
  %t1039 = extractvalue { i32, ptr } %t1037, 0
  store i32 %t1039, ptr %l409
  %t1040 = icmp ne i32 %t1039, 0
  br i1 %t1040, label %bb222, label %ok.1041, !prof !99
ok.1041:
  store ptr %t1038, ptr %l408
  br label %bb221
bb221:
  %t1042 = load ptr, ptr %l408, !tbaa !29
  store ptr %t1042, ptr %l404, !tbaa !29
  br label %bb223
bb222:
  %t1043 = load i32, ptr %l409, !tbaa !23
  %t1044 = lshr i32 %t1043, 16
  %t1045 = and i32 %t1043, 65535
  %t1046 = icmp eq i32 %t1044, 1
  %t1047 = select i1 %t1046, i32 1, i32 0
  %t1048 = icmp eq i32 %t1043, 0
  %t1049 = shl i32 %t1047, 16
  %t1050 = or i32 %t1049, %t1045
  %t1051 = select i1 %t1048, i32 0, i32 %t1050
  %t1053 = insertvalue { i32, ptr } zeroinitializer, i32 %t1051, 0
  store { i32, ptr } %t1053, ptr %rv
  br label %ret
bb223:
  %t1054 = load ptr, ptr %l404, !tbaa !29
  %t1055 = insertvalue { i32, ptr } zeroinitializer, ptr %t1054, 1
  store { i32, ptr } %t1055, ptr %rv
  br label %ret
bb224:
  br label %bb225
bb225:
  %t1056 = load ptr, ptr %l0, !tbaa !29
  %t1058 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t1056)
  store i32 %t1058, ptr %l412
  br label %bb226
bb226:
  %t1059 = load ptr, ptr %l0, !tbaa !29
  %t1060 = load i32, ptr %l1, !tbaa !23
  %t1063 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t1059, i32 %t1060)
  store %"compiler/source:Span" %t1063, ptr %l415
  br label %bb227
bb227:
  %t1064 = load i32, ptr %l19, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t1065
  %t1066 = getelementptr { i64, [4 x i64] }, ptr %t1065, i32 0, i32 0
  store i64 0, ptr %t1066
  %t1067 = load %"compiler/source:Span", ptr %l415
  %t1068 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t1067, 0
  %t1070 = insertvalue { %"compiler/source:Span", i32 } %t1068, i32 %t1064, 1
  %t1071 = getelementptr { i64, [4 x i64] }, ptr %t1065, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t1070, ptr %t1071
  %t1072 = load { i64, [4 x i64] }, ptr %t1065
  %t1074 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t1072, ptr %t1074
  %t1076 = insertvalue { i32, ptr } zeroinitializer, ptr %t1074, 1
  store { i32, ptr } %t1076, ptr %rv
  br label %ret
bb228:
  %t1077 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1079 = trunc i64 110 to i32
  %t1080 = icmp eq i32 %t1077, %t1079
  br i1 %t1080, label %bb229, label %bb230
bb229:
  br label %bb231
bb230:
  br label %bb235
bb231:
  store %olang.scope zeroinitializer, ptr %s20
  %t1082 = load ptr, ptr %l0, !tbaa !29
  %t1084 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s20, ptr %t1082, { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i32 %t1084, ptr %l422
  %t1085 = icmp ne i32 %t1084, 0
  br i1 %t1085, label %bb233, label %ok.1086, !prof !99
ok.1086:
  br label %bb232
bb232:
  br label %bb234
bb233:
  %t1087 = load i32, ptr %l422, !tbaa !23
  %t1088 = lshr i32 %t1087, 16
  %t1089 = and i32 %t1087, 65535
  %t1090 = icmp eq i32 %t1088, 1
  %t1091 = select i1 %t1090, i32 1, i32 0
  %t1092 = icmp eq i32 %t1087, 0
  %t1093 = shl i32 %t1091, 16
  %t1094 = or i32 %t1093, %t1089
  %t1095 = select i1 %t1092, i32 0, i32 %t1094
  call void @__olang_scope_close(ptr %s20)
  %t1097 = insertvalue { i32, ptr } zeroinitializer, i32 %t1095, 0
  store { i32, ptr } %t1097, ptr %rv
  br label %ret
bb234:
  call void @__olang_scope_close(ptr %s20)
  br label %bb243
bb235:
  br i1 true, label %bb236, label %bb237
bb236:
  br label %bb238
bb237:
  br label %bb242
bb238:
  store %olang.scope zeroinitializer, ptr %s21
  %t1098 = load ptr, ptr %l0, !tbaa !29
  %t1100 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s21, ptr %t1098, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i32 %t1100, ptr %l425
  %t1101 = icmp ne i32 %t1100, 0
  br i1 %t1101, label %bb240, label %ok.1102, !prof !99
ok.1102:
  br label %bb239
bb239:
  br label %bb241
bb240:
  %t1103 = load i32, ptr %l425, !tbaa !23
  %t1104 = lshr i32 %t1103, 16
  %t1105 = and i32 %t1103, 65535
  %t1106 = icmp eq i32 %t1104, 1
  %t1107 = select i1 %t1106, i32 1, i32 0
  %t1108 = icmp eq i32 %t1103, 0
  %t1109 = shl i32 %t1107, 16
  %t1110 = or i32 %t1109, %t1105
  %t1111 = select i1 %t1108, i32 0, i32 %t1110
  call void @__olang_scope_close(ptr %s21)
  %t1113 = insertvalue { i32, ptr } zeroinitializer, i32 %t1111, 0
  store { i32, ptr } %t1113, ptr %rv
  br label %ret
bb241:
  call void @__olang_scope_close(ptr %s21)
  br label %bb243
bb242:
  call void @__olang_check_failed(ptr @olang_loc_4bdaee1d5dba1351_2f255a58086b38a5)
  unreachable
bb243:
  call void @__olang_check_failed(ptr @olang_loc_4605476f4451aac0_36c877a5418c1e74)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereflListPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb20
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = getelementptr %"compiler/parse:Parser", ptr %a0, i32 0, i32 2
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t19, i32 %t20)
  store { i64, ptr } %t23, ptr %l13
  br label %bb6
bb6:
  %t24 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t24, ptr %l3, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t25, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t27, ptr %l15
  br label %bb7
bb7:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb11
bb9:
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t29, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t31, ptr %l18
  br label %bb10
bb10:
  %t32 = load i1, ptr %l18, !tbaa !21
  store i1 %t32, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t33 = load i1, ptr %l16, !tbaa !21
  br i1 %t33, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb15
bb13:
  %t34 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t34, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t36, ptr %l21
  br label %bb14
bb14:
  %t37 = load i1, ptr %l21, !tbaa !21
  store i1 %t37, ptr %l19, !tbaa !21
  br label %bb15
bb15:
  %t38 = load i1, ptr %l19, !tbaa !21
  br i1 %t38, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb19
bb17:
  %t39 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t39, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t41, ptr %l24
  br label %bb18
bb18:
  %t42 = load i1, ptr %l24, !tbaa !21
  store i1 %t42, ptr %l22, !tbaa !21
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s1)
  %t43 = load i1, ptr %l22, !tbaa !21
  store i1 %t43, ptr %rv
  br label %ret
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 false, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_952e32d6f93638f1_595c141b0c1c5b3d)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l3 = alloca i32
  %l5 = alloca i32
  %l7 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %a0)
  store i32 %t3, ptr %l3
  br label %bb1
bb1:
  store i32 %a1, ptr %l5
  %t7 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %l3, ptr %l5)
  store i1 %t7, ptr %l7
  br label %bb2
bb2:
  %t8 = load i1, ptr %l7, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esimpleStmt(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l13 = alloca i32
  %l15 = alloca i1
  %l17 = alloca i32
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i32
  %l25 = alloca %"compiler/source:Span"
  %l33 = alloca %"compiler/source:Span"
  %rv = alloca { i32, ptr }
  %t64 = alloca { i64, [4 x i64] }, align 8
  %t86 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i32, ptr %l6, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t5)
  %t8 = extractvalue { i32, ptr } %t7, 1
  %t9 = extractvalue { i32, ptr } %t7, 0
  store i32 %t9, ptr %l10
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb3, label %ok.11, !prof !99
ok.11:
  store ptr %t8, ptr %l9
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l9, !tbaa !29
  store ptr %t12, ptr %l7, !tbaa !29
  br label %bb4
bb3:
  %t13 = load i32, ptr %l10, !tbaa !23
  %t14 = lshr i32 %t13, 16
  %t15 = and i32 %t13, 65535
  %t16 = icmp eq i32 %t14, 1
  %t17 = select i1 %t16, i32 1, i32 0
  %t18 = icmp eq i32 %t13, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t15
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t23 = insertvalue { i32, ptr } zeroinitializer, i32 %t21, 0
  store { i32, ptr } %t23, ptr %rv
  br label %ret
bb4:
  %t24 = load ptr, ptr %l7, !tbaa !29
  store ptr %t24, ptr %l2, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t25)
  store i32 %t27, ptr %l13
  br label %bb5
bb5:
  %t28 = load i32, ptr %l13, !range !{i32 0, i32 114}
  store i32 %t28, ptr %l3
  %t29 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t31 = call i1 @compiler_2fparse_2eisAssignOp(i32 %t29)
  store i1 %t31, ptr %l15
  br label %bb6
bb6:
  %t32 = load i1, ptr %l15, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t33)
  store i32 %t35, ptr %l17
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t36)
  %t39 = extractvalue { i32, ptr } %t38, 1
  %t40 = extractvalue { i32, ptr } %t38, 0
  store i32 %t40, ptr %l21
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb11, label %ok.42, !prof !99
ok.42:
  store ptr %t39, ptr %l20
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l20, !tbaa !29
  store ptr %t43, ptr %l18, !tbaa !29
  br label %bb12
bb11:
  %t44 = load i32, ptr %l21, !tbaa !23
  %t45 = lshr i32 %t44, 16
  %t46 = and i32 %t44, 65535
  %t47 = icmp eq i32 %t45, 1
  %t48 = select i1 %t47, i32 1, i32 0
  %t49 = icmp eq i32 %t44, 0
  %t50 = shl i32 %t48, 16
  %t51 = or i32 %t50, %t46
  %t52 = select i1 %t49, i32 0, i32 %t51
  %t54 = insertvalue { i32, ptr } zeroinitializer, i32 %t52, 0
  store { i32, ptr } %t54, ptr %rv
  br label %ret
bb12:
  %t55 = load ptr, ptr %l18, !tbaa !29
  store ptr %t55, ptr %l4, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l1, !tbaa !23
  %t60 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t56, i32 %t57)
  store %"compiler/source:Span" %t60, ptr %l25
  br label %bb13
bb13:
  %t61 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t64
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 0
  store i64 3, ptr %t65
  %t66 = load %"compiler/source:Span", ptr %l25
  %t67 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t66, 0
  %t69 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t67, i32 %t61, 1
  %t71 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t69, ptr %t62, 2
  %t73 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t71, ptr %t63, 3
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t73, ptr %t74
  %t75 = load { i64, [4 x i64] }, ptr %t64
  %t77 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t75, ptr %t77
  %t79 = insertvalue { i32, ptr } zeroinitializer, ptr %t77, 1
  store { i32, ptr } %t79, ptr %rv
  br label %ret
bb14:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t80, i32 %t81)
  store %"compiler/source:Span" %t84, ptr %l33
  br label %bb15
bb15:
  %t85 = load ptr, ptr %l2, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t86
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 0
  store i64 0, ptr %t87
  %t88 = load %"compiler/source:Span", ptr %l33
  %t89 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t88, 0
  %t91 = insertvalue { %"compiler/source:Span", ptr } %t89, ptr %t85, 1
  %t92 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t91, ptr %t92
  %t93 = load { i64, [4 x i64] }, ptr %t86
  %t95 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t93, ptr %t95
  %t97 = insertvalue { i32, ptr } zeroinitializer, ptr %t95, 1
  store { i32, ptr } %t97, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2espreadRules(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l56 = alloca i32
  %l57 = alloca { i64, ptr }
  %l60 = alloca i32
  %l61 = alloca %"compiler/diagmsg:Msg"
  %l64 = alloca i1
  %l66 = alloca i1
  %l69 = alloca i1
  %l72 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca i32
  %l77 = alloca %"compiler/source:Span"
  %l78 = alloca i32
  %l80 = alloca { i64, ptr }
  %l81 = alloca %"compiler/diagmsg:Msg"
  %l84 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l88 = alloca i32
  %l89 = alloca { i64, ptr }
  %l92 = alloca i32
  %l93 = alloca %"compiler/diagmsg:Msg"
  %l94 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l101 = alloca { i64, ptr }
  %l108 = alloca %"compiler/source:Span"
  %l109 = alloca i32
  %l110 = alloca { i64, ptr }
  %l117 = alloca %"compiler/source:Span"
  %l118 = alloca i32
  %l119 = alloca %"compiler/diagmsg:Msg"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t5 = load i64, ptr %l6, !tbaa !24
  %t6 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l7, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l22, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l22, !tbaa !24
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l19, !tbaa !24
  store i64 %t32, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l9, !tbaa !24
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb58
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l9, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l10, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t51, ptr %l40, !tbaa !27
  %t52 = load i64, ptr %l10, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  %t59 = getelementptr %"compiler/ast:Param", ptr %t57, i32 0, i32 2
  %t60 = load ptr, ptr %t59, !tbaa !29
  store ptr %t60, ptr %l11, !tbaa !29
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = icmp sge i64 %t62, 0
  br i1 %t64, label %bb11, label %bb12
bb11:
  %t66 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t66, ptr %l47, !tbaa !27
  %t67 = load i64, ptr %l10, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr ptr, ptr %t70, i64 %t67
  %t72 = load ptr, ptr %t71, !tbaa !39
  %t74 = getelementptr %"compiler/ast:Param", ptr %t72, i32 0, i32 3
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = icmp eq ptr %t75, null
  store i1 %t77, ptr %l46, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb13
bb13:
  %t79 = load i1, ptr %l46, !tbaa !21
  br i1 %t79, label %bb14, label %bb15
bb14:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l52, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t81, ptr %l53, !tbaa !27
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr ptr, ptr %t85, i64 %t82
  %t87 = load ptr, ptr %t86, !tbaa !39
  %t89 = getelementptr %"compiler/ast:Param", ptr %t87, i32 0, i32 0
  %t90 = getelementptr %"compiler/source:Span", ptr %t89, i32 0, i32 0
  %t91 = load i32, ptr %t90, !tbaa !23
  store i32 %t91, ptr %l56, !tbaa !23
  %t92 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t92, ptr %l57, !tbaa !27
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr ptr, ptr %t96, i64 %t93
  %t98 = load ptr, ptr %t97, !tbaa !39
  %t100 = getelementptr %"compiler/ast:Param", ptr %t98, i32 0, i32 0
  %t101 = getelementptr %"compiler/source:Span", ptr %t100, i32 0, i32 1
  %t102 = load i32, ptr %t101, !tbaa !23
  store i32 %t102, ptr %l60, !tbaa !23
  %t103 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicNotLast(ptr %v0)
  store %"compiler/diagmsg:Msg" %t103, ptr %l61
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t104 = load ptr, ptr %l52, !tbaa !29
  %t105 = load i32, ptr %l56, !tbaa !23
  %t106 = load i32, ptr %l60, !tbaa !23
  %t107 = load %"compiler/diagmsg:Msg", ptr %l61
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t104, i32 %t105, i32 %t106, %"compiler/diagmsg:Msg" %t107)
  br label %bb17
bb17:
  br label %ret
bb18:
  %t108 = load ptr, ptr %l11, !tbaa !29
  %t110 = icmp eq ptr %t108, null
  br i1 %t110, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb22
bb20:
  %t112 = load ptr, ptr %l11, !tbaa !29
  %t114 = call i1 @compiler_2fparse_2eisSpreadType(ptr %v1, ptr %t112)
  store i1 %t114, ptr %l66
  br label %bb21
bb21:
  %t115 = load i1, ptr %l66, !tbaa !21
  %t116 = xor i1 %t115, true
  store i1 %t116, ptr %l64, !tbaa !21
  br label %bb22
bb22:
  %t118 = load i1, ptr %l64, !tbaa !21
  br i1 %t118, label %bb23, label %bb24
bb23:
  br label %bb57
bb24:
  br label %bb25
bb25:
  %t119 = load i1, ptr %l2, !tbaa !21
  br i1 %t119, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb28
bb27:
  %t123 = xor i1 %a3, true
  store i1 %t123, ptr %l69, !tbaa !21
  br label %bb28
bb28:
  %t125 = load i1, ptr %l69, !tbaa !21
  br i1 %t125, label %bb29, label %bb30
bb29:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l72, !tbaa !29
  %t127 = load ptr, ptr %l11, !tbaa !29
  %t129 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t127)
  store %"compiler/source:Span" %t129, ptr %l74
  br label %bb31
bb30:
  br label %bb38
bb31:
  %t130 = getelementptr %"compiler/source:Span", ptr %l74, i32 0, i32 0
  %t131 = load i32, ptr %t130, !tbaa !23
  store i32 %t131, ptr %l75, !tbaa !23
  %t132 = load ptr, ptr %l11, !tbaa !29
  %t134 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t132)
  store %"compiler/source:Span" %t134, ptr %l77
  br label %bb32
bb32:
  %t135 = getelementptr %"compiler/source:Span", ptr %l77, i32 0, i32 1
  %t136 = load i32, ptr %t135, !tbaa !23
  store i32 %t136, ptr %l78, !tbaa !23
  %t137 = load i1, ptr %l2, !tbaa !21
  br i1 %t137, label %bb33, label %bb34
bb33:
  store { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l80, !tbaa !27
  br label %bb35
bb34:
  store { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l80, !tbaa !27
  br label %bb35
bb35:
  %t139 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t140 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicHere(ptr %v0, ptr %v0, { i64, ptr } %t139)
  store %"compiler/diagmsg:Msg" %t140, ptr %l81
  br label %bb36
bb36:
  %t141 = load ptr, ptr %l72, !tbaa !29
  %t142 = load i32, ptr %l75, !tbaa !23
  %t143 = load i32, ptr %l78, !tbaa !23
  %t144 = load %"compiler/diagmsg:Msg", ptr %l81
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t141, i32 %t142, i32 %t143, %"compiler/diagmsg:Msg" %t144)
  br label %bb37
bb37:
  br label %ret
bb38:
  %t145 = load i64, ptr %l4, !tbaa !24
  %t147 = icmp sge i64 %t145, 0
  br i1 %t147, label %bb39, label %bb40
bb39:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l84, !tbaa !29
  %t150 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t150, ptr %l85, !tbaa !27
  %t151 = load i64, ptr %l10, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr ptr, ptr %t154, i64 %t151
  %t156 = load ptr, ptr %t155, !tbaa !39
  %t158 = getelementptr %"compiler/ast:Param", ptr %t156, i32 0, i32 0
  %t159 = getelementptr %"compiler/source:Span", ptr %t158, i32 0, i32 0
  %t160 = load i32, ptr %t159, !tbaa !23
  store i32 %t160, ptr %l88, !tbaa !23
  %t161 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t161, ptr %l89, !tbaa !27
  %t162 = load i64, ptr %l10, !tbaa !24
  %t164 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr ptr, ptr %t165, i64 %t162
  %t167 = load ptr, ptr %t166, !tbaa !39
  %t169 = getelementptr %"compiler/ast:Param", ptr %t167, i32 0, i32 0
  %t170 = getelementptr %"compiler/source:Span", ptr %t169, i32 0, i32 1
  %t171 = load i32, ptr %t170, !tbaa !23
  store i32 %t171, ptr %l92, !tbaa !23
  %t172 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicNotLast(ptr %v0)
  store %"compiler/diagmsg:Msg" %t172, ptr %l93
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t173 = load ptr, ptr %l84, !tbaa !29
  %t174 = load i32, ptr %l88, !tbaa !23
  %t175 = load i32, ptr %l92, !tbaa !23
  %t176 = load %"compiler/diagmsg:Msg", ptr %l93
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t173, i32 %t174, i32 %t175, %"compiler/diagmsg:Msg" %t176)
  br label %bb42
bb42:
  br label %ret
bb43:
  %t177 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t177, ptr %l94, !tbaa !27
  %t178 = load i64, ptr %l10, !tbaa !24
  %t180 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr ptr, ptr %t181, i64 %t178
  %t183 = load ptr, ptr %t182, !tbaa !39
  %t185 = getelementptr %"compiler/ast:Param", ptr %t183, i32 0, i32 3
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = icmp eq ptr %t186, null
  %t190 = xor i1 %t188, true
  br i1 %t190, label %bb44, label %bb45
bb44:
  %t192 = load ptr, ptr %l0, !tbaa !29
  store ptr %t192, ptr %l100, !tbaa !29
  %t193 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t193, ptr %l101, !tbaa !27
  %t194 = load i64, ptr %l10, !tbaa !24
  %t196 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr ptr, ptr %t197, i64 %t194
  %t199 = load ptr, ptr %t198, !tbaa !39
  %t201 = getelementptr %"compiler/ast:Param", ptr %t199, i32 0, i32 3
  %t202 = load ptr, ptr %t201, !tbaa !29
  store ptr %t202, ptr %l12, !tbaa !29
  %t204 = load ptr, ptr %l12, !tbaa !29
  %t206 = icmp eq ptr %t204, null
  br i1 %t206, label %bb46, label %bb47
bb45:
  br label %bb56
bb46:
  call void @__olang_check_failed(ptr @olang_loc_b4d86fcc9a57c7f6_c634a892523c9252)
  unreachable
bb47:
  br label %bb48
bb48:
  %t208 = load ptr, ptr %l12, !tbaa !29
  %t210 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t208)
  store %"compiler/source:Span" %t210, ptr %l108
  br label %bb49
bb49:
  %t211 = getelementptr %"compiler/source:Span", ptr %l108, i32 0, i32 0
  %t212 = load i32, ptr %t211, !tbaa !23
  store i32 %t212, ptr %l109, !tbaa !23
  %t213 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t213, ptr %l110, !tbaa !27
  %t214 = load i64, ptr %l10, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr ptr, ptr %t217, i64 %t214
  %t219 = load ptr, ptr %t218, !tbaa !39
  %t221 = getelementptr %"compiler/ast:Param", ptr %t219, i32 0, i32 3
  %t222 = load ptr, ptr %t221, !tbaa !29
  store ptr %t222, ptr %l13, !tbaa !29
  %t224 = load ptr, ptr %l13, !tbaa !29
  %t226 = icmp eq ptr %t224, null
  br i1 %t226, label %bb50, label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_b4d86fcc9a57c7f6_c634a892523c9252)
  unreachable
bb51:
  br label %bb52
bb52:
  %t228 = load ptr, ptr %l13, !tbaa !29
  %t230 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t228)
  store %"compiler/source:Span" %t230, ptr %l117
  br label %bb53
bb53:
  %t231 = getelementptr %"compiler/source:Span", ptr %l117, i32 0, i32 1
  %t232 = load i32, ptr %t231, !tbaa !23
  store i32 %t232, ptr %l118, !tbaa !23
  %t233 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicDefault(ptr %v0)
  store %"compiler/diagmsg:Msg" %t233, ptr %l119
  br label %bb54
bb54:
  %t234 = load ptr, ptr %l100, !tbaa !29
  %t235 = load i32, ptr %l109, !tbaa !23
  %t236 = load i32, ptr %l118, !tbaa !23
  %t237 = load %"compiler/diagmsg:Msg", ptr %l119
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t234, i32 %t235, i32 %t236, %"compiler/diagmsg:Msg" %t237)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t238 = load i64, ptr %l10, !tbaa !24
  store i64 %t238, ptr %l4, !tbaa !24
  br label %bb57
bb57:
  %t240 = load i64, ptr %l9, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l9, !tbaa !24
  br label %bb7
bb58:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2estartsResult(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %a0)
  store i32 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i32, ptr %l3, !range !{i32 0, i32 114}
  store i32 %t4, ptr %l1
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t7 = trunc i64 1 to i32
  %t8 = icmp eq i32 %t5, %t7
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t12 = trunc i64 39 to i32
  %t13 = icmp eq i32 %t10, %t12
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb6:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 37 to i32
  %t19 = icmp eq i32 %t16, %t18
  store i1 %t19, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t21 = load i1, ptr %l9, !tbaa !21
  br i1 %t21, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb10
bb9:
  %t22 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t24 = trunc i64 108 to i32
  %t25 = icmp eq i32 %t22, %t24
  store i1 %t25, ptr %l12, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l12, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb13
bb12:
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t30 = trunc i64 35 to i32
  %t31 = icmp eq i32 %t28, %t30
  store i1 %t31, ptr %l15, !tbaa !21
  br label %bb13
bb13:
  %t33 = load i1, ptr %l15, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb16
bb15:
  %t34 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t36 = trunc i64 34 to i32
  %t37 = icmp eq i32 %t34, %t36
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb16
bb16:
  %t39 = load i1, ptr %l18, !tbaa !21
  br i1 %t39, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb19
bb18:
  %t40 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t42 = trunc i64 36 to i32
  %t43 = icmp eq i32 %t40, %t42
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb19
bb19:
  %t45 = load i1, ptr %l21, !tbaa !21
  br i1 %t45, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb22
bb21:
  %t46 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t48 = trunc i64 52 to i32
  %t49 = icmp eq i32 %t46, %t48
  store i1 %t49, ptr %l24, !tbaa !21
  br label %bb22
bb22:
  %t51 = load i1, ptr %l24, !tbaa !21
  br i1 %t51, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb25
bb24:
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t54 = trunc i64 67 to i32
  %t55 = icmp eq i32 %t52, %t54
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb25
bb25:
  %t57 = load i1, ptr %l27, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncItem(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/token:Token"
  %l4 = alloca %"compiler/token:Token"
  %l11 = alloca %"compiler/token:Token"
  %l16 = alloca i1
  %l20 = alloca i32
  %l32 = alloca %"compiler/token:Token"
  %l35 = alloca i1
  %l38 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 6
  store i64 %a1, ptr %t5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 7
  store i32 0, ptr %t9
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/parse:Parser", ptr %t10, i32 0, i32 11
  store i1 false, ptr %t12, !tbaa !21
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t13)
  store %"compiler/token:Token" %t15, ptr %l11
  br label %bb2
bb2:
  %t16 = load %"compiler/token:Token", ptr %l11
  store %"compiler/token:Token" %t16, ptr %l3
  %t17 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 0
  %t18 = load i32, ptr %t17, !range !{i32 0, i32 114}
  %t20 = trunc i64 0 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t23 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 0
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 114}
  %t26 = trunc i64 113 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp eq i64 %t29, 0
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l16, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t34)
  store i32 %t36, ptr %l20
  br label %bb12
bb12:
  %t37 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 0
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 114}
  %t40 = trunc i64 112 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb13, label %bb14
bb13:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l2, !tbaa !24
  br label %bb38
bb14:
  %t47 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 0
  %t48 = load i32, ptr %t47, !range !{i32 0, i32 114}
  %t50 = trunc i64 113 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = load i64, ptr %l2, !tbaa !24
  %t55 = sub i64 %t53, 1
  store i64 %t55, ptr %l2, !tbaa !24
  %t57 = load i64, ptr %l2, !tbaa !24
  %t59 = icmp eq i64 %t57, 0
  br i1 %t59, label %bb17, label %bb18
bb16:
  %t61 = load i64, ptr %l2, !tbaa !24
  %t63 = icmp eq i64 %t61, 0
  br i1 %t63, label %bb31, label %bb32
bb17:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t65)
  store %"compiler/token:Token" %t67, ptr %l32
  br label %bb19
bb18:
  br label %bb30
bb19:
  %t68 = load %"compiler/token:Token", ptr %l32
  store %"compiler/token:Token" %t68, ptr %l4
  %t69 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 0
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 114}
  %t72 = trunc i64 0 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb22
bb21:
  %t75 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 0
  %t76 = load i32, ptr %t75, !range !{i32 0, i32 114}
  %t78 = trunc i64 8 to i32
  %t79 = icmp eq i32 %t76, %t78
  store i1 %t79, ptr %l35, !tbaa !21
  br label %bb22
bb22:
  %t81 = load i1, ptr %l35, !tbaa !21
  br i1 %t81, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb26
bb24:
  %t82 = load %"compiler/token:Token", ptr %l4
  %t83 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t86 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t82, i8 %t83)
  store i1 %t86, ptr %l41
  br label %bb25
bb25:
  %t87 = load i1, ptr %l41, !tbaa !21
  store i1 %t87, ptr %l38, !tbaa !21
  br label %bb26
bb26:
  %t88 = load i1, ptr %l38, !tbaa !21
  br i1 %t88, label %bb27, label %bb28
bb27:
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  br label %bb37
bb31:
  %t89 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 0
  %t90 = load i32, ptr %t89, !range !{i32 0, i32 114}
  %t92 = trunc i64 8 to i32
  %t93 = icmp eq i32 %t90, %t92
  store i1 %t93, ptr %l44, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb33
bb33:
  %t95 = load i1, ptr %l44, !tbaa !21
  br i1 %t95, label %bb34, label %bb35
bb34:
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb1
ret:
  ret void
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etextPieceCalled(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i1
  %l16 = alloca i64
  %l31 = alloca i1
  %l34 = alloca i64
  %l42 = alloca i32
  %l45 = alloca i1
  %l48 = alloca i32
  %l51 = alloca i1
  %l54 = alloca i64
  %l57 = alloca i64
  %l59 = alloca ptr
  %l60 = alloca i64
  %l61 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  store i64 %t9, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sge i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l16
  br label %bb5
bb4:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t23 = load i64, ptr %l16, !tbaa !24
  %t25 = icmp sge i64 %t23, %t22
  store i1 %t25, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l13, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t30 = load i64, ptr %l4, !tbaa !24
  store i64 %t30, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = sub i64 %t32, 1
  store i64 %t34, ptr %l4, !tbaa !24
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t36 = load i64, ptr %l3, !tbaa !24
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb12
bb12:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/parse:Parser", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/scan:Tokens", ptr %t42, i32 0, i32 0
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t50 = icmp slt i64 %t38, %t47
  br i1 %t50, label %bb13, label %bb14
bb13:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t52, i64 %t53)
  store i64 %t56, ptr %l34
  br label %bb15
bb14:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb16
bb15:
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l34, !tbaa !24
  %t60 = icmp sle i64 %t58, %t57
  store i1 %t60, ptr %l31, !tbaa !21
  br label %bb16
bb16:
  %t62 = load i1, ptr %l31, !tbaa !21
  %t63 = xor i1 %t62, true
  br i1 %t63, label %bb17, label %bb18
bb17:
  br label %bb39
bb18:
  br label %bb19
bb19:
  %t65 = load i64, ptr %l4, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l5, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l4, !tbaa !24
  %t73 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t69, i64 %t70)
  store i32 %t73, ptr %l42
  br label %bb20
bb20:
  %t74 = load i32, ptr %l42, !range !{i32 0, i32 114}
  %t76 = trunc i64 5 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb21, label %bb22
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l5, !tbaa !24
  %t83 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t79, i64 %t80)
  store i32 %t83, ptr %l48
  br label %bb23
bb22:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb24
bb23:
  %t84 = load i32, ptr %l48, !range !{i32 0, i32 114}
  %t86 = trunc i64 108 to i32
  %t87 = icmp eq i32 %t84, %t86
  store i1 %t87, ptr %l45, !tbaa !21
  br label %bb24
bb24:
  %t89 = load i1, ptr %l45, !tbaa !21
  br i1 %t89, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l54
  br label %bb27
bb26:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb29
bb27:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l4, !tbaa !24
  %t99 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t95, i64 %t96)
  store i64 %t99, ptr %l57
  br label %bb28
bb28:
  %t100 = load i64, ptr %l54, !tbaa !24
  %t101 = load i64, ptr %l57, !tbaa !24
  %t102 = icmp eq i64 %t100, %t101
  store i1 %t102, ptr %l51, !tbaa !21
  br label %bb29
bb29:
  %t104 = load i1, ptr %l51, !tbaa !21
  br i1 %t104, label %bb30, label %bb31
bb30:
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l59, !tbaa !29
  %t106 = load i64, ptr %l5, !tbaa !24
  store i64 %t106, ptr %l60, !tbaa !24
  %t107 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPieceCalled(ptr %v0)
  store %"compiler/diagmsg:Msg" %t107, ptr %l61
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t108 = load ptr, ptr %l59, !tbaa !29
  %t109 = load i64, ptr %l60, !tbaa !24
  %t110 = load %"compiler/diagmsg:Msg", ptr %l61
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t108, i64 %t109, %"compiler/diagmsg:Msg" %t110)
  br label %bb33
bb33:
  store i1 true, ptr %rv
  br label %ret
bb34:
  %t112 = load i64, ptr %l5, !tbaa !24
  %t113 = load i64, ptr %l1, !tbaa !24
  %t116 = icmp eq i64 %t112, %t113
  br i1 %t116, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  br label %bb37
bb37:
  %t118 = load i64, ptr %l4, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l4, !tbaa !24
  br label %bb38
bb38:
  br label %bb12
bb39:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopIfRest(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i32
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i32
  %l23 = alloca i1
  %l29 = alloca %"compiler/ast:TopIf"
  %l33 = alloca i1
  %l34 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i32
  %l45 = alloca %"compiler/ast:TopIf"
  %l47 = alloca ptr
  %l49 = alloca ptr
  %l50 = alloca i32
  %l58 = alloca %"compiler/ast:TopIf"
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 9)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l9
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t9 = load i32, ptr %l8, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l9, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  %t20 = insertvalue { i32, ptr } zeroinitializer, i32 %t18, 0
  store { i32, ptr } %t20, ptr %rv
  br label %ret
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t21)
  %t24 = extractvalue { i32, ptr } %t23, 1
  %t25 = extractvalue { i32, ptr } %t23, 0
  store i32 %t25, ptr %l14
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb5, label %ok.27, !prof !99
ok.27:
  store ptr %t24, ptr %l13
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l13, !tbaa !29
  store ptr %t28, ptr %l11, !tbaa !29
  br label %bb6
bb5:
  %t29 = load i32, ptr %l14, !tbaa !23
  %t30 = lshr i32 %t29, 16
  %t31 = and i32 %t29, 65535
  %t32 = icmp eq i32 %t30, 1
  %t33 = select i1 %t32, i32 1, i32 0
  %t34 = icmp eq i32 %t29, 0
  %t35 = shl i32 %t33, 16
  %t36 = or i32 %t35, %t31
  %t37 = select i1 %t34, i32 0, i32 %t36
  %t39 = insertvalue { i32, ptr } zeroinitializer, i32 %t37, 0
  store { i32, ptr } %t39, ptr %rv
  br label %ret
bb6:
  %t40 = load ptr, ptr %l11, !tbaa !29
  store ptr %t40, ptr %l1, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopBranch(ptr %v0, ptr %v1, ptr %t41)
  %t44 = extractvalue { i32, ptr } %t43, 1
  %t45 = extractvalue { i32, ptr } %t43, 0
  store i32 %t45, ptr %l19
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb8, label %ok.47, !prof !99
ok.47:
  store ptr %t44, ptr %l18
  br label %bb7
bb7:
  %t48 = load ptr, ptr %l18, !tbaa !29
  store ptr %t48, ptr %l16, !tbaa !29
  br label %bb9
bb8:
  %t49 = load i32, ptr %l19, !tbaa !23
  %t50 = lshr i32 %t49, 16
  %t51 = and i32 %t49, 65535
  %t52 = icmp eq i32 %t50, 1
  %t53 = select i1 %t52, i32 1, i32 0
  %t54 = icmp eq i32 %t49, 0
  %t55 = shl i32 %t53, 16
  %t56 = or i32 %t55, %t51
  %t57 = select i1 %t54, i32 0, i32 %t56
  %t59 = insertvalue { i32, ptr } zeroinitializer, i32 %t57, 0
  store { i32, ptr } %t59, ptr %rv
  br label %ret
bb9:
  %t60 = load ptr, ptr %l16, !tbaa !29
  store ptr %t60, ptr %l2, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t64 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t61, i32 10)
  store i1 %t64, ptr %l23
  br label %bb10
bb10:
  %t65 = load i1, ptr %l23, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t74 = call %"compiler/ast:TopIf" @compiler_2fast_3aTopIf_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t68, ptr %t70, ptr null, ptr null)
  store %"compiler/ast:TopIf" %t74, ptr %l29
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t75 = load %"compiler/ast:TopIf", ptr %l29
  %t76 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/ast:TopIf" %t75, ptr %t76
  %t78 = insertvalue { i32, ptr } zeroinitializer, ptr %t76, 1
  store { i32, ptr } %t78, ptr %rv
  br label %ret
bb14:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t82 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t79, i32 9)
  store i1 %t82, ptr %l33
  br label %bb15
bb15:
  %t83 = load i1, ptr %l33, !tbaa !21
  br i1 %t83, label %bb16, label %bb17
bb16:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopIfRest(ptr %v0, ptr %v1, ptr %t84)
  %t87 = extractvalue { i32, ptr } %t86, 1
  %t88 = extractvalue { i32, ptr } %t86, 0
  store i32 %t88, ptr %l37
  %t89 = icmp ne i32 %t88, 0
  br i1 %t89, label %bb19, label %ok.90, !prof !99
ok.90:
  store ptr %t87, ptr %l36
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t91 = load ptr, ptr %l36, !tbaa !29
  store ptr %t91, ptr %l34, !tbaa !29
  br label %bb20
bb19:
  %t92 = load i32, ptr %l37, !tbaa !23
  %t93 = lshr i32 %t92, 16
  %t94 = and i32 %t92, 65535
  %t95 = icmp eq i32 %t93, 1
  %t96 = select i1 %t95, i32 1, i32 0
  %t97 = icmp eq i32 %t92, 0
  %t98 = shl i32 %t96, 16
  %t99 = or i32 %t98, %t94
  %t100 = select i1 %t97, i32 0, i32 %t99
  %t102 = insertvalue { i32, ptr } zeroinitializer, i32 %t100, 0
  store { i32, ptr } %t102, ptr %rv
  br label %ret
bb20:
  %t103 = load ptr, ptr %l34, !tbaa !29
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = load ptr, ptr %l2, !tbaa !29
  %t113 = call %"compiler/ast:TopIf" @compiler_2fast_3aTopIf_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t104, ptr %t106, ptr %t103, ptr null)
  store %"compiler/ast:TopIf" %t113, ptr %l45
  br label %bb21
bb21:
  %t114 = load %"compiler/ast:TopIf", ptr %l45
  %t115 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/ast:TopIf" %t114, ptr %t115
  %t117 = insertvalue { i32, ptr } zeroinitializer, ptr %t115, 1
  store { i32, ptr } %t117, ptr %rv
  br label %ret
bb22:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopBranch(ptr %v0, ptr %v1, ptr %t118)
  %t121 = extractvalue { i32, ptr } %t120, 1
  %t122 = extractvalue { i32, ptr } %t120, 0
  store i32 %t122, ptr %l50
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb24, label %ok.124, !prof !99
ok.124:
  store ptr %t121, ptr %l49
  br label %bb23
bb23:
  %t125 = load ptr, ptr %l49, !tbaa !29
  store ptr %t125, ptr %l47, !tbaa !29
  br label %bb25
bb24:
  %t126 = load i32, ptr %l50, !tbaa !23
  %t127 = lshr i32 %t126, 16
  %t128 = and i32 %t126, 65535
  %t129 = icmp eq i32 %t127, 1
  %t130 = select i1 %t129, i32 1, i32 0
  %t131 = icmp eq i32 %t126, 0
  %t132 = shl i32 %t130, 16
  %t133 = or i32 %t132, %t128
  %t134 = select i1 %t131, i32 0, i32 %t133
  %t136 = insertvalue { i32, ptr } zeroinitializer, i32 %t134, 0
  store { i32, ptr } %t136, ptr %rv
  br label %ret
bb25:
  %t137 = load ptr, ptr %l47, !tbaa !29
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = load ptr, ptr %l2, !tbaa !29
  %t147 = call %"compiler/ast:TopIf" @compiler_2fast_3aTopIf_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t138, ptr %t140, ptr null, ptr %t137)
  store %"compiler/ast:TopIf" %t147, ptr %l58
  br label %bb26
bb26:
  %t148 = load %"compiler/ast:TopIf", ptr %l58
  %t149 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/ast:TopIf" %t148, ptr %t149
  %t151 = insertvalue { i32, ptr } zeroinitializer, ptr %t149, 1
  store { i32, ptr } %t151, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etrailing(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l7 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i32
  %l14 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t5 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t7)
  store i1 %t9, ptr %l7
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t10 = load i1, ptr %l7, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l5, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l9, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/parse:Parser", ptr %t15, i32 0, i32 10
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sub i32 %t18, 1
  store i32 %t20, ptr %l12, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 10
  %t24 = load i32, ptr %t23, !tbaa !23
  store i32 %t24, ptr %l14, !tbaa !23
  %t25 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t27 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t25)
  store { i64, ptr } %t27, ptr %l16
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t28 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t29 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t28)
  store { i64, ptr } %t29, ptr %l17
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t38 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTrailingComma(ptr %v0, ptr %v0, { i64, ptr } %t36)
  store %"compiler/diagmsg:Msg" %t38, ptr %l19
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l9, !tbaa !29
  %t40 = load i32, ptr %l12, !tbaa !23
  %t41 = load i32, ptr %l14, !tbaa !23
  %t42 = load %"compiler/diagmsg:Msg", ptr %l19
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t39, i32 %t40, i32 %t41, %"compiler/diagmsg:Msg" %t42)
  br label %bb11
bb11:
  store i32 65536, ptr %rv
  br label %ret
bb12:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsShape(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l10 = alloca i32
  %l14 = alloca i1
  %l22 = alloca i32
  %l28 = alloca %"compiler/token:Token"
  %l32 = alloca %"compiler/token:Token"
  %l44 = alloca i32
  %l71 = alloca i1
  %l75 = alloca i1
  %l79 = alloca i1
  %l83 = alloca i1
  %l87 = alloca i1
  %l91 = alloca i1
  %l95 = alloca i1
  %l99 = alloca i1
  %l103 = alloca i1
  %l115 = alloca i1
  %l119 = alloca i32
  %l125 = alloca i1
  %l128 = alloca %"compiler/token:Token"
  %l129 = alloca i32
  %l133 = alloca %"compiler/token:Token"
  %l140 = alloca i32
  %l143 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t8 = trunc i64 97 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/parse:Parser", ptr %t13, i32 0, i32 7
  %t16 = load i32, ptr %t15, !range !{i32 0, i32 114}
  %t18 = trunc i64 0 to i32
  %t19 = icmp eq i32 %t16, %t18
  %t21 = xor i1 %t19, true
  store i1 %t21, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l14, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = icmp eq i64 %t25, 0
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t29, i32 0, i32 10
  %t32 = load i32, ptr %t31, !tbaa !23
  store i32 %t32, ptr %l22, !tbaa !23
  br label %bb11
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t37 = sub i64 %t35, 1
  %t40 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t34, i64 %t37)
  store %"compiler/token:Token" %t40, ptr %l28
  br label %bb10
bb10:
  %t41 = getelementptr %"compiler/token:Token", ptr %l28, i32 0, i32 3
  %t42 = load i32, ptr %t41, !tbaa !23
  store i32 %t42, ptr %l22, !tbaa !23
  br label %bb11
bb11:
  %t44 = load i32, ptr %l22, !tbaa !23
  store i32 %t44, ptr %l2, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l1, !tbaa !24
  %t49 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t45, i64 %t46)
  store %"compiler/token:Token" %t49, ptr %l32
  br label %bb12
bb12:
  %t50 = getelementptr %"compiler/token:Token", ptr %l32, i32 0, i32 2
  %t51 = load i32, ptr %t50, !tbaa !23
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = icmp eq i32 %t51, %t52
  store i1 %t55, ptr %l3, !tbaa !21
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l1, !tbaa !24
  store i64 %t57, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l1, !tbaa !24
  %t62 = add i64 %t60, 256
  %t65 = icmp slt i64 %t59, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb14, label %bb15
bb14:
  br label %bb92
bb15:
  br label %bb16
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t69, i64 %t70)
  store i32 %t73, ptr %l44
  br label %bb17
bb17:
  %t74 = load i32, ptr %l44, !range !{i32 0, i32 114}
  store i32 %t74, ptr %l7
  %t75 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t77 = trunc i64 97 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb18, label %bb19
bb18:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l4, !tbaa !24
  br label %bb65
bb19:
  %t84 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t86 = trunc i64 99 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb20, label %bb21
bb20:
  %t89 = load i64, ptr %l4, !tbaa !24
  %t91 = sub i64 %t89, 1
  store i64 %t91, ptr %l4, !tbaa !24
  br label %bb64
bb21:
  %t93 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t95 = trunc i64 107 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb22, label %bb23
bb22:
  %t98 = load i64, ptr %l4, !tbaa !24
  %t100 = sub i64 %t98, 2
  store i64 %t100, ptr %l4, !tbaa !24
  br label %bb63
bb23:
  %t102 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t104 = trunc i64 108 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb24, label %bb25
bb24:
  %t107 = load i64, ptr %l5, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l5, !tbaa !24
  br label %bb62
bb25:
  %t111 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t113 = trunc i64 109 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb26, label %bb27
bb26:
  %t116 = load i64, ptr %l5, !tbaa !24
  %t118 = icmp eq i64 %t116, 0
  br i1 %t118, label %bb28, label %bb29
bb27:
  %t120 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t122 = trunc i64 1 to i32
  %t123 = icmp eq i32 %t120, %t122
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb31, label %bb32
bb28:
  store i64 0, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t128 = load i64, ptr %l5, !tbaa !24
  %t130 = sub i64 %t128, 1
  store i64 %t130, ptr %l5, !tbaa !24
  br label %bb61
bb31:
  %t132 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t134 = trunc i64 76 to i32
  %t135 = icmp eq i32 %t132, %t134
  %t137 = xor i1 %t135, true
  store i1 %t137, ptr %l71, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb33
bb33:
  %t139 = load i1, ptr %l71, !tbaa !21
  br i1 %t139, label %bb34, label %bb35
bb34:
  %t140 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t142 = trunc i64 75 to i32
  %t143 = icmp eq i32 %t140, %t142
  %t145 = xor i1 %t143, true
  store i1 %t145, ptr %l75, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb36
bb36:
  %t147 = load i1, ptr %l75, !tbaa !21
  br i1 %t147, label %bb37, label %bb38
bb37:
  %t148 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t150 = trunc i64 101 to i32
  %t151 = icmp eq i32 %t148, %t150
  %t153 = xor i1 %t151, true
  store i1 %t153, ptr %l79, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb39
bb39:
  %t155 = load i1, ptr %l79, !tbaa !21
  br i1 %t155, label %bb40, label %bb41
bb40:
  %t156 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t158 = trunc i64 77 to i32
  %t159 = icmp eq i32 %t156, %t158
  %t161 = xor i1 %t159, true
  store i1 %t161, ptr %l83, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb42
bb42:
  %t163 = load i1, ptr %l83, !tbaa !21
  br i1 %t163, label %bb43, label %bb44
bb43:
  %t164 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t166 = trunc i64 39 to i32
  %t167 = icmp eq i32 %t164, %t166
  %t169 = xor i1 %t167, true
  store i1 %t169, ptr %l87, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb45
bb45:
  %t171 = load i1, ptr %l87, !tbaa !21
  br i1 %t171, label %bb46, label %bb47
bb46:
  %t172 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t174 = trunc i64 37 to i32
  %t175 = icmp eq i32 %t172, %t174
  %t177 = xor i1 %t175, true
  store i1 %t177, ptr %l91, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb48
bb48:
  %t179 = load i1, ptr %l91, !tbaa !21
  br i1 %t179, label %bb49, label %bb50
bb49:
  %t180 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t182 = trunc i64 13 to i32
  %t183 = icmp eq i32 %t180, %t182
  %t185 = xor i1 %t183, true
  store i1 %t185, ptr %l95, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb51
bb51:
  %t187 = load i1, ptr %l95, !tbaa !21
  br i1 %t187, label %bb52, label %bb53
bb52:
  %t188 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t190 = trunc i64 52 to i32
  %t191 = icmp eq i32 %t188, %t190
  %t193 = xor i1 %t191, true
  store i1 %t193, ptr %l99, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb54
bb54:
  %t195 = load i1, ptr %l99, !tbaa !21
  br i1 %t195, label %bb55, label %bb56
bb55:
  %t196 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t198 = trunc i64 67 to i32
  %t199 = icmp eq i32 %t196, %t198
  %t201 = xor i1 %t199, true
  store i1 %t201, ptr %l103, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb57
bb57:
  %t203 = load i1, ptr %l103, !tbaa !21
  br i1 %t203, label %bb58, label %bb59
bb58:
  store i64 0, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t205 = load i64, ptr %l4, !tbaa !24
  %t207 = icmp slt i64 %t205, 0
  br i1 %t207, label %bb66, label %bb67
bb66:
  store i64 0, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t210 = load i64, ptr %l4, !tbaa !24
  %t212 = icmp eq i64 %t210, 0
  br i1 %t212, label %bb69, label %bb70
bb69:
  %t214 = load i64, ptr %l5, !tbaa !24
  %t216 = icmp ne i64 %t214, 0
  br i1 %t216, label %bb71, label %bb72
bb70:
  br label %bb90
bb71:
  store i1 true, ptr %l115, !tbaa !21
  br label %bb74
bb72:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load i64, ptr %l6, !tbaa !24
  %t221 = add i64 %t219, 1
  %t224 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t218, i64 %t221)
  store i32 %t224, ptr %l119
  br label %bb73
bb73:
  %t225 = load i32, ptr %l119, !range !{i32 0, i32 114}
  %t227 = trunc i64 108 to i32
  %t228 = icmp eq i32 %t225, %t227
  %t230 = xor i1 %t228, true
  store i1 %t230, ptr %l115, !tbaa !21
  br label %bb74
bb74:
  %t232 = load i1, ptr %l115, !tbaa !21
  br i1 %t232, label %bb75, label %bb76
bb75:
  store i64 0, ptr %rv
  br label %ret
bb76:
  br label %bb77
bb77:
  %t234 = load i1, ptr %l3, !tbaa !21
  br i1 %t234, label %bb78, label %bb79
bb78:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i64, ptr %l6, !tbaa !24
  %t240 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t236, i64 %t237)
  store %"compiler/token:Token" %t240, ptr %l128
  br label %bb80
bb79:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb82
bb80:
  %t241 = getelementptr %"compiler/token:Token", ptr %l128, i32 0, i32 3
  %t242 = load i32, ptr %t241, !tbaa !23
  store i32 %t242, ptr %l129, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load i64, ptr %l6, !tbaa !24
  %t246 = add i64 %t244, 1
  %t249 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t243, i64 %t246)
  store %"compiler/token:Token" %t249, ptr %l133
  br label %bb81
bb81:
  %t250 = getelementptr %"compiler/token:Token", ptr %l133, i32 0, i32 2
  %t251 = load i32, ptr %t250, !tbaa !23
  %t252 = load i32, ptr %l129, !tbaa !23
  %t254 = icmp eq i32 %t252, %t251
  store i1 %t254, ptr %l125, !tbaa !21
  br label %bb82
bb82:
  %t256 = load i1, ptr %l125, !tbaa !21
  br i1 %t256, label %bb83, label %bb84
bb83:
  store i64 2, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load i64, ptr %l6, !tbaa !24
  %t261 = add i64 %t259, 2
  %t264 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t258, i64 %t261)
  store i32 %t264, ptr %l140
  br label %bb86
bb86:
  %t265 = load i32, ptr %l140, !range !{i32 0, i32 114}
  %t267 = trunc i64 109 to i32
  %t268 = icmp eq i32 %t265, %t267
  br i1 %t268, label %bb87, label %bb88
bb87:
  store i64 1, ptr %l143, !tbaa !24
  br label %bb89
bb88:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb89
bb89:
  %t270 = load i64, ptr %l143, !tbaa !24
  store i64 %t270, ptr %rv
  br label %ret
bb90:
  %t271 = load i64, ptr %l6, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l6, !tbaa !24
  br label %bb91
bb91:
  br label %bb13
bb92:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBody(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca i1
  %l17 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca %"compiler/token:Token"
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca %"compiler/token:Token"
  %l31 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %lp39 = alloca ptr
  %l41 = alloca i32
  %l45 = alloca i32
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i32
  %l57 = alloca i32
  %l60 = alloca i32
  %l61 = alloca i32
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i32
  %l68 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i32
  %l73 = alloca ptr
  %l74 = alloca ptr
  %l76 = alloca ptr
  %l77 = alloca i32
  %l80 = alloca ptr
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i32
  %l87 = alloca %"compiler/source:Span"
  %l93 = alloca i1
  %l95 = alloca i32
  %l96 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i32
  %l103 = alloca %"compiler/source:Span"
  %l111 = alloca %"compiler/ast:StructBody"
  %l118 = alloca i32
  %l121 = alloca i1
  %l123 = alloca ptr
  %l125 = alloca ptr
  %l126 = alloca i32
  %l129 = alloca i32
  %l132 = alloca i32
  %l133 = alloca i32
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca i1
  %l143 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l146 = alloca i32
  %l149 = alloca i32
  %l150 = alloca i32
  %l152 = alloca i32
  %l153 = alloca i32
  %l160 = alloca i1
  %l161 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l164 = alloca i32
  %l168 = alloca i1
  %l170 = alloca i1
  %l173 = alloca i1
  %l175 = alloca i1
  %l178 = alloca i1
  %l180 = alloca i1
  %l183 = alloca i1
  %l185 = alloca i1
  %l188 = alloca i1
  %l191 = alloca i32
  %l192 = alloca ptr
  %l194 = alloca ptr
  %l195 = alloca i32
  %l199 = alloca %"compiler/source:Span"
  %l200 = alloca i32
  %l202 = alloca ptr
  %l206 = alloca %"compiler/ast:Param"
  %l208 = alloca { i64, ptr }
  %l211 = alloca i1
  %l212 = alloca ptr
  %l214 = alloca ptr
  %l215 = alloca i32
  %l220 = alloca ptr
  %l223 = alloca %"compiler/source:Span"
  %l229 = alloca %"compiler/ast:CaseDecl"
  %l232 = alloca i32
  %l235 = alloca i32
  %l237 = alloca { i64, ptr }
  %l244 = alloca i32
  %l245 = alloca { i64, ptr }
  %l248 = alloca { i64, ptr }
  %l249 = alloca i32
  %l251 = alloca { i64, ptr }
  %l254 = alloca { i64, ptr }
  %l255 = alloca i32
  %l257 = alloca i32
  %l260 = alloca i32
  %l261 = alloca i32
  %l263 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l268 = alloca i1
  %l272 = alloca i32
  %l275 = alloca i1
  %l277 = alloca %"compiler/token:Token"
  %l279 = alloca i32
  %l282 = alloca %"compiler/source:Span"
  %l283 = alloca %"compiler/source:Span"
  %l286 = alloca ptr
  %l290 = alloca %"compiler/ast:Param"
  %l294 = alloca i1
  %l297 = alloca i1
  %l298 = alloca i1
  %l300 = alloca i32
  %l304 = alloca %"compiler/token:Token"
  %l305 = alloca i32
  %l307 = alloca i32
  %l308 = alloca i32
  %l312 = alloca %"compiler/source:Span"
  %l313 = alloca i32
  %l316 = alloca { i64, ptr }
  %l323 = alloca i32
  %l324 = alloca i32
  %l326 = alloca i32
  %l327 = alloca i32
  %l334 = alloca ptr
  %l338 = alloca { i64, ptr }
  %l342 = alloca { i64, ptr }
  %l345 = alloca i32
  %l346 = alloca ptr
  %l348 = alloca ptr
  %l349 = alloca i32
  %l351 = alloca ptr
  %l354 = alloca %"compiler/source:Span"
  %l355 = alloca ptr
  %l356 = alloca i32
  %l357 = alloca ptr
  %l360 = alloca { i64, ptr }
  %l363 = alloca { i64, ptr }
  %l369 = alloca %"compiler/ast:Func"
  %l372 = alloca i32
  %l375 = alloca i32
  %l377 = alloca { i64, ptr }
  %l383 = alloca ptr
  %l385 = alloca ptr
  %l386 = alloca i32
  %l391 = alloca i1
  %l393 = alloca i32
  %l394 = alloca { i64, ptr }
  %l396 = alloca { i64, ptr }
  %l397 = alloca i32
  %l399 = alloca ptr
  %l401 = alloca ptr
  %l402 = alloca i32
  %l404 = alloca ptr
  %l405 = alloca ptr
  %l407 = alloca ptr
  %l408 = alloca i32
  %l411 = alloca ptr
  %l412 = alloca { i64, ptr }
  %l414 = alloca { i64, ptr }
  %l415 = alloca i32
  %l417 = alloca { i64, ptr }
  %l420 = alloca { i64, ptr }
  %l422 = alloca i1
  %l424 = alloca { i64, ptr }
  %l426 = alloca ptr
  %l430 = alloca %"compiler/ast:Sig"
  %l431 = alloca ptr
  %l434 = alloca %"compiler/source:Span"
  %l435 = alloca ptr
  %l436 = alloca { i64, ptr }
  %l439 = alloca { i64, ptr }
  %l443 = alloca %"compiler/ast:Func"
  %s1 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t216 = alloca { i64, [6 x i64] }, align 8
  %t543 = alloca { i64, [6 x i64] }, align 8
  %t666 = alloca { i64, [5 x i64] }, align 8
  %t748 = alloca i64
  %t765 = alloca { i64, [5 x i64] }, align 8
  %t945 = alloca { i64, [6 x i64] }, align 8
  %t1147 = alloca { i64, [6 x i64] }, align 8
  %t1160 = alloca { i64, [6 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l41
  br label %bb1
bb1:
  %t4 = load i32, ptr %l41, !range !{i32 0, i32 114}
  store i32 %t4, ptr %l1
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t7 = trunc i64 34 to i32
  %t8 = icmp eq i32 %t5, %t7
  br i1 %t8, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb48
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t10)
  store i32 %t12, ptr %l45
  br label %bb5
bb5:
  %t13 = icmp sge i64 0, 0
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t15 = icmp sle i64 0, 1152921504606846975
  br i1 %t15, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_e980cdf5146ac576_c2415009b5e84a7a)
  unreachable
bb8:
  %t17 = mul i64 0, 8
  %t18 = insertvalue { i64, ptr } undef, i64 0, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t19, ptr %l2, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t21, i32 97)
  store i1 %t24, ptr %l51
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e980cdf5146ac576_c2415009b5e84a7a)
  unreachable
bb10:
  %t25 = load i1, ptr %l51, !tbaa !21
  br i1 %t25, label %bb11, label %bb12
bb11:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeParams(ptr %v0, ptr %v1, ptr %t26)
  %t29 = extractvalue { i32, { i64, ptr } } %t28, 1
  %t30 = extractvalue { i32, { i64, ptr } } %t28, 0
  store i32 %t30, ptr %l55
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb14, label %ok.32, !prof !99
ok.32:
  store { i64, ptr } %t29, ptr %l54
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t33 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t33, ptr %l52, !tbaa !27
  br label %bb15
bb14:
  %t34 = load i32, ptr %l55, !tbaa !23
  %t35 = lshr i32 %t34, 16
  %t36 = and i32 %t34, 65535
  %t37 = icmp eq i32 %t35, 1
  %t38 = select i1 %t37, i32 1, i32 0
  %t39 = icmp eq i32 %t34, 0
  %t40 = shl i32 %t38, 16
  %t41 = or i32 %t40, %t36
  %t42 = select i1 %t39, i32 0, i32 %t41
  call void @__olang_scope_close(ptr %s1)
  %t44 = insertvalue { i32, ptr } zeroinitializer, i32 %t42, 0
  store { i32, ptr } %t44, ptr %rv
  br label %ret
bb15:
  %t45 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t45, ptr %l2, !tbaa !27
  br label %bb16
bb16:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t49 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t46, i32 108)
  %t50 = extractvalue { i32, i32 } %t49, 1
  %t51 = extractvalue { i32, i32 } %t49, 0
  store i32 %t51, ptr %l61
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb18, label %ok.53, !prof !99
ok.53:
  store i32 %t50, ptr %l60
  br label %bb17
bb17:
  %t54 = load i32, ptr %l60, !tbaa !23
  store i32 %t54, ptr %l57, !tbaa !23
  br label %bb19
bb18:
  %t55 = load i32, ptr %l61, !tbaa !23
  %t56 = lshr i32 %t55, 16
  %t57 = and i32 %t55, 65535
  %t58 = icmp eq i32 %t56, 1
  %t59 = select i1 %t58, i32 1, i32 0
  %t60 = icmp eq i32 %t55, 0
  %t61 = shl i32 %t59, 16
  %t62 = or i32 %t61, %t57
  %t63 = select i1 %t60, i32 0, i32 %t62
  call void @__olang_scope_close(ptr %s1)
  %t65 = insertvalue { i32, ptr } zeroinitializer, i32 %t63, 0
  store { i32, ptr } %t65, ptr %rv
  br label %ret
bb19:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparams(ptr %v0, ptr %v1, ptr %t66, i1 false)
  %t69 = extractvalue { i32, { i64, ptr } } %t68, 1
  %t70 = extractvalue { i32, { i64, ptr } } %t68, 0
  store i32 %t70, ptr %l66
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb21, label %ok.72, !prof !99
ok.72:
  store { i64, ptr } %t69, ptr %l65
  br label %bb20
bb20:
  %t73 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t73, ptr %l63, !tbaa !27
  br label %bb22
bb21:
  %t74 = load i32, ptr %l66, !tbaa !23
  %t75 = lshr i32 %t74, 16
  %t76 = and i32 %t74, 65535
  %t77 = icmp eq i32 %t75, 1
  %t78 = select i1 %t77, i32 1, i32 0
  %t79 = icmp eq i32 %t74, 0
  %t80 = shl i32 %t78, 16
  %t81 = or i32 %t80, %t76
  %t82 = select i1 %t79, i32 0, i32 %t81
  call void @__olang_scope_close(ptr %s1)
  %t84 = insertvalue { i32, ptr } zeroinitializer, i32 %t82, 0
  store { i32, ptr } %t84, ptr %rv
  br label %ret
bb22:
  %t85 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t85, ptr %l3, !tbaa !27
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econtractHere(ptr %v0, ptr %v1, ptr %t86)
  %t89 = extractvalue { i32, ptr } %t88, 1
  %t90 = extractvalue { i32, ptr } %t88, 0
  store i32 %t90, ptr %l71
  %t91 = icmp ne i32 %t90, 0
  br i1 %t91, label %bb24, label %ok.92, !prof !99
ok.92:
  store ptr %t89, ptr %l70
  br label %bb23
bb23:
  %t93 = load ptr, ptr %l70, !tbaa !29
  store ptr %t93, ptr %l68, !tbaa !29
  br label %bb25
bb24:
  %t94 = load i32, ptr %l71, !tbaa !23
  %t95 = lshr i32 %t94, 16
  %t96 = and i32 %t94, 65535
  %t97 = icmp eq i32 %t95, 1
  %t98 = select i1 %t97, i32 1, i32 0
  %t99 = icmp eq i32 %t94, 0
  %t100 = shl i32 %t98, 16
  %t101 = or i32 %t100, %t96
  %t102 = select i1 %t99, i32 0, i32 %t101
  call void @__olang_scope_close(ptr %s1)
  %t104 = insertvalue { i32, ptr } zeroinitializer, i32 %t102, 0
  store { i32, ptr } %t104, ptr %rv
  br label %ret
bb25:
  %t105 = load ptr, ptr %l68, !tbaa !29
  store ptr %t105, ptr %l4, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l73, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorSet(ptr %v0, ptr %v1, ptr %t107, i1 false)
  %t110 = extractvalue { i32, ptr } %t109, 1
  %t111 = extractvalue { i32, ptr } %t109, 0
  store i32 %t111, ptr %l77
  %t112 = icmp ne i32 %t111, 0
  br i1 %t112, label %bb27, label %ok.113, !prof !99
ok.113:
  store ptr %t110, ptr %l76
  br label %bb26
bb26:
  %t114 = load ptr, ptr %l76, !tbaa !29
  store ptr %t114, ptr %l74, !tbaa !29
  br label %bb28
bb27:
  %t115 = load i32, ptr %l77, !tbaa !23
  %t116 = lshr i32 %t115, 16
  %t117 = and i32 %t115, 65535
  %t118 = icmp eq i32 %t116, 1
  %t119 = select i1 %t118, i32 1, i32 0
  %t120 = icmp eq i32 %t115, 0
  %t121 = shl i32 %t119, 16
  %t122 = or i32 %t121, %t117
  %t123 = select i1 %t120, i32 0, i32 %t122
  call void @__olang_scope_close(ptr %s1)
  %t125 = insertvalue { i32, ptr } zeroinitializer, i32 %t123, 0
  store { i32, ptr } %t125, ptr %rv
  br label %ret
bb28:
  %t126 = load ptr, ptr %l4, !tbaa !29
  %t127 = load ptr, ptr %l73, !tbaa !29
  %t128 = load ptr, ptr %l74, !tbaa !29
  %t130 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewithContract(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t127, ptr %t128, ptr %t126)
  store ptr %t130, ptr %l80
  br label %bb29
bb29:
  %t131 = load ptr, ptr %l80, !tbaa !29
  store ptr %t131, ptr %l5, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/parse:Parser", ptr %t132, i32 0, i32 17
  store i1 true, ptr %t134, !tbaa !21
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t135)
  %t138 = extractvalue { i32, { i64, ptr } } %t137, 1
  %t139 = extractvalue { i32, { i64, ptr } } %t137, 0
  store i32 %t139, ptr %l85
  %t140 = icmp ne i32 %t139, 0
  br i1 %t140, label %bb31, label %ok.141, !prof !99
ok.141:
  store { i64, ptr } %t138, ptr %l84
  br label %bb30
bb30:
  %t142 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t142, ptr %l82, !tbaa !27
  br label %bb32
bb31:
  %t143 = load i32, ptr %l85, !tbaa !23
  %t144 = lshr i32 %t143, 16
  %t145 = and i32 %t143, 65535
  %t146 = icmp eq i32 %t144, 1
  %t147 = select i1 %t146, i32 1, i32 0
  %t148 = icmp eq i32 %t143, 0
  %t149 = shl i32 %t147, 16
  %t150 = or i32 %t149, %t145
  %t151 = select i1 %t148, i32 0, i32 %t150
  call void @__olang_scope_close(ptr %s1)
  %t153 = insertvalue { i32, ptr } zeroinitializer, i32 %t151, 0
  store { i32, ptr } %t153, ptr %rv
  br label %ret
bb32:
  %t154 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t154, ptr %l6, !tbaa !27
  %t155 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t155, ptr %l87
  br label %bb33
bb33:
  %t156 = load %"compiler/source:Span", ptr %l87
  store %"compiler/source:Span" %t156, ptr %l7
  %t157 = icmp sge i64 0, 0
  br i1 %t157, label %bb34, label %bb35
bb34:
  %t159 = icmp sle i64 0, 1152921504606846975
  br i1 %t159, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_1539ac39f97600b_6c3b4513fd4221cf)
  unreachable
bb36:
  %t161 = mul i64 0, 8
  %t162 = insertvalue { i64, ptr } undef, i64 0, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t163, ptr %l8, !tbaa !27
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t168 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t165, i32 42)
  store i1 %t168, ptr %l93
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_1539ac39f97600b_6c3b4513fd4221cf)
  unreachable
bb38:
  %t169 = load i1, ptr %l93, !tbaa !21
  br i1 %t169, label %bb39, label %bb40
bb39:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t170)
  store i32 %t172, ptr %l95
  br label %bb41
bb40:
  br label %bb46
bb41:
  %t173 = load i32, ptr %l95, !tbaa !23
  store i32 %t173, ptr %l9, !tbaa !23
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t174)
  %t177 = extractvalue { i32, { i64, ptr } } %t176, 1
  %t178 = extractvalue { i32, { i64, ptr } } %t176, 0
  store i32 %t178, ptr %l99
  %t179 = icmp ne i32 %t178, 0
  br i1 %t179, label %bb43, label %ok.180, !prof !99
ok.180:
  store { i64, ptr } %t177, ptr %l98
  br label %bb42
bb42:
  %t181 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t181, ptr %l96, !tbaa !27
  br label %bb44
bb43:
  %t182 = load i32, ptr %l99, !tbaa !23
  %t183 = lshr i32 %t182, 16
  %t184 = and i32 %t182, 65535
  %t185 = icmp eq i32 %t183, 1
  %t186 = select i1 %t185, i32 1, i32 0
  %t187 = icmp eq i32 %t182, 0
  %t188 = shl i32 %t186, 16
  %t189 = or i32 %t188, %t184
  %t190 = select i1 %t187, i32 0, i32 %t189
  call void @__olang_scope_close(ptr %s1)
  %t192 = insertvalue { i32, ptr } zeroinitializer, i32 %t190, 0
  store { i32, ptr } %t192, ptr %rv
  br label %ret
bb44:
  %t193 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t193, ptr %l8, !tbaa !27
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l9, !tbaa !23
  %t198 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t194, i32 %t195)
  store %"compiler/source:Span" %t198, ptr %l103
  br label %bb45
bb45:
  %t199 = load %"compiler/source:Span", ptr %l103
  store %"compiler/source:Span" %t199, ptr %l7
  br label %bb46
bb46:
  %t200 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t201 = load ptr, ptr %l5, !tbaa !29
  %t203 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t204 = load %"compiler/source:Span", ptr %l7
  %t205 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t206 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t213 = call %"compiler/ast:StructBody" @compiler_2fast_3aStructBody_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t200, ptr %t201, { i64, ptr } %t203, %"compiler/source:Span" %t204, { i64, ptr } %t205, { i64, ptr } %t206)
  store %"compiler/ast:StructBody" %t213, ptr %l111
  br label %bb47
bb47:
  %t214 = load %"compiler/ast:StructBody", ptr %l111
  %t215 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 80, i64 8)
  store %"compiler/ast:StructBody" %t214, ptr %t215
  store { i64, [6 x i64] } zeroinitializer, ptr %t216
  %t217 = getelementptr { i64, [6 x i64] }, ptr %t216, i32 0, i32 0
  store i64 0, ptr %t217
  %t219 = insertvalue { ptr } undef, ptr %t215, 0
  %t220 = getelementptr { i64, [6 x i64] }, ptr %t216, i32 0, i32 1
  store { ptr } %t219, ptr %t220
  %t221 = load { i64, [6 x i64] }, ptr %t216
  %t223 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store { i64, [6 x i64] } %t221, ptr %t223
  call void @__olang_scope_close(ptr %s1)
  %t225 = insertvalue { i32, ptr } zeroinitializer, ptr %t223, 1
  store { i32, ptr } %t225, ptr %rv
  br label %ret
bb48:
  %t226 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t228 = trunc i64 35 to i32
  %t229 = icmp eq i32 %t226, %t228
  br i1 %t229, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb136
bb51:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t231)
  store i32 %t233, ptr %l118
  br label %bb52
bb52:
  store ptr null, ptr %l10, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t237 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t234, i32 112)
  store i1 %t237, ptr %l121
  br label %bb53
bb53:
  %t238 = load i1, ptr %l121, !tbaa !21
  %t239 = xor i1 %t238, true
  br i1 %t239, label %bb54, label %bb55
bb54:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t241)
  %t244 = extractvalue { i32, ptr } %t243, 1
  %t245 = extractvalue { i32, ptr } %t243, 0
  store i32 %t245, ptr %l126
  %t246 = icmp ne i32 %t245, 0
  br i1 %t246, label %bb57, label %ok.247, !prof !99
ok.247:
  store ptr %t244, ptr %l125
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t248 = load ptr, ptr %l125, !tbaa !29
  store ptr %t248, ptr %l123, !tbaa !29
  br label %bb58
bb57:
  %t249 = load i32, ptr %l126, !tbaa !23
  %t250 = lshr i32 %t249, 16
  %t251 = and i32 %t249, 65535
  %t252 = icmp eq i32 %t250, 1
  %t253 = select i1 %t252, i32 1, i32 0
  %t254 = icmp eq i32 %t249, 0
  %t255 = shl i32 %t253, 16
  %t256 = or i32 %t255, %t251
  %t257 = select i1 %t254, i32 0, i32 %t256
  %t259 = insertvalue { i32, ptr } zeroinitializer, i32 %t257, 0
  store { i32, ptr } %t259, ptr %rv
  br label %ret
bb58:
  %t260 = load ptr, ptr %l123, !tbaa !29
  store ptr %t260, ptr %l10, !tbaa !29
  br label %bb59
bb59:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t265 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t262, i32 112)
  %t266 = extractvalue { i32, i32 } %t265, 1
  %t267 = extractvalue { i32, i32 } %t265, 0
  store i32 %t267, ptr %l133
  %t268 = icmp ne i32 %t267, 0
  br i1 %t268, label %bb61, label %ok.269, !prof !99
ok.269:
  store i32 %t266, ptr %l132
  br label %bb60
bb60:
  %t270 = load i32, ptr %l132, !tbaa !23
  store i32 %t270, ptr %l129, !tbaa !23
  br label %bb62
bb61:
  %t271 = load i32, ptr %l133, !tbaa !23
  %t272 = lshr i32 %t271, 16
  %t273 = and i32 %t271, 65535
  %t274 = icmp eq i32 %t272, 1
  %t275 = select i1 %t274, i32 1, i32 0
  %t276 = icmp eq i32 %t271, 0
  %t277 = shl i32 %t275, 16
  %t278 = or i32 %t277, %t273
  %t279 = select i1 %t276, i32 0, i32 %t278
  %t281 = insertvalue { i32, ptr } zeroinitializer, i32 %t279, 0
  store { i32, ptr } %t281, ptr %rv
  br label %ret
bb62:
  %t282 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %l135
  br label %bb63
bb63:
  %t283 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  %t284 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t283, ptr %t284
  store ptr %t284, ptr %l11, !tbaa !29
  %t286 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t286)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t291 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t288, i32 113)
  store i1 %t291, ptr %l140
  br label %bb66
bb66:
  %t292 = load i1, ptr %l140, !tbaa !21
  %t293 = xor i1 %t292, true
  %t295 = xor i1 %t293, true
  br i1 %t295, label %bb67, label %bb68
bb67:
  br label %bb133
bb68:
  br label %bb69
bb69:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrsHere(ptr %v0, ptr %v1, ptr %t297)
  %t300 = extractvalue { i32, { i64, ptr } } %t299, 1
  %t301 = extractvalue { i32, { i64, ptr } } %t299, 0
  store i32 %t301, ptr %l146
  %t302 = icmp ne i32 %t301, 0
  br i1 %t302, label %bb71, label %ok.303, !prof !99
ok.303:
  store { i64, ptr } %t300, ptr %l145
  br label %bb70
bb70:
  %t304 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t304, ptr %l143, !tbaa !27
  br label %bb72
bb71:
  %t305 = load i32, ptr %l146, !tbaa !23
  %t306 = lshr i32 %t305, 16
  %t307 = and i32 %t305, 65535
  %t308 = icmp eq i32 %t306, 1
  %t309 = select i1 %t308, i32 1, i32 0
  %t310 = icmp eq i32 %t305, 0
  %t311 = shl i32 %t309, 16
  %t312 = or i32 %t311, %t307
  %t313 = select i1 %t310, i32 0, i32 %t312
  %t315 = insertvalue { i32, ptr } zeroinitializer, i32 %t313, 0
  store { i32, ptr } %t315, ptr %rv
  br label %ret
bb72:
  %t316 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t316, ptr %l12, !tbaa !27
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t317)
  store i32 %t319, ptr %l149
  br label %bb73
bb73:
  %t320 = load i32, ptr %l149, !tbaa !23
  store i32 %t320, ptr %l13, !tbaa !23
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t321)
  %t324 = extractvalue { i32, i32 } %t323, 1
  %t325 = extractvalue { i32, i32 } %t323, 0
  store i32 %t325, ptr %l153
  %t326 = icmp ne i32 %t325, 0
  br i1 %t326, label %bb75, label %ok.327, !prof !99
ok.327:
  store i32 %t324, ptr %l152
  br label %bb74
bb74:
  %t328 = load i32, ptr %l152, !tbaa !23
  store i32 %t328, ptr %l150, !tbaa !23
  br label %bb76
bb75:
  %t329 = load i32, ptr %l153, !tbaa !23
  %t330 = lshr i32 %t329, 16
  %t331 = and i32 %t329, 65535
  %t332 = icmp eq i32 %t330, 1
  %t333 = select i1 %t332, i32 1, i32 0
  %t334 = icmp eq i32 %t329, 0
  %t335 = shl i32 %t333, 16
  %t336 = or i32 %t335, %t331
  %t337 = select i1 %t334, i32 0, i32 %t336
  %t339 = insertvalue { i32, ptr } zeroinitializer, i32 %t337, 0
  store { i32, ptr } %t339, ptr %rv
  br label %ret
bb76:
  %t340 = load i32, ptr %l150, !tbaa !23
  store i32 %t340, ptr %l14, !tbaa !23
  %t341 = icmp sge i64 0, 0
  br i1 %t341, label %bb77, label %bb78
bb77:
  %t343 = icmp sle i64 0, 1152921504606846975
  br i1 %t343, label %bb79, label %bb80
bb78:
  call void @__olang_check_failed(ptr @olang_loc_17377aefad64a2a8_5cc0f861968a066c)
  unreachable
bb79:
  %t345 = mul i64 0, 8
  %t346 = insertvalue { i64, ptr } undef, i64 0, 0
  %t347 = insertvalue { i64, ptr } %t346, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t347, ptr %l15, !tbaa !27
  store i1 false, ptr %l16, !tbaa !21
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t352 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t349, i32 108)
  store i1 %t352, ptr %l160
  br label %bb81
bb80:
  call void @__olang_check_failed(ptr @olang_loc_17377aefad64a2a8_5cc0f861968a066c)
  unreachable
bb81:
  %t353 = load i1, ptr %l160, !tbaa !21
  br i1 %t353, label %bb82, label %bb83
bb82:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t356 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparams(ptr %v0, ptr %v1, ptr %t354, i1 false)
  %t357 = extractvalue { i32, { i64, ptr } } %t356, 1
  %t358 = extractvalue { i32, { i64, ptr } } %t356, 0
  store i32 %t358, ptr %l164
  %t359 = icmp ne i32 %t358, 0
  br i1 %t359, label %bb85, label %ok.360, !prof !99
ok.360:
  store { i64, ptr } %t357, ptr %l163
  br label %bb84
bb83:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t364 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t361, i32 75)
  store i1 %t364, ptr %l168
  br label %bb87
bb84:
  %t365 = load { i64, ptr }, ptr %l163, !tbaa !27
  store { i64, ptr } %t365, ptr %l161, !tbaa !27
  br label %bb86
bb85:
  %t366 = load i32, ptr %l164, !tbaa !23
  %t367 = lshr i32 %t366, 16
  %t368 = and i32 %t366, 65535
  %t369 = icmp eq i32 %t367, 1
  %t370 = select i1 %t369, i32 1, i32 0
  %t371 = icmp eq i32 %t366, 0
  %t372 = shl i32 %t370, 16
  %t373 = or i32 %t372, %t368
  %t374 = select i1 %t371, i32 0, i32 %t373
  %t376 = insertvalue { i32, ptr } zeroinitializer, i32 %t374, 0
  store { i32, ptr } %t376, ptr %rv
  br label %ret
bb86:
  %t377 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t377, ptr %l15, !tbaa !27
  br label %bb117
bb87:
  %t378 = load i1, ptr %l168, !tbaa !21
  %t379 = xor i1 %t378, true
  br i1 %t379, label %bb88, label %bb89
bb88:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t384 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t381, i32 8)
  store i1 %t384, ptr %l173
  br label %bb90
bb89:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb91
bb90:
  %t385 = load i1, ptr %l173, !tbaa !21
  %t386 = xor i1 %t385, true
  store i1 %t386, ptr %l170, !tbaa !21
  br label %bb91
bb91:
  %t388 = load i1, ptr %l170, !tbaa !21
  br i1 %t388, label %bb92, label %bb93
bb92:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t392 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t389, i32 113)
  store i1 %t392, ptr %l178
  br label %bb94
bb93:
  store i1 false, ptr %l175, !tbaa !21
  br label %bb95
bb94:
  %t393 = load i1, ptr %l178, !tbaa !21
  %t394 = xor i1 %t393, true
  store i1 %t394, ptr %l175, !tbaa !21
  br label %bb95
bb95:
  %t396 = load i1, ptr %l175, !tbaa !21
  br i1 %t396, label %bb96, label %bb97
bb96:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t400 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t397, i32 0)
  store i1 %t400, ptr %l183
  br label %bb98
bb97:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb99
bb98:
  %t401 = load i1, ptr %l183, !tbaa !21
  %t402 = xor i1 %t401, true
  store i1 %t402, ptr %l180, !tbaa !21
  br label %bb99
bb99:
  %t404 = load i1, ptr %l180, !tbaa !21
  br i1 %t404, label %bb100, label %bb101
bb100:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t408 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t405, i32 78)
  store i1 %t408, ptr %l188
  br label %bb102
bb101:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb103
bb102:
  %t409 = load i1, ptr %l188, !tbaa !21
  %t410 = xor i1 %t409, true
  store i1 %t410, ptr %l185, !tbaa !21
  br label %bb103
bb103:
  %t412 = load i1, ptr %l185, !tbaa !21
  br i1 %t412, label %bb104, label %bb105
bb104:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t413)
  store i32 %t415, ptr %l191
  br label %bb106
bb105:
  br label %bb116
bb106:
  %t416 = load i32, ptr %l191, !tbaa !23
  store i32 %t416, ptr %l17, !tbaa !23
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t417)
  %t420 = extractvalue { i32, ptr } %t419, 1
  %t421 = extractvalue { i32, ptr } %t419, 0
  store i32 %t421, ptr %l195
  %t422 = icmp ne i32 %t421, 0
  br i1 %t422, label %bb108, label %ok.423, !prof !99
ok.423:
  store ptr %t420, ptr %l194
  br label %bb107
bb107:
  %t424 = load ptr, ptr %l194, !tbaa !29
  store ptr %t424, ptr %l192, !tbaa !29
  br label %bb109
bb108:
  %t425 = load i32, ptr %l195, !tbaa !23
  %t426 = lshr i32 %t425, 16
  %t427 = and i32 %t425, 65535
  %t428 = icmp eq i32 %t426, 1
  %t429 = select i1 %t428, i32 1, i32 0
  %t430 = icmp eq i32 %t425, 0
  %t431 = shl i32 %t429, 16
  %t432 = or i32 %t431, %t427
  %t433 = select i1 %t430, i32 0, i32 %t432
  %t435 = insertvalue { i32, ptr } zeroinitializer, i32 %t433, 0
  store { i32, ptr } %t435, ptr %rv
  br label %ret
bb109:
  %t436 = load ptr, ptr %l192, !tbaa !29
  store ptr %t436, ptr %l18, !tbaa !29
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load i32, ptr %l17, !tbaa !23
  %t441 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t437, i32 %t438)
  store %"compiler/source:Span" %t441, ptr %l199
  br label %bb110
bb110:
  %t442 = load i32, ptr %l14, !tbaa !23
  store i32 %t442, ptr %l200, !tbaa !23
  %t443 = load ptr, ptr %l18, !tbaa !29
  store ptr %t443, ptr %l202, !tbaa !29
  %t445 = icmp sge i64 0, 0
  br i1 %t445, label %bb111, label %bb112
bb111:
  %t447 = icmp sle i64 0, 1152921504606846975
  br i1 %t447, label %bb113, label %bb114
bb112:
  call void @__olang_check_failed(ptr @olang_loc_2302adf5d350ae95_7d513dc9152d99f9)
  unreachable
bb113:
  %t449 = mul i64 0, 8
  %t450 = insertvalue { i64, ptr } undef, i64 0, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t452 = load %"compiler/source:Span", ptr %l199
  %t453 = load i32, ptr %l200, !tbaa !23
  %t454 = load ptr, ptr %l202, !tbaa !29
  %t456 = call %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t452, i32 %t453, ptr %t454, ptr null, { i64, ptr } %t451)
  store %"compiler/ast:Param" %t456, ptr %l206
  br label %bb115
bb114:
  call void @__olang_check_failed(ptr @olang_loc_2302adf5d350ae95_7d513dc9152d99f9)
  unreachable
bb115:
  %t457 = load %"compiler/ast:Param", ptr %l206
  %t458 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store %"compiler/ast:Param" %t457, ptr %t458
  %t459 = mul i64 1, 8
  %t460 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t459)
  %t461 = insertvalue { i64, ptr } undef, i64 1, 0
  %t462 = insertvalue { i64, ptr } %t461, ptr %t460, 1
  store { i64, ptr } %t462, ptr %l208, !tbaa !27
  %t464 = getelementptr { i64, ptr }, ptr %l208, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !27
  %t466 = getelementptr ptr, ptr %t465, i64 0
  store ptr %t458, ptr %t466, !tbaa !39
  %t467 = load { i64, ptr }, ptr %l208, !tbaa !27
  store { i64, ptr } %t467, ptr %l15, !tbaa !27
  store i1 true, ptr %l16, !tbaa !21
  br label %bb116
bb116:
  br label %bb117
bb117:
  store ptr null, ptr %l19, !tbaa !29
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t471 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t468, i32 78)
  store i1 %t471, ptr %l211
  br label %bb118
bb118:
  %t472 = load i1, ptr %l211, !tbaa !21
  br i1 %t472, label %bb119, label %bb120
bb119:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t473)
  %t476 = extractvalue { i32, ptr } %t475, 1
  %t477 = extractvalue { i32, ptr } %t475, 0
  store i32 %t477, ptr %l215
  %t478 = icmp ne i32 %t477, 0
  br i1 %t478, label %bb122, label %ok.479, !prof !99
ok.479:
  store ptr %t476, ptr %l214
  br label %bb121
bb120:
  br label %bb124
bb121:
  %t480 = load ptr, ptr %l214, !tbaa !29
  store ptr %t480, ptr %l212, !tbaa !29
  br label %bb123
bb122:
  %t481 = load i32, ptr %l215, !tbaa !23
  %t482 = lshr i32 %t481, 16
  %t483 = and i32 %t481, 65535
  %t484 = icmp eq i32 %t482, 1
  %t485 = select i1 %t484, i32 1, i32 0
  %t486 = icmp eq i32 %t481, 0
  %t487 = shl i32 %t485, 16
  %t488 = or i32 %t487, %t483
  %t489 = select i1 %t486, i32 0, i32 %t488
  %t491 = insertvalue { i32, ptr } zeroinitializer, i32 %t489, 0
  store { i32, ptr } %t491, ptr %rv
  br label %ret
bb123:
  %t492 = load ptr, ptr %l212, !tbaa !29
  store ptr %t492, ptr %l19, !tbaa !29
  br label %bb124
bb124:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclareAttrs(ptr %v0, ptr %v1, ptr %t494, { i64, ptr } %t495)
  br label %bb125
bb125:
  %t498 = load ptr, ptr %l11, !tbaa !29
  store ptr %t498, ptr %l220, !tbaa !29
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t500 = load i32, ptr %l13, !tbaa !23
  %t503 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t499, i32 %t500)
  store %"compiler/source:Span" %t503, ptr %l223
  br label %bb126
bb126:
  %t504 = load i32, ptr %l14, !tbaa !23
  %t505 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t506 = load i1, ptr %l16, !tbaa !21
  %t507 = load ptr, ptr %l19, !tbaa !29
  %t508 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t509 = load %"compiler/source:Span", ptr %l223
  %t515 = call %"compiler/ast:CaseDecl" @compiler_2fast_3aCaseDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t509, i32 %t504, { i64, ptr } %t505, i1 %t506, ptr %t507, { i64, ptr } %t508)
  store %"compiler/ast:CaseDecl" %t515, ptr %l229
  br label %bb127
bb127:
  %t516 = load %"compiler/ast:CaseDecl", ptr %l229
  %t517 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/ast:CaseDecl" %t516, ptr %t517
  %t518 = load ptr, ptr %l220, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2ePush_H43bc1cace347592514b4248ffd44c907(ptr %v1, ptr %v1, ptr %t518, ptr %t517)
  br label %bb128
bb128:
  %t520 = load ptr, ptr %l0, !tbaa !29
  %t522 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentryEnd(ptr %v0, ptr %t520)
  store i32 %t522, ptr %l232
  %t523 = icmp ne i32 %t522, 0
  br i1 %t523, label %bb130, label %ok.524, !prof !99
ok.524:
  br label %bb129
bb129:
  br label %bb131
bb130:
  %t525 = load i32, ptr %l232, !tbaa !23
  %t526 = lshr i32 %t525, 16
  %t527 = and i32 %t525, 65535
  %t528 = icmp eq i32 %t526, 1
  %t529 = select i1 %t528, i32 1, i32 0
  %t530 = icmp eq i32 %t525, 0
  %t531 = shl i32 %t529, 16
  %t532 = or i32 %t531, %t527
  %t533 = select i1 %t530, i32 0, i32 %t532
  %t535 = insertvalue { i32, ptr } zeroinitializer, i32 %t533, 0
  store { i32, ptr } %t535, ptr %rv
  br label %ret
bb131:
  br label %bb132
bb132:
  br label %bb65
bb133:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t536)
  store i32 %t538, ptr %l235
  br label %bb134
bb134:
  %t539 = load ptr, ptr %l11, !tbaa !29
  %t541 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2eToAr_H44f8de0685d71649bf169c234c7a8f4c(ptr %v1, ptr %v1, ptr %t539)
  store { i64, ptr } %t541, ptr %l237
  br label %bb135
bb135:
  %t542 = load ptr, ptr %l10, !tbaa !29
  store { i64, [6 x i64] } zeroinitializer, ptr %t543
  %t544 = getelementptr { i64, [6 x i64] }, ptr %t543, i32 0, i32 0
  store i64 1, ptr %t544
  %t545 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t546 = insertvalue { { i64, ptr }, ptr } undef, { i64, ptr } %t545, 0
  %t548 = insertvalue { { i64, ptr }, ptr } %t546, ptr %t542, 1
  %t549 = getelementptr { i64, [6 x i64] }, ptr %t543, i32 0, i32 1
  store { { i64, ptr }, ptr } %t548, ptr %t549
  %t550 = load { i64, [6 x i64] }, ptr %t543
  %t552 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store { i64, [6 x i64] } %t550, ptr %t552
  %t554 = insertvalue { i32, ptr } zeroinitializer, ptr %t552, 1
  store { i32, ptr } %t554, ptr %rv
  br label %ret
bb136:
  %t555 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t557 = trunc i64 36 to i32
  %t558 = icmp eq i32 %t555, %t557
  br i1 %t558, label %bb137, label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb229
bb139:
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t562 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t560)
  store i32 %t562, ptr %l244
  br label %bb140
bb140:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t566 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeList(ptr %v0, ptr %v1, ptr %t563, i32 22)
  %t567 = extractvalue { i32, { i64, ptr } } %t566, 1
  %t568 = extractvalue { i32, { i64, ptr } } %t566, 0
  store i32 %t568, ptr %l249
  %t569 = icmp ne i32 %t568, 0
  br i1 %t569, label %bb142, label %ok.570, !prof !99
ok.570:
  store { i64, ptr } %t567, ptr %l248
  br label %bb141
bb141:
  %t571 = load { i64, ptr }, ptr %l248, !tbaa !27
  store { i64, ptr } %t571, ptr %l245, !tbaa !27
  br label %bb143
bb142:
  %t572 = load i32, ptr %l249, !tbaa !23
  %t573 = lshr i32 %t572, 16
  %t574 = and i32 %t572, 65535
  %t575 = icmp eq i32 %t573, 1
  %t576 = select i1 %t575, i32 1, i32 0
  %t577 = icmp eq i32 %t572, 0
  %t578 = shl i32 %t576, 16
  %t579 = or i32 %t578, %t574
  %t580 = select i1 %t577, i32 0, i32 %t579
  %t582 = insertvalue { i32, ptr } zeroinitializer, i32 %t580, 0
  store { i32, ptr } %t582, ptr %rv
  br label %ret
bb143:
  %t583 = load { i64, ptr }, ptr %l245, !tbaa !27
  store { i64, ptr } %t583, ptr %l20, !tbaa !27
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t587 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeList(ptr %v0, ptr %v1, ptr %t584, i32 25)
  %t588 = extractvalue { i32, { i64, ptr } } %t587, 1
  %t589 = extractvalue { i32, { i64, ptr } } %t587, 0
  store i32 %t589, ptr %l255
  %t590 = icmp ne i32 %t589, 0
  br i1 %t590, label %bb145, label %ok.591, !prof !99
ok.591:
  store { i64, ptr } %t588, ptr %l254
  br label %bb144
bb144:
  %t592 = load { i64, ptr }, ptr %l254, !tbaa !27
  store { i64, ptr } %t592, ptr %l251, !tbaa !27
  br label %bb146
bb145:
  %t593 = load i32, ptr %l255, !tbaa !23
  %t594 = lshr i32 %t593, 16
  %t595 = and i32 %t593, 65535
  %t596 = icmp eq i32 %t594, 1
  %t597 = select i1 %t596, i32 1, i32 0
  %t598 = icmp eq i32 %t593, 0
  %t599 = shl i32 %t597, 16
  %t600 = or i32 %t599, %t595
  %t601 = select i1 %t598, i32 0, i32 %t600
  %t603 = insertvalue { i32, ptr } zeroinitializer, i32 %t601, 0
  store { i32, ptr } %t603, ptr %rv
  br label %ret
bb146:
  %t604 = load { i64, ptr }, ptr %l251, !tbaa !27
  store { i64, ptr } %t604, ptr %l21, !tbaa !27
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t608 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t605, i32 112)
  %t609 = extractvalue { i32, i32 } %t608, 1
  %t610 = extractvalue { i32, i32 } %t608, 0
  store i32 %t610, ptr %l261
  %t611 = icmp ne i32 %t610, 0
  br i1 %t611, label %bb148, label %ok.612, !prof !99
ok.612:
  store i32 %t609, ptr %l260
  br label %bb147
bb147:
  %t613 = load i32, ptr %l260, !tbaa !23
  store i32 %t613, ptr %l257, !tbaa !23
  br label %bb149
bb148:
  %t614 = load i32, ptr %l261, !tbaa !23
  %t615 = lshr i32 %t614, 16
  %t616 = and i32 %t614, 65535
  %t617 = icmp eq i32 %t615, 1
  %t618 = select i1 %t617, i32 1, i32 0
  %t619 = icmp eq i32 %t614, 0
  %t620 = shl i32 %t618, 16
  %t621 = or i32 %t620, %t616
  %t622 = select i1 %t619, i32 0, i32 %t621
  %t624 = insertvalue { i32, ptr } zeroinitializer, i32 %t622, 0
  store { i32, ptr } %t624, ptr %rv
  br label %ret
bb149:
  %t625 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aFunc_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t625, ptr %l263
  br label %bb150
bb150:
  %t626 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l263
  %t627 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t626, ptr %t627
  store ptr %t627, ptr %l22, !tbaa !29
  %t629 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t629)
  br label %bb151
bb151:
  br label %bb152
bb152:
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t634 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t631, i32 113)
  store i1 %t634, ptr %l268
  br label %bb153
bb153:
  %t635 = load i1, ptr %l268, !tbaa !21
  %t636 = xor i1 %t635, true
  %t638 = xor i1 %t636, true
  br i1 %t638, label %bb154, label %bb155
bb154:
  br label %bb226
bb155:
  br label %bb156
bb156:
  %t640 = load ptr, ptr %l0, !tbaa !29
  %t642 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t640)
  store i32 %t642, ptr %l272
  br label %bb157
bb157:
  %t643 = load i32, ptr %l272, !tbaa !23
  store i32 %t643, ptr %l23, !tbaa !23
  store ptr null, ptr %l24, !tbaa !29
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t647 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t644, i32 39)
  store i1 %t647, ptr %l275
  br label %bb158
bb158:
  %t648 = load i1, ptr %l275, !tbaa !21
  br i1 %t648, label %bb159, label %bb160
bb159:
  store %olang.scope zeroinitializer, ptr %s13
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t651 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t649)
  store %"compiler/token:Token" %t651, ptr %l277
  br label %bb161
bb160:
  br label %bb169
bb161:
  %t652 = load %"compiler/token:Token", ptr %l277
  store %"compiler/token:Token" %t652, ptr %l25
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t655 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t653)
  store i32 %t655, ptr %l279
  br label %bb162
bb162:
  %t656 = getelementptr %"compiler/token:Token", ptr %l25, i32 0, i32 2
  %t657 = load i32, ptr %t656, !tbaa !23
  %t658 = getelementptr %"compiler/token:Token", ptr %l25, i32 0, i32 3
  %t659 = load i32, ptr %t658, !tbaa !23
  %t662 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s13, i32 %t657, i32 %t659)
  store %"compiler/source:Span" %t662, ptr %l282
  br label %bb163
bb163:
  %t663 = load %"compiler/source:Span", ptr %l282
  store %"compiler/source:Span" %t663, ptr %l26
  %t664 = load %"compiler/source:Span", ptr %l26
  store %"compiler/source:Span" %t664, ptr %l283
  %t665 = load %"compiler/source:Span", ptr %l26
  store { i64, [5 x i64] } zeroinitializer, ptr %t666
  %t667 = getelementptr { i64, [5 x i64] }, ptr %t666, i32 0, i32 0
  store i64 4, ptr %t667
  %t669 = insertvalue { %"compiler/source:Span", ptr, i1 } undef, %"compiler/source:Span" %t665, 0
  %t670 = insertvalue { %"compiler/source:Span", ptr, i1 } %t669, ptr null, 1
  %t671 = insertvalue { %"compiler/source:Span", ptr, i1 } %t670, i1 true, 2
  %t672 = getelementptr { i64, [5 x i64] }, ptr %t666, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1 } %t671, ptr %t672
  %t673 = load { i64, [5 x i64] }, ptr %t666
  %t675 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t673, ptr %t675
  store ptr %t675, ptr %l286, !tbaa !29
  %t676 = icmp sge i64 0, 0
  br i1 %t676, label %bb164, label %bb165
bb164:
  %t678 = icmp sle i64 0, 1152921504606846975
  br i1 %t678, label %bb166, label %bb167
bb165:
  call void @__olang_check_failed(ptr @olang_loc_2302adf5d350ae95_7d513dc9152d99f9)
  unreachable
bb166:
  %t680 = mul i64 0, 8
  %t681 = insertvalue { i64, ptr } undef, i64 0, 0
  %t682 = insertvalue { i64, ptr } %t681, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t683 = load %"compiler/source:Span", ptr %l283
  %t684 = load ptr, ptr %l286, !tbaa !29
  %t686 = call %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t683, i32 0, ptr %t684, ptr null, { i64, ptr } %t682)
  store %"compiler/ast:Param" %t686, ptr %l290
  br label %bb168
bb167:
  call void @__olang_check_failed(ptr @olang_loc_2302adf5d350ae95_7d513dc9152d99f9)
  unreachable
bb168:
  %t687 = load %"compiler/ast:Param", ptr %l290
  %t688 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store %"compiler/ast:Param" %t687, ptr %t688
  store ptr %t688, ptr %l24, !tbaa !29
  call void @__olang_scope_close(ptr %s13)
  br label %bb169
bb169:
  store ptr null, ptr %l27, !tbaa !29
  store i32 0, ptr %l28, !tbaa !23
  store i32 0, ptr %l29, !tbaa !23
  %t690 = load ptr, ptr %l24, !tbaa !29
  %t692 = icmp eq ptr %t690, null
  br i1 %t692, label %bb170, label %bb171
bb170:
  %t694 = load ptr, ptr %l0, !tbaa !29
  %t697 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t694, i32 1)
  store i1 %t697, ptr %l297
  br label %bb172
bb171:
  store i1 false, ptr %l294, !tbaa !21
  br label %bb173
bb172:
  %t698 = load i1, ptr %l297, !tbaa !21
  store i1 %t698, ptr %l294, !tbaa !21
  br label %bb173
bb173:
  %t699 = load i1, ptr %l294, !tbaa !21
  br i1 %t699, label %bb174, label %bb175
bb174:
  %t700 = load ptr, ptr %l0, !tbaa !29
  %t702 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t700, i64 1)
  store i32 %t702, ptr %l300
  br label %bb176
bb175:
  store i1 false, ptr %l298, !tbaa !21
  br label %bb177
bb176:
  %t703 = load i32, ptr %l300, !range !{i32 0, i32 114}
  %t705 = trunc i64 76 to i32
  %t706 = icmp eq i32 %t703, %t705
  store i1 %t706, ptr %l298, !tbaa !21
  br label %bb177
bb177:
  %t708 = load i1, ptr %l298, !tbaa !21
  br i1 %t708, label %bb178, label %bb179
bb178:
  %t709 = load ptr, ptr %l0, !tbaa !29
  %t711 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t709)
  store %"compiler/token:Token" %t711, ptr %l304
  br label %bb180
bb179:
  br label %bb194
bb180:
  %t712 = load %"compiler/token:Token", ptr %l304
  store %"compiler/token:Token" %t712, ptr %l30
  %t713 = load ptr, ptr %l0, !tbaa !29
  %t715 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t713)
  %t716 = extractvalue { i32, i32 } %t715, 1
  %t717 = extractvalue { i32, i32 } %t715, 0
  store i32 %t717, ptr %l308
  %t718 = icmp ne i32 %t717, 0
  br i1 %t718, label %bb182, label %ok.719, !prof !99
ok.719:
  store i32 %t716, ptr %l307
  br label %bb181
bb181:
  %t720 = load i32, ptr %l307, !tbaa !23
  store i32 %t720, ptr %l305, !tbaa !23
  br label %bb183
bb182:
  %t721 = load i32, ptr %l308, !tbaa !23
  %t722 = lshr i32 %t721, 16
  %t723 = and i32 %t721, 65535
  %t724 = icmp eq i32 %t722, 1
  %t725 = select i1 %t724, i32 1, i32 0
  %t726 = icmp eq i32 %t721, 0
  %t727 = shl i32 %t725, 16
  %t728 = or i32 %t727, %t723
  %t729 = select i1 %t726, i32 0, i32 %t728
  %t731 = insertvalue { i32, ptr } zeroinitializer, i32 %t729, 0
  store { i32, ptr } %t731, ptr %rv
  br label %ret
bb183:
  %t732 = load i32, ptr %l305, !tbaa !23
  store i32 %t732, ptr %l29, !tbaa !23
  %t733 = getelementptr %"compiler/token:Token", ptr %l30, i32 0, i32 2
  %t734 = load i32, ptr %t733, !tbaa !23
  %t735 = getelementptr %"compiler/token:Token", ptr %l30, i32 0, i32 3
  %t736 = load i32, ptr %t735, !tbaa !23
  %t739 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 %t734, i32 %t736)
  store %"compiler/source:Span" %t739, ptr %l312
  br label %bb184
bb184:
  %t740 = load i32, ptr %l29, !tbaa !23
  store i32 %t740, ptr %l313, !tbaa !23
  %t741 = icmp sge i64 1, 0
  br i1 %t741, label %bb185, label %bb186
bb185:
  %t743 = icmp sle i64 1, 2305843009213693951
  br i1 %t743, label %bb187, label %bb188
bb186:
  call void @__olang_check_failed(ptr @olang_loc_46374d1b7bb67262_72dce1a2b91be04e)
  unreachable
bb187:
  %t745 = mul i64 1, 4
  %t746 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t745)
  %t747 = load i32, ptr %l313, !tbaa !23
  store i64 0, ptr %t748
  br label %fill.749
fill.749:
  %t752 = load i64, ptr %t748
  %t753 = icmp slt i64 %t752, 1
  br i1 %t753, label %fillb.750, label %filld.751
fillb.750:
  %t754 = getelementptr i32, ptr %t746, i64 %t752
  store i32 %t747, ptr %t754
  %t755 = add i64 %t752, 1
  store i64 %t755, ptr %t748
  br label %fill.749
filld.751:
  %t756 = insertvalue { i64, ptr } undef, i64 1, 0
  %t757 = insertvalue { i64, ptr } %t756, ptr %t746, 1
  store { i64, ptr } %t757, ptr %l316, !tbaa !27
  %t758 = icmp sge i64 0, 0
  br i1 %t758, label %bb189, label %bb190
bb188:
  call void @__olang_check_failed(ptr @olang_loc_46374d1b7bb67262_72dce1a2b91be04e)
  unreachable
bb189:
  %t760 = icmp sle i64 0, 1152921504606846975
  br i1 %t760, label %bb191, label %bb192
bb190:
  call void @__olang_check_failed(ptr @olang_loc_46374d1b7bb67262_72dce1a2b91be04e)
  unreachable
bb191:
  %t762 = mul i64 0, 8
  %t763 = insertvalue { i64, ptr } undef, i64 0, 0
  %t764 = insertvalue { i64, ptr } %t763, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [5 x i64] } zeroinitializer, ptr %t765
  %t766 = getelementptr { i64, [5 x i64] }, ptr %t765, i32 0, i32 0
  store i64 0, ptr %t766
  %t767 = load %"compiler/source:Span", ptr %l312
  %t768 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t767, 0
  %t769 = load { i64, ptr }, ptr %l316, !tbaa !27
  %t770 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t768, { i64, ptr } %t769, 1
  %t772 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t770, { i64, ptr } %t764, 2
  %t773 = getelementptr { i64, [5 x i64] }, ptr %t765, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t772, ptr %t773
  %t774 = load { i64, [5 x i64] }, ptr %t765
  %t776 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t774, ptr %t776
  store ptr %t776, ptr %l27, !tbaa !29
  %t778 = load ptr, ptr %l0, !tbaa !29
  %t780 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t778)
  store i32 %t780, ptr %l323
  br label %bb193
bb192:
  call void @__olang_check_failed(ptr @olang_loc_46374d1b7bb67262_72dce1a2b91be04e)
  unreachable
bb193:
  br label %bb194
bb194:
  %t781 = load ptr, ptr %l0, !tbaa !29
  %t783 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %t781)
  %t784 = extractvalue { i32, i32 } %t783, 1
  %t785 = extractvalue { i32, i32 } %t783, 0
  store i32 %t785, ptr %l327
  %t786 = icmp ne i32 %t785, 0
  br i1 %t786, label %bb196, label %ok.787, !prof !99
ok.787:
  store i32 %t784, ptr %l326
  br label %bb195
bb195:
  %t788 = load i32, ptr %l326, !tbaa !23
  store i32 %t788, ptr %l324, !tbaa !23
  br label %bb197
bb196:
  %t789 = load i32, ptr %l327, !tbaa !23
  %t790 = lshr i32 %t789, 16
  %t791 = and i32 %t789, 65535
  %t792 = icmp eq i32 %t790, 1
  %t793 = select i1 %t792, i32 1, i32 0
  %t794 = icmp eq i32 %t789, 0
  %t795 = shl i32 %t793, 16
  %t796 = or i32 %t795, %t791
  %t797 = select i1 %t794, i32 0, i32 %t796
  %t799 = insertvalue { i32, ptr } zeroinitializer, i32 %t797, 0
  store { i32, ptr } %t799, ptr %rv
  br label %ret
bb197:
  %t800 = load i32, ptr %l324, !tbaa !23
  store i32 %t800, ptr %l31, !tbaa !23
  %t801 = load ptr, ptr %l27, !tbaa !29
  %t803 = icmp eq ptr %t801, null
  %t805 = xor i1 %t803, true
  br i1 %t805, label %bb198, label %bb199
bb198:
  store %olang.scope zeroinitializer, ptr %s15
  %t807 = load i32, ptr %l31, !tbaa !23
  store i32 %t807, ptr %l28, !tbaa !23
  %t809 = load ptr, ptr %l0, !tbaa !29
  %t811 = getelementptr %"compiler/parse:Parser", ptr %t809, i32 0, i32 2
  %t812 = load ptr, ptr %t811, !tbaa !29
  store ptr %t812, ptr %l334, !tbaa !29
  %t813 = load ptr, ptr %l0, !tbaa !29
  %t815 = getelementptr %"compiler/parse:Parser", ptr %t813, i32 0, i32 2
  %t816 = load ptr, ptr %t815, !tbaa !29
  %t817 = load i32, ptr %l29, !tbaa !23
  %t820 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s15, ptr %t816, i32 %t817)
  store { i64, ptr } %t820, ptr %l338
  br label %bb200
bb199:
  br label %bb203
bb200:
  %t821 = load ptr, ptr %l0, !tbaa !29
  %t823 = getelementptr %"compiler/parse:Parser", ptr %t821, i32 0, i32 2
  %t824 = load ptr, ptr %t823, !tbaa !29
  %t825 = load i32, ptr %l28, !tbaa !23
  %t828 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s15, ptr %t824, i32 %t825)
  store { i64, ptr } %t828, ptr %l342
  br label %bb201
bb201:
  %t829 = load { i64, ptr }, ptr %l338, !tbaa !27
  %t830 = extractvalue { i64, ptr } %t829, 1
  %t831 = extractvalue { i64, ptr } %t829, 0
  %t832 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t833 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t834 = add i64 %t831, %t833
  %t835 = load { i64, ptr }, ptr %l342, !tbaa !27
  %t836 = extractvalue { i64, ptr } %t835, 1
  %t837 = extractvalue { i64, ptr } %t835, 0
  %t838 = add i64 %t834, %t837
  %t839 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t838)
  call void @olang_textcopy(ptr %t839, ptr %t830, i64 %t831)
  %t840 = getelementptr i8, ptr %t839, i64 %t831
  call void @olang_textcopy(ptr %t840, ptr %t832, i64 %t833)
  %t841 = getelementptr i8, ptr %t840, i64 %t833
  call void @olang_textcopy(ptr %t841, ptr %t836, i64 %t837)
  %t842 = insertvalue { i64, ptr } undef, i64 %t838, 0
  %t843 = insertvalue { i64, ptr } %t842, ptr %t839, 1
  %t845 = extractvalue { i64, ptr } %t843, 0
  %t846 = extractvalue { i64, ptr } %t843, 1
  %t847 = mul i64 %t845, 1
  %t848 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t847)
  call void @llvm.memcpy.p0.p0.i64(ptr %t848, ptr %t846, i64 %t847, i1 false)
  %t849 = insertvalue { i64, ptr } undef, i64 %t845, 0
  %t850 = insertvalue { i64, ptr } %t849, ptr %t848, 1
  %t851 = load ptr, ptr %l334, !tbaa !29
  %t853 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s15, ptr %t851, { i64, ptr } %t850)
  store i32 %t853, ptr %l345
  br label %bb202
bb202:
  %t854 = load i32, ptr %l345, !tbaa !23
  store i32 %t854, ptr %l31, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  br label %bb203
bb203:
  %t855 = load ptr, ptr %l0, !tbaa !29
  %t857 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %t855, i1 false, i1 false, i1 true)
  %t858 = extractvalue { i32, ptr } %t857, 1
  %t859 = extractvalue { i32, ptr } %t857, 0
  store i32 %t859, ptr %l349
  %t860 = icmp ne i32 %t859, 0
  br i1 %t860, label %bb205, label %ok.861, !prof !99
ok.861:
  store ptr %t858, ptr %l348
  br label %bb204
bb204:
  %t862 = load ptr, ptr %l348, !tbaa !29
  store ptr %t862, ptr %l346, !tbaa !29
  br label %bb206
bb205:
  %t863 = load i32, ptr %l349, !tbaa !23
  %t864 = lshr i32 %t863, 16
  %t865 = and i32 %t863, 65535
  %t866 = icmp eq i32 %t864, 1
  %t867 = select i1 %t866, i32 1, i32 0
  %t868 = icmp eq i32 %t863, 0
  %t869 = shl i32 %t867, 16
  %t870 = or i32 %t869, %t865
  %t871 = select i1 %t868, i32 0, i32 %t870
  %t873 = insertvalue { i32, ptr } zeroinitializer, i32 %t871, 0
  store { i32, ptr } %t873, ptr %rv
  br label %ret
bb206:
  %t874 = load ptr, ptr %l346, !tbaa !29
  store ptr %t874, ptr %l32, !tbaa !29
  %t875 = load ptr, ptr %l22, !tbaa !29
  store ptr %t875, ptr %l351, !tbaa !29
  %t876 = load ptr, ptr %l0, !tbaa !29
  %t877 = load i32, ptr %l23, !tbaa !23
  %t880 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t876, i32 %t877)
  store %"compiler/source:Span" %t880, ptr %l354
  br label %bb207
bb207:
  %t881 = load ptr, ptr %l24, !tbaa !29
  store ptr %t881, ptr %l355, !tbaa !29
  %t882 = load i32, ptr %l31, !tbaa !23
  store i32 %t882, ptr %l356, !tbaa !23
  %t883 = load ptr, ptr %l32, !tbaa !29
  store ptr %t883, ptr %l357, !tbaa !29
  %t884 = icmp sge i64 0, 0
  br i1 %t884, label %bb208, label %bb209
bb208:
  %t886 = icmp sle i64 0, 1152921504606846975
  br i1 %t886, label %bb210, label %bb211
bb209:
  call void @__olang_check_failed(ptr @olang_loc_1c3aa98278e4117_19ec5e3b00828443)
  unreachable
bb210:
  %t888 = mul i64 0, 8
  %t889 = insertvalue { i64, ptr } undef, i64 0, 0
  %t890 = insertvalue { i64, ptr } %t889, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t890, ptr %l360, !tbaa !27
  %t891 = icmp sge i64 0, 0
  br i1 %t891, label %bb212, label %bb213
bb211:
  call void @__olang_check_failed(ptr @olang_loc_1c3aa98278e4117_19ec5e3b00828443)
  unreachable
bb212:
  %t893 = icmp sle i64 0, 1152921504606846975
  br i1 %t893, label %bb214, label %bb215
bb213:
  call void @__olang_check_failed(ptr @olang_loc_1c3aa98278e4117_19ec5e3b00828443)
  unreachable
bb214:
  %t895 = mul i64 0, 8
  %t896 = insertvalue { i64, ptr } undef, i64 0, 0
  %t897 = insertvalue { i64, ptr } %t896, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t897, ptr %l363, !tbaa !27
  %t898 = icmp sge i64 0, 0
  br i1 %t898, label %bb216, label %bb217
bb215:
  call void @__olang_check_failed(ptr @olang_loc_1c3aa98278e4117_19ec5e3b00828443)
  unreachable
bb216:
  %t900 = icmp sle i64 0, 1152921504606846975
  br i1 %t900, label %bb218, label %bb219
bb217:
  call void @__olang_check_failed(ptr @olang_loc_6cb001083a887f74_65a539ed4a68e820)
  unreachable
bb218:
  %t902 = mul i64 0, 8
  %t903 = insertvalue { i64, ptr } undef, i64 0, 0
  %t904 = insertvalue { i64, ptr } %t903, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t905 = load ptr, ptr %l27, !tbaa !29
  %t906 = load i32, ptr %l28, !tbaa !23
  %t907 = load %"compiler/source:Span", ptr %l354
  %t908 = load ptr, ptr %l355, !tbaa !29
  %t909 = load i32, ptr %l356, !tbaa !23
  %t910 = load ptr, ptr %l357, !tbaa !29
  %t911 = load { i64, ptr }, ptr %l360, !tbaa !27
  %t912 = load { i64, ptr }, ptr %l363, !tbaa !27
  %t916 = call %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t907, ptr %t908, i32 %t909, ptr %t910, { i64, ptr } %t911, { i64, ptr } %t912, i1 false, i1 false, { i64, ptr } %t904, ptr %t905, i32 %t906)
  store %"compiler/ast:Func" %t916, ptr %l369
  br label %bb220
bb219:
  call void @__olang_check_failed(ptr @olang_loc_6cb001083a887f74_65a539ed4a68e820)
  unreachable
bb220:
  %t917 = load %"compiler/ast:Func", ptr %l369
  %t918 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store %"compiler/ast:Func" %t917, ptr %t918
  %t919 = load ptr, ptr %l351, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aFunc_26_3e_2ePush_3ccompiler_2fast_3aFunc_26_3e(ptr %v1, ptr %v1, ptr %t919, ptr %t918)
  br label %bb221
bb221:
  %t921 = load ptr, ptr %l0, !tbaa !29
  %t923 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentryEnd(ptr %v0, ptr %t921)
  store i32 %t923, ptr %l372
  %t924 = icmp ne i32 %t923, 0
  br i1 %t924, label %bb223, label %ok.925, !prof !99
ok.925:
  br label %bb222
bb222:
  br label %bb224
bb223:
  %t926 = load i32, ptr %l372, !tbaa !23
  %t927 = lshr i32 %t926, 16
  %t928 = and i32 %t926, 65535
  %t929 = icmp eq i32 %t927, 1
  %t930 = select i1 %t929, i32 1, i32 0
  %t931 = icmp eq i32 %t926, 0
  %t932 = shl i32 %t930, 16
  %t933 = or i32 %t932, %t928
  %t934 = select i1 %t931, i32 0, i32 %t933
  %t936 = insertvalue { i32, ptr } zeroinitializer, i32 %t934, 0
  store { i32, ptr } %t936, ptr %rv
  br label %ret
bb224:
  br label %bb225
bb225:
  br label %bb152
bb226:
  %t937 = load ptr, ptr %l0, !tbaa !29
  %t939 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t937)
  store i32 %t939, ptr %l375
  br label %bb227
bb227:
  %t940 = load ptr, ptr %l22, !tbaa !29
  %t942 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aFunc_26_3e_2eToArray_3ccompiler_2fast_3aFunc_26_3e(ptr %v1, ptr %v1, ptr %t940)
  store { i64, ptr } %t942, ptr %l377
  br label %bb228
bb228:
  %t943 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t944 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, [6 x i64] } zeroinitializer, ptr %t945
  %t946 = getelementptr { i64, [6 x i64] }, ptr %t945, i32 0, i32 0
  store i64 2, ptr %t946
  %t947 = load { i64, ptr }, ptr %l377, !tbaa !27
  %t948 = insertvalue { { i64, ptr }, { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t947, 0
  %t950 = insertvalue { { i64, ptr }, { i64, ptr }, { i64, ptr } } %t948, { i64, ptr } %t943, 1
  %t952 = insertvalue { { i64, ptr }, { i64, ptr }, { i64, ptr } } %t950, { i64, ptr } %t944, 2
  %t953 = getelementptr { i64, [6 x i64] }, ptr %t945, i32 0, i32 1
  store { { i64, ptr }, { i64, ptr }, { i64, ptr } } %t952, ptr %t953
  %t954 = load { i64, [6 x i64] }, ptr %t945
  %t956 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store { i64, [6 x i64] } %t954, ptr %t956
  %t958 = insertvalue { i32, ptr } zeroinitializer, ptr %t956, 1
  store { i32, ptr } %t958, ptr %rv
  br label %ret
bb229:
  br i1 true, label %bb230, label %bb231
bb230:
  br label %bb232
bb231:
  br label %bb273
bb232:
  %t959 = load ptr, ptr %l0, !tbaa !29
  %t961 = getelementptr %"compiler/parse:Parser", ptr %t959, i32 0, i32 13
  store i1 true, ptr %t961, !tbaa !21
  %t962 = load ptr, ptr %l0, !tbaa !29
  %t964 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t962)
  %t965 = extractvalue { i32, ptr } %t964, 1
  %t966 = extractvalue { i32, ptr } %t964, 0
  store i32 %t966, ptr %l386
  %t967 = icmp ne i32 %t966, 0
  br i1 %t967, label %bb234, label %ok.968, !prof !99
ok.968:
  store ptr %t965, ptr %l385
  br label %bb233
bb233:
  %t969 = load ptr, ptr %l385, !tbaa !29
  store ptr %t969, ptr %l383, !tbaa !29
  br label %bb235
bb234:
  %t970 = load i32, ptr %l386, !tbaa !23
  %t971 = lshr i32 %t970, 16
  %t972 = and i32 %t970, 65535
  %t973 = icmp eq i32 %t971, 1
  %t974 = select i1 %t973, i32 1, i32 0
  %t975 = icmp eq i32 %t970, 0
  %t976 = shl i32 %t974, 16
  %t977 = or i32 %t976, %t972
  %t978 = select i1 %t975, i32 0, i32 %t977
  %t980 = insertvalue { i32, ptr } zeroinitializer, i32 %t978, 0
  store { i32, ptr } %t980, ptr %rv
  br label %ret
bb235:
  %t981 = load ptr, ptr %l383, !tbaa !29
  store ptr %t981, ptr %l33, !tbaa !29
  %t982 = load ptr, ptr %l0, !tbaa !29
  %t984 = getelementptr %"compiler/parse:Parser", ptr %t982, i32 0, i32 13
  store i1 false, ptr %t984, !tbaa !21
  %t985 = load ptr, ptr %l0, !tbaa !29
  %t988 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t985, i32 108)
  store i1 %t988, ptr %l391
  br label %bb236
bb236:
  %t989 = load i1, ptr %l391, !tbaa !21
  br i1 %t989, label %bb237, label %bb238
bb237:
  %t990 = load ptr, ptr %l0, !tbaa !29
  %t992 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t990)
  store i32 %t992, ptr %l393
  br label %bb239
bb238:
  br label %bb272
bb239:
  %t993 = load i32, ptr %l393, !tbaa !23
  store i32 %t993, ptr %l34, !tbaa !23
  %t994 = load ptr, ptr %l0, !tbaa !29
  %t996 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparams(ptr %v0, ptr %v1, ptr %t994, i1 false)
  %t997 = extractvalue { i32, { i64, ptr } } %t996, 1
  %t998 = extractvalue { i32, { i64, ptr } } %t996, 0
  store i32 %t998, ptr %l397
  %t999 = icmp ne i32 %t998, 0
  br i1 %t999, label %bb241, label %ok.1000, !prof !99
ok.1000:
  store { i64, ptr } %t997, ptr %l396
  br label %bb240
bb240:
  %t1001 = load { i64, ptr }, ptr %l396, !tbaa !27
  store { i64, ptr } %t1001, ptr %l394, !tbaa !27
  br label %bb242
bb241:
  %t1002 = load i32, ptr %l397, !tbaa !23
  %t1003 = lshr i32 %t1002, 16
  %t1004 = and i32 %t1002, 65535
  %t1005 = icmp eq i32 %t1003, 1
  %t1006 = select i1 %t1005, i32 1, i32 0
  %t1007 = icmp eq i32 %t1002, 0
  %t1008 = shl i32 %t1006, 16
  %t1009 = or i32 %t1008, %t1004
  %t1010 = select i1 %t1007, i32 0, i32 %t1009
  %t1012 = insertvalue { i32, ptr } zeroinitializer, i32 %t1010, 0
  store { i32, ptr } %t1012, ptr %rv
  br label %ret
bb242:
  %t1013 = load { i64, ptr }, ptr %l394, !tbaa !27
  store { i64, ptr } %t1013, ptr %l35, !tbaa !27
  %t1014 = load ptr, ptr %l0, !tbaa !29
  %t1016 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econtractHere(ptr %v0, ptr %v1, ptr %t1014)
  %t1017 = extractvalue { i32, ptr } %t1016, 1
  %t1018 = extractvalue { i32, ptr } %t1016, 0
  store i32 %t1018, ptr %l402
  %t1019 = icmp ne i32 %t1018, 0
  br i1 %t1019, label %bb244, label %ok.1020, !prof !99
ok.1020:
  store ptr %t1017, ptr %l401
  br label %bb243
bb243:
  %t1021 = load ptr, ptr %l401, !tbaa !29
  store ptr %t1021, ptr %l399, !tbaa !29
  br label %bb245
bb244:
  %t1022 = load i32, ptr %l402, !tbaa !23
  %t1023 = lshr i32 %t1022, 16
  %t1024 = and i32 %t1022, 65535
  %t1025 = icmp eq i32 %t1023, 1
  %t1026 = select i1 %t1025, i32 1, i32 0
  %t1027 = icmp eq i32 %t1022, 0
  %t1028 = shl i32 %t1026, 16
  %t1029 = or i32 %t1028, %t1024
  %t1030 = select i1 %t1027, i32 0, i32 %t1029
  %t1032 = insertvalue { i32, ptr } zeroinitializer, i32 %t1030, 0
  store { i32, ptr } %t1032, ptr %rv
  br label %ret
bb245:
  %t1033 = load ptr, ptr %l399, !tbaa !29
  store ptr %t1033, ptr %l36, !tbaa !29
  %t1034 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1034, ptr %l404, !tbaa !29
  %t1035 = load ptr, ptr %l0, !tbaa !29
  %t1037 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorSet(ptr %v0, ptr %v1, ptr %t1035, i1 false)
  %t1038 = extractvalue { i32, ptr } %t1037, 1
  %t1039 = extractvalue { i32, ptr } %t1037, 0
  store i32 %t1039, ptr %l408
  %t1040 = icmp ne i32 %t1039, 0
  br i1 %t1040, label %bb247, label %ok.1041, !prof !99
ok.1041:
  store ptr %t1038, ptr %l407
  br label %bb246
bb246:
  %t1042 = load ptr, ptr %l407, !tbaa !29
  store ptr %t1042, ptr %l405, !tbaa !29
  br label %bb248
bb247:
  %t1043 = load i32, ptr %l408, !tbaa !23
  %t1044 = lshr i32 %t1043, 16
  %t1045 = and i32 %t1043, 65535
  %t1046 = icmp eq i32 %t1044, 1
  %t1047 = select i1 %t1046, i32 1, i32 0
  %t1048 = icmp eq i32 %t1043, 0
  %t1049 = shl i32 %t1047, 16
  %t1050 = or i32 %t1049, %t1045
  %t1051 = select i1 %t1048, i32 0, i32 %t1050
  %t1053 = insertvalue { i32, ptr } zeroinitializer, i32 %t1051, 0
  store { i32, ptr } %t1053, ptr %rv
  br label %ret
bb248:
  %t1054 = load ptr, ptr %l36, !tbaa !29
  %t1055 = load ptr, ptr %l404, !tbaa !29
  %t1056 = load ptr, ptr %l405, !tbaa !29
  %t1058 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewithContract(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t1055, ptr %t1056, ptr %t1054)
  store ptr %t1058, ptr %l411
  br label %bb249
bb249:
  %t1059 = load ptr, ptr %l411, !tbaa !29
  store ptr %t1059, ptr %l37, !tbaa !29
  %t1060 = load ptr, ptr %l0, !tbaa !29
  %t1062 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t1060)
  %t1063 = extractvalue { i32, { i64, ptr } } %t1062, 1
  %t1064 = extractvalue { i32, { i64, ptr } } %t1062, 0
  store i32 %t1064, ptr %l415
  %t1065 = icmp ne i32 %t1064, 0
  br i1 %t1065, label %bb251, label %ok.1066, !prof !99
ok.1066:
  store { i64, ptr } %t1063, ptr %l414
  br label %bb250
bb250:
  %t1067 = load { i64, ptr }, ptr %l414, !tbaa !27
  store { i64, ptr } %t1067, ptr %l412, !tbaa !27
  br label %bb252
bb251:
  %t1068 = load i32, ptr %l415, !tbaa !23
  %t1069 = lshr i32 %t1068, 16
  %t1070 = and i32 %t1068, 65535
  %t1071 = icmp eq i32 %t1069, 1
  %t1072 = select i1 %t1071, i32 1, i32 0
  %t1073 = icmp eq i32 %t1068, 0
  %t1074 = shl i32 %t1072, 16
  %t1075 = or i32 %t1074, %t1070
  %t1076 = select i1 %t1073, i32 0, i32 %t1075
  %t1078 = insertvalue { i32, ptr } zeroinitializer, i32 %t1076, 0
  store { i32, ptr } %t1078, ptr %rv
  br label %ret
bb252:
  %t1079 = load { i64, ptr }, ptr %l412, !tbaa !27
  store { i64, ptr } %t1079, ptr %l38, !tbaa !27
  %t1080 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1080, ptr %l417, !tbaa !27
  %t1081 = icmp sge i64 0, 0
  br i1 %t1081, label %bb253, label %bb254
bb253:
  %t1083 = icmp sle i64 0, 1152921504606846975
  br i1 %t1083, label %bb255, label %bb256
bb254:
  call void @__olang_check_failed(ptr @olang_loc_1da972851505d681_2b34921fb970c04d)
  unreachable
bb255:
  %t1085 = mul i64 0, 8
  %t1086 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1087 = insertvalue { i64, ptr } %t1086, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1087, ptr %l420, !tbaa !27
  %t1088 = load ptr, ptr %l37, !tbaa !29
  %t1090 = getelementptr %"compiler/ast:Sig", ptr %t1088, i32 0, i32 2
  %t1091 = load i1, ptr %t1090, !tbaa !21
  store i1 %t1091, ptr %l422, !tbaa !21
  %t1092 = load ptr, ptr %l37, !tbaa !29
  %t1094 = getelementptr %"compiler/ast:Sig", ptr %t1092, i32 0, i32 3
  %t1095 = load { i64, ptr }, ptr %t1094, !tbaa !27
  store { i64, ptr } %t1095, ptr %l424, !tbaa !27
  %t1096 = load ptr, ptr %l37, !tbaa !29
  %t1098 = getelementptr %"compiler/ast:Sig", ptr %t1096, i32 0, i32 5
  %t1099 = load ptr, ptr %t1098, !tbaa !29
  store ptr %t1099, ptr %l426, !tbaa !29
  %t1100 = icmp sge i64 0, 0
  br i1 %t1100, label %bb257, label %bb258
bb256:
  call void @__olang_check_failed(ptr @olang_loc_1da972851505d681_2b34921fb970c04d)
  unreachable
bb257:
  %t1102 = icmp sle i64 0, 1152921504606846975
  br i1 %t1102, label %bb259, label %bb260
bb258:
  call void @__olang_check_failed(ptr @olang_loc_1f3dc253b4739a4e_99d66c6a805eb862)
  unreachable
bb259:
  %t1104 = mul i64 0, 8
  %t1105 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1106 = insertvalue { i64, ptr } %t1105, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1107 = load { i64, ptr }, ptr %l417, !tbaa !27
  %t1108 = load { i64, ptr }, ptr %l420, !tbaa !27
  %t1109 = load i1, ptr %l422, !tbaa !21
  %t1110 = load { i64, ptr }, ptr %l424, !tbaa !27
  %t1111 = load ptr, ptr %l426, !tbaa !29
  %t1113 = call %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t1107, { i64, ptr } %t1108, i1 %t1109, { i64, ptr } %t1110, i1 false, ptr %t1111, i1 false, i1 false, { i64, ptr } %t1106)
  store %"compiler/ast:Sig" %t1113, ptr %l430
  br label %bb261
bb260:
  call void @__olang_check_failed(ptr @olang_loc_1f3dc253b4739a4e_99d66c6a805eb862)
  unreachable
bb261:
  %t1114 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 96, i64 8)
  store ptr %t1114, ptr %lp39
  %t1115 = load %"compiler/ast:Sig", ptr %l430
  %t1116 = load ptr, ptr %lp39
  store %"compiler/ast:Sig" %t1115, ptr %t1116
  %t1117 = load ptr, ptr %l33, !tbaa !29
  store ptr %t1117, ptr %l431, !tbaa !29
  %t1118 = load ptr, ptr %l0, !tbaa !29
  %t1119 = load i32, ptr %l34, !tbaa !23
  %t1122 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t1118, i32 %t1119)
  store %"compiler/source:Span" %t1122, ptr %l434
  br label %bb262
bb262:
  %t1123 = load ptr, ptr %lp39
  store ptr %t1123, ptr %l435, !tbaa !29
  %t1124 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t1124, ptr %l436, !tbaa !27
  %t1125 = icmp sge i64 0, 0
  br i1 %t1125, label %bb263, label %bb264
bb263:
  %t1127 = icmp sle i64 0, 1152921504606846975
  br i1 %t1127, label %bb265, label %bb266
bb264:
  call void @__olang_check_failed(ptr @olang_loc_c64d3eebfbda3e43_5562c9e72c368717)
  unreachable
bb265:
  %t1129 = mul i64 0, 8
  %t1130 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1131 = insertvalue { i64, ptr } %t1130, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1131, ptr %l439, !tbaa !27
  %t1132 = icmp sge i64 0, 0
  br i1 %t1132, label %bb267, label %bb268
bb266:
  call void @__olang_check_failed(ptr @olang_loc_c64d3eebfbda3e43_5562c9e72c368717)
  unreachable
bb267:
  %t1134 = icmp sle i64 0, 1152921504606846975
  br i1 %t1134, label %bb269, label %bb270
bb268:
  call void @__olang_check_failed(ptr @olang_loc_bb8adb75558e3c33_1d4a050ea242931f)
  unreachable
bb269:
  %t1136 = mul i64 0, 8
  %t1137 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1138 = insertvalue { i64, ptr } %t1137, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1139 = load %"compiler/source:Span", ptr %l434
  %t1140 = load ptr, ptr %l435, !tbaa !29
  %t1141 = load { i64, ptr }, ptr %l436, !tbaa !27
  %t1142 = load { i64, ptr }, ptr %l439, !tbaa !27
  %t1144 = call %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t1139, ptr null, i32 0, ptr %t1140, { i64, ptr } %t1141, { i64, ptr } %t1142, i1 true, i1 false, { i64, ptr } %t1138, ptr null, i32 0)
  store %"compiler/ast:Func" %t1144, ptr %l443
  br label %bb271
bb270:
  call void @__olang_check_failed(ptr @olang_loc_bb8adb75558e3c33_1d4a050ea242931f)
  unreachable
bb271:
  %t1145 = load %"compiler/ast:Func", ptr %l443
  %t1146 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store %"compiler/ast:Func" %t1145, ptr %t1146
  store { i64, [6 x i64] } zeroinitializer, ptr %t1147
  %t1148 = getelementptr { i64, [6 x i64] }, ptr %t1147, i32 0, i32 0
  store i64 3, ptr %t1148
  %t1149 = load ptr, ptr %l431, !tbaa !29
  %t1150 = insertvalue { ptr, ptr } undef, ptr %t1149, 0
  %t1152 = insertvalue { ptr, ptr } %t1150, ptr %t1146, 1
  %t1153 = getelementptr { i64, [6 x i64] }, ptr %t1147, i32 0, i32 1
  store { ptr, ptr } %t1152, ptr %t1153
  %t1154 = load { i64, [6 x i64] }, ptr %t1147
  %t1156 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store { i64, [6 x i64] } %t1154, ptr %t1156
  %t1158 = insertvalue { i32, ptr } zeroinitializer, ptr %t1156, 1
  store { i32, ptr } %t1158, ptr %rv
  br label %ret
bb272:
  %t1159 = load ptr, ptr %l33, !tbaa !29
  store { i64, [6 x i64] } zeroinitializer, ptr %t1160
  %t1161 = getelementptr { i64, [6 x i64] }, ptr %t1160, i32 0, i32 0
  store i64 3, ptr %t1161
  %t1163 = insertvalue { ptr, ptr } undef, ptr %t1159, 0
  %t1164 = insertvalue { ptr, ptr } %t1163, ptr null, 1
  %t1165 = getelementptr { i64, [6 x i64] }, ptr %t1160, i32 0, i32 1
  store { ptr, ptr } %t1164, ptr %t1165
  %t1166 = load { i64, [6 x i64] }, ptr %t1160
  %t1168 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store { i64, [6 x i64] } %t1166, ptr %t1168
  %t1170 = insertvalue { i32, ptr } zeroinitializer, ptr %t1168, 1
  store { i32, ptr } %t1170, ptr %rv
  br label %ret
bb273:
  call void @__olang_check_failed(ptr @olang_loc_b257da396cac45c5_b239049ec2785649)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeDecl(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l9 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l16 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i32
  %l24 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i32
  %l31 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca i32
  %l37 = alloca { i64, ptr }
  %l42 = alloca %"compiler/ast:TypeDecl"
  %rv = alloca { i32, ptr }
  %t111 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 33)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l7
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l7, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  %t20 = insertvalue { i32, ptr } zeroinitializer, i32 %t18, 0
  store { i32, ptr } %t20, ptr %rv
  br label %ret
bb3:
  %t21 = load i32, ptr %l3, !tbaa !23
  store i32 %t21, ptr %l1, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t22)
  %t25 = extractvalue { i32, i32 } %t24, 1
  %t26 = extractvalue { i32, i32 } %t24, 0
  store i32 %t26, ptr %l12
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb5, label %ok.28, !prof !99
ok.28:
  store i32 %t25, ptr %l11
  br label %bb4
bb4:
  %t29 = load i32, ptr %l11, !tbaa !23
  store i32 %t29, ptr %l9, !tbaa !23
  br label %bb6
bb5:
  %t30 = load i32, ptr %l12, !tbaa !23
  %t31 = lshr i32 %t30, 16
  %t32 = and i32 %t30, 65535
  %t33 = icmp eq i32 %t31, 1
  %t34 = select i1 %t33, i32 1, i32 0
  %t35 = icmp eq i32 %t30, 0
  %t36 = shl i32 %t34, 16
  %t37 = or i32 %t36, %t32
  %t38 = select i1 %t35, i32 0, i32 %t37
  %t40 = insertvalue { i32, ptr } zeroinitializer, i32 %t38, 0
  store { i32, ptr } %t40, ptr %rv
  br label %ret
bb6:
  %t41 = load i32, ptr %l9, !tbaa !23
  store i32 %t41, ptr %l2, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t45 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t42, i32 38)
  store i1 %t45, ptr %l16
  br label %bb7
bb7:
  %t46 = load i1, ptr %l16, !tbaa !21
  br i1 %t46, label %bb8, label %bb9
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t49 = load i32, ptr %l2, !tbaa !23
  %t53 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorDecl(ptr %v0, ptr %v1, ptr %t47, i32 %t48, i32 %t49)
  %t54 = extractvalue { i32, ptr } %t53, 1
  %t55 = extractvalue { i32, ptr } %t53, 0
  store i32 %t55, ptr %l22
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb11, label %ok.57, !prof !99
ok.57:
  store ptr %t54, ptr %l21
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t58 = load ptr, ptr %l21, !tbaa !29
  store ptr %t58, ptr %l17, !tbaa !29
  br label %bb12
bb11:
  %t59 = load i32, ptr %l22, !tbaa !23
  %t60 = lshr i32 %t59, 16
  %t61 = and i32 %t59, 65535
  %t62 = icmp eq i32 %t60, 1
  %t63 = select i1 %t62, i32 1, i32 0
  %t64 = icmp eq i32 %t59, 0
  %t65 = shl i32 %t63, 16
  %t66 = or i32 %t65, %t61
  %t67 = select i1 %t64, i32 0, i32 %t66
  %t69 = insertvalue { i32, ptr } zeroinitializer, i32 %t67, 0
  store { i32, ptr } %t69, ptr %rv
  br label %ret
bb12:
  %t70 = load ptr, ptr %l17, !tbaa !29
  %t71 = insertvalue { i32, ptr } zeroinitializer, ptr %t70, 1
  store { i32, ptr } %t71, ptr %rv
  br label %ret
bb13:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l1, !tbaa !23
  %t74 = load i32, ptr %l2, !tbaa !23
  %t78 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeDeclRest(ptr %v0, ptr %v1, ptr %t72, i32 %t73, i32 %t74)
  %t79 = extractvalue { i32, ptr } %t78, 1
  %t80 = extractvalue { i32, ptr } %t78, 0
  store i32 %t80, ptr %l29
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb15, label %ok.82, !prof !99
ok.82:
  store ptr %t79, ptr %l28
  br label %bb14
bb14:
  %t83 = load ptr, ptr %l28, !tbaa !29
  store ptr %t83, ptr %l24, !tbaa !29
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/parse:Parser", ptr %t84, i32 0, i32 39
  store ptr %t86, ptr %l31, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l1, !tbaa !23
  %t91 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t87, i32 %t88)
  store %"compiler/source:Span" %t91, ptr %l34
  br label %bb17
bb17:
  %t92 = load i32, ptr %l2, !tbaa !23
  store i32 %t92, ptr %l35, !tbaa !23
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/parse:Parser", ptr %t93, i32 0, i32 40
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %l37, !tbaa !27
  %t97 = icmp sge i64 0, 0
  br i1 %t97, label %bb18, label %bb19
bb18:
  %t99 = icmp sle i64 0, 1152921504606846975
  br i1 %t99, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_753d7041786faeaa_c9c219433b845b26)
  unreachable
bb20:
  %t101 = mul i64 0, 8
  %t102 = insertvalue { i64, ptr } undef, i64 0, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t104 = load i32, ptr %l35, !tbaa !23
  %t105 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t108 = call %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t104, { i64, ptr } %t105, i1 false, ptr null, { i64, ptr } %t103, i32 0, i1 false)
  store %"compiler/ast:TypeDecl" %t108, ptr %l42
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_753d7041786faeaa_c9c219433b845b26)
  unreachable
bb22:
  %t109 = load %"compiler/ast:TypeDecl", ptr %l42
  %t110 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/ast:TypeDecl" %t109, ptr %t110
  store { i64, [8 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [8 x i64] }, ptr %t111, i32 0, i32 0
  store i64 2, ptr %t112
  %t113 = load %"compiler/source:Span", ptr %l34
  %t114 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t113, 0
  %t116 = insertvalue { %"compiler/source:Span", ptr } %t114, ptr %t110, 1
  %t117 = getelementptr { i64, [8 x i64] }, ptr %t111, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t116, ptr %t117
  %t118 = load { i64, [8 x i64] }, ptr %t111
  %t120 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store { i64, [8 x i64] } %t118, ptr %t120
  %t121 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t121, ptr %t120)
  br label %bb23
bb23:
  %t124 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t124, ptr %rv
  br label %ret
bb24:
  %t125 = load ptr, ptr %l24, !tbaa !29
  %t126 = insertvalue { i32, ptr } zeroinitializer, ptr %t125, 1
  store { i32, ptr } %t126, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeList(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i32
  %l26 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t1, i32 %a1)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = icmp sge i64 0, 0
  br i1 %t9, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  %t11 = icmp sle i64 0, 1152921504606846975
  br i1 %t11, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_2c29cc2313aef596_a74c39ade1a5acca)
  unreachable
bb6:
  %t13 = mul i64 0, 8
  %t14 = insertvalue { i64, ptr } undef, i64 0, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t17 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t15, 1
  store { i32, { i64, ptr } } %t17, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_2c29cc2313aef596_a74c39ade1a5acca)
  unreachable
bb8:
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l10
  br label %bb9
bb9:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %t20
  store ptr %t20, ptr %l2, !tbaa !29
  br label %bb10
bb10:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l12, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v0, ptr %t23)
  %t26 = extractvalue { i32, ptr } %t25, 1
  %t27 = extractvalue { i32, ptr } %t25, 0
  store i32 %t27, ptr %l16
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb12, label %ok.29, !prof !99
ok.29:
  store ptr %t26, ptr %l15
  br label %bb11
bb11:
  %t30 = load ptr, ptr %l15, !tbaa !29
  store ptr %t30, ptr %l13, !tbaa !29
  br label %bb13
bb12:
  %t31 = load i32, ptr %l16, !tbaa !23
  %t32 = lshr i32 %t31, 16
  %t33 = and i32 %t31, 65535
  %t34 = icmp eq i32 %t32, 1
  %t35 = select i1 %t34, i32 1, i32 0
  %t36 = icmp eq i32 %t31, 0
  %t37 = shl i32 %t35, 16
  %t38 = or i32 %t37, %t33
  %t39 = select i1 %t36, i32 0, i32 %t38
  %t41 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t39, 0
  store { i32, { i64, ptr } } %t41, ptr %rv
  br label %ret
bb13:
  %t42 = load ptr, ptr %l12, !tbaa !29
  %t43 = load ptr, ptr %l13, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v1, ptr %v0, ptr %t42, ptr %t43)
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t47 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t44, i32 112)
  %t48 = extractvalue { i32, i1 } %t47, 1
  %t49 = extractvalue { i32, i1 } %t47, 0
  store i32 %t49, ptr %l22
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb16, label %ok.51, !prof !99
ok.51:
  store i1 %t48, ptr %l21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l21, !tbaa !21
  store i1 %t52, ptr %l18, !tbaa !21
  br label %bb17
bb16:
  %t53 = load i32, ptr %l22, !tbaa !23
  %t54 = lshr i32 %t53, 16
  %t55 = and i32 %t53, 65535
  %t56 = icmp eq i32 %t54, 1
  %t57 = select i1 %t56, i32 1, i32 0
  %t58 = icmp eq i32 %t53, 0
  %t59 = shl i32 %t57, 16
  %t60 = or i32 %t59, %t55
  %t61 = select i1 %t58, i32 0, i32 %t60
  %t63 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t61, 0
  store { i32, { i64, ptr } } %t63, ptr %rv
  br label %ret
bb17:
  %t64 = load i1, ptr %l18, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb10
bb22:
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eToArr_Ha78c9aad18467c47f48c596ab5d9c770(ptr %v1, ptr %v1, ptr %t67)
  store { i64, ptr } %t69, ptr %l26
  br label %bb23
bb23:
  %t70 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t71 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t70, 1
  store { i32, { i64, ptr } } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eweakType(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i32
  %l20 = alloca i32
  %l23 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l37 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i32, ptr %l5, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t5)
  store i32 %t7, ptr %l7
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t8)
  %t11 = extractvalue { i32, ptr } %t10, 1
  %t12 = extractvalue { i32, ptr } %t10, 0
  store i32 %t12, ptr %l11
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb4, label %ok.14, !prof !99
ok.14:
  store ptr %t11, ptr %l10
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l10, !tbaa !29
  store ptr %t15, ptr %l8, !tbaa !29
  br label %bb5
bb4:
  %t16 = load i32, ptr %l11, !tbaa !23
  %t17 = lshr i32 %t16, 16
  %t18 = and i32 %t16, 65535
  %t19 = icmp eq i32 %t17, 1
  %t20 = select i1 %t19, i32 1, i32 0
  %t21 = icmp eq i32 %t16, 0
  %t22 = shl i32 %t20, 16
  %t23 = or i32 %t22, %t18
  %t24 = select i1 %t21, i32 0, i32 %t23
  %t26 = insertvalue { i32, ptr } zeroinitializer, i32 %t24, 0
  store { i32, ptr } %t26, ptr %rv
  br label %ret
bb5:
  %t27 = load ptr, ptr %l8, !tbaa !29
  store ptr %t27, ptr %l2, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = call ptr @compiler_2fparse_2eweakened(ptr %v1, ptr %v1, ptr %t28)
  store ptr %t30, ptr %l14
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l14, !tbaa !29
  store ptr %t31, ptr %l3, !tbaa !29
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = icmp eq ptr %t32, null
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l17, !tbaa !29
  %t37 = load i32, ptr %l1, !tbaa !23
  store i32 %t37, ptr %l18, !tbaa !23
  %t38 = load i32, ptr %l1, !tbaa !23
  %t40 = add i32 %t38, 4
  store i32 %t40, ptr %l20, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/parse:Parser", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/source:Source", ptr %t44, i32 0, i32 1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l23, !tbaa !27
  %t48 = load i32, ptr %l1, !tbaa !23
  %t50 = sext i32 %t48 to i64
  %t52 = add i64 %t50, 5
  store i64 %t52, ptr %l26, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/parse:Parser", ptr %t53, i32 0, i32 10
  %t56 = load i32, ptr %t55, !tbaa !23
  %t58 = sext i32 %t56 to i64
  store i64 %t58, ptr %l29, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l30, !tbaa !24
  %t61 = load i64, ptr %l26, !tbaa !24
  %t62 = icmp sge i64 %t61, 0
  br i1 %t62, label %bb9, label %bb10
bb8:
  br label %bb17
bb9:
  %t64 = load i64, ptr %l26, !tbaa !24
  %t65 = load i64, ptr %l29, !tbaa !24
  %t66 = icmp sle i64 %t64, %t65
  br i1 %t66, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_2154037c3afdd592_b5cbca897fb2c76e)
  unreachable
bb11:
  %t68 = load i64, ptr %l29, !tbaa !24
  %t69 = load i64, ptr %l30, !tbaa !24
  %t70 = icmp sle i64 %t68, %t69
  br i1 %t70, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_2154037c3afdd592_b5cbca897fb2c76e)
  unreachable
bb13:
  %t72 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l26, !tbaa !24
  %t75 = load i64, ptr %l29, !tbaa !24
  %t76 = getelementptr i8, ptr %t73, i64 %t74
  %t77 = sub i64 %t75, %t74
  %t78 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t76, 1
  %t81 = extractvalue { i64, ptr } %t79, 1
  %t82 = extractvalue { i64, ptr } %t79, 0
  %t83 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t81, i64 %t82)
  %t84 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } %t85, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t94 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakNotNullable(ptr %v0, ptr %v0, { i64, ptr } %t92)
  store %"compiler/diagmsg:Msg" %t94, ptr %l37
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_2154037c3afdd592_b5cbca897fb2c76e)
  unreachable
bb15:
  %t95 = load ptr, ptr %l17, !tbaa !29
  %t96 = load i32, ptr %l18, !tbaa !23
  %t97 = load i32, ptr %l20, !tbaa !23
  %t98 = load %"compiler/diagmsg:Msg", ptr %l37
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t95, i32 %t96, i32 %t97, %"compiler/diagmsg:Msg" %t98)
  br label %bb16
bb16:
  %t99 = load ptr, ptr %l2, !tbaa !29
  %t101 = insertvalue { i32, ptr } zeroinitializer, ptr %t99, 1
  store { i32, ptr } %t101, ptr %rv
  br label %ret
bb17:
  %t102 = load ptr, ptr %l3, !tbaa !29
  %t104 = insertvalue { i32, ptr } zeroinitializer, ptr %t102, 1
  store { i32, ptr } %t104, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2eisJoiningOp(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 68 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb13
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 69 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t13 = trunc i64 70 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t18 = trunc i64 72 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t23 = trunc i64 73 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t28 = trunc i64 74 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb55
bb14:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t33 = trunc i64 71 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb55
bb18:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 45 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb19, label %bb20
bb19:
  br label %bb33
bb20:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t43 = trunc i64 46 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb21, label %bb22
bb21:
  br label %bb33
bb22:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t48 = trunc i64 47 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb23, label %bb24
bb23:
  br label %bb33
bb24:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t53 = trunc i64 94 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb25, label %bb26
bb25:
  br label %bb33
bb26:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t58 = trunc i64 95 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t63 = trunc i64 97 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t68 = trunc i64 98 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb55
bb34:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t73 = trunc i64 99 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb35, label %bb36
bb35:
  br label %bb49
bb36:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t78 = trunc i64 100 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb37, label %bb38
bb37:
  br label %bb49
bb38:
  %t81 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t83 = trunc i64 101 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb39, label %bb40
bb39:
  br label %bb49
bb40:
  %t86 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t88 = trunc i64 102 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb41, label %bb42
bb41:
  br label %bb49
bb42:
  %t91 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t93 = trunc i64 103 to i32
  %t94 = icmp eq i32 %t91, %t93
  br i1 %t94, label %bb43, label %bb44
bb43:
  br label %bb49
bb44:
  %t96 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t98 = trunc i64 106 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb45, label %bb46
bb45:
  br label %bb49
bb46:
  %t101 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t103 = trunc i64 107 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_a46c4d4e835a1515_243175b90cb4fb69)
  unreachable
bb55:
  %t106 = load i1, ptr %l1, !tbaa !21
  store i1 %t106, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2eisLiteral(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca i1
  %l20 = alloca i1
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
  br label %bb21
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
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 1
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 114}
  store i32 %t23, ptr %l1
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb16
bb11:
  %t31 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t33 = trunc i64 69 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb12, label %bb13
bb12:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = call i1 @compiler_2fparse_2eisLiteral(ptr %v0, ptr %t36)
  store i1 %t38, ptr %l20
  br label %bb14
bb13:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb15
bb14:
  %t39 = load i1, ptr %l20, !tbaa !21
  store i1 %t39, ptr %l18, !tbaa !21
  br label %bb15
bb15:
  %t40 = load i1, ptr %l18, !tbaa !21
  store i1 %t40, ptr %l3, !tbaa !21
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_ed9c9212b4212a6d_b0d1473d5650fc49)
  unreachable
bb21:
  %t41 = load i1, ptr %l3, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2eisOperandTail(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 1 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 109 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t14 = trunc i64 111 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2eisPath(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l14 = alloca i1
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
  %t8 = icmp eq i64 %t6, 0
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
  br label %bb18
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
  %t17 = icmp eq i64 %t15, 14
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t21, i32 0, i32 1
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i1 @compiler_2fparse_2eisPath(ptr %v0, ptr %t25)
  store i1 %t27, ptr %l14
  br label %bb12
bb12:
  %t28 = load i1, ptr %l14, !tbaa !21
  store i1 %t28, ptr %l2, !tbaa !21
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_bb0c4e958dc810b5_997011562bbbd2b1)
  unreachable
bb18:
  %t29 = load i1, ptr %l2, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2eisSpreadType(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  store i1 false, ptr %l2, !tbaa !21
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_fcd7f3e04b81968d_d9ee06b55986a881)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2eisTypeCasePath(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
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
  %t8 = icmp eq i64 %t6, 13
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call i1 @compiler_2fparse_2eisPath(ptr %v0, ptr %t16)
  store i1 %t18, ptr %l10
  br label %bb6
bb6:
  %t19 = load i1, ptr %l10, !tbaa !21
  store i1 %t19, ptr %l2, !tbaa !21
  br label %bb13
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i1 @compiler_2fparse_2eisPath(ptr %v0, ptr %t20)
  store i1 %t22, ptr %l12
  br label %bb11
bb11:
  %t23 = load i1, ptr %l12, !tbaa !21
  store i1 %t23, ptr %l2, !tbaa !21
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_9ddb86cdc3200de1_dc174b333c4dad15)
  unreachable
bb13:
  %t24 = load i1, ptr %l2, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2eisWordKeyword(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca i1
  %l15 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s0, i32 %t1)
  store { i64, ptr } %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l8, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 0
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t15)
  store i1 %t17, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t18 = load i1, ptr %l10, !tbaa !21
  store i1 %t18, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l7, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t22 = trunc i64 6 to i32
  %t23 = icmp eq i32 %t20, %t22
  %t25 = xor i1 %t23, true
  store i1 %t25, ptr %l11, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t30 = trunc i64 7 to i32
  %t31 = icmp eq i32 %t28, %t30
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load i1, ptr %l15, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2ekeywordNamesField(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 19 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb17
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t13 = trunc i64 21 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb17
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t18 = trunc i64 27 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb17
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t23 = trunc i64 28 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t28 = trunc i64 29 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t33 = trunc i64 45 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 46 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb91
bb18:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t43 = trunc i64 47 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb19, label %bb20
bb19:
  br label %bb29
bb20:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t48 = trunc i64 30 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb21, label %bb22
bb21:
  br label %bb29
bb22:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t53 = trunc i64 32 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb23, label %bb24
bb23:
  br label %bb29
bb24:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t58 = trunc i64 33 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t63 = trunc i64 34 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb91
bb30:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t68 = trunc i64 35 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb31, label %bb32
bb31:
  br label %bb41
bb32:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t73 = trunc i64 36 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb33, label %bb34
bb33:
  br label %bb41
bb34:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t78 = trunc i64 22 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb35, label %bb36
bb35:
  br label %bb41
bb36:
  %t81 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t83 = trunc i64 40 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  %t86 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t88 = trunc i64 41 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb91
bb42:
  %t91 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t93 = trunc i64 43 to i32
  %t94 = icmp eq i32 %t91, %t93
  br i1 %t94, label %bb43, label %bb44
bb43:
  br label %bb47
bb44:
  %t96 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t98 = trunc i64 44 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb91
bb48:
  %t101 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t103 = trunc i64 52 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb49, label %bb50
bb49:
  br label %bb61
bb50:
  %t106 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t108 = trunc i64 53 to i32
  %t109 = icmp eq i32 %t106, %t108
  br i1 %t109, label %bb51, label %bb52
bb51:
  br label %bb61
bb52:
  %t111 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t113 = trunc i64 54 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb53, label %bb54
bb53:
  br label %bb61
bb54:
  %t116 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t118 = trunc i64 55 to i32
  %t119 = icmp eq i32 %t116, %t118
  br i1 %t119, label %bb55, label %bb56
bb55:
  br label %bb61
bb56:
  %t121 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t123 = trunc i64 56 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb57, label %bb58
bb57:
  br label %bb61
bb58:
  %t126 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t128 = trunc i64 57 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb91
bb62:
  %t131 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t133 = trunc i64 58 to i32
  %t134 = icmp eq i32 %t131, %t133
  br i1 %t134, label %bb63, label %bb64
bb63:
  br label %bb73
bb64:
  %t136 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t138 = trunc i64 59 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb65, label %bb66
bb65:
  br label %bb73
bb66:
  %t141 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t143 = trunc i64 60 to i32
  %t144 = icmp eq i32 %t141, %t143
  br i1 %t144, label %bb67, label %bb68
bb67:
  br label %bb73
bb68:
  %t146 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t148 = trunc i64 61 to i32
  %t149 = icmp eq i32 %t146, %t148
  br i1 %t149, label %bb69, label %bb70
bb69:
  br label %bb73
bb70:
  %t151 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t153 = trunc i64 62 to i32
  %t154 = icmp eq i32 %t151, %t153
  br i1 %t154, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb91
bb74:
  %t156 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t158 = trunc i64 63 to i32
  %t159 = icmp eq i32 %t156, %t158
  br i1 %t159, label %bb75, label %bb76
bb75:
  br label %bb85
bb76:
  %t161 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t163 = trunc i64 64 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb77, label %bb78
bb77:
  br label %bb85
bb78:
  %t166 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t168 = trunc i64 65 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb79, label %bb80
bb79:
  br label %bb85
bb80:
  %t171 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t173 = trunc i64 66 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb81, label %bb82
bb81:
  br label %bb85
bb82:
  %t176 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t178 = trunc i64 67 to i32
  %t179 = icmp eq i32 %t176, %t178
  br i1 %t179, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb91
bb86:
  br i1 true, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_a4d23bc21c2583e1_78290c8064d2bdc5)
  unreachable
bb91:
  %t181 = load i1, ptr %l1, !tbaa !21
  store i1 %t181, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fparse_2epathIds(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v1, ptr %t16, i32 %t17)
  br label %bb6
bb6:
  br label %bb20
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t21 = load ptr, ptr %l13, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 30}
  %t27 = icmp eq i64 %t25, 14
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t37, i32 0, i32 2
  %t39 = load i32, ptr %t38
  store i32 %t39, ptr %l4, !tbaa !23
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fparse_2epathIds(ptr %v0, ptr %v1, ptr %t41, ptr %t42)
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t46 = load i32, ptr %l4, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v1, ptr %t45, i32 %t46)
  br label %bb14
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
  call void @__olang_check_failed(ptr @olang_loc_c2638ea3ae2a97b9_3135bdc9c3bd3705)
  unreachable
bb20:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fparse_2eshapeStmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i1
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca i1
  %l47 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l50 = alloca i1
  %l57 = alloca i64
  %l60 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l68 = alloca i1
  %l75 = alloca i64
  %l78 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca i1
  %l93 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t16, ptr %t17, { i64, ptr } %t18)
  store { i64, ptr } %t22, ptr %l19
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t23, ptr %l9, !tbaa !27
  br label %bb59
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t25 = load ptr, ptr %l20, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l20, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 22}
  %t31 = icmp eq i64 %t29, 12
  store i1 %t31, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l21, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t35, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  br label %bb12
bb11:
  br label %bb17
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t45, ptr %l30, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr ptr, ptr %t47, i64 0
  %t49 = load ptr, ptr %t48, !tbaa !39
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t55 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s2, ptr %t49, ptr %t50, { i64, ptr } %t51)
  store { i64, ptr } %t55, ptr %l34
  br label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb16
bb15:
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t58 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = add i64 %t57, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t56, i64 %t57)
  %t63 = getelementptr i8, ptr %t62, i64 %t57
  call void @olang_textcopy(ptr %t63, ptr %t59, i64 %t60)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t62, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = extractvalue { i64, ptr } %t65, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l29, !tbaa !27
  br label %bb16
bb16:
  %t74 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t76 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = add i64 %t75, %t78
  %t80 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t74, i64 %t75)
  %t81 = getelementptr i8, ptr %t80, i64 %t75
  call void @olang_textcopy(ptr %t81, ptr %t77, i64 %t78)
  %t82 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t80, 1
  store { i64, ptr } %t83, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb59
bb17:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t86 = load ptr, ptr %l38, !tbaa !29
  %t87 = icmp ne ptr %t86, null
  br i1 %t87, label %bb18, label %bb19
bb18:
  %t89 = load ptr, ptr %l38, !tbaa !29
  %t90 = load i64, ptr %t89, !range !{i64 0, i64 22}
  %t92 = icmp eq i64 %t90, 15
  store i1 %t92, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t93 = load i1, ptr %l39, !tbaa !21
  br i1 %t93, label %bb20, label %bb21
bb20:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr { i64, [4 x i64] }, ptr %t94, i32 0, i32 1
  %t97 = getelementptr { %"compiler/source:Span", ptr }, ptr %t96, i32 0, i32 1
  %t98 = load ptr, ptr %t97
  store ptr %t98, ptr %l5, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t106 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s5, ptr %t100, ptr %t101, { i64, ptr } %t102)
  store { i64, ptr } %t106, ptr %l47
  br label %bb23
bb23:
  %t107 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t109 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 1
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t112 = add i64 %t108, %t111
  %t113 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t107, i64 %t108)
  %t114 = getelementptr i8, ptr %t113, i64 %t108
  call void @olang_textcopy(ptr %t114, ptr %t110, i64 %t111)
  %t115 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t113, 1
  store { i64, ptr } %t116, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  br label %bb59
bb24:
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t119 = load ptr, ptr %l49, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb25, label %bb26
bb25:
  %t122 = load ptr, ptr %l49, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 22}
  %t125 = icmp eq i64 %t123, 1
  store i1 %t125, ptr %l50, !tbaa !21
  br label %bb26
bb26:
  %t126 = load i1, ptr %l50, !tbaa !21
  br i1 %t126, label %bb27, label %bb28
bb27:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr { i64, [4 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", ptr }, ptr %t129, i32 0, i32 1
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l6, !tbaa !29
  br label %bb29
bb28:
  br label %bb36
bb29:
  %t133 = load ptr, ptr %l6, !tbaa !29
  %t135 = getelementptr %"compiler/ast:VarDecl", ptr %t133, i32 0, i32 0
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 0
  store i64 %t138, ptr %l57, !tbaa !24
  %t139 = load ptr, ptr %l6, !tbaa !29
  %t141 = getelementptr %"compiler/ast:VarDecl", ptr %t139, i32 0, i32 4
  %t142 = load i1, ptr %t141, !tbaa !21
  br i1 %t142, label %bb30, label %bb31
bb30:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l60, !tbaa !27
  br label %bb32
bb31:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l60, !tbaa !27
  br label %bb32
bb32:
  %t144 = load ptr, ptr %l6, !tbaa !29
  %t146 = getelementptr %"compiler/ast:VarDecl", ptr %t144, i32 0, i32 2
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = icmp eq ptr %t147, null
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb33, label %bb34
bb33:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l65, !tbaa !27
  br label %bb35
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l65, !tbaa !27
  br label %bb35
bb35:
  %t153 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t155 = load i64, ptr %l57, !tbaa !24
  %t156 = call i64 @__olang_fmt_i64(ptr null, i64 %t155)
  %t157 = add i64 %t154, %t156
  %t158 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t161 = add i64 %t157, %t160
  %t162 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t162, 1
  %t164 = extractvalue { i64, ptr } %t162, 0
  %t165 = add i64 %t161, %t164
  %t166 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t165)
  call void @olang_textcopy(ptr %t166, ptr %t153, i64 %t154)
  %t167 = getelementptr i8, ptr %t166, i64 %t154
  %t168 = call i64 @__olang_fmt_i64(ptr %t167, i64 %t155)
  %t169 = getelementptr i8, ptr %t167, i64 %t156
  call void @olang_textcopy(ptr %t169, ptr %t159, i64 %t160)
  %t170 = getelementptr i8, ptr %t169, i64 %t160
  call void @olang_textcopy(ptr %t170, ptr %t163, i64 %t164)
  %t171 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t166, 1
  store { i64, ptr } %t172, ptr %l9, !tbaa !27
  br label %bb59
bb36:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t175 = load ptr, ptr %l67, !tbaa !29
  %t176 = icmp ne ptr %t175, null
  br i1 %t176, label %bb37, label %bb38
bb37:
  %t178 = load ptr, ptr %l67, !tbaa !29
  %t179 = load i64, ptr %t178, !range !{i64 0, i64 22}
  %t181 = icmp eq i64 %t179, 2
  store i1 %t181, ptr %l68, !tbaa !21
  br label %bb38
bb38:
  %t182 = load i1, ptr %l68, !tbaa !21
  br i1 %t182, label %bb39, label %bb40
bb39:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr { i64, [4 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { %"compiler/source:Span", ptr }, ptr %t185, i32 0, i32 1
  %t187 = load ptr, ptr %t186
  store ptr %t187, ptr %l7, !tbaa !29
  br label %bb41
bb40:
  br label %bb45
bb41:
  %t189 = load ptr, ptr %l7, !tbaa !29
  %t191 = getelementptr %"compiler/ast:Multi", ptr %t189, i32 0, i32 0
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  store i64 %t194, ptr %l75, !tbaa !24
  %t195 = load ptr, ptr %l7, !tbaa !29
  %t197 = getelementptr %"compiler/ast:Multi", ptr %t195, i32 0, i32 1
  %t198 = load i1, ptr %t197, !tbaa !21
  br i1 %t198, label %bb42, label %bb43
bb42:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l78, !tbaa !27
  br label %bb44
bb43:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l78, !tbaa !27
  br label %bb44
bb44:
  %t200 = load ptr, ptr %l7, !tbaa !29
  %t202 = getelementptr %"compiler/ast:Multi", ptr %t200, i32 0, i32 2
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t208 = load i64, ptr %l75, !tbaa !24
  %t209 = call i64 @__olang_fmt_i64(ptr null, i64 %t208)
  %t210 = add i64 %t207, %t209
  %t211 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 1
  %t213 = extractvalue { i64, ptr } %t211, 0
  %t214 = add i64 %t210, %t213
  %t216 = call i64 @__olang_fmt_i64(ptr null, i64 %t205)
  %t217 = add i64 %t214, %t216
  %t218 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t217)
  call void @olang_textcopy(ptr %t218, ptr %t206, i64 %t207)
  %t219 = getelementptr i8, ptr %t218, i64 %t207
  %t220 = call i64 @__olang_fmt_i64(ptr %t219, i64 %t208)
  %t221 = getelementptr i8, ptr %t219, i64 %t209
  call void @olang_textcopy(ptr %t221, ptr %t212, i64 %t213)
  %t222 = getelementptr i8, ptr %t221, i64 %t213
  %t223 = call i64 @__olang_fmt_i64(ptr %t222, i64 %t205)
  %t224 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t218, 1
  store { i64, ptr } %t225, ptr %l9, !tbaa !27
  br label %bb59
bb45:
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l83, !tbaa !29
  store i1 false, ptr %l84, !tbaa !21
  %t228 = load ptr, ptr %l83, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb46, label %bb47
bb46:
  %t231 = load ptr, ptr %l83, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 22}
  %t234 = icmp eq i64 %t232, 5
  store i1 %t234, ptr %l84, !tbaa !21
  br label %bb47
bb47:
  %t235 = load i1, ptr %l84, !tbaa !21
  br i1 %t235, label %bb48, label %bb49
bb48:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr { i64, [4 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { %"compiler/source:Span", ptr }, ptr %t238, i32 0, i32 1
  %t240 = load ptr, ptr %t239
  store ptr %t240, ptr %l8, !tbaa !29
  br label %bb50
bb49:
  br label %bb54
bb50:
  %t242 = load ptr, ptr %l8, !tbaa !29
  %t244 = getelementptr %"compiler/ast:If", ptr %t242, i32 0, i32 2
  %t245 = load ptr, ptr %t244, !tbaa !29
  %t247 = icmp eq ptr %t245, null
  %t249 = xor i1 %t247, true
  br i1 %t249, label %bb51, label %bb52
bb51:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l93, !tbaa !27
  br label %bb53
bb52:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l93, !tbaa !27
  br label %bb53
bb53:
  %t251 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t253 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = add i64 %t252, %t255
  %t257 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t256)
  call void @olang_textcopy(ptr %t257, ptr %t251, i64 %t252)
  %t258 = getelementptr i8, ptr %t257, i64 %t252
  call void @olang_textcopy(ptr %t258, ptr %t254, i64 %t255)
  %t259 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t257, 1
  store { i64, ptr } %t260, ptr %l9, !tbaa !27
  br label %bb59
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t262 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t262, ptr %l9, !tbaa !27
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_3758ee0971af8e29_da4aa036e664f025)
  unreachable
bb59:
  %t264 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t264, 0
  store i64 %t265, ptr %l97, !tbaa !24
  %t266 = load i64, ptr %l97, !tbaa !24
  %t267 = mul i64 %t266, 1
  %t268 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t267)
  %t269 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t268, 1
  store { i64, ptr } %t270, ptr %l98, !tbaa !27
  %t271 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !27
  %t275 = load i64, ptr %l97, !tbaa !24
  %t276 = mul i64 %t275, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t272, ptr %t274, i64 %t276, i1 false)
  %t277 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t277, ptr %l9, !tbaa !27
  %t278 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t278, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fparse_3aOracle_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca %"compiler/parse:Oracle"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aOracle_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l4
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l6
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aOracle_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l4
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr %t18
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr %t24
  %t31 = icmp eq ptr %t30, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t31)
  br label %bb5
bb5:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, ptr %l0
  %t33 = ptrtoint ptr %v0 to i64
  store i64 %t33, ptr %l8, !tbaa !24
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aOracle_2e1
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = call ptr @__olang_region_make(ptr %v0)
  %t37 = ptrtoint ptr %t36 to i64
  store i64 %t37, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l8
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t39)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %l10
  br label %bb8
bb8:
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aOracle_2e1
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load i64, ptr %l8
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr null
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = call ptr @__olang_region_or(ptr %t53, ptr null)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr %t50
  %t57 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr %t56
  %t63 = icmp eq ptr %t62, %t44
  call void @__olang_region_settle(ptr %t44, i1 %t63)
  br label %bb10
bb10:
  %t64 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t64, ptr %l1
  %t65 = ptrtoint ptr %v0 to i64
  store i64 %t65, ptr %l12, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aOracle_2e2
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = call ptr @__olang_region_make(ptr %v0)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l12, !tbaa !24
  br label %bb12
bb12:
  %t70 = load i64, ptr %l12
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %t71)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t72, ptr %l14
  br label %bb13
bb13:
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aOracle_2e2
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t75 = load i64, ptr %l12
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 2
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr %t82
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr %t88
  %t95 = icmp eq ptr %t94, %t76
  call void @__olang_region_settle(ptr %t76, i1 %t95)
  br label %bb15
bb15:
  %t96 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t96, ptr %l2
  %t97 = ptrtoint ptr %v0 to i64
  store i64 %t97, ptr %l16, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aOracle_2e3
  br i1 %t98, label %bb16, label %bb17
bb16:
  %t100 = call ptr @__olang_region_make(ptr %v0)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l16, !tbaa !24
  br label %bb17
bb17:
  %t102 = load i64, ptr %l16
  %t103 = inttoptr i64 %t102 to ptr
  %t104 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t103)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t104, ptr %l18
  br label %bb18
bb18:
  %t105 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aOracle_2e3
  br i1 %t105, label %bb19, label %bb20
bb19:
  %t107 = load i64, ptr %l16
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr null
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr %t114
  %t121 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = call ptr @__olang_region_or(ptr %t123, ptr null)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr %t120
  %t127 = icmp eq ptr %t126, %t108
  call void @__olang_region_settle(ptr %t108, i1 %t127)
  br label %bb20
bb20:
  %t128 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  %t129 = getelementptr %"compiler/parse:Oracle", ptr %l20, i32 0, i32 0
  %t130 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t130, ptr %t129
  %t131 = getelementptr %"compiler/parse:Oracle", ptr %l20, i32 0, i32 1
  %t132 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t132, ptr %t131
  %t133 = getelementptr %"compiler/parse:Oracle", ptr %l20, i32 0, i32 2
  %t134 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t134, ptr %t133
  %t135 = getelementptr %"compiler/parse:Oracle", ptr %l20, i32 0, i32 3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t128, ptr %t135
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l20, i64 288, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/parse:stackMarks" @compiler_2fparse_3astackMarks_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6) #0 {
entry:
  %rv = alloca %"compiler/parse:stackMarks"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/parse:stackMarks" undef, i64 %a0, 0
  %t18 = insertvalue %"compiler/parse:stackMarks" %t16, i64 %a1, 1
  %t20 = insertvalue %"compiler/parse:stackMarks" %t18, i64 %a2, 2
  %t22 = insertvalue %"compiler/parse:stackMarks" %t20, i64 %a3, 3
  %t24 = insertvalue %"compiler/parse:stackMarks" %t22, i64 %a4, 4
  %t26 = insertvalue %"compiler/parse:stackMarks" %t24, i64 %a5, 5
  %t28 = insertvalue %"compiler/parse:stackMarks" %t26, i64 %a6, 6
  store %"compiler/parse:stackMarks" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/parse:stackMarks", ptr %rv
  ret %"compiler/parse:stackMarks" %rr
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
declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d1 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d2 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
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
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 114}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 114}
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

@.d18 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"export" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fast_3aCatch_2e1 = weak hidden constant i1 false
@.d19 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"export" }>, align 8
@.d20 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a declaration" }>, align 8
@.d21 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"an error type's words or a set's members" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d24 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"the type a literal makes before the [, as in Array<I32>[...]" }>, align 8
@.d25 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"an expression" }>, align 8
@.d26 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Fields" }>, align 8
@.d27 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Cases" }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Params" }>, align 8
@.d29 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Results" }>, align 8
@.d30 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"an extern's - C's variable arguments are '...'" }>, align 8
@.d31 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"a constructor's or a case's - take an array, 'xs Array<T>&'" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"return" }>, align 8
@.d36 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"become " }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" :=" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" typed" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"var" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":=" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d44 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"multi" }>, align 8
@.d45 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" else" }>, align 8
@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"if" }>, align 8
@.d48 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"stmt" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2fparse_3aOracle_2e0 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %v0)
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
@olang_2esole_2ecompiler_2fparse_3aOracle_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fparse_3aOracle_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aOracle_2e3 = weak hidden constant i1 false
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
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_d732b4b75ca0d086_f16e80b591ad44e2 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %a0)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftoken_2eLineBreak = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
declare i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %a0, i8 %a1)
@olang_loc_d53533a33422fcdd_fffad862a9b687e9 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrs(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v1, ptr %a0, %"compiler/token:Token" %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrRefused(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_845ef501c057902a_93bdb530eecf7a06 = external constant [0 x i8]
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclareAttrs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, %"compiler/source:Span" %a0, ptr %a1, i32 %a2, ptr %a3, { i64, ptr } %a4, { i64, ptr } %a5, i1 %a6, i1 %a7, { i64, ptr } %a8, ptr %a9, i32 %a10)
declare %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i32 %a5, i1 %a6)
@olang_loc_553e18f991b71cb8_da15bc16be34df94 = external constant [0 x i8]
@olang_loc_360e31e75e7227a6_cc849c7425dfde32 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineBody(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncFrom(ptr %v0, ptr %a0)
@olang_loc_3a014922d706f8ae_e8b2af70e71e377a = external constant [0 x i8]
declare %"compiler/ast:Branch" @compiler_2fast_3aBranch_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %v0, i32 %a0)
declare i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e5b5865feda95523_92aca47b2e780ecf = external constant [0 x i8]
declare i1 @compiler_2fparse_2eleavingWord(i32 %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyOnLine(ptr %v0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/diagmsg:Msg" %a3)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1409caed80efd5ca_aa5da404b7edad6 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueCaseBlock(ptr %v0)
@olang_loc_2c5c6195a47ae69f_51fb0001bc622feb = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eLen_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eitemPattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineStartsCase(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCatch_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ector(ptr %v0, i64 %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epath(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ePush_3ccompiler_2fast_3aPath_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2eLen_3ccompiler_2fast_3aPath_26_3e(ptr %v0, ptr %a0)
declare { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %a0)
@olang_loc_e74fa2d3d14c2452_7ce0d57fd3650746 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2eToArray_3ccompiler_2fast_3aPath_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:Catch" @compiler_2fast_3aCatch_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4, i32 %a5, %"compiler/source:Span" %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCatch_26_3e_2ePush_3ccompiler_2fast_3aCatch_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCatch_26_3e_2eToArray_3ccompiler_2fast_3aCatch_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econtract(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"compiler/source:Span" } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elinkClause(ptr %v0, ptr %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %a0)
@olang_loc_acdf3c0d270865a2_ccca0ad6e9b656fe = external constant [0 x i8]
@olang_loc_cc3881dfbae8f257_2de1f0f6d1f4ac33 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexternBlock(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexternFn(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopIf(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclNames(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
@olang_loc_88d6a58aae0d0f1b_e8616324f90aa74f = external constant [0 x i8]
@olang_loc_4c5382a5570ff51a_b7435337e0d4770e = external constant [0 x i8]
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisOperandEnd(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eopenerOf(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fparse_2eMaxNesting = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\4E\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNesting(ptr %v0, i64 %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorUnheld(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorWords(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2eLen__H880e577cb0df1a24f608b8ef0d16c17a(ptr %v0, ptr %a0)
@olang_loc_789713e4eee702da_477f9e47229ca02e = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2eAt_3ccompiler_2fast_3aCaseDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2eToAr_H44f8de0685d71649bf169c234c7a8f4c(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehint(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efound(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExpected(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrPun(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_c5f7d3d7474f6415_ffaba5dab3442011 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprList(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparam(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %a0)
@olang_loc_4c43f34f877e1376_ed14b5a1f1e9a1ea = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_6416c01e12aaae0b_a3305b3dd64c2cbf = external constant [0 x i8]
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereceiverVars(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_79faa04a2077f0a8_b4c818f5d0d3035c = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeParams(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_7ae9d5317a3d4e8f_1e272ac5502f090b = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i1 %a2, i1 %a3)
@olang_loc_a8fa7275eec9c062_f04ec61276511d7e = external constant [0 x i8]
@olang_loc_6486cff29aa18f17_5166ac325e8f72b3 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_cf732662ad9bcd74_880057418bdbda90 = external constant [0 x i8]
declare ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eFuncSig(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_13a9b66eb9aa3f96_3dd1d0a593daf8ba = external constant [0 x i8]
@olang_loc_b5d05676e64fefab_5744e152e232520f = external constant [0 x i8]
@olang_loc_33a9d3c17503db48_610ee650de967ac = external constant [0 x i8]
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eone(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evarDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprStmt(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eTextOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eLen_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eLen_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2eLen_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedNotStruct(ptr %v0)
declare i1 @compiler_2fparse_2eisPatPath(ptr %v0, ptr %a0)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelemsPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3)
@olang_loc_7ff84c49a98c5d65_799121c0214ef509 = external constant [0 x i8]
@olang_loc_2af5dad726595634_740c4fa339a5cf38 = external constant [0 x i8]
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfix(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elambdaBody(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
@olang_loc_b6007e4d1245e4d6_5e9becbf0504ee4a = external constant [0 x i8]
@olang_loc_fd55a40e832939eb_76ee8367288fff1f = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ematchBody(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2emessageHere(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eliteralAfterType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsCall(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2espacedTypeArgs(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsSpaced(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f58c14e72eb20088_8619c4b6e2d8c1bc = external constant [0 x i8]
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarkers(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
@olang_loc_d2214e5e459742f5_916a1717a0b2dd09 = external constant [0 x i8]
@olang_loc_4bdaee1d5dba1351_2f255a58086b38a5 = external constant [0 x i8]
@olang_loc_4605476f4451aac0_36c877a5418c1e74 = external constant [0 x i8]
@olang_loc_952e32d6f93638f1_595c141b0c1c5b3d = external constant [0 x i8]
declare i1 @compiler_2fparse_2eisAssignOp(i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicNotLast(ptr %v0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_b4d86fcc9a57c7f6_c634a892523c9252 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVariadicDefault(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPieceCalled(ptr %v0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/diagmsg:Msg" %a2)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopBranch(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:TopIf" @compiler_2fast_3aTopIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTrailingComma(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_e980cdf5146ac576_c2415009b5e84a7a = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparams(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorSet(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewithContract(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_1539ac39f97600b_6c3b4513fd4221cf = external constant [0 x i8]
declare %"compiler/ast:StructBody" @compiler_2fast_3aStructBody_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %a0)
@olang_loc_17377aefad64a2a8_5cc0f861968a066c = external constant [0 x i8]
@olang_loc_2302adf5d350ae95_7d513dc9152d99f9 = external constant [0 x i8]
declare %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, ptr %a2, ptr %a3, { i64, ptr } %a4)
declare %"compiler/ast:CaseDecl" @compiler_2fast_3aCaseDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, { i64, ptr } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2ePush_H43bc1cace347592514b4248ffd44c907(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentryEnd(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aFunc_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_46374d1b7bb67262_72dce1a2b91be04e = external constant [0 x i8]
@olang_loc_1c3aa98278e4117_19ec5e3b00828443 = external constant [0 x i8]
@olang_loc_6cb001083a887f74_65a539ed4a68e820 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aFunc_26_3e_2ePush_3ccompiler_2fast_3aFunc_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aFunc_26_3e_2eToArray_3ccompiler_2fast_3aFunc_26_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1da972851505d681_2b34921fb970c04d = external constant [0 x i8]
@olang_loc_1f3dc253b4739a4e_99d66c6a805eb862 = external constant [0 x i8]
declare %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, i1 %a4, ptr %a5, i1 %a6, i1 %a7, { i64, ptr } %a8)
@olang_loc_c64d3eebfbda3e43_5562c9e72c368717 = external constant [0 x i8]
@olang_loc_bb8adb75558e3c33_1d4a050ea242931f = external constant [0 x i8]
@olang_loc_b257da396cac45c5_b239049ec2785649 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeDeclRest(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_753d7041786faeaa_c9c219433b845b26 = external constant [0 x i8]
@olang_loc_2c29cc2313aef596_a74c39ade1a5acca = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eToArr_Ha78c9aad18467c47f48c596ab5d9c770(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fparse_2eweakened(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_2154037c3afdd592_b5cbca897fb2c76e = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakNotNullable(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_a46c4d4e835a1515_243175b90cb4fb69 = external constant [0 x i8]
@olang_loc_ed9c9212b4212a6d_b0d1473d5650fc49 = external constant [0 x i8]
@olang_loc_bb0c4e958dc810b5_997011562bbbd2b1 = external constant [0 x i8]
@olang_loc_fcd7f3e04b81968d_d9ee06b55986a881 = external constant [0 x i8]
@olang_loc_9ddb86cdc3200de1_dc174b333c4dad15 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
@olang_loc_a4d23bc21c2583e1_78290c8064d2bdc5 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_c2638ea3ae2a97b9_3135bdc9c3bd3705 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2)
@olang_loc_3758ee0971af8e29_da4aa036e664f025 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)

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
