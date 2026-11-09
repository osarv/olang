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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/parse:Parser" = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1, i1, i64, i1, i1, i64, i1, i64, i1, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/ast:ContractBlock" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/parse:NameList" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:JoinS" = type { i1, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/parse:Oracle" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
define dso_local i1 @compiler_2fparse_2ecomparison(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l1
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 94 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t23 = trunc i64 95 to i32
  %t24 = icmp eq i32 %t21, %t23
  store i1 %t24, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l10, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb12
bb10:
  %t27 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t29 = call i1 @compiler_2fparse_2eisOrdering(i32 %t27)
  store i1 %t29, ptr %l15
  br label %bb11
bb11:
  %t30 = load i1, ptr %l15, !tbaa !21
  store i1 %t30, ptr %l13, !tbaa !21
  br label %bb12
bb12:
  %t31 = load i1, ptr %l13, !tbaa !21
  br i1 %t31, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb15
bb14:
  %t32 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t34 = trunc i64 27 to i32
  %t35 = icmp eq i32 %t32, %t34
  store i1 %t35, ptr %l16, !tbaa !21
  br label %bb15
bb15:
  %t37 = load i1, ptr %l16, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t39 = load ptr, ptr %l19, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb17, label %bb18
bb17:
  %t42 = load ptr, ptr %l19, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 30}
  %t45 = icmp eq i64 %t43, 7
  store i1 %t45, ptr %l20, !tbaa !21
  br label %bb18
bb18:
  %t46 = load i1, ptr %l20, !tbaa !21
  br i1 %t46, label %bb19, label %bb20
bb19:
  br label %bb33
bb20:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t48 = load ptr, ptr %l23, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb21, label %bb22
bb21:
  %t51 = load ptr, ptr %l23, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 30}
  %t54 = icmp eq i64 %t52, 6
  store i1 %t54, ptr %l24, !tbaa !21
  br label %bb22
bb22:
  %t55 = load i1, ptr %l24, !tbaa !21
  br i1 %t55, label %bb23, label %bb24
bb23:
  br label %bb33
bb24:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t57 = load ptr, ptr %l27, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb25, label %bb26
bb25:
  %t60 = load ptr, ptr %l27, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 30}
  %t63 = icmp eq i64 %t61, 10
  store i1 %t63, ptr %l28, !tbaa !21
  br label %bb26
bb26:
  %t64 = load i1, ptr %l28, !tbaa !21
  br i1 %t64, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t66 = load ptr, ptr %l31, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb29, label %bb30
bb29:
  %t69 = load ptr, ptr %l31, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 30}
  %t72 = icmp eq i64 %t70, 9
  store i1 %t72, ptr %l32, !tbaa !21
  br label %bb30
bb30:
  %t73 = load i1, ptr %l32, !tbaa !21
  br i1 %t73, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i1 true, ptr %rv
  br label %ret
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i1 false, ptr %rv
  br label %ret
bb38:
  call void @__olang_check_failed(ptr @olang_loc_1b8b9060a075dfbb_f19ba567ef63a0af)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eExprAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l14 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i32
  %rv = alloca { i32, ptr }
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
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/parse:Parser", ptr %t13, i32 0, i32 12
  store i1 false, ptr %t15, !tbaa !21
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/parse:Parser", ptr %t16, i32 0, i32 18
  store i64 0, ptr %t18, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/parse:Parser", ptr %t19, i32 0, i32 19
  store i1 false, ptr %t21, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/parse:Parser", ptr %t22, i32 0, i32 21
  store i64 0, ptr %t24, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/parse:Parser", ptr %t25, i32 0, i32 22
  store i1 false, ptr %t27, !tbaa !21
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/parse:Parser", ptr %t28, i32 0, i32 29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %t30, i64 0)
  br label %bb1
bb1:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t32)
  %t35 = extractvalue { i32, ptr } %t34, 1
  %t36 = extractvalue { i32, ptr } %t34, 0
  store i32 %t36, ptr %l17
  %t37 = icmp ne i32 %t36, 0
  br i1 %t37, label %bb3, label %ok.38, !prof !99
ok.38:
  store ptr %t35, ptr %l16
  br label %bb2
bb2:
  %t39 = load ptr, ptr %l16, !tbaa !29
  store ptr %t39, ptr %l14, !tbaa !29
  br label %bb4
bb3:
  %t40 = load i32, ptr %l17, !tbaa !23
  %t41 = lshr i32 %t40, 16
  %t42 = and i32 %t40, 65535
  %t43 = icmp eq i32 %t41, 1
  %t44 = select i1 %t43, i32 1, i32 0
  %t45 = icmp eq i32 %t40, 0
  %t46 = shl i32 %t44, 16
  %t47 = or i32 %t46, %t42
  %t48 = select i1 %t45, i32 0, i32 %t47
  %t50 = insertvalue { i32, ptr } zeroinitializer, i32 %t48, 0
  store { i32, ptr } %t50, ptr %rv
  br label %ret
bb4:
  %t51 = load ptr, ptr %l14, !tbaa !29
  %t52 = insertvalue { i32, ptr } zeroinitializer, ptr %t51, 1
  store { i32, ptr } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eFile(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i32
  %l15 = alloca i32
  %l20 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 38
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eLen_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t7)
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t9, i32 0)
  store i1 %t12, ptr %l8
  br label %bb4
bb4:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %bb19
bb6:
  br label %bb7
bb7:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t14, i32 113)
  store i1 %t17, ptr %l11
  br label %bb8
bb8:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s3, ptr %t19, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t21, ptr %l13
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb12, label %ok.23, !prof !99
ok.23:
  br label %bb11
bb10:
  br label %bb16
bb11:
  br label %bb14
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t24)
  store i32 %t26, ptr %l15
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb16:
  %t27 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eitem(ptr %v0, ptr %t27)
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb2
bb19:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t29, i32 0, i32 38
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %t31, i64 %t32)
  store { i64, ptr } %t35, ptr %l20
  br label %bb20
bb20:
  %t36 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l19 = alloca ptr
  %l30 = alloca i64
  %l33 = alloca i1
  %l37 = alloca i1
  %l38 = alloca i1
  %l41 = alloca i1
  %l42 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l46 = alloca i32
  %l48 = alloca ptr
  %l57 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca i32
  %l62 = alloca ptr
  %l72 = alloca i1
  %l73 = alloca ptr
  %l80 = alloca ptr
  %l81 = alloca i32
  %l83 = alloca ptr
  %l92 = alloca ptr
  %l103 = alloca i1
  %l105 = alloca ptr
  %l108 = alloca ptr
  %l109 = alloca i32
  %l111 = alloca ptr
  %l123 = alloca i1
  %l126 = alloca i1
  %l127 = alloca i32
  %l129 = alloca ptr
  %l139 = alloca ptr
  %l141 = alloca ptr
  %l142 = alloca i32
  %l144 = alloca ptr
  %l154 = alloca ptr
  %l157 = alloca ptr
  %l158 = alloca i32
  %l160 = alloca ptr
  %l174 = alloca i1
  %l179 = alloca ptr
  %l181 = alloca { i64, ptr }
  %l183 = alloca i32
  %l185 = alloca ptr
  %l195 = alloca i32
  %l198 = alloca %"compiler/source:Span"
  %l200 = alloca ptr
  %l204 = alloca { i64, ptr }
  %l207 = alloca ptr
  %s2 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t537 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 110)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l14
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l13
  br label %bb1
bb1:
  %t9 = load i32, ptr %l13, !tbaa !23
  store i32 %t9, ptr %l10, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l14, !tbaa !23
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
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 11
  %t24 = load i1, ptr %t23, !tbaa !21
  store i1 %t24, ptr %l3, !tbaa !21
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/parse:Parser", ptr %t26, i32 0, i32 11
  store i1 false, ptr %t28, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l19, !tbaa !29
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t30, i32 0, i32 18
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = add i64 %t32, 1
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t37 = getelementptr %"compiler/parse:Parser", ptr %t36, i32 0, i32 18
  store i64 %t34, ptr %t37, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/parse:Parser", ptr %t38, i32 0, i32 19
  %t41 = load i1, ptr %t40, !tbaa !21
  store i1 %t41, ptr %l4, !tbaa !21
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/parse:Parser", ptr %t43, i32 0, i32 20
  %t46 = load i1, ptr %t45, !tbaa !21
  store i1 %t46, ptr %l5, !tbaa !21
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/parse:Parser", ptr %t48, i32 0, i32 19
  store i1 false, ptr %t50, !tbaa !21
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/parse:Parser", ptr %t51, i32 0, i32 20
  store i1 true, ptr %t53, !tbaa !21
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/parse:Parser", ptr %t54, i32 0, i32 31
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l30
  br label %bb4
bb4:
  %t59 = load i64, ptr %l30, !tbaa !24
  store i64 %t59, ptr %l6, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t63 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t60, i32 111)
  store i1 %t63, ptr %l33
  br label %bb5
bb5:
  %t64 = load i1, ptr %l33, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb6, label %bb7
bb6:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t70 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t67, i32 109)
  store i1 %t70, ptr %l37
  br label %bb8
bb7:
  br label %bb57
bb8:
  %t71 = load i1, ptr %l37, !tbaa !21
  br i1 %t71, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb12
bb10:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t75 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t72, i32 113)
  store i1 %t75, ptr %l41
  br label %bb11
bb11:
  %t76 = load i1, ptr %l41, !tbaa !21
  store i1 %t76, ptr %l38, !tbaa !21
  br label %bb12
bb12:
  %t77 = load i1, ptr %l38, !tbaa !21
  br i1 %t77, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l42, !tbaa !29
  %t80 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s2, i32 111)
  store { i64, ptr } %t80, ptr %l44
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t81 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  %t83 = extractvalue { i64, ptr } %t81, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  %t88 = load ptr, ptr %l42, !tbaa !29
  %t90 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s2, ptr %t88, { i64, ptr } %t87)
  store i32 %t90, ptr %l46
  %t91 = icmp ne i32 %t90, 0
  br i1 %t91, label %bb17, label %ok.92, !prof !99
ok.92:
  br label %bb16
bb16:
  br label %bb18
bb17:
  %t93 = load i32, ptr %l46, !tbaa !23
  %t94 = lshr i32 %t93, 16
  %t95 = and i32 %t93, 65535
  %t96 = icmp eq i32 %t94, 1
  %t97 = select i1 %t96, i32 1, i32 0
  %t98 = icmp eq i32 %t93, 0
  %t99 = shl i32 %t97, 16
  %t100 = or i32 %t99, %t95
  %t101 = select i1 %t98, i32 0, i32 %t100
  call void @__olang_scope_close(ptr %s2)
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l48, !tbaa !29
  %t103 = load ptr, ptr %l48, !tbaa !29
  %t104 = getelementptr %"compiler/parse:Parser", ptr %t103, i32 0, i32 18
  %t105 = load i64, ptr %t104, !tbaa !24
  %t107 = sub i64 %t105, 1
  %t109 = load ptr, ptr %l48, !tbaa !29
  %t110 = getelementptr %"compiler/parse:Parser", ptr %t109, i32 0, i32 18
  store i64 %t107, ptr %t110, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i1, ptr %l3, !tbaa !21
  %t115 = getelementptr %"compiler/parse:Parser", ptr %t111, i32 0, i32 11
  store i1 %t112, ptr %t115, !tbaa !21
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i1, ptr %l4, !tbaa !21
  %t120 = getelementptr %"compiler/parse:Parser", ptr %t116, i32 0, i32 19
  store i1 %t117, ptr %t120, !tbaa !21
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i1, ptr %l5, !tbaa !21
  %t125 = getelementptr %"compiler/parse:Parser", ptr %t121, i32 0, i32 20
  store i1 %t122, ptr %t125, !tbaa !21
  %t127 = insertvalue { i32, ptr } zeroinitializer, i32 %t101, 0
  store { i32, ptr } %t127, ptr %rv
  br label %ret
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v2, ptr %t128)
  %t131 = extractvalue { i32, ptr } %t130, 1
  %t132 = extractvalue { i32, ptr } %t130, 0
  store i32 %t132, ptr %l60
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb21, label %ok.134, !prof !99
ok.134:
  store ptr %t131, ptr %l59
  br label %bb20
bb20:
  %t135 = load ptr, ptr %l59, !tbaa !29
  store ptr %t135, ptr %l57, !tbaa !29
  br label %bb22
bb21:
  %t136 = load i32, ptr %l60, !tbaa !23
  %t137 = lshr i32 %t136, 16
  %t138 = and i32 %t136, 65535
  %t139 = icmp eq i32 %t137, 1
  %t140 = select i1 %t139, i32 1, i32 0
  %t141 = icmp eq i32 %t136, 0
  %t142 = shl i32 %t140, 16
  %t143 = or i32 %t142, %t138
  %t144 = select i1 %t141, i32 0, i32 %t143
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l62, !tbaa !29
  %t146 = load ptr, ptr %l62, !tbaa !29
  %t147 = getelementptr %"compiler/parse:Parser", ptr %t146, i32 0, i32 18
  %t148 = load i64, ptr %t147, !tbaa !24
  %t150 = sub i64 %t148, 1
  %t152 = load ptr, ptr %l62, !tbaa !29
  %t153 = getelementptr %"compiler/parse:Parser", ptr %t152, i32 0, i32 18
  store i64 %t150, ptr %t153, !tbaa !24
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i1, ptr %l3, !tbaa !21
  %t158 = getelementptr %"compiler/parse:Parser", ptr %t154, i32 0, i32 11
  store i1 %t155, ptr %t158, !tbaa !21
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i1, ptr %l4, !tbaa !21
  %t163 = getelementptr %"compiler/parse:Parser", ptr %t159, i32 0, i32 19
  store i1 %t160, ptr %t163, !tbaa !21
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i1, ptr %l5, !tbaa !21
  %t168 = getelementptr %"compiler/parse:Parser", ptr %t164, i32 0, i32 20
  store i1 %t165, ptr %t168, !tbaa !21
  %t170 = insertvalue { i32, ptr } zeroinitializer, i32 %t144, 0
  store { i32, ptr } %t170, ptr %rv
  br label %ret
bb22:
  %t171 = load ptr, ptr %l57, !tbaa !29
  store ptr %t171, ptr %l7, !tbaa !29
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehends(ptr %v0, ptr %t172)
  store i1 %t174, ptr %l72
  br label %bb23
bb23:
  %t175 = load i1, ptr %l72, !tbaa !21
  br i1 %t175, label %bb24, label %bb25
bb24:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l1, !tbaa !23
  %t178 = load ptr, ptr %l2, !tbaa !29
  %t180 = load ptr, ptr %l7, !tbaa !29
  %t186 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehension(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t176, i32 %t177, ptr %t178, ptr %t180, i32 111)
  %t187 = extractvalue { i32, ptr } %t186, 1
  %t188 = extractvalue { i32, ptr } %t186, 0
  store i32 %t188, ptr %l81
  %t189 = icmp ne i32 %t188, 0
  br i1 %t189, label %bb27, label %ok.190, !prof !99
ok.190:
  store ptr %t187, ptr %l80
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t191 = load ptr, ptr %l80, !tbaa !29
  store ptr %t191, ptr %l73, !tbaa !29
  br label %bb28
bb27:
  %t192 = load i32, ptr %l81, !tbaa !23
  %t193 = lshr i32 %t192, 16
  %t194 = and i32 %t192, 65535
  %t195 = icmp eq i32 %t193, 1
  %t196 = select i1 %t195, i32 1, i32 0
  %t197 = icmp eq i32 %t192, 0
  %t198 = shl i32 %t196, 16
  %t199 = or i32 %t198, %t194
  %t200 = select i1 %t197, i32 0, i32 %t199
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l83, !tbaa !29
  %t202 = load ptr, ptr %l83, !tbaa !29
  %t203 = getelementptr %"compiler/parse:Parser", ptr %t202, i32 0, i32 18
  %t204 = load i64, ptr %t203, !tbaa !24
  %t206 = sub i64 %t204, 1
  %t208 = load ptr, ptr %l83, !tbaa !29
  %t209 = getelementptr %"compiler/parse:Parser", ptr %t208, i32 0, i32 18
  store i64 %t206, ptr %t209, !tbaa !24
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load i1, ptr %l3, !tbaa !21
  %t214 = getelementptr %"compiler/parse:Parser", ptr %t210, i32 0, i32 11
  store i1 %t211, ptr %t214, !tbaa !21
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load i1, ptr %l4, !tbaa !21
  %t219 = getelementptr %"compiler/parse:Parser", ptr %t215, i32 0, i32 19
  store i1 %t216, ptr %t219, !tbaa !21
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i1, ptr %l5, !tbaa !21
  %t224 = getelementptr %"compiler/parse:Parser", ptr %t220, i32 0, i32 20
  store i1 %t221, ptr %t224, !tbaa !21
  %t226 = insertvalue { i32, ptr } zeroinitializer, i32 %t200, 0
  store { i32, ptr } %t226, ptr %rv
  br label %ret
bb28:
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l92, !tbaa !29
  %t228 = load ptr, ptr %l92, !tbaa !29
  %t229 = getelementptr %"compiler/parse:Parser", ptr %t228, i32 0, i32 18
  %t230 = load i64, ptr %t229, !tbaa !24
  %t232 = sub i64 %t230, 1
  %t234 = load ptr, ptr %l92, !tbaa !29
  %t235 = getelementptr %"compiler/parse:Parser", ptr %t234, i32 0, i32 18
  store i64 %t232, ptr %t235, !tbaa !24
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i1, ptr %l3, !tbaa !21
  %t240 = getelementptr %"compiler/parse:Parser", ptr %t236, i32 0, i32 11
  store i1 %t237, ptr %t240, !tbaa !21
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i1, ptr %l4, !tbaa !21
  %t245 = getelementptr %"compiler/parse:Parser", ptr %t241, i32 0, i32 19
  store i1 %t242, ptr %t245, !tbaa !21
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i1, ptr %l5, !tbaa !21
  %t250 = getelementptr %"compiler/parse:Parser", ptr %t246, i32 0, i32 20
  store i1 %t247, ptr %t250, !tbaa !21
  %t251 = load ptr, ptr %l73, !tbaa !29
  %t252 = insertvalue { i32, ptr } zeroinitializer, ptr %t251, 1
  store { i32, ptr } %t252, ptr %rv
  br label %ret
bb29:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t256 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t253, i32 79)
  store i1 %t256, ptr %l103
  br label %bb30
bb30:
  %t257 = load i1, ptr %l103, !tbaa !21
  store i1 %t257, ptr %l8, !tbaa !21
  %t258 = load i1, ptr %l8, !tbaa !21
  br i1 %t258, label %bb31, label %bb32
bb31:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load ptr, ptr %l7, !tbaa !29
  %t264 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentry(ptr %v0, ptr %v2, ptr %v2, ptr %t260, ptr %t261)
  %t265 = extractvalue { i32, ptr } %t264, 1
  %t266 = extractvalue { i32, ptr } %t264, 0
  store i32 %t266, ptr %l109
  %t267 = icmp ne i32 %t266, 0
  br i1 %t267, label %bb34, label %ok.268, !prof !99
ok.268:
  store ptr %t265, ptr %l108
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t269 = load ptr, ptr %l108, !tbaa !29
  store ptr %t269, ptr %l105, !tbaa !29
  br label %bb35
bb34:
  %t270 = load i32, ptr %l109, !tbaa !23
  %t271 = lshr i32 %t270, 16
  %t272 = and i32 %t270, 65535
  %t273 = icmp eq i32 %t271, 1
  %t274 = select i1 %t273, i32 1, i32 0
  %t275 = icmp eq i32 %t270, 0
  %t276 = shl i32 %t274, 16
  %t277 = or i32 %t276, %t272
  %t278 = select i1 %t275, i32 0, i32 %t277
  %t279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t279, ptr %l111, !tbaa !29
  %t280 = load ptr, ptr %l111, !tbaa !29
  %t281 = getelementptr %"compiler/parse:Parser", ptr %t280, i32 0, i32 18
  %t282 = load i64, ptr %t281, !tbaa !24
  %t284 = sub i64 %t282, 1
  %t286 = load ptr, ptr %l111, !tbaa !29
  %t287 = getelementptr %"compiler/parse:Parser", ptr %t286, i32 0, i32 18
  store i64 %t284, ptr %t287, !tbaa !24
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load i1, ptr %l3, !tbaa !21
  %t292 = getelementptr %"compiler/parse:Parser", ptr %t288, i32 0, i32 11
  store i1 %t289, ptr %t292, !tbaa !21
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i1, ptr %l4, !tbaa !21
  %t297 = getelementptr %"compiler/parse:Parser", ptr %t293, i32 0, i32 19
  store i1 %t294, ptr %t297, !tbaa !21
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load i1, ptr %l5, !tbaa !21
  %t302 = getelementptr %"compiler/parse:Parser", ptr %t298, i32 0, i32 20
  store i1 %t299, ptr %t302, !tbaa !21
  %t304 = insertvalue { i32, ptr } zeroinitializer, i32 %t278, 0
  store { i32, ptr } %t304, ptr %rv
  br label %ret
bb35:
  %t305 = load ptr, ptr %l105, !tbaa !29
  store ptr %t305, ptr %l7, !tbaa !29
  br label %bb36
bb36:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/parse:Parser", ptr %t306, i32 0, i32 31
  %t309 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t308, ptr %t309)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t315 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t312, i32 111)
  %t316 = extractvalue { i32, i1 } %t315, 1
  %t317 = extractvalue { i32, i1 } %t315, 0
  store i32 %t317, ptr %l127
  %t318 = icmp ne i32 %t317, 0
  br i1 %t318, label %bb40, label %ok.319, !prof !99
ok.319:
  store i1 %t316, ptr %l126
  br label %bb39
bb39:
  %t320 = load i1, ptr %l126, !tbaa !21
  store i1 %t320, ptr %l123, !tbaa !21
  br label %bb41
bb40:
  %t321 = load i32, ptr %l127, !tbaa !23
  %t322 = lshr i32 %t321, 16
  %t323 = and i32 %t321, 65535
  %t324 = icmp eq i32 %t322, 1
  %t325 = select i1 %t324, i32 1, i32 0
  %t326 = icmp eq i32 %t321, 0
  %t327 = shl i32 %t325, 16
  %t328 = or i32 %t327, %t323
  %t329 = select i1 %t326, i32 0, i32 %t328
  %t330 = load ptr, ptr %l0, !tbaa !29
  store ptr %t330, ptr %l129, !tbaa !29
  %t331 = load ptr, ptr %l129, !tbaa !29
  %t332 = getelementptr %"compiler/parse:Parser", ptr %t331, i32 0, i32 18
  %t333 = load i64, ptr %t332, !tbaa !24
  %t335 = sub i64 %t333, 1
  %t337 = load ptr, ptr %l129, !tbaa !29
  %t338 = getelementptr %"compiler/parse:Parser", ptr %t337, i32 0, i32 18
  store i64 %t335, ptr %t338, !tbaa !24
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i1, ptr %l3, !tbaa !21
  %t343 = getelementptr %"compiler/parse:Parser", ptr %t339, i32 0, i32 11
  store i1 %t340, ptr %t343, !tbaa !21
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load i1, ptr %l4, !tbaa !21
  %t348 = getelementptr %"compiler/parse:Parser", ptr %t344, i32 0, i32 19
  store i1 %t345, ptr %t348, !tbaa !21
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load i1, ptr %l5, !tbaa !21
  %t353 = getelementptr %"compiler/parse:Parser", ptr %t349, i32 0, i32 20
  store i1 %t350, ptr %t353, !tbaa !21
  %t355 = insertvalue { i32, ptr } zeroinitializer, i32 %t329, 0
  store { i32, ptr } %t355, ptr %rv
  br label %ret
bb41:
  %t356 = load i1, ptr %l123, !tbaa !21
  %t357 = xor i1 %t356, true
  br i1 %t357, label %bb42, label %bb43
bb42:
  br label %bb56
bb43:
  br label %bb44
bb44:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v0, ptr %t359)
  %t362 = extractvalue { i32, ptr } %t361, 1
  %t363 = extractvalue { i32, ptr } %t361, 0
  store i32 %t363, ptr %l142
  %t364 = icmp ne i32 %t363, 0
  br i1 %t364, label %bb46, label %ok.365, !prof !99
ok.365:
  store ptr %t362, ptr %l141
  br label %bb45
bb45:
  %t366 = load ptr, ptr %l141, !tbaa !29
  store ptr %t366, ptr %l139, !tbaa !29
  br label %bb47
bb46:
  %t367 = load i32, ptr %l142, !tbaa !23
  %t368 = lshr i32 %t367, 16
  %t369 = and i32 %t367, 65535
  %t370 = icmp eq i32 %t368, 1
  %t371 = select i1 %t370, i32 1, i32 0
  %t372 = icmp eq i32 %t367, 0
  %t373 = shl i32 %t371, 16
  %t374 = or i32 %t373, %t369
  %t375 = select i1 %t372, i32 0, i32 %t374
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l144, !tbaa !29
  %t377 = load ptr, ptr %l144, !tbaa !29
  %t378 = getelementptr %"compiler/parse:Parser", ptr %t377, i32 0, i32 18
  %t379 = load i64, ptr %t378, !tbaa !24
  %t381 = sub i64 %t379, 1
  %t383 = load ptr, ptr %l144, !tbaa !29
  %t384 = getelementptr %"compiler/parse:Parser", ptr %t383, i32 0, i32 18
  store i64 %t381, ptr %t384, !tbaa !24
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load i1, ptr %l3, !tbaa !21
  %t389 = getelementptr %"compiler/parse:Parser", ptr %t385, i32 0, i32 11
  store i1 %t386, ptr %t389, !tbaa !21
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load i1, ptr %l4, !tbaa !21
  %t394 = getelementptr %"compiler/parse:Parser", ptr %t390, i32 0, i32 19
  store i1 %t391, ptr %t394, !tbaa !21
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load i1, ptr %l5, !tbaa !21
  %t399 = getelementptr %"compiler/parse:Parser", ptr %t395, i32 0, i32 20
  store i1 %t396, ptr %t399, !tbaa !21
  %t401 = insertvalue { i32, ptr } zeroinitializer, i32 %t375, 0
  store { i32, ptr } %t401, ptr %rv
  br label %ret
bb47:
  %t402 = load ptr, ptr %l139, !tbaa !29
  store ptr %t402, ptr %l9, !tbaa !29
  %t403 = load i1, ptr %l8, !tbaa !21
  br i1 %t403, label %bb48, label %bb49
bb48:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load ptr, ptr %l9, !tbaa !29
  %t409 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentry(ptr %v0, ptr %v0, ptr %v0, ptr %t405, ptr %t406)
  %t410 = extractvalue { i32, ptr } %t409, 1
  %t411 = extractvalue { i32, ptr } %t409, 0
  store i32 %t411, ptr %l158
  %t412 = icmp ne i32 %t411, 0
  br i1 %t412, label %bb51, label %ok.413, !prof !99
ok.413:
  store ptr %t410, ptr %l157
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t414 = load ptr, ptr %l157, !tbaa !29
  store ptr %t414, ptr %l154, !tbaa !29
  br label %bb52
bb51:
  %t415 = load i32, ptr %l158, !tbaa !23
  %t416 = lshr i32 %t415, 16
  %t417 = and i32 %t415, 65535
  %t418 = icmp eq i32 %t416, 1
  %t419 = select i1 %t418, i32 1, i32 0
  %t420 = icmp eq i32 %t415, 0
  %t421 = shl i32 %t419, 16
  %t422 = or i32 %t421, %t417
  %t423 = select i1 %t420, i32 0, i32 %t422
  %t424 = load ptr, ptr %l0, !tbaa !29
  store ptr %t424, ptr %l160, !tbaa !29
  %t425 = load ptr, ptr %l160, !tbaa !29
  %t426 = getelementptr %"compiler/parse:Parser", ptr %t425, i32 0, i32 18
  %t427 = load i64, ptr %t426, !tbaa !24
  %t429 = sub i64 %t427, 1
  %t431 = load ptr, ptr %l160, !tbaa !29
  %t432 = getelementptr %"compiler/parse:Parser", ptr %t431, i32 0, i32 18
  store i64 %t429, ptr %t432, !tbaa !24
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load i1, ptr %l3, !tbaa !21
  %t437 = getelementptr %"compiler/parse:Parser", ptr %t433, i32 0, i32 11
  store i1 %t434, ptr %t437, !tbaa !21
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load i1, ptr %l4, !tbaa !21
  %t442 = getelementptr %"compiler/parse:Parser", ptr %t438, i32 0, i32 19
  store i1 %t439, ptr %t442, !tbaa !21
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load i1, ptr %l5, !tbaa !21
  %t447 = getelementptr %"compiler/parse:Parser", ptr %t443, i32 0, i32 20
  store i1 %t444, ptr %t447, !tbaa !21
  %t449 = insertvalue { i32, ptr } zeroinitializer, i32 %t423, 0
  store { i32, ptr } %t449, ptr %rv
  br label %ret
bb52:
  %t450 = load ptr, ptr %l154, !tbaa !29
  store ptr %t450, ptr %l9, !tbaa !29
  br label %bb53
bb53:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr %"compiler/parse:Parser", ptr %t451, i32 0, i32 31
  %t454 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t453, ptr %t454)
  br label %bb54
bb54:
  br label %bb55
bb55:
  br label %bb38
bb56:
  br label %bb57
bb57:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t460 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t457, i32 111)
  store i1 %t460, ptr %l174
  br label %bb58
bb58:
  %t461 = load i1, ptr %l174, !tbaa !21
  %t462 = xor i1 %t461, true
  br i1 %t462, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s23
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/parse:Parser", ptr %t464, i32 0, i32 31
  %t467 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t466, i64 %t467)
  br label %bb61
bb60:
  br label %bb66
bb61:
  %t470 = load ptr, ptr %l0, !tbaa !29
  store ptr %t470, ptr %l179, !tbaa !29
  %t472 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s23, i32 111)
  store { i64, ptr } %t472, ptr %l181
  br label %bb62
bb62:
  %t473 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t474 = extractvalue { i64, ptr } %t473, 0
  %t475 = extractvalue { i64, ptr } %t473, 1
  %t476 = mul i64 %t474, 1
  %t477 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t476)
  call void @llvm.memcpy.p0.p0.i64(ptr %t477, ptr %t475, i64 %t476, i1 false)
  %t478 = insertvalue { i64, ptr } undef, i64 %t474, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t477, 1
  %t480 = load ptr, ptr %l179, !tbaa !29
  %t482 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s23, ptr %t480, { i64, ptr } %t479)
  store i32 %t482, ptr %l183
  %t483 = icmp ne i32 %t482, 0
  br i1 %t483, label %bb64, label %ok.484, !prof !99
ok.484:
  br label %bb63
bb63:
  br label %bb65
bb64:
  %t485 = load i32, ptr %l183, !tbaa !23
  %t486 = lshr i32 %t485, 16
  %t487 = and i32 %t485, 65535
  %t488 = icmp eq i32 %t486, 1
  %t489 = select i1 %t488, i32 1, i32 0
  %t490 = icmp eq i32 %t485, 0
  %t491 = shl i32 %t489, 16
  %t492 = or i32 %t491, %t487
  %t493 = select i1 %t490, i32 0, i32 %t492
  call void @__olang_scope_close(ptr %s23)
  %t494 = load ptr, ptr %l0, !tbaa !29
  store ptr %t494, ptr %l185, !tbaa !29
  %t495 = load ptr, ptr %l185, !tbaa !29
  %t496 = getelementptr %"compiler/parse:Parser", ptr %t495, i32 0, i32 18
  %t497 = load i64, ptr %t496, !tbaa !24
  %t499 = sub i64 %t497, 1
  %t501 = load ptr, ptr %l185, !tbaa !29
  %t502 = getelementptr %"compiler/parse:Parser", ptr %t501, i32 0, i32 18
  store i64 %t499, ptr %t502, !tbaa !24
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t504 = load i1, ptr %l3, !tbaa !21
  %t507 = getelementptr %"compiler/parse:Parser", ptr %t503, i32 0, i32 11
  store i1 %t504, ptr %t507, !tbaa !21
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t509 = load i1, ptr %l4, !tbaa !21
  %t512 = getelementptr %"compiler/parse:Parser", ptr %t508, i32 0, i32 19
  store i1 %t509, ptr %t512, !tbaa !21
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load i1, ptr %l5, !tbaa !21
  %t517 = getelementptr %"compiler/parse:Parser", ptr %t513, i32 0, i32 20
  store i1 %t514, ptr %t517, !tbaa !21
  %t519 = insertvalue { i32, ptr } zeroinitializer, i32 %t493, 0
  store { i32, ptr } %t519, ptr %rv
  br label %ret
bb65:
  call void @__olang_scope_close(ptr %s23)
  br label %bb66
bb66:
  %t520 = load ptr, ptr %l0, !tbaa !29
  %t522 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t520)
  store i32 %t522, ptr %l195
  br label %bb67
bb67:
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t524 = load i32, ptr %l1, !tbaa !23
  %t527 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t523, i32 %t524)
  store %"compiler/source:Span" %t527, ptr %l198
  br label %bb68
bb68:
  %t528 = load ptr, ptr %l2, !tbaa !29
  store ptr %t528, ptr %l200, !tbaa !29
  %t530 = load ptr, ptr %l0, !tbaa !29
  %t532 = getelementptr %"compiler/parse:Parser", ptr %t530, i32 0, i32 31
  %t533 = load i64, ptr %l6, !tbaa !24
  %t536 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t532, i64 %t533)
  store { i64, ptr } %t536, ptr %l204
  br label %bb69
bb69:
  store { i64, [4 x i64] } zeroinitializer, ptr %t537
  %t538 = getelementptr { i64, [4 x i64] }, ptr %t537, i32 0, i32 0
  store i64 17, ptr %t538
  %t539 = load %"compiler/source:Span", ptr %l198
  %t540 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t539, 0
  %t541 = load ptr, ptr %l200, !tbaa !29
  %t542 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t540, ptr %t541, 1
  %t543 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t544 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t542, { i64, ptr } %t543, 2
  %t545 = getelementptr { i64, [4 x i64] }, ptr %t537, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t544, ptr %t545
  %t546 = load { i64, [4 x i64] }, ptr %t537
  %t548 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t546, ptr %t548
  %t549 = load ptr, ptr %l0, !tbaa !29
  store ptr %t549, ptr %l207, !tbaa !29
  %t550 = load ptr, ptr %l207, !tbaa !29
  %t551 = getelementptr %"compiler/parse:Parser", ptr %t550, i32 0, i32 18
  %t552 = load i64, ptr %t551, !tbaa !24
  %t554 = sub i64 %t552, 1
  %t556 = load ptr, ptr %l207, !tbaa !29
  %t557 = getelementptr %"compiler/parse:Parser", ptr %t556, i32 0, i32 18
  store i64 %t554, ptr %t557, !tbaa !24
  %t558 = load ptr, ptr %l0, !tbaa !29
  %t559 = load i1, ptr %l3, !tbaa !21
  %t562 = getelementptr %"compiler/parse:Parser", ptr %t558, i32 0, i32 11
  store i1 %t559, ptr %t562, !tbaa !21
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load i1, ptr %l4, !tbaa !21
  %t567 = getelementptr %"compiler/parse:Parser", ptr %t563, i32 0, i32 19
  store i1 %t564, ptr %t567, !tbaa !21
  %t568 = load ptr, ptr %l0, !tbaa !29
  %t569 = load i1, ptr %l5, !tbaa !21
  %t572 = getelementptr %"compiler/parse:Parser", ptr %t568, i32 0, i32 20
  store i1 %t569, ptr %t572, !tbaa !21
  %t574 = insertvalue { i32, ptr } zeroinitializer, ptr %t548, 1
  store { i32, ptr } %t574, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrs(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca i32
  %l25 = alloca i32
  %l28 = alloca i1
  %l30 = alloca i1
  %l32 = alloca %"compiler/token:Token"
  %l34 = alloca i1
  %l36 = alloca i32
  %l38 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i32
  %l45 = alloca %"compiler/source:Span"
  %l51 = alloca i1
  %l52 = alloca i1
  %l54 = alloca %"compiler/token:Token"
  %l56 = alloca i1
  %l60 = alloca i32
  %l61 = alloca i32
  %l63 = alloca i32
  %l64 = alloca i32
  %l68 = alloca %"compiler/source:Span"
  %l75 = alloca i1
  %l76 = alloca i1
  %l78 = alloca i1
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca i32
  %l86 = alloca %"compiler/source:Span"
  %l93 = alloca i1
  %l94 = alloca i1
  %l96 = alloca %"compiler/token:Token"
  %l98 = alloca i1
  %l100 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l103 = alloca i32
  %l107 = alloca %"compiler/source:Span"
  %l114 = alloca %"compiler/source:Span"
  %l115 = alloca ptr
  %l116 = alloca %"compiler/source:Span"
  %l117 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca %"compiler/ast:Attr"
  %l128 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t91 = alloca { i64, [4 x i64] }, align 8
  %t150 = alloca { i64, [4 x i64] }, align 8
  %t200 = alloca { i64, [4 x i64] }, align 8
  %t256 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aAttr_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l1, !tbaa !29
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t5, i32 74)
  store i1 %t8, ptr %l14
  br label %bb3
bb3:
  %t9 = load i1, ptr %l14, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb75
bb5:
  br label %bb6
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/parse:Parser", ptr %t12, i32 0, i32 43
  store ptr %t14, ptr %l17, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/parse:Parser", ptr %t16, i32 0, i32 6
  %t19 = load i64, ptr %t18, !tbaa !24
  %t22 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %t15, i64 %t19)
  store i64 %t22, ptr %l21
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = load i64, ptr %l21, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t23, i64 %t24)
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t25)
  store i32 %t27, ptr %l23
  br label %bb9
bb9:
  %t28 = load i32, ptr %l23, !tbaa !23
  store i32 %t28, ptr %l2, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t29)
  store i32 %t31, ptr %l25
  br label %bb10
bb10:
  %t32 = load i32, ptr %l25, !tbaa !23
  store i32 %t32, ptr %l3, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t36 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t33, i32 1)
  store i1 %t36, ptr %l28
  br label %bb11
bb11:
  %t37 = load i1, ptr %l28, !tbaa !21
  %t38 = xor i1 %t37, true
  br i1 %t38, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb16
bb13:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t40)
  store %"compiler/token:Token" %t42, ptr %l32
  br label %bb14
bb14:
  %t43 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t44 = load %"compiler/token:Token", ptr %l32
  %t46 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t44, i8 %t43)
  store i1 %t46, ptr %l34
  br label %bb15
bb15:
  %t47 = load i1, ptr %l34, !tbaa !21
  store i1 %t47, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t48 = load i1, ptr %l30, !tbaa !21
  br i1 %t48, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s2, ptr %t49, { i64, ptr } { i64 79, ptr getelementptr inbounds (<{ i64, [79 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t51, ptr %l36
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb20, label %ok.53, !prof !99
ok.53:
  br label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb21
bb20:
  %t54 = load i32, ptr %l36, !tbaa !23
  %t55 = lshr i32 %t54, 16
  %t56 = and i32 %t54, 65535
  %t57 = icmp eq i32 %t55, 1
  %t58 = select i1 %t57, i32 1, i32 0
  %t59 = icmp eq i32 %t54, 0
  %t60 = shl i32 %t58, 16
  %t61 = or i32 %t60, %t56
  %t62 = select i1 %t59, i32 0, i32 %t61
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  %t64 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t62, 0
  store { i32, { i64, ptr } } %t64, ptr %rv
  br label %ret
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t65)
  %t68 = extractvalue { i32, i32 } %t67, 1
  %t69 = extractvalue { i32, i32 } %t67, 0
  store i32 %t69, ptr %l41
  %t70 = icmp ne i32 %t69, 0
  br i1 %t70, label %bb24, label %ok.71, !prof !99
ok.71:
  store i32 %t68, ptr %l40
  br label %bb23
bb23:
  %t72 = load i32, ptr %l40, !tbaa !23
  store i32 %t72, ptr %l38, !tbaa !23
  br label %bb25
bb24:
  %t73 = load i32, ptr %l41, !tbaa !23
  %t74 = lshr i32 %t73, 16
  %t75 = and i32 %t73, 65535
  %t76 = icmp eq i32 %t74, 1
  %t77 = select i1 %t76, i32 1, i32 0
  %t78 = icmp eq i32 %t73, 0
  %t79 = shl i32 %t77, 16
  %t80 = or i32 %t79, %t75
  %t81 = select i1 %t78, i32 0, i32 %t80
  call void @__olang_scope_close(ptr %s1)
  %t83 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t81, 0
  store { i32, { i64, ptr } } %t83, ptr %rv
  br label %ret
bb25:
  %t84 = load i32, ptr %l38, !tbaa !23
  store i32 %t84, ptr %l4, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l3, !tbaa !23
  %t89 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t85, i32 %t86)
  store %"compiler/source:Span" %t89, ptr %l45
  br label %bb26
bb26:
  %t90 = load i32, ptr %l4, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t91
  %t92 = getelementptr { i64, [4 x i64] }, ptr %t91, i32 0, i32 0
  store i64 0, ptr %t92
  %t93 = load %"compiler/source:Span", ptr %l45
  %t94 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t93, 0
  %t96 = insertvalue { %"compiler/source:Span", i32 } %t94, i32 %t90, 1
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t91, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t96, ptr %t97
  %t98 = load { i64, [4 x i64] }, ptr %t91
  %t100 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t98, ptr %t100
  store ptr %t100, ptr %l5, !tbaa !29
  br label %bb27
bb27:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t105 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t102, i32 76)
  store i1 %t105, ptr %l51
  br label %bb28
bb28:
  %t106 = load i1, ptr %l51, !tbaa !21
  br i1 %t106, label %bb29, label %bb30
bb29:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t107)
  store %"compiler/token:Token" %t109, ptr %l54
  br label %bb31
bb30:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb33
bb31:
  %t110 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t111 = load %"compiler/token:Token", ptr %l54
  %t113 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t111, i8 %t110)
  store i1 %t113, ptr %l56
  br label %bb32
bb32:
  %t114 = load i1, ptr %l56, !tbaa !21
  %t115 = xor i1 %t114, true
  store i1 %t115, ptr %l52, !tbaa !21
  br label %bb33
bb33:
  %t117 = load i1, ptr %l52, !tbaa !21
  %t118 = xor i1 %t117, true
  br i1 %t118, label %bb34, label %bb35
bb34:
  br label %bb43
bb35:
  br label %bb36
bb36:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t120)
  store i32 %t122, ptr %l60
  br label %bb37
bb37:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %t123)
  %t126 = extractvalue { i32, i32 } %t125, 1
  %t127 = extractvalue { i32, i32 } %t125, 0
  store i32 %t127, ptr %l64
  %t128 = icmp ne i32 %t127, 0
  br i1 %t128, label %bb39, label %ok.129, !prof !99
ok.129:
  store i32 %t126, ptr %l63
  br label %bb38
bb38:
  %t130 = load i32, ptr %l63, !tbaa !23
  store i32 %t130, ptr %l61, !tbaa !23
  br label %bb40
bb39:
  %t131 = load i32, ptr %l64, !tbaa !23
  %t132 = lshr i32 %t131, 16
  %t133 = and i32 %t131, 65535
  %t134 = icmp eq i32 %t132, 1
  %t135 = select i1 %t134, i32 1, i32 0
  %t136 = icmp eq i32 %t131, 0
  %t137 = shl i32 %t135, 16
  %t138 = or i32 %t137, %t133
  %t139 = select i1 %t136, i32 0, i32 %t138
  call void @__olang_scope_close(ptr %s1)
  %t141 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t139, 0
  store { i32, { i64, ptr } } %t141, ptr %rv
  br label %ret
bb40:
  %t142 = load i32, ptr %l61, !tbaa !23
  store i32 %t142, ptr %l6, !tbaa !23
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i32, ptr %l3, !tbaa !23
  %t147 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t143, i32 %t144)
  store %"compiler/source:Span" %t147, ptr %l68
  br label %bb41
bb41:
  %t148 = load ptr, ptr %l5, !tbaa !29
  %t149 = load i32, ptr %l6, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t150
  %t151 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 0
  store i64 14, ptr %t151
  %t152 = load %"compiler/source:Span", ptr %l68
  %t153 = insertvalue { %"compiler/source:Span", ptr, i32 } undef, %"compiler/source:Span" %t152, 0
  %t155 = insertvalue { %"compiler/source:Span", ptr, i32 } %t153, ptr %t148, 1
  %t157 = insertvalue { %"compiler/source:Span", ptr, i32 } %t155, i32 %t149, 2
  %t158 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i32 } %t157, ptr %t158
  %t159 = load { i64, [4 x i64] }, ptr %t150
  %t161 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t159, ptr %t161
  store ptr %t161, ptr %l5, !tbaa !29
  br label %bb42
bb42:
  br label %bb27
bb43:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t166 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t163, i32 97)
  store i1 %t166, ptr %l75
  br label %bb44
bb44:
  %t167 = load i1, ptr %l75, !tbaa !21
  br i1 %t167, label %bb45, label %bb46
bb45:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsCall(ptr %v0, ptr %t168, i64 0)
  store i1 %t170, ptr %l78
  br label %bb47
bb46:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb48
bb47:
  %t171 = load i1, ptr %l78, !tbaa !21
  store i1 %t171, ptr %l76, !tbaa !21
  br label %bb48
bb48:
  %t172 = load i1, ptr %l76, !tbaa !21
  br i1 %t172, label %bb49, label %bb50
bb49:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v1, ptr %t173)
  %t176 = extractvalue { i32, { i64, ptr } } %t175, 1
  %t177 = extractvalue { i32, { i64, ptr } } %t175, 0
  store i32 %t177, ptr %l82
  %t178 = icmp ne i32 %t177, 0
  br i1 %t178, label %bb52, label %ok.179, !prof !99
ok.179:
  store { i64, ptr } %t176, ptr %l81
  br label %bb51
bb50:
  br label %bb55
bb51:
  %t180 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t180, ptr %l79, !tbaa !27
  br label %bb53
bb52:
  %t181 = load i32, ptr %l82, !tbaa !23
  %t182 = lshr i32 %t181, 16
  %t183 = and i32 %t181, 65535
  %t184 = icmp eq i32 %t182, 1
  %t185 = select i1 %t184, i32 1, i32 0
  %t186 = icmp eq i32 %t181, 0
  %t187 = shl i32 %t185, 16
  %t188 = or i32 %t187, %t183
  %t189 = select i1 %t186, i32 0, i32 %t188
  call void @__olang_scope_close(ptr %s1)
  %t191 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t189, 0
  store { i32, { i64, ptr } } %t191, ptr %rv
  br label %ret
bb53:
  %t192 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t192, ptr %l7, !tbaa !27
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i32, ptr %l3, !tbaa !23
  %t197 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t193, i32 %t194)
  store %"compiler/source:Span" %t197, ptr %l86
  br label %bb54
bb54:
  %t198 = load ptr, ptr %l5, !tbaa !29
  %t199 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t200
  %t201 = getelementptr { i64, [4 x i64] }, ptr %t200, i32 0, i32 0
  store i64 13, ptr %t201
  %t202 = load %"compiler/source:Span", ptr %l86
  %t203 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t202, 0
  %t205 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t203, ptr %t198, 1
  %t207 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t205, { i64, ptr } %t199, 2
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t200, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t207, ptr %t208
  %t209 = load { i64, [4 x i64] }, ptr %t200
  %t211 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t209, ptr %t211
  store ptr %t211, ptr %l5, !tbaa !29
  br label %bb55
bb55:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t216 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t213, i32 108)
  store i1 %t216, ptr %l93
  br label %bb56
bb56:
  %t217 = load i1, ptr %l93, !tbaa !21
  br i1 %t217, label %bb57, label %bb58
bb57:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t218)
  store %"compiler/token:Token" %t220, ptr %l96
  br label %bb59
bb58:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb61
bb59:
  %t221 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t222 = load %"compiler/token:Token", ptr %l96
  %t224 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t222, i8 %t221)
  store i1 %t224, ptr %l98
  br label %bb60
bb60:
  %t225 = load i1, ptr %l98, !tbaa !21
  %t226 = xor i1 %t225, true
  store i1 %t226, ptr %l94, !tbaa !21
  br label %bb61
bb61:
  %t228 = load i1, ptr %l94, !tbaa !21
  br i1 %t228, label %bb62, label %bb63
bb62:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eargs(ptr %v0, ptr %v1, ptr %t229)
  %t232 = extractvalue { i32, { i64, ptr } } %t231, 1
  %t233 = extractvalue { i32, { i64, ptr } } %t231, 0
  store i32 %t233, ptr %l103
  %t234 = icmp ne i32 %t233, 0
  br i1 %t234, label %bb65, label %ok.235, !prof !99
ok.235:
  store { i64, ptr } %t232, ptr %l102
  br label %bb64
bb63:
  br label %bb68
bb64:
  %t236 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t236, ptr %l100, !tbaa !27
  br label %bb66
bb65:
  %t237 = load i32, ptr %l103, !tbaa !23
  %t238 = lshr i32 %t237, 16
  %t239 = and i32 %t237, 65535
  %t240 = icmp eq i32 %t238, 1
  %t241 = select i1 %t240, i32 1, i32 0
  %t242 = icmp eq i32 %t237, 0
  %t243 = shl i32 %t241, 16
  %t244 = or i32 %t243, %t239
  %t245 = select i1 %t242, i32 0, i32 %t244
  call void @__olang_scope_close(ptr %s1)
  %t247 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t245, 0
  store { i32, { i64, ptr } } %t247, ptr %rv
  br label %ret
bb66:
  %t248 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t248, ptr %l8, !tbaa !27
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i32, ptr %l3, !tbaa !23
  %t253 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t249, i32 %t250)
  store %"compiler/source:Span" %t253, ptr %l107
  br label %bb67
bb67:
  %t254 = load ptr, ptr %l5, !tbaa !29
  %t255 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t256
  %t257 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 0
  store i64 12, ptr %t257
  %t258 = load %"compiler/source:Span", ptr %l107
  %t259 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t258, 0
  %t261 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t259, ptr %t254, 1
  %t263 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t261, { i64, ptr } %t255, 2
  %t264 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t263, ptr %t264
  %t265 = load { i64, [4 x i64] }, ptr %t256
  %t267 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t265, ptr %t267
  store ptr %t267, ptr %l5, !tbaa !29
  br label %bb68
bb68:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load i32, ptr %l2, !tbaa !23
  %t273 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t269, i32 %t270)
  store %"compiler/source:Span" %t273, ptr %l114
  br label %bb69
bb69:
  %t274 = load %"compiler/source:Span", ptr %l114
  %t275 = load ptr, ptr %l1, !tbaa !29
  store ptr %t275, ptr %l115, !tbaa !29
  store %"compiler/source:Span" %t274, ptr %l116
  %t277 = load ptr, ptr %l5, !tbaa !29
  store ptr %t277, ptr %l117, !tbaa !29
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/parse:Parser", ptr %t278, i32 0, i32 2
  %t281 = load ptr, ptr %t280, !tbaa !29
  %t282 = load i32, ptr %l2, !tbaa !23
  %t283 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t286 = sext i32 %t282 to i64
  %t287 = call i64 @__olang_fmt_i64(ptr null, i64 %t286)
  %t288 = add i64 %t284, %t287
  %t289 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t288)
  call void @olang_textcopy(ptr %t289, ptr %t283, i64 %t284)
  %t290 = getelementptr i8, ptr %t289, i64 %t284
  %t291 = call i64 @__olang_fmt_i64(ptr %t290, i64 %t286)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t289, 1
  %t295 = extractvalue { i64, ptr } %t293, 0
  %t296 = extractvalue { i64, ptr } %t293, 1
  %t297 = mul i64 %t295, 1
  %t298 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t297)
  call void @llvm.memcpy.p0.p0.i64(ptr %t298, ptr %t296, i64 %t297, i1 false)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  %t303 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s1, ptr %t281, { i64, ptr } %t300)
  store i32 %t303, ptr %l123
  br label %bb70
bb70:
  %t304 = load %"compiler/source:Span", ptr %l116
  %t305 = load ptr, ptr %l117, !tbaa !29
  %t306 = load i32, ptr %l123, !tbaa !23
  %t307 = call %"compiler/ast:Attr" @compiler_2fast_3aAttr_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t304, ptr %t305, i32 %t306)
  store %"compiler/ast:Attr" %t307, ptr %l124
  br label %bb71
bb71:
  %t308 = load %"compiler/ast:Attr", ptr %l124
  %t309 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store %"compiler/ast:Attr" %t308, ptr %t309
  %t310 = load ptr, ptr %l115, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aAttr_26_3e_2ePush_3ccompiler_2fast_3aAttr_26_3e(ptr %v1, ptr %v1, ptr %t310, ptr %t309)
  br label %bb72
bb72:
  %t312 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t312)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s1)
  br label %bb74
bb74:
  br label %bb2
bb75:
  %t314 = load ptr, ptr %l1, !tbaa !29
  %t316 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aAttr_26_3e_2eToArray_3ccompiler_2fast_3aAttr_26_3e(ptr %v1, ptr %v1, ptr %t314)
  store { i64, ptr } %t316, ptr %l128
  br label %bb76
bb76:
  %t317 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t318 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t317, 1
  store { i32, { i64, ptr } } %t318, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca %"compiler/token:Token"
  %l9 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t12)
  store %"compiler/token:Token" %t14, ptr %l7
  br label %bb4
bb4:
  %t15 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t16 = load %"compiler/token:Token", ptr %l7
  %t18 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t16, i8 %t15)
  store i1 %t18, ptr %l9
  br label %bb5
bb5:
  %t19 = load i1, ptr %l9, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclosesAngle(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
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
  %t7 = trunc i64 99 to i32
  %t8 = icmp eq i32 %t5, %t7
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t12 = trunc i64 107 to i32
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
  %t18 = trunc i64 100 to i32
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
  %t24 = trunc i64 88 to i32
  %t25 = icmp eq i32 %t22, %t24
  store i1 %t25, ptr %l12, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l12, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehends(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca { i64, ptr }
  %l10 = alloca i1
  %l25 = alloca i1
  %l28 = alloca { i64, ptr }
  %l37 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 6
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/scan:Tokens", ptr %t9, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr %"compiler/token:Token", ptr %t16, i64 %t13
  %t18 = getelementptr %"compiler/token:Token", ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 114}
  %t21 = trunc i64 8 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb2, label %bb3
bb2:
  %t24 = load i64, ptr %l1, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/parse:Parser", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/scan:Tokens", ptr %t28, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = sub i64 %t33, 1
  %t38 = icmp slt i64 %t24, %t35
  store i1 %t38, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t40 = load i1, ptr %l10, !tbaa !21
  %t41 = xor i1 %t40, true
  br i1 %t41, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l1, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/parse:Parser", ptr %t47, i32 0, i32 7
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 114}
  %t52 = trunc i64 0 to i32
  %t53 = icmp eq i32 %t50, %t52
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb12
bb11:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/parse:Parser", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/scan:Tokens", ptr %t60, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l28, !tbaa !27
  %t64 = load i64, ptr %l1, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"compiler/token:Token", ptr %t67, i64 %t64
  %t69 = getelementptr %"compiler/token:Token", ptr %t68, i32 0, i32 0
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 114}
  %t72 = trunc i64 25 to i32
  %t73 = icmp eq i32 %t70, %t72
  %t75 = xor i1 %t73, true
  store i1 %t75, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t77 = load i1, ptr %l25, !tbaa !21
  br i1 %t77, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l1, !tbaa !24
  %t83 = getelementptr %"compiler/parse:Parser", ptr %t79, i32 0, i32 6
  store i64 %t80, ptr %t83, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t84)
  store i32 %t86, ptr %l37
  br label %bb16
bb16:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehension(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca ptr
  %l15 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l24 = alloca i1
  %l26 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l33 = alloca i32
  %l36 = alloca i32
  %l37 = alloca i32
  %l43 = alloca i1
  %l45 = alloca i32
  %l48 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca i32
  %l60 = alloca i1
  %l64 = alloca %"compiler/source:Span"
  %l68 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca i32
  %l81 = alloca i1
  %l82 = alloca ptr
  %l84 = alloca ptr
  %l85 = alloca i32
  %l94 = alloca %"compiler/source:Span"
  %l95 = alloca ptr
  %l96 = alloca i32
  %l97 = alloca i32
  %l102 = alloca %"compiler/ast:Compr"
  %l108 = alloca i32
  %l111 = alloca i32
  %l112 = alloca i32
  %l118 = alloca %"compiler/source:Span"
  %l119 = alloca ptr
  %l120 = alloca ptr
  %l121 = alloca i32
  %l122 = alloca i32
  %l127 = alloca %"compiler/ast:Compr"
  %rv = alloca { i32, ptr }
  %t161 = alloca { i64, [4 x i64] }, align 8
  %t249 = alloca { i64, [4 x i64] }, align 8
  %t315 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 19
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l5, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 19
  store i1 true, ptr %t8, !tbaa !21
  store i32 0, ptr %l6, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t9)
  %t12 = extractvalue { i32, i32 } %t11, 1
  %t13 = extractvalue { i32, i32 } %t11, 0
  store i32 %t13, ptr %l18
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb2, label %ok.15, !prof !99
ok.15:
  store i32 %t12, ptr %l17
  br label %bb1
bb1:
  %t16 = load i32, ptr %l17, !tbaa !23
  store i32 %t16, ptr %l15, !tbaa !23
  br label %bb3
bb2:
  %t17 = load i32, ptr %l18, !tbaa !23
  %t18 = lshr i32 %t17, 16
  %t19 = and i32 %t17, 65535
  %t20 = icmp eq i32 %t18, 1
  %t21 = select i1 %t20, i32 1, i32 0
  %t22 = icmp eq i32 %t17, 0
  %t23 = shl i32 %t21, 16
  %t24 = or i32 %t23, %t19
  %t25 = select i1 %t22, i32 0, i32 %t24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i1, ptr %l5, !tbaa !21
  %t30 = getelementptr %"compiler/parse:Parser", ptr %t26, i32 0, i32 19
  store i1 %t27, ptr %t30, !tbaa !21
  %t32 = insertvalue { i32, ptr } zeroinitializer, i32 %t25, 0
  store { i32, ptr } %t32, ptr %rv
  br label %ret
bb3:
  %t33 = load i32, ptr %l15, !tbaa !23
  store i32 %t33, ptr %l7, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t37 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t34, i32 75)
  store i1 %t37, ptr %l24
  br label %bb4
bb4:
  %t38 = load i1, ptr %l24, !tbaa !21
  br i1 %t38, label %bb5, label %bb6
bb5:
  %t39 = load i32, ptr %l7, !tbaa !23
  store i32 %t39, ptr %l6, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t41)
  %t44 = extractvalue { i32, i32 } %t43, 1
  %t45 = extractvalue { i32, i32 } %t43, 0
  store i32 %t45, ptr %l29
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb8, label %ok.47, !prof !99
ok.47:
  store i32 %t44, ptr %l28
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t48 = load i32, ptr %l28, !tbaa !23
  store i32 %t48, ptr %l26, !tbaa !23
  br label %bb9
bb8:
  %t49 = load i32, ptr %l29, !tbaa !23
  %t50 = lshr i32 %t49, 16
  %t51 = and i32 %t49, 65535
  %t52 = icmp eq i32 %t50, 1
  %t53 = select i1 %t52, i32 1, i32 0
  %t54 = icmp eq i32 %t49, 0
  %t55 = shl i32 %t53, 16
  %t56 = or i32 %t55, %t51
  %t57 = select i1 %t54, i32 0, i32 %t56
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i1, ptr %l5, !tbaa !21
  %t62 = getelementptr %"compiler/parse:Parser", ptr %t58, i32 0, i32 19
  store i1 %t59, ptr %t62, !tbaa !21
  %t64 = insertvalue { i32, ptr } zeroinitializer, i32 %t57, 0
  store { i32, ptr } %t64, ptr %rv
  br label %ret
bb9:
  %t65 = load i32, ptr %l26, !tbaa !23
  store i32 %t65, ptr %l7, !tbaa !23
  br label %bb10
bb10:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t69 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t66, i32 27)
  %t70 = extractvalue { i32, i32 } %t69, 1
  %t71 = extractvalue { i32, i32 } %t69, 0
  store i32 %t71, ptr %l37
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb12, label %ok.73, !prof !99
ok.73:
  store i32 %t70, ptr %l36
  br label %bb11
bb11:
  %t74 = load i32, ptr %l36, !tbaa !23
  store i32 %t74, ptr %l33, !tbaa !23
  br label %bb13
bb12:
  %t75 = load i32, ptr %l37, !tbaa !23
  %t76 = lshr i32 %t75, 16
  %t77 = and i32 %t75, 65535
  %t78 = icmp eq i32 %t76, 1
  %t79 = select i1 %t78, i32 1, i32 0
  %t80 = icmp eq i32 %t75, 0
  %t81 = shl i32 %t79, 16
  %t82 = or i32 %t81, %t77
  %t83 = select i1 %t80, i32 0, i32 %t82
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i1, ptr %l5, !tbaa !21
  %t88 = getelementptr %"compiler/parse:Parser", ptr %t84, i32 0, i32 19
  store i1 %t85, ptr %t88, !tbaa !21
  %t90 = insertvalue { i32, ptr } zeroinitializer, i32 %t83, 0
  store { i32, ptr } %t90, ptr %rv
  br label %ret
bb13:
  store ptr null, ptr %l8, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t94 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t91, i32 30)
  store i1 %t94, ptr %l43
  br label %bb14
bb14:
  %t95 = load i1, ptr %l43, !tbaa !21
  br i1 %t95, label %bb15, label %bb16
bb15:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t96)
  store i32 %t98, ptr %l45
  br label %bb17
bb16:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v3, ptr %t99, i64 1)
  %t102 = extractvalue { i32, ptr } %t101, 1
  %t103 = extractvalue { i32, ptr } %t101, 0
  store i32 %t103, ptr %l74
  %t104 = icmp ne i32 %t103, 0
  br i1 %t104, label %bb33, label %ok.105, !prof !99
ok.105:
  store ptr %t102, ptr %l73
  br label %bb32
bb17:
  %t106 = load i32, ptr %l45, !tbaa !23
  store i32 %t106, ptr %l9, !tbaa !23
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/parse:Parser", ptr %t107, i32 0, i32 31
  %t111 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t109)
  store i64 %t111, ptr %l48
  br label %bb18
bb18:
  %t112 = load i64, ptr %l48, !tbaa !24
  store i64 %t112, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/parse:Parser", ptr %t113, i32 0, i32 31
  store ptr %t115, ptr %l50, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v0, ptr %t116, i64 1)
  %t119 = extractvalue { i32, ptr } %t118, 1
  %t120 = extractvalue { i32, ptr } %t118, 0
  store i32 %t120, ptr %l54
  %t121 = icmp ne i32 %t120, 0
  br i1 %t121, label %bb21, label %ok.122, !prof !99
ok.122:
  store ptr %t119, ptr %l53
  br label %bb20
bb20:
  %t123 = load ptr, ptr %l53, !tbaa !29
  store ptr %t123, ptr %l51, !tbaa !29
  br label %bb22
bb21:
  %t124 = load i32, ptr %l54, !tbaa !23
  %t125 = lshr i32 %t124, 16
  %t126 = and i32 %t124, 65535
  %t127 = icmp eq i32 %t125, 1
  %t128 = select i1 %t127, i32 1, i32 0
  %t129 = icmp eq i32 %t124, 0
  %t130 = shl i32 %t128, 16
  %t131 = or i32 %t130, %t126
  %t132 = select i1 %t129, i32 0, i32 %t131
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i1, ptr %l5, !tbaa !21
  %t137 = getelementptr %"compiler/parse:Parser", ptr %t133, i32 0, i32 19
  store i1 %t134, ptr %t137, !tbaa !21
  %t139 = insertvalue { i32, ptr } zeroinitializer, i32 %t132, 0
  store { i32, ptr } %t139, ptr %rv
  br label %ret
bb22:
  %t140 = load ptr, ptr %l50, !tbaa !29
  %t141 = load ptr, ptr %l51, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t140, ptr %t141)
  br label %bb23
bb23:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t145 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t142, i32 75)
  store i1 %t145, ptr %l60
  br label %bb24
bb24:
  %t146 = load i1, ptr %l60, !tbaa !21
  %t147 = xor i1 %t146, true
  br i1 %t147, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb19
bb29:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i32, ptr %l9, !tbaa !23
  %t153 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t149, i32 %t150)
  store %"compiler/source:Span" %t153, ptr %l64
  br label %bb30
bb30:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/parse:Parser", ptr %t154, i32 0, i32 31
  %t157 = load i64, ptr %l10, !tbaa !24
  %t160 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t156, i64 %t157)
  store { i64, ptr } %t160, ptr %l68
  br label %bb31
bb31:
  store { i64, [4 x i64] } zeroinitializer, ptr %t161
  %t162 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 0
  store i64 24, ptr %t162
  %t163 = load %"compiler/source:Span", ptr %l64
  %t164 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t163, 0
  %t165 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t166 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t164, { i64, ptr } %t165, 1
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t166, ptr %t167
  %t168 = load { i64, [4 x i64] }, ptr %t161
  %t170 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t168, ptr %t170
  store ptr %t170, ptr %l8, !tbaa !29
  br label %bb35
bb32:
  %t172 = load ptr, ptr %l73, !tbaa !29
  store ptr %t172, ptr %l71, !tbaa !29
  br label %bb34
bb33:
  %t173 = load i32, ptr %l74, !tbaa !23
  %t174 = lshr i32 %t173, 16
  %t175 = and i32 %t173, 65535
  %t176 = icmp eq i32 %t174, 1
  %t177 = select i1 %t176, i32 1, i32 0
  %t178 = icmp eq i32 %t173, 0
  %t179 = shl i32 %t177, 16
  %t180 = or i32 %t179, %t175
  %t181 = select i1 %t178, i32 0, i32 %t180
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i1, ptr %l5, !tbaa !21
  %t186 = getelementptr %"compiler/parse:Parser", ptr %t182, i32 0, i32 19
  store i1 %t183, ptr %t186, !tbaa !21
  %t188 = insertvalue { i32, ptr } zeroinitializer, i32 %t181, 0
  store { i32, ptr } %t188, ptr %rv
  br label %ret
bb34:
  %t189 = load ptr, ptr %l71, !tbaa !29
  store ptr %t189, ptr %l8, !tbaa !29
  br label %bb35
bb35:
  store ptr null, ptr %l11, !tbaa !29
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t194 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t191, i32 9)
  store i1 %t194, ptr %l81
  br label %bb36
bb36:
  %t195 = load i1, ptr %l81, !tbaa !21
  br i1 %t195, label %bb37, label %bb38
bb37:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v3, ptr %t196, i64 1)
  %t199 = extractvalue { i32, ptr } %t198, 1
  %t200 = extractvalue { i32, ptr } %t198, 0
  store i32 %t200, ptr %l85
  %t201 = icmp ne i32 %t200, 0
  br i1 %t201, label %bb40, label %ok.202, !prof !99
ok.202:
  store ptr %t199, ptr %l84
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t203 = load ptr, ptr %l84, !tbaa !29
  store ptr %t203, ptr %l82, !tbaa !29
  br label %bb41
bb40:
  %t204 = load i32, ptr %l85, !tbaa !23
  %t205 = lshr i32 %t204, 16
  %t206 = and i32 %t204, 65535
  %t207 = icmp eq i32 %t205, 1
  %t208 = select i1 %t207, i32 1, i32 0
  %t209 = icmp eq i32 %t204, 0
  %t210 = shl i32 %t208, 16
  %t211 = or i32 %t210, %t206
  %t212 = select i1 %t209, i32 0, i32 %t211
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load i1, ptr %l5, !tbaa !21
  %t217 = getelementptr %"compiler/parse:Parser", ptr %t213, i32 0, i32 19
  store i1 %t214, ptr %t217, !tbaa !21
  %t219 = insertvalue { i32, ptr } zeroinitializer, i32 %t212, 0
  store { i32, ptr } %t219, ptr %rv
  br label %ret
bb41:
  %t220 = load ptr, ptr %l82, !tbaa !29
  store ptr %t220, ptr %l11, !tbaa !29
  br label %bb42
bb42:
  %t224 = trunc i64 109 to i32
  %t225 = icmp eq i32 %a4, %t224
  br i1 %t225, label %bb43, label %bb44
bb43:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load i32, ptr %l1, !tbaa !23
  %t231 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t227, i32 %t228)
  store %"compiler/source:Span" %t231, ptr %l94
  br label %bb45
bb44:
  br label %bb50
bb45:
  %t232 = load ptr, ptr %l3, !tbaa !29
  store ptr %t232, ptr %l95, !tbaa !29
  %t233 = load i32, ptr %l6, !tbaa !23
  store i32 %t233, ptr %l96, !tbaa !23
  %t234 = load i32, ptr %l7, !tbaa !23
  store i32 %t234, ptr %l97, !tbaa !23
  %t235 = load ptr, ptr %l8, !tbaa !29
  %t237 = icmp eq ptr %t235, null
  br i1 %t237, label %bb46, label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_562ee49de0d7f4dc_ca929e902ecee878)
  unreachable
bb47:
  br label %bb48
bb48:
  %t239 = load ptr, ptr %l8, !tbaa !29
  %t240 = load ptr, ptr %l11, !tbaa !29
  %t241 = load ptr, ptr %l95, !tbaa !29
  %t242 = load i32, ptr %l96, !tbaa !23
  %t243 = load i32, ptr %l97, !tbaa !23
  %t246 = call %"compiler/ast:Compr" @compiler_2fast_3aCompr_2ector(ptr %v3, ptr %v2, ptr %v3, ptr %v3, ptr %v3, ptr null, ptr %t241, i32 %t242, i32 %t243, ptr %t239, ptr %t240, i1 true, i64 -1)
  store %"compiler/ast:Compr" %t246, ptr %l102
  br label %bb49
bb49:
  %t247 = load %"compiler/ast:Compr", ptr %l102
  %t248 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 56, i64 8)
  store %"compiler/ast:Compr" %t247, ptr %t248
  store { i64, [4 x i64] } zeroinitializer, ptr %t249
  %t250 = getelementptr { i64, [4 x i64] }, ptr %t249, i32 0, i32 0
  store i64 19, ptr %t250
  %t251 = load %"compiler/source:Span", ptr %l94
  %t252 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t251, 0
  %t254 = insertvalue { %"compiler/source:Span", ptr } %t252, ptr %t248, 1
  %t255 = getelementptr { i64, [4 x i64] }, ptr %t249, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t254, ptr %t255
  %t256 = load { i64, [4 x i64] }, ptr %t249
  %t258 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t256, ptr %t258
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i1, ptr %l5, !tbaa !21
  %t263 = getelementptr %"compiler/parse:Parser", ptr %t259, i32 0, i32 19
  store i1 %t260, ptr %t263, !tbaa !21
  %t265 = insertvalue { i32, ptr } zeroinitializer, ptr %t258, 1
  store { i32, ptr } %t265, ptr %rv
  br label %ret
bb50:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t269 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t266, i32 111)
  %t270 = extractvalue { i32, i32 } %t269, 1
  %t271 = extractvalue { i32, i32 } %t269, 0
  store i32 %t271, ptr %l112
  %t272 = icmp ne i32 %t271, 0
  br i1 %t272, label %bb52, label %ok.273, !prof !99
ok.273:
  store i32 %t270, ptr %l111
  br label %bb51
bb51:
  %t274 = load i32, ptr %l111, !tbaa !23
  store i32 %t274, ptr %l108, !tbaa !23
  br label %bb53
bb52:
  %t275 = load i32, ptr %l112, !tbaa !23
  %t276 = lshr i32 %t275, 16
  %t277 = and i32 %t275, 65535
  %t278 = icmp eq i32 %t276, 1
  %t279 = select i1 %t278, i32 1, i32 0
  %t280 = icmp eq i32 %t275, 0
  %t281 = shl i32 %t279, 16
  %t282 = or i32 %t281, %t277
  %t283 = select i1 %t280, i32 0, i32 %t282
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i1, ptr %l5, !tbaa !21
  %t288 = getelementptr %"compiler/parse:Parser", ptr %t284, i32 0, i32 19
  store i1 %t285, ptr %t288, !tbaa !21
  %t290 = insertvalue { i32, ptr } zeroinitializer, i32 %t283, 0
  store { i32, ptr } %t290, ptr %rv
  br label %ret
bb53:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load i32, ptr %l1, !tbaa !23
  %t295 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t291, i32 %t292)
  store %"compiler/source:Span" %t295, ptr %l118
  br label %bb54
bb54:
  store ptr %a2, ptr %l119, !tbaa !29
  %t297 = load ptr, ptr %l3, !tbaa !29
  store ptr %t297, ptr %l120, !tbaa !29
  %t298 = load i32, ptr %l6, !tbaa !23
  store i32 %t298, ptr %l121, !tbaa !23
  %t299 = load i32, ptr %l7, !tbaa !23
  store i32 %t299, ptr %l122, !tbaa !23
  %t300 = load ptr, ptr %l8, !tbaa !29
  %t302 = icmp eq ptr %t300, null
  br i1 %t302, label %bb55, label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_8028beeed4c0afcb_93e9486db4deb497)
  unreachable
bb56:
  br label %bb57
bb57:
  %t304 = load ptr, ptr %l8, !tbaa !29
  %t305 = load ptr, ptr %l11, !tbaa !29
  %t306 = load ptr, ptr %l119, !tbaa !29
  %t307 = load ptr, ptr %l120, !tbaa !29
  %t308 = load i32, ptr %l121, !tbaa !23
  %t309 = load i32, ptr %l122, !tbaa !23
  %t312 = call %"compiler/ast:Compr" @compiler_2fast_3aCompr_2ector(ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %v3, ptr %t306, ptr %t307, i32 %t308, i32 %t309, ptr %t304, ptr %t305, i1 false, i64 -1)
  store %"compiler/ast:Compr" %t312, ptr %l127
  br label %bb58
bb58:
  %t313 = load %"compiler/ast:Compr", ptr %l127
  %t314 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 56, i64 8)
  store %"compiler/ast:Compr" %t313, ptr %t314
  store { i64, [4 x i64] } zeroinitializer, ptr %t315
  %t316 = getelementptr { i64, [4 x i64] }, ptr %t315, i32 0, i32 0
  store i64 19, ptr %t316
  %t317 = load %"compiler/source:Span", ptr %l118
  %t318 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t317, 0
  %t320 = insertvalue { %"compiler/source:Span", ptr } %t318, ptr %t314, 1
  %t321 = getelementptr { i64, [4 x i64] }, ptr %t315, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t320, ptr %t321
  %t322 = load { i64, [4 x i64] }, ptr %t315
  %t324 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t322, ptr %t324
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load i1, ptr %l5, !tbaa !21
  %t329 = getelementptr %"compiler/parse:Parser", ptr %t325, i32 0, i32 19
  store i1 %t326, ptr %t329, !tbaa !21
  %t331 = insertvalue { i32, ptr } zeroinitializer, ptr %t324, 1
  store { i32, ptr } %t331, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econtract(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l26 = alloca ptr
  %l31 = alloca i64
  %l35 = alloca i1
  %l39 = alloca i32
  %l40 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca i32
  %l49 = alloca ptr
  %l53 = alloca ptr
  %l56 = alloca %"compiler/source:Span"
  %l60 = alloca i1
  %l63 = alloca i1
  %l64 = alloca i32
  %l70 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l79 = alloca i32
  %l82 = alloca i32
  %l83 = alloca i32
  %l89 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l96 = alloca %"compiler/ast:ContractBlock"
  %l102 = alloca ptr
  %rv = alloca { i32, ptr }
  %t129 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 43
  store ptr %t3, ptr %l9, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Parser", ptr %t5, i32 0, i32 6
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %t4, i64 %t8)
  store i64 %t11, ptr %l13
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t13 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t12, i64 %t13)
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t17 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t14, i32 110)
  %t18 = extractvalue { i32, i32 } %t17, 1
  %t19 = extractvalue { i32, i32 } %t17, 0
  store i32 %t19, ptr %l18
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb4, label %ok.21, !prof !99
ok.21:
  store i32 %t18, ptr %l17
  br label %bb3
bb3:
  %t22 = load i32, ptr %l17, !tbaa !23
  store i32 %t22, ptr %l14, !tbaa !23
  br label %bb5
bb4:
  %t23 = load i32, ptr %l18, !tbaa !23
  %t24 = lshr i32 %t23, 16
  %t25 = and i32 %t23, 65535
  %t26 = icmp eq i32 %t24, 1
  %t27 = select i1 %t26, i32 1, i32 0
  %t28 = icmp eq i32 %t23, 0
  %t29 = shl i32 %t27, 16
  %t30 = or i32 %t29, %t25
  %t31 = select i1 %t28, i32 0, i32 %t30
  %t33 = insertvalue { i32, ptr } zeroinitializer, i32 %t31, 0
  store { i32, ptr } %t33, ptr %rv
  br label %ret
bb5:
  %t34 = load i32, ptr %l14, !tbaa !23
  store i32 %t34, ptr %l1, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/parse:Parser", ptr %t35, i32 0, i32 20
  %t38 = load i1, ptr %t37, !tbaa !21
  store i1 %t38, ptr %l2, !tbaa !21
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/parse:Parser", ptr %t40, i32 0, i32 19
  %t43 = load i1, ptr %t42, !tbaa !21
  store i1 %t43, ptr %l3, !tbaa !21
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/parse:Parser", ptr %t45, i32 0, i32 20
  store i1 false, ptr %t47, !tbaa !21
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/parse:Parser", ptr %t48, i32 0, i32 19
  store i1 false, ptr %t50, !tbaa !21
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l26, !tbaa !29
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t53 = getelementptr %"compiler/parse:Parser", ptr %t52, i32 0, i32 18
  %t54 = load i64, ptr %t53, !tbaa !24
  %t56 = add i64 %t54, 1
  %t58 = load ptr, ptr %l26, !tbaa !29
  %t59 = getelementptr %"compiler/parse:Parser", ptr %t58, i32 0, i32 18
  store i64 %t56, ptr %t59, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/parse:Parser", ptr %t60, i32 0, i32 32
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eLen_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l31
  br label %bb6
bb6:
  %t65 = load i64, ptr %l31, !tbaa !24
  store i64 %t65, ptr %l4, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t66)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t68, i32 111)
  store i1 %t71, ptr %l35
  br label %bb9
bb9:
  %t72 = load i1, ptr %l35, !tbaa !21
  %t73 = xor i1 %t72, true
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb10, label %bb11
bb10:
  br label %bb26
bb11:
  br label %bb12
bb12:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t77)
  store i32 %t79, ptr %l39
  br label %bb13
bb13:
  %t80 = load i32, ptr %l39, !tbaa !23
  store i32 %t80, ptr %l5, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v0, ptr %t81)
  %t84 = extractvalue { i32, ptr } %t83, 1
  %t85 = extractvalue { i32, ptr } %t83, 0
  store i32 %t85, ptr %l43
  %t86 = icmp ne i32 %t85, 0
  br i1 %t86, label %bb15, label %ok.87, !prof !99
ok.87:
  store ptr %t84, ptr %l42
  br label %bb14
bb14:
  %t88 = load ptr, ptr %l42, !tbaa !29
  store ptr %t88, ptr %l40, !tbaa !29
  br label %bb16
bb15:
  %t89 = load i32, ptr %l43, !tbaa !23
  %t90 = lshr i32 %t89, 16
  %t91 = and i32 %t89, 65535
  %t92 = icmp eq i32 %t90, 1
  %t93 = select i1 %t92, i32 1, i32 0
  %t94 = icmp eq i32 %t89, 0
  %t95 = shl i32 %t93, 16
  %t96 = or i32 %t95, %t91
  %t97 = select i1 %t94, i32 0, i32 %t96
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i1, ptr %l2, !tbaa !21
  %t102 = getelementptr %"compiler/parse:Parser", ptr %t98, i32 0, i32 20
  store i1 %t99, ptr %t102, !tbaa !21
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i1, ptr %l3, !tbaa !21
  %t107 = getelementptr %"compiler/parse:Parser", ptr %t103, i32 0, i32 19
  store i1 %t104, ptr %t107, !tbaa !21
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l49, !tbaa !29
  %t109 = load ptr, ptr %l49, !tbaa !29
  %t110 = getelementptr %"compiler/parse:Parser", ptr %t109, i32 0, i32 18
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = sub i64 %t111, 1
  %t115 = load ptr, ptr %l49, !tbaa !29
  %t116 = getelementptr %"compiler/parse:Parser", ptr %t115, i32 0, i32 18
  store i64 %t113, ptr %t116, !tbaa !24
  %t118 = insertvalue { i32, ptr } zeroinitializer, i32 %t97, 0
  store { i32, ptr } %t118, ptr %rv
  br label %ret
bb16:
  %t119 = load ptr, ptr %l40, !tbaa !29
  store ptr %t119, ptr %l6, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/parse:Parser", ptr %t120, i32 0, i32 32
  store ptr %t122, ptr %l53, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l5, !tbaa !23
  %t127 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t123, i32 %t124)
  store %"compiler/source:Span" %t127, ptr %l56
  br label %bb17
bb17:
  %t128 = load ptr, ptr %l6, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t129
  %t130 = getelementptr { i64, [4 x i64] }, ptr %t129, i32 0, i32 0
  store i64 14, ptr %t130
  %t131 = load %"compiler/source:Span", ptr %l56
  %t132 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t131, 0
  %t134 = insertvalue { %"compiler/source:Span", ptr, ptr } %t132, ptr %t128, 1
  %t135 = insertvalue { %"compiler/source:Span", ptr, ptr } %t134, ptr null, 2
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t129, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t135, ptr %t136
  %t137 = load { i64, [4 x i64] }, ptr %t129
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t137, ptr %t139
  %t140 = load ptr, ptr %l53, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ePush_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t140, ptr %t139)
  br label %bb18
bb18:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t145 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t142, i32 111)
  %t146 = extractvalue { i32, i1 } %t145, 1
  %t147 = extractvalue { i32, i1 } %t145, 0
  store i32 %t147, ptr %l64
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb20, label %ok.149, !prof !99
ok.149:
  store i1 %t146, ptr %l63
  br label %bb19
bb19:
  %t150 = load i1, ptr %l63, !tbaa !21
  store i1 %t150, ptr %l60, !tbaa !21
  br label %bb21
bb20:
  %t151 = load i32, ptr %l64, !tbaa !23
  %t152 = lshr i32 %t151, 16
  %t153 = and i32 %t151, 65535
  %t154 = icmp eq i32 %t152, 1
  %t155 = select i1 %t154, i32 1, i32 0
  %t156 = icmp eq i32 %t151, 0
  %t157 = shl i32 %t155, 16
  %t158 = or i32 %t157, %t153
  %t159 = select i1 %t156, i32 0, i32 %t158
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i1, ptr %l2, !tbaa !21
  %t164 = getelementptr %"compiler/parse:Parser", ptr %t160, i32 0, i32 20
  store i1 %t161, ptr %t164, !tbaa !21
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i1, ptr %l3, !tbaa !21
  %t169 = getelementptr %"compiler/parse:Parser", ptr %t165, i32 0, i32 19
  store i1 %t166, ptr %t169, !tbaa !21
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l70, !tbaa !29
  %t171 = load ptr, ptr %l70, !tbaa !29
  %t172 = getelementptr %"compiler/parse:Parser", ptr %t171, i32 0, i32 18
  %t173 = load i64, ptr %t172, !tbaa !24
  %t175 = sub i64 %t173, 1
  %t177 = load ptr, ptr %l70, !tbaa !29
  %t178 = getelementptr %"compiler/parse:Parser", ptr %t177, i32 0, i32 18
  store i64 %t175, ptr %t178, !tbaa !24
  %t180 = insertvalue { i32, ptr } zeroinitializer, i32 %t159, 0
  store { i32, ptr } %t180, ptr %rv
  br label %ret
bb21:
  %t181 = load i1, ptr %l60, !tbaa !21
  %t182 = xor i1 %t181, true
  br i1 %t182, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %bb8
bb26:
  %t184 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t184)
  br label %bb27
bb27:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/parse:Parser", ptr %t186, i32 0, i32 32
  %t189 = load i64, ptr %l4, !tbaa !24
  %t192 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %t188, i64 %t189)
  store { i64, ptr } %t192, ptr %l78
  br label %bb28
bb28:
  %t193 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t193, ptr %l7, !tbaa !27
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t197 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t194, i32 111)
  %t198 = extractvalue { i32, i32 } %t197, 1
  %t199 = extractvalue { i32, i32 } %t197, 0
  store i32 %t199, ptr %l83
  %t200 = icmp ne i32 %t199, 0
  br i1 %t200, label %bb30, label %ok.201, !prof !99
ok.201:
  store i32 %t198, ptr %l82
  br label %bb29
bb29:
  %t202 = load i32, ptr %l82, !tbaa !23
  store i32 %t202, ptr %l79, !tbaa !23
  br label %bb31
bb30:
  %t203 = load i32, ptr %l83, !tbaa !23
  %t204 = lshr i32 %t203, 16
  %t205 = and i32 %t203, 65535
  %t206 = icmp eq i32 %t204, 1
  %t207 = select i1 %t206, i32 1, i32 0
  %t208 = icmp eq i32 %t203, 0
  %t209 = shl i32 %t207, 16
  %t210 = or i32 %t209, %t205
  %t211 = select i1 %t208, i32 0, i32 %t210
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load i1, ptr %l2, !tbaa !21
  %t216 = getelementptr %"compiler/parse:Parser", ptr %t212, i32 0, i32 20
  store i1 %t213, ptr %t216, !tbaa !21
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i1, ptr %l3, !tbaa !21
  %t221 = getelementptr %"compiler/parse:Parser", ptr %t217, i32 0, i32 19
  store i1 %t218, ptr %t221, !tbaa !21
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l89, !tbaa !29
  %t223 = load ptr, ptr %l89, !tbaa !29
  %t224 = getelementptr %"compiler/parse:Parser", ptr %t223, i32 0, i32 18
  %t225 = load i64, ptr %t224, !tbaa !24
  %t227 = sub i64 %t225, 1
  %t229 = load ptr, ptr %l89, !tbaa !29
  %t230 = getelementptr %"compiler/parse:Parser", ptr %t229, i32 0, i32 18
  store i64 %t227, ptr %t230, !tbaa !24
  %t232 = insertvalue { i32, ptr } zeroinitializer, i32 %t211, 0
  store { i32, ptr } %t232, ptr %rv
  br label %ret
bb31:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i32, ptr %l1, !tbaa !23
  %t237 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t233, i32 %t234)
  store %"compiler/source:Span" %t237, ptr %l94
  br label %bb32
bb32:
  %t238 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t239 = load %"compiler/source:Span", ptr %l94
  %t241 = call %"compiler/ast:ContractBlock" @compiler_2fast_3aContractBlock_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t239, { i64, ptr } %t238)
  store %"compiler/ast:ContractBlock" %t241, ptr %l96
  br label %bb33
bb33:
  %t242 = load %"compiler/ast:ContractBlock", ptr %l96
  %t243 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store %"compiler/ast:ContractBlock" %t242, ptr %t243
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i1, ptr %l2, !tbaa !21
  %t248 = getelementptr %"compiler/parse:Parser", ptr %t244, i32 0, i32 20
  store i1 %t245, ptr %t248, !tbaa !21
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i1, ptr %l3, !tbaa !21
  %t253 = getelementptr %"compiler/parse:Parser", ptr %t249, i32 0, i32 19
  store i1 %t250, ptr %t253, !tbaa !21
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l102, !tbaa !29
  %t255 = load ptr, ptr %l102, !tbaa !29
  %t256 = getelementptr %"compiler/parse:Parser", ptr %t255, i32 0, i32 18
  %t257 = load i64, ptr %t256, !tbaa !24
  %t259 = sub i64 %t257, 1
  %t261 = load ptr, ptr %l102, !tbaa !29
  %t262 = getelementptr %"compiler/parse:Parser", ptr %t261, i32 0, i32 18
  store i64 %t259, ptr %t262, !tbaa !24
  %t264 = insertvalue { i32, ptr } zeroinitializer, ptr %t243, 1
  store { i32, ptr } %t264, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecountDiag(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l14 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/parse:NameList", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !27
  %t7 = getelementptr %"compiler/source:Span", ptr %t6, i64 0
  %t8 = load %"compiler/source:Span", ptr %t7
  store %"compiler/source:Span" %t8, ptr %l3
  store ptr %a0, ptr %l7, !tbaa !29
  %t11 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t12 = load i32, ptr %t11, !tbaa !23
  store i32 %t12, ptr %l8, !tbaa !23
  %t13 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t14 = load i32, ptr %t13, !tbaa !23
  store i32 %t14, ptr %l9, !tbaa !23
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/parse:NameList", ptr %t15, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t24 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarListCount(ptr %s0, i64 %t20, i64 %a2)
  store %"compiler/diagmsg:Msg" %t24, ptr %l14
  br label %bb1
bb1:
  %t25 = load ptr, ptr %l7, !tbaa !29
  %t26 = load i32, ptr %l8, !tbaa !23
  %t27 = load i32, ptr %l9, !tbaa !23
  %t28 = load %"compiler/diagmsg:Msg", ptr %l14
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s0, ptr %t25, i32 %t26, i32 %t27, %"compiler/diagmsg:Msg" %t28)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclHere(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l8 = alloca i1
  %l12 = alloca i1
  %l16 = alloca i32
  %l21 = alloca i1
  %l24 = alloca i1
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
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Parser", ptr %t5, i32 0, i32 12
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekeywordFieldHere(ptr %v0, ptr %t10)
  store i1 %t12, ptr %l8
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  %t13 = load i1, ptr %l8, !tbaa !21
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 37 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb11
bb10:
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t23 = trunc i64 33 to i32
  %t24 = icmp eq i32 %t21, %t23
  store i1 %t24, ptr %l12, !tbaa !21
  br label %bb11
bb11:
  %t26 = load i1, ptr %l12, !tbaa !21
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t27, i64 1)
  store i32 %t29, ptr %l16
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t30 = load i32, ptr %l16, !range !{i32 0, i32 114}
  %t32 = trunc i64 1 to i32
  %t33 = icmp eq i32 %t30, %t32
  store i1 %t33, ptr %rv
  br label %ret
bb15:
  %t35 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t37 = trunc i64 41 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb18
bb17:
  %t40 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t42 = trunc i64 40 to i32
  %t43 = icmp eq i32 %t40, %t42
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb18
bb18:
  %t45 = load i1, ptr %l21, !tbaa !21
  br i1 %t45, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb21
bb20:
  %t46 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t48 = trunc i64 43 to i32
  %t49 = icmp eq i32 %t46, %t48
  store i1 %t49, ptr %l24, !tbaa !21
  br label %bb21
bb21:
  %t51 = load i1, ptr %l24, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclNames(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/token:Token"
  %lp5 = alloca ptr
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"compiler/token:Token"
  %l15 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l28 = alloca i1
  %l30 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca %"compiler/parse:NameList"
  %l43 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 36
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/parse:Parser", ptr %t7, i32 0, i32 37
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load i64, ptr %l11, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t13)
  store %"compiler/token:Token" %t15, ptr %l13
  br label %bb4
bb4:
  %t16 = load %"compiler/token:Token", ptr %l13
  store %"compiler/token:Token" %t16, ptr %l4
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/parse:Parser", ptr %t17, i32 0, i32 36
  store ptr %t19, ptr %l15, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t20)
  %t23 = extractvalue { i32, i32 } %t22, 1
  %t24 = extractvalue { i32, i32 } %t22, 0
  store i32 %t24, ptr %l19
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb6, label %ok.26, !prof !99
ok.26:
  store i32 %t23, ptr %l18
  br label %bb5
bb5:
  %t27 = load i32, ptr %l18, !tbaa !23
  store i32 %t27, ptr %l16, !tbaa !23
  br label %bb7
bb6:
  %t28 = load i32, ptr %l19, !tbaa !23
  %t29 = lshr i32 %t28, 16
  %t30 = and i32 %t28, 65535
  %t31 = icmp eq i32 %t29, 1
  %t32 = select i1 %t31, i32 1, i32 0
  %t33 = icmp eq i32 %t28, 0
  %t34 = shl i32 %t32, 16
  %t35 = or i32 %t34, %t30
  %t36 = select i1 %t33, i32 0, i32 %t35
  call void @__olang_scope_close(ptr %s1)
  %t38 = insertvalue { i32, ptr } zeroinitializer, i32 %t36, 0
  store { i32, ptr } %t38, ptr %rv
  br label %ret
bb7:
  %t39 = load ptr, ptr %l15, !tbaa !29
  %t40 = load i32, ptr %l16, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t39, i32 %t40)
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/parse:Parser", ptr %t41, i32 0, i32 37
  store ptr %t43, ptr %l22, !tbaa !29
  %t44 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 2
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 3
  %t47 = load i32, ptr %t46, !tbaa !23
  %t50 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t45, i32 %t47)
  store %"compiler/source:Span" %t50, ptr %l25
  br label %bb9
bb9:
  %t51 = load ptr, ptr %l22, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t51, %"compiler/source:Span" %t52)
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t56 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t53, i32 75)
  store i1 %t56, ptr %l28
  br label %bb11
bb11:
  %t57 = load i1, ptr %l28, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb15:
  br label %bb3
bb16:
  %t60 = ptrtoint ptr %v1 to i64
  store i64 %t60, ptr %l30, !tbaa !24
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aNameList_2e0
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t63 = call ptr @__olang_region_make(ptr %v1)
  %t64 = ptrtoint ptr %t63 to i64
  store i64 %t64, ptr %l30, !tbaa !24
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/parse:Parser", ptr %t65, i32 0, i32 36
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = load i64, ptr %l30
  %t70 = inttoptr i64 %t69 to ptr
  %t73 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t70, ptr %t67, i64 %t68)
  store { i64, ptr } %t73, ptr %l35
  br label %bb19
bb19:
  %t74 = ptrtoint ptr %v1 to i64
  store i64 %t74, ptr %l36, !tbaa !24
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aNameList_2e1
  br i1 %t75, label %bb20, label %bb21
bb20:
  %t77 = call ptr @__olang_region_make(ptr %v1)
  %t78 = ptrtoint ptr %t77 to i64
  store i64 %t78, ptr %l36, !tbaa !24
  br label %bb21
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/parse:Parser", ptr %t79, i32 0, i32 37
  %t82 = load i64, ptr %l3, !tbaa !24
  %t83 = load i64, ptr %l36
  %t84 = inttoptr i64 %t83 to ptr
  %t87 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t84, ptr %t81, i64 %t82)
  store { i64, ptr } %t87, ptr %l41
  br label %bb22
bb22:
  %t88 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t90 = call %"compiler/parse:NameList" @compiler_2fparse_3aNameList_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t88, { i64, ptr } %t89)
  store %"compiler/parse:NameList" %t90, ptr %l42
  br label %bb23
bb23:
  %t91 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t91, ptr %lp5
  %t92 = load %"compiler/parse:NameList", ptr %l42
  %t93 = load ptr, ptr %lp5
  store %"compiler/parse:NameList" %t92, ptr %t93
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %lp5
  %t100 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclRest(ptr %v0, ptr %v1, ptr %v1, ptr %t94, ptr %t95, i1 %a1)
  %t101 = extractvalue { i32, ptr } %t100, 1
  %t102 = extractvalue { i32, ptr } %t100, 0
  store i32 %t102, ptr %l48
  %t103 = icmp ne i32 %t102, 0
  br i1 %t103, label %bb25, label %ok.104, !prof !99
ok.104:
  store ptr %t101, ptr %l47
  br label %bb24
bb24:
  %t105 = load ptr, ptr %l47, !tbaa !29
  store ptr %t105, ptr %l43, !tbaa !29
  br label %bb26
bb25:
  %t106 = load i32, ptr %l48, !tbaa !23
  %t107 = lshr i32 %t106, 16
  %t108 = and i32 %t106, 65535
  %t109 = icmp eq i32 %t107, 1
  %t110 = select i1 %t109, i32 1, i32 0
  %t111 = icmp eq i32 %t106, 0
  %t112 = shl i32 %t110, 16
  %t113 = or i32 %t112, %t108
  %t114 = select i1 %t111, i32 0, i32 %t113
  %t116 = insertvalue { i32, ptr } zeroinitializer, i32 %t114, 0
  store { i32, ptr } %t116, ptr %rv
  br label %ret
bb26:
  %t117 = load ptr, ptr %l43, !tbaa !29
  %t118 = insertvalue { i32, ptr } zeroinitializer, ptr %t117, 1
  store { i32, ptr } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclRest(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %lp4 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i32
  %l18 = alloca i32
  %l22 = alloca %"compiler/source:Span"
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i32
  %l34 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca i1
  %l43 = alloca %"compiler/ast:VarDecl"
  %l47 = alloca i1
  %l48 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i32
  %l59 = alloca i1
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i1
  %l79 = alloca %"compiler/ast:VarDecl"
  %l81 = alloca ptr
  %l83 = alloca ptr
  %l84 = alloca i32
  %l91 = alloca i1
  %l92 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l97 = alloca i32
  %l105 = alloca i1
  %l115 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l119 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l121 = alloca i1
  %l125 = alloca %"compiler/ast:VarDecl"
  %rv = alloca { i32, ptr }
  %t27 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 39)
  store i1 %t4, ptr %l11
  br label %bb1
bb1:
  %t5 = load i1, ptr %l11, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t6, i64 1)
  store i32 %t8, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb5
bb4:
  %t9 = load i32, ptr %l14, !range !{i32 0, i32 114}
  %t11 = trunc i64 80 to i32
  %t12 = icmp eq i32 %t9, %t11
  store i1 %t12, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l12, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t15)
  store i32 %t17, ptr %l18
  br label %bb8
bb7:
  br label %bb19
bb8:
  %t18 = load i32, ptr %l18, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/parse:Parser", ptr %t20, i32 0, i32 10
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t18, i32 %t23)
  store %"compiler/source:Span" %t26, ptr %l22
  br label %bb9
bb9:
  store { i64, [5 x i64] } zeroinitializer, ptr %t27
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t27, i32 0, i32 0
  store i64 4, ptr %t28
  %t29 = load %"compiler/source:Span", ptr %l22
  %t30 = insertvalue { %"compiler/source:Span", ptr, i1 } undef, %"compiler/source:Span" %t29, 0
  %t31 = insertvalue { %"compiler/source:Span", ptr, i1 } %t30, ptr null, 1
  %t32 = insertvalue { %"compiler/source:Span", ptr, i1 } %t31, i1 true, 2
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t27, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1 } %t32, ptr %t33
  %t34 = load { i64, [5 x i64] }, ptr %t27
  %t35 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t35, ptr %lp4
  %t37 = load ptr, ptr %lp4
  store { i64, [5 x i64] } %t34, ptr %t37
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t38)
  store i32 %t40, ptr %l25
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t43 = load i1, ptr %l2, !tbaa !21
  %t47 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evalues(ptr %v0, ptr %v1, ptr %v2, ptr %t41, ptr %t42, i1 %t43)
  %t48 = extractvalue { i32, { i64, ptr } } %t47, 1
  %t49 = extractvalue { i32, { i64, ptr } } %t47, 0
  store i32 %t49, ptr %l31
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb12, label %ok.51, !prof !99
ok.51:
  store { i64, ptr } %t48, ptr %l30
  br label %bb11
bb11:
  %t52 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t52, ptr %l26, !tbaa !27
  br label %bb13
bb12:
  %t53 = load i32, ptr %l31, !tbaa !23
  %t54 = lshr i32 %t53, 16
  %t55 = and i32 %t53, 65535
  %t56 = icmp eq i32 %t54, 1
  %t57 = select i1 %t56, i32 1, i32 0
  %t58 = icmp eq i32 %t53, 0
  %t59 = shl i32 %t57, 16
  %t60 = or i32 %t59, %t55
  %t61 = select i1 %t58, i32 0, i32 %t60
  %t63 = insertvalue { i32, ptr } zeroinitializer, i32 %t61, 0
  store { i32, ptr } %t63, ptr %rv
  br label %ret
bb13:
  %t64 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr %"compiler/parse:NameList", ptr %t65, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l34, !tbaa !27
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/parse:NameList", ptr %t69, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l36, !tbaa !27
  %t73 = load ptr, ptr %lp4
  store ptr %t73, ptr %l37, !tbaa !29
  store { i64, ptr } %t64, ptr %l38, !tbaa !27
  %t75 = load i1, ptr %l2, !tbaa !21
  store i1 %t75, ptr %l39, !tbaa !21
  %t76 = icmp sge i64 0, 0
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t78 = icmp sle i64 0, 1152921504606846975
  br i1 %t78, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_88b4df24f395cba0_7a8585039ef7582c)
  unreachable
bb16:
  %t80 = mul i64 0, 8
  %t81 = insertvalue { i64, ptr } undef, i64 0, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t83 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t85 = load ptr, ptr %l37, !tbaa !29
  %t86 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t87 = load i1, ptr %l39, !tbaa !21
  %t89 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v1, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t83, { i64, ptr } %t84, ptr %t85, { i64, ptr } %t86, i1 true, i1 %t87, { i64, ptr } %t82, i1 false)
  store %"compiler/ast:VarDecl" %t89, ptr %l43
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_88b4df24f395cba0_7a8585039ef7582c)
  unreachable
bb18:
  %t90 = load %"compiler/ast:VarDecl", ptr %l43
  %t91 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t90, ptr %t91
  %t93 = insertvalue { i32, ptr } zeroinitializer, ptr %t91, 1
  store { i32, ptr } %t93, ptr %rv
  br label %ret
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t97 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t94, i32 80)
  store i1 %t97, ptr %l47
  br label %bb20
bb20:
  %t98 = load i1, ptr %l47, !tbaa !21
  br i1 %t98, label %bb21, label %bb22
bb21:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t101 = load i1, ptr %l2, !tbaa !21
  %t105 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evalues(ptr %v0, ptr %v1, ptr %v2, ptr %t99, ptr %t100, i1 %t101)
  %t106 = extractvalue { i32, { i64, ptr } } %t105, 1
  %t107 = extractvalue { i32, { i64, ptr } } %t105, 0
  store i32 %t107, ptr %l53
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb24, label %ok.109, !prof !99
ok.109:
  store { i64, ptr } %t106, ptr %l52
  br label %bb23
bb22:
  br label %bb38
bb23:
  %t110 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t110, ptr %l48, !tbaa !27
  br label %bb25
bb24:
  %t111 = load i32, ptr %l53, !tbaa !23
  %t112 = lshr i32 %t111, 16
  %t113 = and i32 %t111, 65535
  %t114 = icmp eq i32 %t112, 1
  %t115 = select i1 %t114, i32 1, i32 0
  %t116 = icmp eq i32 %t111, 0
  %t117 = shl i32 %t115, 16
  %t118 = or i32 %t117, %t113
  %t119 = select i1 %t116, i32 0, i32 %t118
  %t121 = insertvalue { i32, ptr } zeroinitializer, i32 %t119, 0
  store { i32, ptr } %t121, ptr %rv
  br label %ret
bb25:
  %t122 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t122, ptr %l6, !tbaa !27
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/parse:NameList", ptr %t123, i32 0, i32 0
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t130 = icmp sgt i64 %t128, 1
  br i1 %t130, label %bb26, label %bb27
bb26:
  %t132 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = load ptr, ptr %l1, !tbaa !29
  %t137 = getelementptr %"compiler/parse:NameList", ptr %t135, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t143 = icmp ne i64 %t134, %t140
  store i1 %t143, ptr %l59, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb28
bb28:
  %t145 = load i1, ptr %l59, !tbaa !21
  br i1 %t145, label %bb29, label %bb30
bb29:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l1, !tbaa !29
  %t148 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t148, 0
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecountDiag(ptr %v0, ptr %v1, ptr %t146, ptr %t147, i64 %t150)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t156 = getelementptr %"compiler/parse:NameList", ptr %t154, i32 0, i32 0
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l71, !tbaa !27
  %t158 = load ptr, ptr %l1, !tbaa !29
  %t160 = getelementptr %"compiler/parse:NameList", ptr %t158, i32 0, i32 1
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  store { i64, ptr } %t161, ptr %l73, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t162, ptr %l74, !tbaa !27
  %t163 = load i1, ptr %l2, !tbaa !21
  store i1 %t163, ptr %l75, !tbaa !21
  %t164 = icmp sge i64 0, 0
  br i1 %t164, label %bb33, label %bb34
bb33:
  %t166 = icmp sle i64 0, 1152921504606846975
  br i1 %t166, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_88b4df24f395cba0_7a8585039ef7582c)
  unreachable
bb35:
  %t168 = mul i64 0, 8
  %t169 = insertvalue { i64, ptr } undef, i64 0, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t171 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t172 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t174 = load i1, ptr %l75, !tbaa !21
  %t176 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v1, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t171, { i64, ptr } %t172, ptr null, { i64, ptr } %t173, i1 true, i1 %t174, { i64, ptr } %t170, i1 false)
  store %"compiler/ast:VarDecl" %t176, ptr %l79
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_88b4df24f395cba0_7a8585039ef7582c)
  unreachable
bb37:
  %t177 = load %"compiler/ast:VarDecl", ptr %l79
  %t178 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t177, ptr %t178
  %t180 = insertvalue { i32, ptr } zeroinitializer, ptr %t178, 1
  store { i32, ptr } %t180, ptr %rv
  br label %ret
bb38:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v2, ptr %t181)
  %t184 = extractvalue { i32, ptr } %t183, 1
  %t185 = extractvalue { i32, ptr } %t183, 0
  store i32 %t185, ptr %l84
  %t186 = icmp ne i32 %t185, 0
  br i1 %t186, label %bb40, label %ok.187, !prof !99
ok.187:
  store ptr %t184, ptr %l83
  br label %bb39
bb39:
  %t188 = load ptr, ptr %l83, !tbaa !29
  store ptr %t188, ptr %l81, !tbaa !29
  br label %bb41
bb40:
  %t189 = load i32, ptr %l84, !tbaa !23
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
bb41:
  %t200 = load ptr, ptr %l81, !tbaa !29
  store ptr %t200, ptr %l7, !tbaa !29
  %t201 = icmp sge i64 0, 0
  br i1 %t201, label %bb42, label %bb43
bb42:
  %t203 = icmp sle i64 0, 1152921504606846975
  br i1 %t203, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_4e443757629da3cd_7cffa119f74ad1b9)
  unreachable
bb44:
  %t205 = mul i64 0, 8
  %t206 = insertvalue { i64, ptr } undef, i64 0, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t207, ptr %l8, !tbaa !27
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t212 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t209, i32 78)
  store i1 %t212, ptr %l91
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_4e443757629da3cd_7cffa119f74ad1b9)
  unreachable
bb46:
  %t213 = load i1, ptr %l91, !tbaa !21
  br i1 %t213, label %bb47, label %bb48
bb47:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t216 = load i1, ptr %l2, !tbaa !21
  %t220 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evalues(ptr %v0, ptr %v1, ptr %v2, ptr %t214, ptr %t215, i1 %t216)
  %t221 = extractvalue { i32, { i64, ptr } } %t220, 1
  %t222 = extractvalue { i32, { i64, ptr } } %t220, 0
  store i32 %t222, ptr %l97
  %t223 = icmp ne i32 %t222, 0
  br i1 %t223, label %bb50, label %ok.224, !prof !99
ok.224:
  store { i64, ptr } %t221, ptr %l96
  br label %bb49
bb48:
  br label %bb59
bb49:
  %t225 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t225, ptr %l92, !tbaa !27
  br label %bb51
bb50:
  %t226 = load i32, ptr %l97, !tbaa !23
  %t227 = lshr i32 %t226, 16
  %t228 = and i32 %t226, 65535
  %t229 = icmp eq i32 %t227, 1
  %t230 = select i1 %t229, i32 1, i32 0
  %t231 = icmp eq i32 %t226, 0
  %t232 = shl i32 %t230, 16
  %t233 = or i32 %t232, %t228
  %t234 = select i1 %t231, i32 0, i32 %t233
  %t236 = insertvalue { i32, ptr } zeroinitializer, i32 %t234, 0
  store { i32, ptr } %t236, ptr %rv
  br label %ret
bb51:
  %t237 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t237, ptr %l8, !tbaa !27
  %t238 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t238, 0
  %t241 = load ptr, ptr %l1, !tbaa !29
  %t243 = getelementptr %"compiler/parse:NameList", ptr %t241, i32 0, i32 0
  %t244 = load { i64, ptr }, ptr %t243, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t249 = icmp ne i64 %t240, %t246
  br i1 %t249, label %bb52, label %bb53
bb52:
  %t251 = load ptr, ptr %l1, !tbaa !29
  %t253 = getelementptr %"compiler/parse:NameList", ptr %t251, i32 0, i32 0
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t254, 0
  %t258 = icmp sgt i64 %t256, 1
  store i1 %t258, ptr %l105, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb54
bb54:
  %t260 = load i1, ptr %l105, !tbaa !21
  br i1 %t260, label %bb55, label %bb56
bb55:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t263 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t263, 0
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecountDiag(ptr %v0, ptr %v1, ptr %t261, ptr %t262, i64 %t265)
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t271 = getelementptr %"compiler/parse:NameList", ptr %t269, i32 0, i32 0
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  store { i64, ptr } %t272, ptr %l115, !tbaa !27
  %t273 = load ptr, ptr %l1, !tbaa !29
  %t275 = getelementptr %"compiler/parse:NameList", ptr %t273, i32 0, i32 1
  %t276 = load { i64, ptr }, ptr %t275, !tbaa !27
  store { i64, ptr } %t276, ptr %l117, !tbaa !27
  %t277 = load ptr, ptr %l7, !tbaa !29
  store ptr %t277, ptr %l119, !tbaa !29
  %t279 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t279, ptr %l120, !tbaa !27
  %t280 = load i1, ptr %l2, !tbaa !21
  store i1 %t280, ptr %l121, !tbaa !21
  %t281 = icmp sge i64 0, 0
  br i1 %t281, label %bb60, label %bb61
bb60:
  %t283 = icmp sle i64 0, 1152921504606846975
  br i1 %t283, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_88b4df24f395cba0_7a8585039ef7582c)
  unreachable
bb62:
  %t285 = mul i64 0, 8
  %t286 = insertvalue { i64, ptr } undef, i64 0, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t288 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t289 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t290 = load ptr, ptr %l119, !tbaa !29
  %t291 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t292 = load i1, ptr %l121, !tbaa !21
  %t294 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v1, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t288, { i64, ptr } %t289, ptr %t290, { i64, ptr } %t291, i1 false, i1 %t292, { i64, ptr } %t287, i1 false)
  store %"compiler/ast:VarDecl" %t294, ptr %l125
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_88b4df24f395cba0_7a8585039ef7582c)
  unreachable
bb64:
  %t295 = load %"compiler/ast:VarDecl", ptr %l125
  %t296 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t295, ptr %t296
  %t298 = insertvalue { i32, ptr } zeroinitializer, ptr %t296, 1
  store { i32, ptr } %t298, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclareAttrs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l17 = alloca i64
  %l20 = alloca i32
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l28 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l40 = alloca %"compiler/ast:VarDecl"
  %t41 = alloca i64
  %t71 = alloca i64
  %t92 = alloca i64
  %t125 = alloca { i64, [8 x i64] }, align 8
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
  br label %bb29
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l17, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e0
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = call ptr @__olang_region_make(ptr %v0)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t30 = getelementptr %"compiler/ast:Attr", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %t30, !tbaa !23
  store i32 %t31, ptr %l20, !tbaa !23
  %t32 = icmp sge i64 1, 0
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = icmp sle i64 1, 2305843009213693951
  br i1 %t34, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_67de16d9be6ee138_13a4ec417790e6ac)
  unreachable
bb9:
  %t36 = mul i64 1, 4
  %t37 = load i64, ptr %l17
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t36)
  %t40 = load i32, ptr %l20, !tbaa !23
  store i64 0, ptr %t41
  br label %fill.42
fill.42:
  %t45 = load i64, ptr %t41
  %t46 = icmp slt i64 %t45, 1
  br i1 %t46, label %fillb.43, label %filld.44
fillb.43:
  %t47 = getelementptr i32, ptr %t39, i64 %t45
  store i32 %t40, ptr %t47
  %t48 = add i64 %t45, 1
  store i64 %t48, ptr %t41
  br label %fill.42
filld.44:
  %t49 = insertvalue { i64, ptr } undef, i64 1, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t39, 1
  store { i64, ptr } %t50, ptr %l23, !tbaa !27
  %t51 = ptrtoint ptr %v0 to i64
  store i64 %t51, ptr %l24, !tbaa !24
  %t52 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e1
  br i1 %t52, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_67de16d9be6ee138_13a4ec417790e6ac)
  unreachable
bb11:
  %t54 = call ptr @__olang_region_make(ptr %v0)
  %t55 = ptrtoint ptr %t54 to i64
  store i64 %t55, ptr %l24, !tbaa !24
  br label %bb12
bb12:
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Attr", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t59)
  store %"compiler/source:Span" %t61, ptr %l28
  br label %bb13
bb13:
  %t62 = icmp sge i64 1, 0
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t64 = icmp sle i64 1, 1152921504606846975
  br i1 %t64, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_67de16d9be6ee138_13a4ec417790e6ac)
  unreachable
bb16:
  %t66 = mul i64 1, 8
  %t67 = load i64, ptr %l24
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = call ptr @__olang_scope_alloc(ptr %t68, i64 %t66)
  %t70 = load %"compiler/source:Span", ptr %l28
  store i64 0, ptr %t71
  br label %fill.72
fill.72:
  %t75 = load i64, ptr %t71
  %t76 = icmp slt i64 %t75, 1
  br i1 %t76, label %fillb.73, label %filld.74
fillb.73:
  %t77 = getelementptr %"compiler/source:Span", ptr %t69, i64 %t75
  store %"compiler/source:Span" %t70, ptr %t77
  %t78 = add i64 %t75, 1
  store i64 %t78, ptr %t71
  br label %fill.72
filld.74:
  %t79 = insertvalue { i64, ptr } undef, i64 1, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t69, 1
  store { i64, ptr } %t80, ptr %l31, !tbaa !27
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t83 = getelementptr %"compiler/ast:Attr", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  store ptr %t84, ptr %l33, !tbaa !29
  %t85 = icmp sge i64 1, 0
  br i1 %t85, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_67de16d9be6ee138_13a4ec417790e6ac)
  unreachable
bb18:
  %t87 = icmp sle i64 1, 1152921504606846975
  br i1 %t87, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_7c64805d8f6adba5_161f0857cfe46039)
  unreachable
bb20:
  %t89 = mul i64 1, 8
  %t90 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t89)
  %t91 = load ptr, ptr %l33, !tbaa !29
  store i64 0, ptr %t92
  br label %fill.93
fill.93:
  %t96 = load i64, ptr %t92
  %t97 = icmp slt i64 %t96, 1
  br i1 %t97, label %fillb.94, label %filld.95
fillb.94:
  %t98 = getelementptr ptr, ptr %t90, i64 %t96
  store ptr %t91, ptr %t98
  %t99 = add i64 %t96, 1
  store i64 %t99, ptr %t92
  br label %fill.93
filld.95:
  %t100 = insertvalue { i64, ptr } undef, i64 1, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t90, 1
  store { i64, ptr } %t101, ptr %l36, !tbaa !27
  %t102 = icmp sge i64 0, 0
  br i1 %t102, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_7c64805d8f6adba5_161f0857cfe46039)
  unreachable
bb22:
  %t104 = icmp sle i64 0, 1152921504606846975
  br i1 %t104, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_7c64805d8f6adba5_161f0857cfe46039)
  unreachable
bb24:
  %t106 = mul i64 0, 8
  %t107 = insertvalue { i64, ptr } undef, i64 0, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t109 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t113 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t109, { i64, ptr } %t110, ptr null, { i64, ptr } %t111, i1 true, i1 false, { i64, ptr } %t108, i1 true)
  store %"compiler/ast:VarDecl" %t113, ptr %l40
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_7c64805d8f6adba5_161f0857cfe46039)
  unreachable
bb26:
  %t114 = load %"compiler/ast:VarDecl", ptr %l40
  %t115 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t114, ptr %t115
  %t119 = getelementptr %"compiler/parse:Parser", ptr %a0, i32 0, i32 52
  %t120 = load ptr, ptr %l5, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Attr", ptr %t120, i32 0, i32 0
  %t123 = load %"compiler/source:Span", ptr %t122
  store { i64, [8 x i64] } zeroinitializer, ptr %t125
  %t126 = getelementptr { i64, [8 x i64] }, ptr %t125, i32 0, i32 0
  store i64 3, ptr %t126
  %t128 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t123, 0
  %t130 = insertvalue { %"compiler/source:Span", ptr } %t128, ptr %t115, 1
  %t131 = getelementptr { i64, [8 x i64] }, ptr %t125, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t130, ptr %t131
  %t132 = load { i64, [8 x i64] }, ptr %t125
  %t134 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store { i64, [8 x i64] } %t132, ptr %t134
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t119, ptr %t134)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t137 = load i64, ptr %l3, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l3, !tbaa !24
  br label %bb1
bb29:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelemsPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l12 = alloca i64
  %l20 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l27 = alloca i1
  %l41 = alloca %"compiler/source:Span"
  %l42 = alloca ptr
  %l46 = alloca { i64, ptr }
  %rv = alloca ptr
  %t55 = alloca { i64, [4 x i64] }, align 8
  %t79 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 35
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eLen_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
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
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t21, ptr %l20, !tbaa !27
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t33 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2epattern(ptr %v0, ptr %v2, ptr %v0, ptr %t29, ptr %t27, i1 false)
  store ptr %t33, ptr %l25
  br label %bb6
bb6:
  %t34 = load ptr, ptr %l25, !tbaa !29
  store ptr %t34, ptr %l9, !tbaa !29
  %t35 = load ptr, ptr %l9, !tbaa !29
  %t37 = call i1 @compiler_2fparse_2evaluePattern(ptr %v0, ptr %t35)
  store i1 %t37, ptr %l27
  br label %bb7
bb7:
  %t38 = load i1, ptr %l27, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/parse:Parser", ptr %t41, i32 0, i32 35
  %t44 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v0, ptr %t43, ptr %t44)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/parse:Parser", ptr %t47, i32 0, i32 35
  %t50 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eTrunc_H311fd53ced078d1b110127cfa5549832(ptr %v0, ptr %t49, i64 %t50)
  br label %bb12
bb12:
  %t53 = load %"compiler/source:Span", ptr %l1
  %t54 = load ptr, ptr %l2, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 0
  store i64 4, ptr %t56
  %t58 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t53, 0
  %t60 = insertvalue { %"compiler/source:Span", ptr } %t58, ptr %t54, 1
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t60, ptr %t61
  %t62 = load { i64, [4 x i64] }, ptr %t55
  %t64 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t62, ptr %t64
  store ptr %t64, ptr %rv
  br label %ret
bb13:
  %t66 = load i64, ptr %l6, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l6, !tbaa !24
  br label %bb2
bb14:
  %t70 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t70, ptr %l41
  %t71 = load ptr, ptr %l2, !tbaa !29
  store ptr %t71, ptr %l42, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/parse:Parser", ptr %t72, i32 0, i32 35
  %t75 = load i64, ptr %l4, !tbaa !24
  %t78 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v3, ptr %t74, i64 %t75)
  store { i64, ptr } %t78, ptr %l46
  br label %bb15
bb15:
  store { i64, [4 x i64] } zeroinitializer, ptr %t79
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 0
  store i64 6, ptr %t80
  %t81 = load %"compiler/source:Span", ptr %l41
  %t82 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t81, 0
  %t83 = load ptr, ptr %l42, !tbaa !29
  %t84 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t82, ptr %t83, 1
  %t85 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t86 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t84, { i64, ptr } %t85, 2
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t86, ptr %t87
  %t88 = load { i64, [4 x i64] }, ptr %t79
  %t90 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t88, ptr %t90
  store ptr %t90, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentry(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l9 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %l18 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/source:Span"
  %rv = alloca { i32, ptr }
  %t56 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 79)
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
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v2, ptr %t21)
  %t24 = extractvalue { i32, ptr } %t23, 1
  %t25 = extractvalue { i32, ptr } %t23, 0
  store i32 %t25, ptr %l12
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb5, label %ok.27, !prof !99
ok.27:
  store ptr %t24, ptr %l11
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l11, !tbaa !29
  store ptr %t28, ptr %l9, !tbaa !29
  br label %bb6
bb5:
  %t29 = load i32, ptr %l12, !tbaa !23
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
  %t40 = load ptr, ptr %l9, !tbaa !29
  store ptr %t40, ptr %l2, !tbaa !29
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t41)
  store %"compiler/source:Span" %t43, ptr %l15
  br label %bb7
bb7:
  %t44 = getelementptr %"compiler/source:Span", ptr %l15, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  store i32 %t45, ptr %l16, !tbaa !23
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t46)
  store %"compiler/source:Span" %t48, ptr %l18
  br label %bb8
bb8:
  %t49 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 1
  %t50 = load i32, ptr %t49, !tbaa !23
  %t51 = load i32, ptr %l16, !tbaa !23
  %t53 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t51, i32 %t50)
  store %"compiler/source:Span" %t53, ptr %l20
  br label %bb9
bb9:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t55 = load ptr, ptr %l2, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t56
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 0
  store i64 5, ptr %t57
  %t58 = load %"compiler/source:Span", ptr %l20
  %t59 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t58, 0
  %t61 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t59, i32 79, 1
  %t63 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t61, ptr %t54, 2
  %t65 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t63, ptr %t55, 3
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t65, ptr %t66
  %t67 = load { i64, [4 x i64] }, ptr %t56
  %t69 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t67, ptr %t69
  %t71 = insertvalue { i32, ptr } zeroinitializer, ptr %t69, 1
  store { i32, ptr } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorSet(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l17 = alloca { i64, ptr }
  %l21 = alloca %"compiler/ast:Sig"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca i32
  %l37 = alloca i1
  %l40 = alloca i1
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l51 = alloca { i64, ptr }
  %l55 = alloca %"compiler/ast:Sig"
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t1, i32 77)
  store i1 %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load i1, ptr %l5, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb4, label %bb5
bb3:
  br label %bb23
bb4:
  %t10 = icmp sle i64 0, 1152921504606846975
  br i1 %t10, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_1981dec301b76378_38f305e42bd9bf3c)
  unreachable
bb6:
  %t12 = mul i64 0, 8
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %l9, !tbaa !27
  %t15 = icmp sge i64 0, 0
  br i1 %t15, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_1981dec301b76378_38f305e42bd9bf3c)
  unreachable
bb8:
  %t17 = icmp sle i64 0, 1152921504606846975
  br i1 %t17, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_1981dec301b76378_38f305e42bd9bf3c)
  unreachable
bb10:
  %t19 = mul i64 0, 8
  %t20 = insertvalue { i64, ptr } undef, i64 0, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  %t22 = ptrtoint ptr %v1 to i64
  store i64 %t22, ptr %l13, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aSig_2e3
  br i1 %t23, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_1981dec301b76378_38f305e42bd9bf3c)
  unreachable
bb12:
  %t25 = call ptr @__olang_region_make(ptr %v1)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l13, !tbaa !24
  br label %bb13
bb13:
  %t27 = icmp sge i64 0, 0
  br i1 %t27, label %bb14, label %bb15
bb14:
  %t29 = icmp sle i64 0, 1152921504606846975
  br i1 %t29, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_1981dec301b76378_38f305e42bd9bf3c)
  unreachable
bb16:
  %t31 = mul i64 0, 8
  %t32 = load i64, ptr %l13
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = insertvalue { i64, ptr } undef, i64 0, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t35, ptr %l17, !tbaa !27
  %t36 = icmp sge i64 0, 0
  br i1 %t36, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_1981dec301b76378_38f305e42bd9bf3c)
  unreachable
bb18:
  %t38 = icmp sle i64 0, 1152921504606846975
  br i1 %t38, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_cd306f178609e3e5_44435844e9b3da89)
  unreachable
bb20:
  %t40 = mul i64 0, 8
  %t41 = insertvalue { i64, ptr } undef, i64 0, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t47 = call %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t43, { i64, ptr } %t44, i1 false, { i64, ptr } %t45, i1 false, ptr null, i1 false, i1 false, { i64, ptr } %t42)
  store %"compiler/ast:Sig" %t47, ptr %l21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_cd306f178609e3e5_44435844e9b3da89)
  unreachable
bb22:
  %t48 = load %"compiler/ast:Sig", ptr %l21
  %t49 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 96, i64 8)
  store %"compiler/ast:Sig" %t48, ptr %t49
  %t51 = insertvalue { i32, ptr } zeroinitializer, ptr %t49, 1
  store { i32, ptr } %t51, ptr %rv
  br label %ret
bb23:
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l23
  br label %bb24
bb24:
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t54 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %t54
  store ptr %t54, ptr %l2, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t59 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t56, i32 1)
  store i1 %t59, ptr %l27
  br label %bb25
bb25:
  %t60 = load i1, ptr %l27, !tbaa !21
  br i1 %t60, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb44
bb28:
  %t61 = load ptr, ptr %l2, !tbaa !29
  store ptr %t61, ptr %l28, !tbaa !29
  %t62 = ptrtoint ptr %v1 to i64
  store i64 %t62, ptr %l30, !tbaa !24
  %t63 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t63, label %bb29, label %bb30
bb29:
  %t65 = call ptr @__olang_region_make(ptr %v1)
  %t66 = ptrtoint ptr %t65 to i64
  store i64 %t66, ptr %l30, !tbaa !24
  br label %bb30
bb30:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l30
  %t69 = inttoptr i64 %t68 to ptr
  %t71 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epath(ptr %v0, ptr %t69, ptr %t67)
  %t72 = extractvalue { i32, ptr } %t71, 1
  %t73 = extractvalue { i32, ptr } %t71, 0
  store i32 %t73, ptr %l34
  %t74 = icmp ne i32 %t73, 0
  br i1 %t74, label %bb32, label %ok.75, !prof !99
ok.75:
  store ptr %t72, ptr %l33
  br label %bb31
bb31:
  %t76 = load ptr, ptr %l33, !tbaa !29
  store ptr %t76, ptr %l29, !tbaa !29
  br label %bb33
bb32:
  %t77 = load i32, ptr %l34, !tbaa !23
  %t78 = lshr i32 %t77, 16
  %t79 = and i32 %t77, 65535
  %t80 = icmp eq i32 %t78, 1
  %t81 = select i1 %t80, i32 1, i32 0
  %t82 = icmp eq i32 %t77, 0
  %t83 = shl i32 %t81, 16
  %t84 = or i32 %t83, %t79
  %t85 = select i1 %t82, i32 0, i32 %t84
  %t87 = insertvalue { i32, ptr } zeroinitializer, i32 %t85, 0
  store { i32, ptr } %t87, ptr %rv
  br label %ret
bb33:
  %t88 = load ptr, ptr %l28, !tbaa !29
  %t89 = load ptr, ptr %l29, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ePush_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %v1, ptr %t88, ptr %t89)
  br label %bb34
bb34:
  br i1 %a1, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb38
bb36:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t95 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t92, i32 75)
  store i1 %t95, ptr %l40
  br label %bb37
bb37:
  %t96 = load i1, ptr %l40, !tbaa !21
  %t97 = xor i1 %t96, true
  store i1 %t97, ptr %l37, !tbaa !21
  br label %bb38
bb38:
  %t99 = load i1, ptr %l37, !tbaa !21
  br i1 %t99, label %bb39, label %bb40
bb39:
  br label %bb43
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %bb28
bb43:
  br label %bb44
bb44:
  %t100 = icmp sge i64 0, 0
  br i1 %t100, label %bb45, label %bb46
bb45:
  %t102 = icmp sle i64 0, 1152921504606846975
  br i1 %t102, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_7f2178e2c302e3c6_11752dec4e05ebca)
  unreachable
bb47:
  %t104 = mul i64 0, 8
  %t105 = insertvalue { i64, ptr } undef, i64 0, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t106, ptr %l44, !tbaa !27
  %t107 = icmp sge i64 0, 0
  br i1 %t107, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_7f2178e2c302e3c6_11752dec4e05ebca)
  unreachable
bb49:
  %t109 = icmp sle i64 0, 1152921504606846975
  br i1 %t109, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_7f2178e2c302e3c6_11752dec4e05ebca)
  unreachable
bb51:
  %t111 = mul i64 0, 8
  %t112 = insertvalue { i64, ptr } undef, i64 0, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t113, ptr %l47, !tbaa !27
  %t114 = ptrtoint ptr %v1 to i64
  store i64 %t114, ptr %l48, !tbaa !24
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aSig_2e3
  br i1 %t115, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_7f2178e2c302e3c6_11752dec4e05ebca)
  unreachable
bb53:
  %t117 = call ptr @__olang_region_make(ptr %v1)
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l48, !tbaa !24
  br label %bb54
bb54:
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t120 = load i64, ptr %l48
  %t121 = inttoptr i64 %t120 to ptr
  %t123 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2eToArray_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %t121, ptr %t119)
  store { i64, ptr } %t123, ptr %l51
  br label %bb55
bb55:
  %t124 = icmp sge i64 0, 0
  br i1 %t124, label %bb56, label %bb57
bb56:
  %t126 = icmp sle i64 0, 1152921504606846975
  br i1 %t126, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_cd306f178609e3e5_44435844e9b3da89)
  unreachable
bb58:
  %t128 = mul i64 0, 8
  %t129 = insertvalue { i64, ptr } undef, i64 0, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t131 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t135 = call %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t131, { i64, ptr } %t132, i1 true, { i64, ptr } %t133, i1 false, ptr null, i1 false, i1 false, { i64, ptr } %t130)
  store %"compiler/ast:Sig" %t135, ptr %l55
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_cd306f178609e3e5_44435844e9b3da89)
  unreachable
bb60:
  %t136 = load %"compiler/ast:Sig", ptr %l55
  %t137 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 96, i64 8)
  store %"compiler/ast:Sig" %t136, ptr %t137
  %t139 = insertvalue { i32, ptr } zeroinitializer, ptr %t137, 1
  store { i32, ptr } %t139, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrsArg(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i32
  %l23 = alloca i1
  %l27 = alloca %"compiler/source:Span"
  %l29 = alloca { i64, ptr }
  %rv = alloca { i32, ptr }
  %t73 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i32, ptr %l4, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t5, i32 77)
  %t9 = extractvalue { i32, i32 } %t8, 1
  %t10 = extractvalue { i32, i32 } %t8, 0
  store i32 %t10, ptr %l9
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb3, label %ok.12, !prof !99
ok.12:
  store i32 %t9, ptr %l8
  br label %bb2
bb2:
  %t13 = load i32, ptr %l8, !tbaa !23
  store i32 %t13, ptr %l5, !tbaa !23
  br label %bb4
bb3:
  %t14 = load i32, ptr %l9, !tbaa !23
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
bb4:
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l11
  br label %bb5
bb5:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t27 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %t27
  store ptr %t27, ptr %l2, !tbaa !29
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l2, !tbaa !29
  store ptr %t29, ptr %l13, !tbaa !29
  %t30 = ptrtoint ptr %v1 to i64
  store i64 %t30, ptr %l15, !tbaa !24
  %t31 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = call ptr @__olang_region_make(ptr %v1)
  %t34 = ptrtoint ptr %t33 to i64
  store i64 %t34, ptr %l15, !tbaa !24
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l15
  %t37 = inttoptr i64 %t36 to ptr
  %t39 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epath(ptr %v0, ptr %t37, ptr %t35)
  %t40 = extractvalue { i32, ptr } %t39, 1
  %t41 = extractvalue { i32, ptr } %t39, 0
  store i32 %t41, ptr %l19
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb10, label %ok.43, !prof !99
ok.43:
  store ptr %t40, ptr %l18
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l18, !tbaa !29
  store ptr %t44, ptr %l14, !tbaa !29
  br label %bb11
bb10:
  %t45 = load i32, ptr %l19, !tbaa !23
  %t46 = lshr i32 %t45, 16
  %t47 = and i32 %t45, 65535
  %t48 = icmp eq i32 %t46, 1
  %t49 = select i1 %t48, i32 1, i32 0
  %t50 = icmp eq i32 %t45, 0
  %t51 = shl i32 %t49, 16
  %t52 = or i32 %t51, %t47
  %t53 = select i1 %t50, i32 0, i32 %t52
  %t55 = insertvalue { i32, ptr } zeroinitializer, i32 %t53, 0
  store { i32, ptr } %t55, ptr %rv
  br label %ret
bb11:
  %t56 = load ptr, ptr %l13, !tbaa !29
  %t57 = load ptr, ptr %l14, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ePush_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %v1, ptr %t56, ptr %t57)
  br label %bb12
bb12:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t61 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t58, i32 75)
  store i1 %t61, ptr %l23
  br label %bb13
bb13:
  %t62 = load i1, ptr %l23, !tbaa !21
  %t63 = xor i1 %t62, true
  br i1 %t63, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb6
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l1, !tbaa !23
  %t69 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t65, i32 %t66)
  store %"compiler/source:Span" %t69, ptr %l27
  br label %bb19
bb19:
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t72 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2eToArray_3ccompiler_2fast_3aPath_26_3e(ptr %v1, ptr %v1, ptr %t70)
  store { i64, ptr } %t72, ptr %l29
  br label %bb20
bb20:
  store { i64, [5 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 0
  store i64 6, ptr %t74
  %t75 = load %"compiler/source:Span", ptr %l27
  %t76 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t75, 0
  %t77 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t78 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t76, { i64, ptr } %t77, 1
  %t79 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t78, ptr %t79
  %t80 = load { i64, [5 x i64] }, ptr %t73
  %t82 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t80, ptr %t82
  %t84 = insertvalue { i32, ptr } zeroinitializer, ptr %t82, 1
  store { i32, ptr } %t84, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexternFn(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i32
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca i32
  %l27 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l37 = alloca %"compiler/ast:Func"
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 37)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l8
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l7
  br label %bb1
bb1:
  %t9 = load i32, ptr %l7, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l8, !tbaa !23
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
  %t23 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t21)
  %t24 = extractvalue { i32, i32 } %t23, 1
  %t25 = extractvalue { i32, i32 } %t23, 0
  store i32 %t25, ptr %l13
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb5, label %ok.27, !prof !99
ok.27:
  store i32 %t24, ptr %l12
  br label %bb4
bb4:
  %t28 = load i32, ptr %l12, !tbaa !23
  store i32 %t28, ptr %l10, !tbaa !23
  br label %bb6
bb5:
  %t29 = load i32, ptr %l13, !tbaa !23
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
  %t40 = load i32, ptr %l10, !tbaa !23
  store i32 %t40, ptr %l2, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/parse:Parser", ptr %t41, i32 0, i32 50
  store i1 true, ptr %t43, !tbaa !21
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %t44, i1 false, i1 false, i1 false)
  %t47 = extractvalue { i32, ptr } %t46, 1
  %t48 = extractvalue { i32, ptr } %t46, 0
  store i32 %t48, ptr %l19
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb8, label %ok.50, !prof !99
ok.50:
  store ptr %t47, ptr %l18
  br label %bb7
bb7:
  %t51 = load ptr, ptr %l18, !tbaa !29
  store ptr %t51, ptr %l16, !tbaa !29
  br label %bb10
bb8:
  br label %bb9
bb9:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/parse:Parser", ptr %t52, i32 0, i32 50
  store i1 false, ptr %t54, !tbaa !21
  %t56 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t56, ptr %rv
  br label %ret
bb10:
  %t57 = load ptr, ptr %l16, !tbaa !29
  store ptr %t57, ptr %l3, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/parse:Parser", ptr %t58, i32 0, i32 50
  store i1 false, ptr %t60, !tbaa !21
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t65 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t61, i32 %a1)
  store %"compiler/source:Span" %t65, ptr %l25
  br label %bb11
bb11:
  %t66 = load i32, ptr %l2, !tbaa !23
  store i32 %t66, ptr %l26, !tbaa !23
  %t67 = load ptr, ptr %l3, !tbaa !29
  store ptr %t67, ptr %l27, !tbaa !29
  %t68 = icmp sge i64 0, 0
  br i1 %t68, label %bb12, label %bb13
bb12:
  %t70 = icmp sle i64 0, 1152921504606846975
  br i1 %t70, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_30a3a318854048f4_b503dd06e25e7b98)
  unreachable
bb14:
  %t72 = mul i64 0, 8
  %t73 = insertvalue { i64, ptr } undef, i64 0, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t74, ptr %l30, !tbaa !27
  %t75 = icmp sge i64 0, 0
  br i1 %t75, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_30a3a318854048f4_b503dd06e25e7b98)
  unreachable
bb16:
  %t77 = icmp sle i64 0, 1152921504606846975
  br i1 %t77, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_30a3a318854048f4_b503dd06e25e7b98)
  unreachable
bb18:
  %t79 = mul i64 0, 8
  %t80 = insertvalue { i64, ptr } undef, i64 0, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t81, ptr %l33, !tbaa !27
  %t82 = icmp sge i64 0, 0
  br i1 %t82, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_30a3a318854048f4_b503dd06e25e7b98)
  unreachable
bb20:
  %t84 = icmp sle i64 0, 1152921504606846975
  br i1 %t84, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_e19d14955fbda001_52d897baee579005)
  unreachable
bb22:
  %t86 = mul i64 0, 8
  %t87 = insertvalue { i64, ptr } undef, i64 0, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t89 = load %"compiler/source:Span", ptr %l25
  %t90 = load i32, ptr %l26, !tbaa !23
  %t91 = load ptr, ptr %l27, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t95 = call %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t89, ptr null, i32 %t90, ptr %t91, { i64, ptr } %t92, { i64, ptr } %t93, i1 false, i1 false, { i64, ptr } %t88, ptr null, i32 0)
  store %"compiler/ast:Func" %t95, ptr %l37
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_e19d14955fbda001_52d897baee579005)
  unreachable
bb24:
  %t96 = load %"compiler/ast:Func", ptr %l37
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store %"compiler/ast:Func" %t96, ptr %t97
  %t99 = insertvalue { i32, ptr } zeroinitializer, ptr %t97, 1
  store { i32, ptr } %t99, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efieldDecl(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/token:Token"
  %l5 = alloca i32
  %l7 = alloca %"compiler/token:Token"
  %l9 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca i32
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i32, ptr %l5, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t5)
  store %"compiler/token:Token" %t7, ptr %l7
  br label %bb2
bb2:
  %t8 = load %"compiler/token:Token", ptr %l7
  store %"compiler/token:Token" %t8, ptr %l2
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t9)
  store i32 %t11, ptr %l9
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/parse:Parser", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load %"compiler/token:Token", ptr %l2
  %t20 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t16, %"compiler/token:Token" %t17)
  store { i64, ptr } %t20, ptr %l14
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l11, !tbaa !29
  %t22 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t23 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t21, { i64, ptr } %t22)
  store i32 %t23, ptr %l15
  br label %bb5
bb5:
  %t24 = load i32, ptr %l15, !tbaa !23
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l17, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  store i32 %t26, ptr %l18, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  store i32 %t24, ptr %l20, !tbaa !23
  %t29 = getelementptr %"compiler/token:Token", ptr %l2, i32 0, i32 2
  %t30 = load i32, ptr %t29, !tbaa !23
  %t31 = getelementptr %"compiler/token:Token", ptr %l2, i32 0, i32 3
  %t32 = load i32, ptr %t31, !tbaa !23
  %t35 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t30, i32 %t32)
  store %"compiler/source:Span" %t35, ptr %l23
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t37 = load i32, ptr %l20, !tbaa !23
  %t38 = load %"compiler/source:Span", ptr %l23
  %t39 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eone(ptr %v0, ptr %v1, ptr %t36, i32 %t37, %"compiler/source:Span" %t38)
  store ptr %t39, ptr %l24
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l17, !tbaa !29
  %t41 = load i32, ptr %l18, !tbaa !23
  %t42 = load ptr, ptr %l24, !tbaa !29
  %t43 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evarDecl(ptr %v0, ptr %v1, ptr %v1, ptr %t40, i32 %t41, ptr %t42)
  %t44 = extractvalue { i32, ptr } %t43, 1
  %t45 = extractvalue { i32, ptr } %t43, 0
  store i32 %t45, ptr %l26
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb9, label %ok.47, !prof !99
ok.47:
  store ptr %t44, ptr %l25
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l25, !tbaa !29
  store ptr %t48, ptr %l16, !tbaa !29
  br label %bb10
bb9:
  %t49 = load i32, ptr %l26, !tbaa !23
  %t50 = lshr i32 %t49, 16
  %t51 = and i32 %t49, 65535
  %t52 = icmp eq i32 %t50, 1
  %t53 = select i1 %t52, i32 1, i32 0
  %t54 = icmp eq i32 %t49, 0
  %t55 = shl i32 %t53, 16
  %t56 = or i32 %t55, %t51
  %t57 = select i1 %t54, i32 0, i32 %t56
  call void @__olang_scope_close(ptr %s0)
  %t59 = insertvalue { i32, ptr } zeroinitializer, i32 %t57, 0
  store { i32, ptr } %t59, ptr %rv
  br label %ret
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t60 = load ptr, ptr %l16, !tbaa !29
  %t61 = insertvalue { i32, ptr } zeroinitializer, ptr %t60, 1
  store { i32, ptr } %t61, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efound(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/token:Token"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca %"compiler/token:Token"
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t13 = getelementptr %"compiler/parse:Parser", ptr %t11, i32 0, i32 7
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  %t16 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v1, i32 %t14)
  store { i64, ptr } %t16, ptr %l8
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t17 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t18 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v1, ptr %v1, { i64, ptr } %t17)
  store { i64, ptr } %t18, ptr %l9
  br label %bb4
bb4:
  %t19 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t19, ptr %rv
  br label %ret
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t20)
  store %"compiler/token:Token" %t22, ptr %l11
  br label %bb6
bb6:
  %t23 = load %"compiler/token:Token", ptr %l11
  store %"compiler/token:Token" %t23, ptr %l1
  %t24 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 0
  %t25 = load i32, ptr %t24, !range !{i32 0, i32 114}
  %t27 = trunc i64 8 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load { i64, ptr }, ptr @G_2ecompiler_2fmsgs_2eEndOfLine, !tbaa !27
  store { i64, ptr } %t30, ptr %l14, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l15, !tbaa !24
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l16, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l15, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t44, ptr %l14, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t46 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 0
  %t47 = load i32, ptr %t46, !range !{i32 0, i32 114}
  %t49 = trunc i64 0 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t52 = load { i64, ptr }, ptr @G_2ecompiler_2fmsgs_2eEndOfFile, !tbaa !27
  store { i64, ptr } %t52, ptr %l19, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l20, !tbaa !24
  %t55 = load i64, ptr %l20, !tbaa !24
  %t56 = mul i64 %t55, 1
  %t57 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t56)
  %t58 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  store { i64, ptr } %t59, ptr %l21, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l20, !tbaa !24
  %t65 = mul i64 %t64, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %t63, i64 %t65, i1 false)
  %t66 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t66, ptr %l19, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t67, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load %"compiler/token:Token", ptr %l1
  %t72 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t68, %"compiler/token:Token" %t69)
  store { i64, ptr } %t72, ptr %l24
  br label %bb13
bb13:
  %t73 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t74 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %t73)
  store { i64, ptr } %t74, ptr %l25
  br label %bb14
bb14:
  %t75 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l13 = alloca i64
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
  %t13 = getelementptr %"compiler/parse:Parser", ptr %t11, i32 0, i32 8
  %t14 = load i32, ptr %t13, !tbaa !23
  store i32 %t14, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/parse:Parser", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/scan:Tokens", ptr %t19, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l9, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t24, i32 0, i32 6
  %t27 = load i64, ptr %t26, !tbaa !24
  %t30 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %t23, i64 %t27)
  store i64 %t30, ptr %l13
  br label %bb4
bb4:
  %t31 = load i64, ptr %l13, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr %"compiler/token:Token", ptr %t33, i64 %t31
  %t35 = getelementptr %"compiler/token:Token", ptr %t34, i32 0, i32 2
  %t36 = load i32, ptr %t35, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l17 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l26 = alloca i32
  %l34 = alloca ptr
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l49 = alloca ptr
  %l51 = alloca ptr
  %l52 = alloca i32
  %l54 = alloca ptr
  %l63 = alloca i1
  %l64 = alloca ptr
  %l67 = alloca ptr
  %l68 = alloca i32
  %l70 = alloca ptr
  %l77 = alloca ptr
  %l84 = alloca ptr
  %l85 = alloca i32
  %l87 = alloca ptr
  %l94 = alloca ptr
  %l103 = alloca i1
  %l104 = alloca i1
  %l107 = alloca i1
  %l108 = alloca i1
  %l111 = alloca i1
  %l114 = alloca i64
  %l116 = alloca ptr
  %l117 = alloca ptr
  %l120 = alloca ptr
  %l121 = alloca i32
  %l123 = alloca ptr
  %l130 = alloca i1
  %l133 = alloca i1
  %l134 = alloca i32
  %l136 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca ptr
  %l147 = alloca ptr
  %l148 = alloca ptr
  %l150 = alloca ptr
  %l151 = alloca i32
  %l153 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca i32
  %l163 = alloca ptr
  %l170 = alloca i32
  %l173 = alloca i32
  %l174 = alloca i32
  %l176 = alloca ptr
  %l185 = alloca %"compiler/source:Span"
  %l186 = alloca ptr
  %l189 = alloca ptr
  %l190 = alloca i32
  %l192 = alloca ptr
  %l199 = alloca ptr
  %l203 = alloca { i64, ptr }
  %l206 = alloca ptr
  %l215 = alloca i1
  %l218 = alloca i1
  %l220 = alloca ptr
  %l222 = alloca ptr
  %l223 = alloca i32
  %l225 = alloca ptr
  %l233 = alloca i32
  %l236 = alloca i32
  %l237 = alloca i32
  %l239 = alloca ptr
  %l248 = alloca %"compiler/source:Span"
  %l254 = alloca ptr
  %l263 = alloca i64
  %l265 = alloca ptr
  %l269 = alloca i1
  %l272 = alloca i1
  %l273 = alloca i32
  %l275 = alloca ptr
  %l284 = alloca ptr
  %l285 = alloca ptr
  %l287 = alloca ptr
  %l288 = alloca i32
  %l290 = alloca ptr
  %l299 = alloca i1
  %l304 = alloca ptr
  %l306 = alloca { i64, ptr }
  %l308 = alloca i32
  %l310 = alloca ptr
  %l318 = alloca i32
  %l321 = alloca %"compiler/source:Span"
  %l322 = alloca ptr
  %l326 = alloca { i64, ptr }
  %l329 = alloca ptr
  %l337 = alloca i32
  %l340 = alloca %"compiler/source:Span"
  %l341 = alloca ptr
  %l347 = alloca ptr
  %s1 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t530 = alloca { i64, [4 x i64] }, align 8
  %t662 = alloca { i64, [4 x i64] }, align 8
  %t872 = alloca { i64, [4 x i64] }, align 8
  %t921 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1)
  store %"compiler/source:Span" %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = getelementptr %"compiler/source:Span", ptr %l11, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  store i32 %t5, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t7)
  store i32 %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t10, i32 109)
  store i1 %t13, ptr %l17
  br label %bb3
bb3:
  %t14 = load i1, ptr %l17, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb7
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t18 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t15, i32 113)
  store i1 %t18, ptr %l21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l21, !tbaa !21
  store i1 %t19, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t20 = load i1, ptr %l18, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l22, !tbaa !29
  %t23 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s1, i32 111)
  store { i64, ptr } %t23, ptr %l24
  br label %bb10
bb9:
  br label %bb14
bb10:
  %t24 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  %t26 = extractvalue { i64, ptr } %t24, 1
  %t27 = mul i64 %t25, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t27)
  call void @llvm.memcpy.p0.p0.i64(ptr %t28, ptr %t26, i64 %t27, i1 false)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  %t31 = load ptr, ptr %l22, !tbaa !29
  %t33 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s1, ptr %t31, { i64, ptr } %t30)
  store i32 %t33, ptr %l26
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb12, label %ok.35, !prof !99
ok.35:
  br label %bb11
bb11:
  br label %bb13
bb12:
  %t36 = load i32, ptr %l26, !tbaa !23
  %t37 = lshr i32 %t36, 16
  %t38 = and i32 %t36, 65535
  %t39 = icmp eq i32 %t37, 1
  %t40 = select i1 %t39, i32 1, i32 0
  %t41 = icmp eq i32 %t36, 0
  %t42 = shl i32 %t40, 16
  %t43 = or i32 %t42, %t38
  %t44 = select i1 %t41, i32 0, i32 %t43
  call void @__olang_scope_close(ptr %s1)
  %t46 = insertvalue { i32, ptr } zeroinitializer, i32 %t44, 0
  store { i32, ptr } %t46, ptr %rv
  br label %ret
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %bb14
bb14:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/parse:Parser", ptr %t47, i32 0, i32 11
  %t50 = load i1, ptr %t49, !tbaa !21
  store i1 %t50, ptr %l3, !tbaa !21
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/parse:Parser", ptr %t52, i32 0, i32 20
  %t55 = load i1, ptr %t54, !tbaa !21
  store i1 %t55, ptr %l4, !tbaa !21
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/parse:Parser", ptr %t57, i32 0, i32 11
  store i1 false, ptr %t59, !tbaa !21
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/parse:Parser", ptr %t60, i32 0, i32 20
  store i1 true, ptr %t62, !tbaa !21
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l34, !tbaa !29
  %t64 = load ptr, ptr %l34, !tbaa !29
  %t65 = getelementptr %"compiler/parse:Parser", ptr %t64, i32 0, i32 18
  %t66 = load i64, ptr %t65, !tbaa !24
  %t68 = add i64 %t66, 1
  %t70 = load ptr, ptr %l34, !tbaa !29
  %t71 = getelementptr %"compiler/parse:Parser", ptr %t70, i32 0, i32 18
  store i64 %t68, ptr %t71, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t75 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t72, i32 79)
  store i1 %t75, ptr %l39
  br label %bb15
bb15:
  %t76 = load i1, ptr %l39, !tbaa !21
  br i1 %t76, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb19
bb17:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t80 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t77, i32 111)
  store i1 %t80, ptr %l43
  br label %bb18
bb18:
  %t81 = load i1, ptr %l43, !tbaa !21
  %t82 = xor i1 %t81, true
  store i1 %t82, ptr %l40, !tbaa !21
  br label %bb19
bb19:
  %t84 = load i1, ptr %l40, !tbaa !21
  br i1 %t84, label %bb20, label %bb21
bb20:
  store ptr null, ptr %l5, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t88 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t85, i32 79)
  store i1 %t88, ptr %l47
  br label %bb22
bb21:
  br label %bb125
bb22:
  %t89 = load i1, ptr %l47, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v2, ptr %t92)
  %t95 = extractvalue { i32, ptr } %t94, 1
  %t96 = extractvalue { i32, ptr } %t94, 0
  store i32 %t96, ptr %l52
  %t97 = icmp ne i32 %t96, 0
  br i1 %t97, label %bb26, label %ok.98, !prof !99
ok.98:
  store ptr %t95, ptr %l51
  br label %bb25
bb24:
  br label %bb79
bb25:
  %t99 = load ptr, ptr %l51, !tbaa !29
  store ptr %t99, ptr %l49, !tbaa !29
  br label %bb27
bb26:
  %t100 = load i32, ptr %l52, !tbaa !23
  %t101 = lshr i32 %t100, 16
  %t102 = and i32 %t100, 65535
  %t103 = icmp eq i32 %t101, 1
  %t104 = select i1 %t103, i32 1, i32 0
  %t105 = icmp eq i32 %t100, 0
  %t106 = shl i32 %t104, 16
  %t107 = or i32 %t106, %t102
  %t108 = select i1 %t105, i32 0, i32 %t107
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l54, !tbaa !29
  %t110 = load ptr, ptr %l54, !tbaa !29
  %t111 = getelementptr %"compiler/parse:Parser", ptr %t110, i32 0, i32 18
  %t112 = load i64, ptr %t111, !tbaa !24
  %t114 = sub i64 %t112, 1
  %t116 = load ptr, ptr %l54, !tbaa !29
  %t117 = getelementptr %"compiler/parse:Parser", ptr %t116, i32 0, i32 18
  store i64 %t114, ptr %t117, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i1, ptr %l3, !tbaa !21
  %t122 = getelementptr %"compiler/parse:Parser", ptr %t118, i32 0, i32 11
  store i1 %t119, ptr %t122, !tbaa !21
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i1, ptr %l4, !tbaa !21
  %t127 = getelementptr %"compiler/parse:Parser", ptr %t123, i32 0, i32 20
  store i1 %t124, ptr %t127, !tbaa !21
  %t129 = insertvalue { i32, ptr } zeroinitializer, i32 %t108, 0
  store { i32, ptr } %t129, ptr %rv
  br label %ret
bb27:
  %t130 = load ptr, ptr %l49, !tbaa !29
  store ptr %t130, ptr %l5, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehends(ptr %v0, ptr %t132)
  store i1 %t134, ptr %l63
  br label %bb28
bb28:
  %t135 = load i1, ptr %l63, !tbaa !21
  br i1 %t135, label %bb29, label %bb30
bb29:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t140 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprAsType(ptr %v0, ptr %v1, ptr %v2, ptr %t136, ptr %t137)
  %t141 = extractvalue { i32, ptr } %t140, 1
  %t142 = extractvalue { i32, ptr } %t140, 0
  store i32 %t142, ptr %l68
  %t143 = icmp ne i32 %t142, 0
  br i1 %t143, label %bb32, label %ok.144, !prof !99
ok.144:
  store ptr %t141, ptr %l67
  br label %bb31
bb30:
  br label %bb37
bb31:
  %t145 = load ptr, ptr %l67, !tbaa !29
  store ptr %t145, ptr %l64, !tbaa !29
  br label %bb33
bb32:
  %t146 = load i32, ptr %l68, !tbaa !23
  %t147 = lshr i32 %t146, 16
  %t148 = and i32 %t146, 65535
  %t149 = icmp eq i32 %t147, 1
  %t150 = select i1 %t149, i32 1, i32 0
  %t151 = icmp eq i32 %t146, 0
  %t152 = shl i32 %t150, 16
  %t153 = or i32 %t152, %t148
  %t154 = select i1 %t151, i32 0, i32 %t153
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l70, !tbaa !29
  %t156 = load ptr, ptr %l70, !tbaa !29
  %t157 = getelementptr %"compiler/parse:Parser", ptr %t156, i32 0, i32 18
  %t158 = load i64, ptr %t157, !tbaa !24
  %t160 = sub i64 %t158, 1
  %t162 = load ptr, ptr %l70, !tbaa !29
  %t163 = getelementptr %"compiler/parse:Parser", ptr %t162, i32 0, i32 18
  store i64 %t160, ptr %t163, !tbaa !24
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i1, ptr %l3, !tbaa !21
  %t168 = getelementptr %"compiler/parse:Parser", ptr %t164, i32 0, i32 11
  store i1 %t165, ptr %t168, !tbaa !21
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load i1, ptr %l4, !tbaa !21
  %t173 = getelementptr %"compiler/parse:Parser", ptr %t169, i32 0, i32 20
  store i1 %t170, ptr %t173, !tbaa !21
  %t175 = insertvalue { i32, ptr } zeroinitializer, i32 %t154, 0
  store { i32, ptr } %t175, ptr %rv
  br label %ret
bb33:
  %t176 = load ptr, ptr %l64, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l2, !tbaa !23
  %t181 = load ptr, ptr %l5, !tbaa !29
  %t187 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehension(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t177, i32 %t178, ptr %t176, ptr %t181, i32 111)
  %t188 = extractvalue { i32, ptr } %t187, 1
  %t189 = extractvalue { i32, ptr } %t187, 0
  store i32 %t189, ptr %l85
  %t190 = icmp ne i32 %t189, 0
  br i1 %t190, label %bb35, label %ok.191, !prof !99
ok.191:
  store ptr %t188, ptr %l84
  br label %bb34
bb34:
  %t192 = load ptr, ptr %l84, !tbaa !29
  store ptr %t192, ptr %l77, !tbaa !29
  br label %bb36
bb35:
  %t193 = load i32, ptr %l85, !tbaa !23
  %t194 = lshr i32 %t193, 16
  %t195 = and i32 %t193, 65535
  %t196 = icmp eq i32 %t194, 1
  %t197 = select i1 %t196, i32 1, i32 0
  %t198 = icmp eq i32 %t193, 0
  %t199 = shl i32 %t197, 16
  %t200 = or i32 %t199, %t195
  %t201 = select i1 %t198, i32 0, i32 %t200
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l87, !tbaa !29
  %t203 = load ptr, ptr %l87, !tbaa !29
  %t204 = getelementptr %"compiler/parse:Parser", ptr %t203, i32 0, i32 18
  %t205 = load i64, ptr %t204, !tbaa !24
  %t207 = sub i64 %t205, 1
  %t209 = load ptr, ptr %l87, !tbaa !29
  %t210 = getelementptr %"compiler/parse:Parser", ptr %t209, i32 0, i32 18
  store i64 %t207, ptr %t210, !tbaa !24
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load i1, ptr %l3, !tbaa !21
  %t215 = getelementptr %"compiler/parse:Parser", ptr %t211, i32 0, i32 11
  store i1 %t212, ptr %t215, !tbaa !21
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load i1, ptr %l4, !tbaa !21
  %t220 = getelementptr %"compiler/parse:Parser", ptr %t216, i32 0, i32 20
  store i1 %t217, ptr %t220, !tbaa !21
  %t222 = insertvalue { i32, ptr } zeroinitializer, i32 %t201, 0
  store { i32, ptr } %t222, ptr %rv
  br label %ret
bb36:
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l94, !tbaa !29
  %t224 = load ptr, ptr %l94, !tbaa !29
  %t225 = getelementptr %"compiler/parse:Parser", ptr %t224, i32 0, i32 18
  %t226 = load i64, ptr %t225, !tbaa !24
  %t228 = sub i64 %t226, 1
  %t230 = load ptr, ptr %l94, !tbaa !29
  %t231 = getelementptr %"compiler/parse:Parser", ptr %t230, i32 0, i32 18
  store i64 %t228, ptr %t231, !tbaa !24
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i1, ptr %l3, !tbaa !21
  %t236 = getelementptr %"compiler/parse:Parser", ptr %t232, i32 0, i32 11
  store i1 %t233, ptr %t236, !tbaa !21
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load i1, ptr %l4, !tbaa !21
  %t241 = getelementptr %"compiler/parse:Parser", ptr %t237, i32 0, i32 20
  store i1 %t238, ptr %t241, !tbaa !21
  %t242 = load ptr, ptr %l77, !tbaa !29
  %t243 = insertvalue { i32, ptr } zeroinitializer, ptr %t242, 1
  store { i32, ptr } %t243, ptr %rv
  br label %ret
bb37:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t247 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t244, i32 79)
  store i1 %t247, ptr %l103
  br label %bb38
bb38:
  %t248 = load i1, ptr %l103, !tbaa !21
  br i1 %t248, label %bb39, label %bb40
bb39:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t253 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisQualifiedType(ptr %v0, ptr %v1, ptr %t249, ptr %t250)
  store i1 %t253, ptr %l107
  br label %bb41
bb40:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb46
bb41:
  %t254 = load i1, ptr %l107, !tbaa !21
  br i1 %t254, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb45
bb43:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load ptr, ptr %l1, !tbaa !29
  %t259 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamesBareType(ptr %v0, ptr %v1, ptr %t255, ptr %t256)
  store i1 %t259, ptr %l111
  br label %bb44
bb44:
  %t260 = load i1, ptr %l111, !tbaa !21
  store i1 %t260, ptr %l108, !tbaa !21
  br label %bb45
bb45:
  %t261 = load i1, ptr %l108, !tbaa !21
  store i1 %t261, ptr %l104, !tbaa !21
  br label %bb46
bb46:
  %t262 = load i1, ptr %l104, !tbaa !21
  br i1 %t262, label %bb47, label %bb48
bb47:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/parse:Parser", ptr %t263, i32 0, i32 31
  %t267 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t265)
  store i64 %t267, ptr %l114
  br label %bb49
bb48:
  br label %bb78
bb49:
  %t268 = load i64, ptr %l114, !tbaa !24
  store i64 %t268, ptr %l7, !tbaa !24
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/parse:Parser", ptr %t269, i32 0, i32 31
  store ptr %t271, ptr %l116, !tbaa !29
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load ptr, ptr %l5, !tbaa !29
  %t276 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentry(ptr %v0, ptr %v2, ptr %v0, ptr %t272, ptr %t273)
  %t277 = extractvalue { i32, ptr } %t276, 1
  %t278 = extractvalue { i32, ptr } %t276, 0
  store i32 %t278, ptr %l121
  %t279 = icmp ne i32 %t278, 0
  br i1 %t279, label %bb51, label %ok.280, !prof !99
ok.280:
  store ptr %t277, ptr %l120
  br label %bb50
bb50:
  %t281 = load ptr, ptr %l120, !tbaa !29
  store ptr %t281, ptr %l117, !tbaa !29
  br label %bb52
bb51:
  %t282 = load i32, ptr %l121, !tbaa !23
  %t283 = lshr i32 %t282, 16
  %t284 = and i32 %t282, 65535
  %t285 = icmp eq i32 %t283, 1
  %t286 = select i1 %t285, i32 1, i32 0
  %t287 = icmp eq i32 %t282, 0
  %t288 = shl i32 %t286, 16
  %t289 = or i32 %t288, %t284
  %t290 = select i1 %t287, i32 0, i32 %t289
  %t291 = load ptr, ptr %l0, !tbaa !29
  store ptr %t291, ptr %l123, !tbaa !29
  %t292 = load ptr, ptr %l123, !tbaa !29
  %t293 = getelementptr %"compiler/parse:Parser", ptr %t292, i32 0, i32 18
  %t294 = load i64, ptr %t293, !tbaa !24
  %t296 = sub i64 %t294, 1
  %t298 = load ptr, ptr %l123, !tbaa !29
  %t299 = getelementptr %"compiler/parse:Parser", ptr %t298, i32 0, i32 18
  store i64 %t296, ptr %t299, !tbaa !24
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load i1, ptr %l3, !tbaa !21
  %t304 = getelementptr %"compiler/parse:Parser", ptr %t300, i32 0, i32 11
  store i1 %t301, ptr %t304, !tbaa !21
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load i1, ptr %l4, !tbaa !21
  %t309 = getelementptr %"compiler/parse:Parser", ptr %t305, i32 0, i32 20
  store i1 %t306, ptr %t309, !tbaa !21
  %t311 = insertvalue { i32, ptr } zeroinitializer, i32 %t290, 0
  store { i32, ptr } %t311, ptr %rv
  br label %ret
bb52:
  %t312 = load ptr, ptr %l116, !tbaa !29
  %t313 = load ptr, ptr %l117, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t312, ptr %t313)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t317 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t314, i32 111)
  %t318 = extractvalue { i32, i1 } %t317, 1
  %t319 = extractvalue { i32, i1 } %t317, 0
  store i32 %t319, ptr %l134
  %t320 = icmp ne i32 %t319, 0
  br i1 %t320, label %bb56, label %ok.321, !prof !99
ok.321:
  store i1 %t318, ptr %l133
  br label %bb55
bb55:
  %t322 = load i1, ptr %l133, !tbaa !21
  store i1 %t322, ptr %l130, !tbaa !21
  br label %bb57
bb56:
  %t323 = load i32, ptr %l134, !tbaa !23
  %t324 = lshr i32 %t323, 16
  %t325 = and i32 %t323, 65535
  %t326 = icmp eq i32 %t324, 1
  %t327 = select i1 %t326, i32 1, i32 0
  %t328 = icmp eq i32 %t323, 0
  %t329 = shl i32 %t327, 16
  %t330 = or i32 %t329, %t325
  %t331 = select i1 %t328, i32 0, i32 %t330
  %t332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t332, ptr %l136, !tbaa !29
  %t333 = load ptr, ptr %l136, !tbaa !29
  %t334 = getelementptr %"compiler/parse:Parser", ptr %t333, i32 0, i32 18
  %t335 = load i64, ptr %t334, !tbaa !24
  %t337 = sub i64 %t335, 1
  %t339 = load ptr, ptr %l136, !tbaa !29
  %t340 = getelementptr %"compiler/parse:Parser", ptr %t339, i32 0, i32 18
  store i64 %t337, ptr %t340, !tbaa !24
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load i1, ptr %l3, !tbaa !21
  %t345 = getelementptr %"compiler/parse:Parser", ptr %t341, i32 0, i32 11
  store i1 %t342, ptr %t345, !tbaa !21
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load i1, ptr %l4, !tbaa !21
  %t350 = getelementptr %"compiler/parse:Parser", ptr %t346, i32 0, i32 20
  store i1 %t347, ptr %t350, !tbaa !21
  %t352 = insertvalue { i32, ptr } zeroinitializer, i32 %t331, 0
  store { i32, ptr } %t352, ptr %rv
  br label %ret
bb57:
  %t353 = load i1, ptr %l130, !tbaa !21
  %t354 = xor i1 %t353, true
  br i1 %t354, label %bb58, label %bb59
bb58:
  br label %bb69
bb59:
  br label %bb60
bb60:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/parse:Parser", ptr %t356, i32 0, i32 31
  store ptr %t358, ptr %l145, !tbaa !29
  %t359 = load ptr, ptr %l0, !tbaa !29
  store ptr %t359, ptr %l147, !tbaa !29
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v0, ptr %t360)
  %t363 = extractvalue { i32, ptr } %t362, 1
  %t364 = extractvalue { i32, ptr } %t362, 0
  store i32 %t364, ptr %l151
  %t365 = icmp ne i32 %t364, 0
  br i1 %t365, label %bb62, label %ok.366, !prof !99
ok.366:
  store ptr %t363, ptr %l150
  br label %bb61
bb61:
  %t367 = load ptr, ptr %l150, !tbaa !29
  store ptr %t367, ptr %l148, !tbaa !29
  br label %bb63
bb62:
  %t368 = load i32, ptr %l151, !tbaa !23
  %t369 = lshr i32 %t368, 16
  %t370 = and i32 %t368, 65535
  %t371 = icmp eq i32 %t369, 1
  %t372 = select i1 %t371, i32 1, i32 0
  %t373 = icmp eq i32 %t368, 0
  %t374 = shl i32 %t372, 16
  %t375 = or i32 %t374, %t370
  %t376 = select i1 %t373, i32 0, i32 %t375
  %t377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t377, ptr %l153, !tbaa !29
  %t378 = load ptr, ptr %l153, !tbaa !29
  %t379 = getelementptr %"compiler/parse:Parser", ptr %t378, i32 0, i32 18
  %t380 = load i64, ptr %t379, !tbaa !24
  %t382 = sub i64 %t380, 1
  %t384 = load ptr, ptr %l153, !tbaa !29
  %t385 = getelementptr %"compiler/parse:Parser", ptr %t384, i32 0, i32 18
  store i64 %t382, ptr %t385, !tbaa !24
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load i1, ptr %l3, !tbaa !21
  %t390 = getelementptr %"compiler/parse:Parser", ptr %t386, i32 0, i32 11
  store i1 %t387, ptr %t390, !tbaa !21
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load i1, ptr %l4, !tbaa !21
  %t395 = getelementptr %"compiler/parse:Parser", ptr %t391, i32 0, i32 20
  store i1 %t392, ptr %t395, !tbaa !21
  %t397 = insertvalue { i32, ptr } zeroinitializer, i32 %t376, 0
  store { i32, ptr } %t397, ptr %rv
  br label %ret
bb63:
  %t398 = load ptr, ptr %l147, !tbaa !29
  %t399 = load ptr, ptr %l148, !tbaa !29
  %t400 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentry(ptr %v0, ptr %v0, ptr %v0, ptr %t398, ptr %t399)
  %t401 = extractvalue { i32, ptr } %t400, 1
  %t402 = extractvalue { i32, ptr } %t400, 0
  store i32 %t402, ptr %l161
  %t403 = icmp ne i32 %t402, 0
  br i1 %t403, label %bb65, label %ok.404, !prof !99
ok.404:
  store ptr %t401, ptr %l160
  br label %bb64
bb64:
  %t405 = load ptr, ptr %l160, !tbaa !29
  store ptr %t405, ptr %l146, !tbaa !29
  br label %bb66
bb65:
  %t406 = load i32, ptr %l161, !tbaa !23
  %t407 = lshr i32 %t406, 16
  %t408 = and i32 %t406, 65535
  %t409 = icmp eq i32 %t407, 1
  %t410 = select i1 %t409, i32 1, i32 0
  %t411 = icmp eq i32 %t406, 0
  %t412 = shl i32 %t410, 16
  %t413 = or i32 %t412, %t408
  %t414 = select i1 %t411, i32 0, i32 %t413
  %t415 = load ptr, ptr %l0, !tbaa !29
  store ptr %t415, ptr %l163, !tbaa !29
  %t416 = load ptr, ptr %l163, !tbaa !29
  %t417 = getelementptr %"compiler/parse:Parser", ptr %t416, i32 0, i32 18
  %t418 = load i64, ptr %t417, !tbaa !24
  %t420 = sub i64 %t418, 1
  %t422 = load ptr, ptr %l163, !tbaa !29
  %t423 = getelementptr %"compiler/parse:Parser", ptr %t422, i32 0, i32 18
  store i64 %t420, ptr %t423, !tbaa !24
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load i1, ptr %l3, !tbaa !21
  %t428 = getelementptr %"compiler/parse:Parser", ptr %t424, i32 0, i32 11
  store i1 %t425, ptr %t428, !tbaa !21
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load i1, ptr %l4, !tbaa !21
  %t433 = getelementptr %"compiler/parse:Parser", ptr %t429, i32 0, i32 20
  store i1 %t430, ptr %t433, !tbaa !21
  %t435 = insertvalue { i32, ptr } zeroinitializer, i32 %t414, 0
  store { i32, ptr } %t435, ptr %rv
  br label %ret
bb66:
  %t436 = load ptr, ptr %l145, !tbaa !29
  %t437 = load ptr, ptr %l146, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t436, ptr %t437)
  br label %bb67
bb67:
  br label %bb68
bb68:
  br label %bb54
bb69:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t441 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t438, i32 111)
  %t442 = extractvalue { i32, i32 } %t441, 1
  %t443 = extractvalue { i32, i32 } %t441, 0
  store i32 %t443, ptr %l174
  %t444 = icmp ne i32 %t443, 0
  br i1 %t444, label %bb71, label %ok.445, !prof !99
ok.445:
  store i32 %t442, ptr %l173
  br label %bb70
bb70:
  %t446 = load i32, ptr %l173, !tbaa !23
  store i32 %t446, ptr %l170, !tbaa !23
  br label %bb72
bb71:
  %t447 = load i32, ptr %l174, !tbaa !23
  %t448 = lshr i32 %t447, 16
  %t449 = and i32 %t447, 65535
  %t450 = icmp eq i32 %t448, 1
  %t451 = select i1 %t450, i32 1, i32 0
  %t452 = icmp eq i32 %t447, 0
  %t453 = shl i32 %t451, 16
  %t454 = or i32 %t453, %t449
  %t455 = select i1 %t452, i32 0, i32 %t454
  %t456 = load ptr, ptr %l0, !tbaa !29
  store ptr %t456, ptr %l176, !tbaa !29
  %t457 = load ptr, ptr %l176, !tbaa !29
  %t458 = getelementptr %"compiler/parse:Parser", ptr %t457, i32 0, i32 18
  %t459 = load i64, ptr %t458, !tbaa !24
  %t461 = sub i64 %t459, 1
  %t463 = load ptr, ptr %l176, !tbaa !29
  %t464 = getelementptr %"compiler/parse:Parser", ptr %t463, i32 0, i32 18
  store i64 %t461, ptr %t464, !tbaa !24
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t466 = load i1, ptr %l3, !tbaa !21
  %t469 = getelementptr %"compiler/parse:Parser", ptr %t465, i32 0, i32 11
  store i1 %t466, ptr %t469, !tbaa !21
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load i1, ptr %l4, !tbaa !21
  %t474 = getelementptr %"compiler/parse:Parser", ptr %t470, i32 0, i32 20
  store i1 %t471, ptr %t474, !tbaa !21
  %t476 = insertvalue { i32, ptr } zeroinitializer, i32 %t455, 0
  store { i32, ptr } %t476, ptr %rv
  br label %ret
bb72:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t478 = load i32, ptr %l2, !tbaa !23
  %t481 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t477, i32 %t478)
  store %"compiler/source:Span" %t481, ptr %l185
  br label %bb73
bb73:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t483 = load ptr, ptr %l1, !tbaa !29
  %t486 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprAsType(ptr %v0, ptr %v1, ptr %v2, ptr %t482, ptr %t483)
  %t487 = extractvalue { i32, ptr } %t486, 1
  %t488 = extractvalue { i32, ptr } %t486, 0
  store i32 %t488, ptr %l190
  %t489 = icmp ne i32 %t488, 0
  br i1 %t489, label %bb75, label %ok.490, !prof !99
ok.490:
  store ptr %t487, ptr %l189
  br label %bb74
bb74:
  %t491 = load ptr, ptr %l189, !tbaa !29
  store ptr %t491, ptr %l186, !tbaa !29
  br label %bb76
bb75:
  %t492 = load i32, ptr %l190, !tbaa !23
  %t493 = lshr i32 %t492, 16
  %t494 = and i32 %t492, 65535
  %t495 = icmp eq i32 %t493, 1
  %t496 = select i1 %t495, i32 1, i32 0
  %t497 = icmp eq i32 %t492, 0
  %t498 = shl i32 %t496, 16
  %t499 = or i32 %t498, %t494
  %t500 = select i1 %t497, i32 0, i32 %t499
  %t501 = load ptr, ptr %l0, !tbaa !29
  store ptr %t501, ptr %l192, !tbaa !29
  %t502 = load ptr, ptr %l192, !tbaa !29
  %t503 = getelementptr %"compiler/parse:Parser", ptr %t502, i32 0, i32 18
  %t504 = load i64, ptr %t503, !tbaa !24
  %t506 = sub i64 %t504, 1
  %t508 = load ptr, ptr %l192, !tbaa !29
  %t509 = getelementptr %"compiler/parse:Parser", ptr %t508, i32 0, i32 18
  store i64 %t506, ptr %t509, !tbaa !24
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load i1, ptr %l3, !tbaa !21
  %t514 = getelementptr %"compiler/parse:Parser", ptr %t510, i32 0, i32 11
  store i1 %t511, ptr %t514, !tbaa !21
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load i1, ptr %l4, !tbaa !21
  %t519 = getelementptr %"compiler/parse:Parser", ptr %t515, i32 0, i32 20
  store i1 %t516, ptr %t519, !tbaa !21
  %t521 = insertvalue { i32, ptr } zeroinitializer, i32 %t500, 0
  store { i32, ptr } %t521, ptr %rv
  br label %ret
bb76:
  %t522 = load ptr, ptr %l186, !tbaa !29
  store ptr %t522, ptr %l199, !tbaa !29
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/parse:Parser", ptr %t523, i32 0, i32 31
  %t526 = load i64, ptr %l7, !tbaa !24
  %t529 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t525, i64 %t526)
  store { i64, ptr } %t529, ptr %l203
  br label %bb77
bb77:
  store { i64, [4 x i64] } zeroinitializer, ptr %t530
  %t531 = getelementptr { i64, [4 x i64] }, ptr %t530, i32 0, i32 0
  store i64 17, ptr %t531
  %t532 = load %"compiler/source:Span", ptr %l185
  %t533 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t532, 0
  %t534 = load ptr, ptr %l199, !tbaa !29
  %t535 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t533, ptr %t534, 1
  %t536 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t537 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t535, { i64, ptr } %t536, 2
  %t538 = getelementptr { i64, [4 x i64] }, ptr %t530, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t537, ptr %t538
  %t539 = load { i64, [4 x i64] }, ptr %t530
  %t541 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t539, ptr %t541
  %t542 = load ptr, ptr %l0, !tbaa !29
  store ptr %t542, ptr %l206, !tbaa !29
  %t543 = load ptr, ptr %l206, !tbaa !29
  %t544 = getelementptr %"compiler/parse:Parser", ptr %t543, i32 0, i32 18
  %t545 = load i64, ptr %t544, !tbaa !24
  %t547 = sub i64 %t545, 1
  %t549 = load ptr, ptr %l206, !tbaa !29
  %t550 = getelementptr %"compiler/parse:Parser", ptr %t549, i32 0, i32 18
  store i64 %t547, ptr %t550, !tbaa !24
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t552 = load i1, ptr %l3, !tbaa !21
  %t555 = getelementptr %"compiler/parse:Parser", ptr %t551, i32 0, i32 11
  store i1 %t552, ptr %t555, !tbaa !21
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t557 = load i1, ptr %l4, !tbaa !21
  %t560 = getelementptr %"compiler/parse:Parser", ptr %t556, i32 0, i32 20
  store i1 %t557, ptr %t560, !tbaa !21
  %t562 = insertvalue { i32, ptr } zeroinitializer, ptr %t541, 1
  store { i32, ptr } %t562, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t566 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t563, i32 79)
  store i1 %t566, ptr %l215
  br label %bb80
bb80:
  %t567 = load i1, ptr %l215, !tbaa !21
  br i1 %t567, label %bb81, label %bb82
bb81:
  store ptr null, ptr %l8, !tbaa !29
  %t568 = load ptr, ptr %l0, !tbaa !29
  %t571 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t568, i32 111)
  store i1 %t571, ptr %l218
  br label %bb83
bb82:
  br label %bb94
bb83:
  %t572 = load i1, ptr %l218, !tbaa !21
  %t573 = xor i1 %t572, true
  br i1 %t573, label %bb84, label %bb85
bb84:
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t577 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v2, ptr %t575)
  %t578 = extractvalue { i32, ptr } %t577, 1
  %t579 = extractvalue { i32, ptr } %t577, 0
  store i32 %t579, ptr %l223
  %t580 = icmp ne i32 %t579, 0
  br i1 %t580, label %bb87, label %ok.581, !prof !99
ok.581:
  store ptr %t578, ptr %l222
  br label %bb86
bb85:
  br label %bb89
bb86:
  %t582 = load ptr, ptr %l222, !tbaa !29
  store ptr %t582, ptr %l220, !tbaa !29
  br label %bb88
bb87:
  %t583 = load i32, ptr %l223, !tbaa !23
  %t584 = lshr i32 %t583, 16
  %t585 = and i32 %t583, 65535
  %t586 = icmp eq i32 %t584, 1
  %t587 = select i1 %t586, i32 1, i32 0
  %t588 = icmp eq i32 %t583, 0
  %t589 = shl i32 %t587, 16
  %t590 = or i32 %t589, %t585
  %t591 = select i1 %t588, i32 0, i32 %t590
  %t592 = load ptr, ptr %l0, !tbaa !29
  store ptr %t592, ptr %l225, !tbaa !29
  %t593 = load ptr, ptr %l225, !tbaa !29
  %t594 = getelementptr %"compiler/parse:Parser", ptr %t593, i32 0, i32 18
  %t595 = load i64, ptr %t594, !tbaa !24
  %t597 = sub i64 %t595, 1
  %t599 = load ptr, ptr %l225, !tbaa !29
  %t600 = getelementptr %"compiler/parse:Parser", ptr %t599, i32 0, i32 18
  store i64 %t597, ptr %t600, !tbaa !24
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t602 = load i1, ptr %l3, !tbaa !21
  %t605 = getelementptr %"compiler/parse:Parser", ptr %t601, i32 0, i32 11
  store i1 %t602, ptr %t605, !tbaa !21
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t607 = load i1, ptr %l4, !tbaa !21
  %t610 = getelementptr %"compiler/parse:Parser", ptr %t606, i32 0, i32 20
  store i1 %t607, ptr %t610, !tbaa !21
  %t612 = insertvalue { i32, ptr } zeroinitializer, i32 %t591, 0
  store { i32, ptr } %t612, ptr %rv
  br label %ret
bb88:
  %t613 = load ptr, ptr %l220, !tbaa !29
  store ptr %t613, ptr %l8, !tbaa !29
  br label %bb89
bb89:
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t618 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t615, i32 111)
  %t619 = extractvalue { i32, i32 } %t618, 1
  %t620 = extractvalue { i32, i32 } %t618, 0
  store i32 %t620, ptr %l237
  %t621 = icmp ne i32 %t620, 0
  br i1 %t621, label %bb91, label %ok.622, !prof !99
ok.622:
  store i32 %t619, ptr %l236
  br label %bb90
bb90:
  %t623 = load i32, ptr %l236, !tbaa !23
  store i32 %t623, ptr %l233, !tbaa !23
  br label %bb92
bb91:
  %t624 = load i32, ptr %l237, !tbaa !23
  %t625 = lshr i32 %t624, 16
  %t626 = and i32 %t624, 65535
  %t627 = icmp eq i32 %t625, 1
  %t628 = select i1 %t627, i32 1, i32 0
  %t629 = icmp eq i32 %t624, 0
  %t630 = shl i32 %t628, 16
  %t631 = or i32 %t630, %t626
  %t632 = select i1 %t629, i32 0, i32 %t631
  %t633 = load ptr, ptr %l0, !tbaa !29
  store ptr %t633, ptr %l239, !tbaa !29
  %t634 = load ptr, ptr %l239, !tbaa !29
  %t635 = getelementptr %"compiler/parse:Parser", ptr %t634, i32 0, i32 18
  %t636 = load i64, ptr %t635, !tbaa !24
  %t638 = sub i64 %t636, 1
  %t640 = load ptr, ptr %l239, !tbaa !29
  %t641 = getelementptr %"compiler/parse:Parser", ptr %t640, i32 0, i32 18
  store i64 %t638, ptr %t641, !tbaa !24
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t643 = load i1, ptr %l3, !tbaa !21
  %t646 = getelementptr %"compiler/parse:Parser", ptr %t642, i32 0, i32 11
  store i1 %t643, ptr %t646, !tbaa !21
  %t647 = load ptr, ptr %l0, !tbaa !29
  %t648 = load i1, ptr %l4, !tbaa !21
  %t651 = getelementptr %"compiler/parse:Parser", ptr %t647, i32 0, i32 20
  store i1 %t648, ptr %t651, !tbaa !21
  %t653 = insertvalue { i32, ptr } zeroinitializer, i32 %t632, 0
  store { i32, ptr } %t653, ptr %rv
  br label %ret
bb92:
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load i32, ptr %l2, !tbaa !23
  %t658 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t654, i32 %t655)
  store %"compiler/source:Span" %t658, ptr %l248
  br label %bb93
bb93:
  %t659 = load ptr, ptr %l1, !tbaa !29
  %t660 = load ptr, ptr %l5, !tbaa !29
  %t661 = load ptr, ptr %l8, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t662
  %t663 = getelementptr { i64, [4 x i64] }, ptr %t662, i32 0, i32 0
  store i64 16, ptr %t663
  %t664 = load %"compiler/source:Span", ptr %l248
  %t665 = insertvalue { %"compiler/source:Span", ptr, ptr, ptr } undef, %"compiler/source:Span" %t664, 0
  %t667 = insertvalue { %"compiler/source:Span", ptr, ptr, ptr } %t665, ptr %t659, 1
  %t669 = insertvalue { %"compiler/source:Span", ptr, ptr, ptr } %t667, ptr %t660, 2
  %t671 = insertvalue { %"compiler/source:Span", ptr, ptr, ptr } %t669, ptr %t661, 3
  %t672 = getelementptr { i64, [4 x i64] }, ptr %t662, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr, ptr } %t671, ptr %t672
  %t673 = load { i64, [4 x i64] }, ptr %t662
  %t675 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t673, ptr %t675
  %t676 = load ptr, ptr %l0, !tbaa !29
  store ptr %t676, ptr %l254, !tbaa !29
  %t677 = load ptr, ptr %l254, !tbaa !29
  %t678 = getelementptr %"compiler/parse:Parser", ptr %t677, i32 0, i32 18
  %t679 = load i64, ptr %t678, !tbaa !24
  %t681 = sub i64 %t679, 1
  %t683 = load ptr, ptr %l254, !tbaa !29
  %t684 = getelementptr %"compiler/parse:Parser", ptr %t683, i32 0, i32 18
  store i64 %t681, ptr %t684, !tbaa !24
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t686 = load i1, ptr %l3, !tbaa !21
  %t689 = getelementptr %"compiler/parse:Parser", ptr %t685, i32 0, i32 11
  store i1 %t686, ptr %t689, !tbaa !21
  %t690 = load ptr, ptr %l0, !tbaa !29
  %t691 = load i1, ptr %l4, !tbaa !21
  %t694 = getelementptr %"compiler/parse:Parser", ptr %t690, i32 0, i32 20
  store i1 %t691, ptr %t694, !tbaa !21
  %t696 = insertvalue { i32, ptr } zeroinitializer, ptr %t675, 1
  store { i32, ptr } %t696, ptr %rv
  br label %ret
bb94:
  %t697 = load ptr, ptr %l0, !tbaa !29
  %t699 = getelementptr %"compiler/parse:Parser", ptr %t697, i32 0, i32 31
  %t701 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t699)
  store i64 %t701, ptr %l263
  br label %bb95
bb95:
  %t702 = load i64, ptr %l263, !tbaa !24
  store i64 %t702, ptr %l9, !tbaa !24
  %t703 = load ptr, ptr %l0, !tbaa !29
  %t705 = getelementptr %"compiler/parse:Parser", ptr %t703, i32 0, i32 31
  store ptr %t705, ptr %l265, !tbaa !29
  %t706 = load ptr, ptr %l5, !tbaa !29
  %t708 = icmp eq ptr %t706, null
  br i1 %t708, label %bb96, label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_f067807cf96ff280_872aeb81d2c2c23c)
  unreachable
bb97:
  br label %bb98
bb98:
  %t710 = load ptr, ptr %l5, !tbaa !29
  %t711 = load ptr, ptr %l265, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t711, ptr %t710)
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t713 = load ptr, ptr %l0, !tbaa !29
  %t716 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t713, i32 111)
  %t717 = extractvalue { i32, i1 } %t716, 1
  %t718 = extractvalue { i32, i1 } %t716, 0
  store i32 %t718, ptr %l273
  %t719 = icmp ne i32 %t718, 0
  br i1 %t719, label %bb102, label %ok.720, !prof !99
ok.720:
  store i1 %t717, ptr %l272
  br label %bb101
bb101:
  %t721 = load i1, ptr %l272, !tbaa !21
  store i1 %t721, ptr %l269, !tbaa !21
  br label %bb103
bb102:
  %t722 = load i32, ptr %l273, !tbaa !23
  %t723 = lshr i32 %t722, 16
  %t724 = and i32 %t722, 65535
  %t725 = icmp eq i32 %t723, 1
  %t726 = select i1 %t725, i32 1, i32 0
  %t727 = icmp eq i32 %t722, 0
  %t728 = shl i32 %t726, 16
  %t729 = or i32 %t728, %t724
  %t730 = select i1 %t727, i32 0, i32 %t729
  %t731 = load ptr, ptr %l0, !tbaa !29
  store ptr %t731, ptr %l275, !tbaa !29
  %t732 = load ptr, ptr %l275, !tbaa !29
  %t733 = getelementptr %"compiler/parse:Parser", ptr %t732, i32 0, i32 18
  %t734 = load i64, ptr %t733, !tbaa !24
  %t736 = sub i64 %t734, 1
  %t738 = load ptr, ptr %l275, !tbaa !29
  %t739 = getelementptr %"compiler/parse:Parser", ptr %t738, i32 0, i32 18
  store i64 %t736, ptr %t739, !tbaa !24
  %t740 = load ptr, ptr %l0, !tbaa !29
  %t741 = load i1, ptr %l3, !tbaa !21
  %t744 = getelementptr %"compiler/parse:Parser", ptr %t740, i32 0, i32 11
  store i1 %t741, ptr %t744, !tbaa !21
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t746 = load i1, ptr %l4, !tbaa !21
  %t749 = getelementptr %"compiler/parse:Parser", ptr %t745, i32 0, i32 20
  store i1 %t746, ptr %t749, !tbaa !21
  %t751 = insertvalue { i32, ptr } zeroinitializer, i32 %t730, 0
  store { i32, ptr } %t751, ptr %rv
  br label %ret
bb103:
  %t752 = load i1, ptr %l269, !tbaa !21
  %t753 = xor i1 %t752, true
  br i1 %t753, label %bb104, label %bb105
bb104:
  br label %bb112
bb105:
  br label %bb106
bb106:
  %t755 = load ptr, ptr %l0, !tbaa !29
  %t757 = getelementptr %"compiler/parse:Parser", ptr %t755, i32 0, i32 31
  store ptr %t757, ptr %l284, !tbaa !29
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t760 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v0, ptr %t758)
  %t761 = extractvalue { i32, ptr } %t760, 1
  %t762 = extractvalue { i32, ptr } %t760, 0
  store i32 %t762, ptr %l288
  %t763 = icmp ne i32 %t762, 0
  br i1 %t763, label %bb108, label %ok.764, !prof !99
ok.764:
  store ptr %t761, ptr %l287
  br label %bb107
bb107:
  %t765 = load ptr, ptr %l287, !tbaa !29
  store ptr %t765, ptr %l285, !tbaa !29
  br label %bb109
bb108:
  %t766 = load i32, ptr %l288, !tbaa !23
  %t767 = lshr i32 %t766, 16
  %t768 = and i32 %t766, 65535
  %t769 = icmp eq i32 %t767, 1
  %t770 = select i1 %t769, i32 1, i32 0
  %t771 = icmp eq i32 %t766, 0
  %t772 = shl i32 %t770, 16
  %t773 = or i32 %t772, %t768
  %t774 = select i1 %t771, i32 0, i32 %t773
  %t775 = load ptr, ptr %l0, !tbaa !29
  store ptr %t775, ptr %l290, !tbaa !29
  %t776 = load ptr, ptr %l290, !tbaa !29
  %t777 = getelementptr %"compiler/parse:Parser", ptr %t776, i32 0, i32 18
  %t778 = load i64, ptr %t777, !tbaa !24
  %t780 = sub i64 %t778, 1
  %t782 = load ptr, ptr %l290, !tbaa !29
  %t783 = getelementptr %"compiler/parse:Parser", ptr %t782, i32 0, i32 18
  store i64 %t780, ptr %t783, !tbaa !24
  %t784 = load ptr, ptr %l0, !tbaa !29
  %t785 = load i1, ptr %l3, !tbaa !21
  %t788 = getelementptr %"compiler/parse:Parser", ptr %t784, i32 0, i32 11
  store i1 %t785, ptr %t788, !tbaa !21
  %t789 = load ptr, ptr %l0, !tbaa !29
  %t790 = load i1, ptr %l4, !tbaa !21
  %t793 = getelementptr %"compiler/parse:Parser", ptr %t789, i32 0, i32 20
  store i1 %t790, ptr %t793, !tbaa !21
  %t795 = insertvalue { i32, ptr } zeroinitializer, i32 %t774, 0
  store { i32, ptr } %t795, ptr %rv
  br label %ret
bb109:
  %t796 = load ptr, ptr %l284, !tbaa !29
  %t797 = load ptr, ptr %l285, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t796, ptr %t797)
  br label %bb110
bb110:
  br label %bb111
bb111:
  br label %bb100
bb112:
  %t798 = load ptr, ptr %l0, !tbaa !29
  %t801 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t798, i32 111)
  store i1 %t801, ptr %l299
  br label %bb113
bb113:
  %t802 = load i1, ptr %l299, !tbaa !21
  %t803 = xor i1 %t802, true
  br i1 %t803, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s42
  %t805 = load ptr, ptr %l0, !tbaa !29
  %t807 = getelementptr %"compiler/parse:Parser", ptr %t805, i32 0, i32 31
  %t808 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t807, i64 %t808)
  br label %bb116
bb115:
  br label %bb121
bb116:
  %t811 = load ptr, ptr %l0, !tbaa !29
  store ptr %t811, ptr %l304, !tbaa !29
  %t813 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s42, i32 111)
  store { i64, ptr } %t813, ptr %l306
  br label %bb117
bb117:
  %t814 = load { i64, ptr }, ptr %l306, !tbaa !27
  %t815 = extractvalue { i64, ptr } %t814, 0
  %t816 = extractvalue { i64, ptr } %t814, 1
  %t817 = mul i64 %t815, 1
  %t818 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t817)
  call void @llvm.memcpy.p0.p0.i64(ptr %t818, ptr %t816, i64 %t817, i1 false)
  %t819 = insertvalue { i64, ptr } undef, i64 %t815, 0
  %t820 = insertvalue { i64, ptr } %t819, ptr %t818, 1
  %t821 = load ptr, ptr %l304, !tbaa !29
  %t823 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s42, ptr %t821, { i64, ptr } %t820)
  store i32 %t823, ptr %l308
  %t824 = icmp ne i32 %t823, 0
  br i1 %t824, label %bb119, label %ok.825, !prof !99
ok.825:
  br label %bb118
bb118:
  br label %bb120
bb119:
  %t826 = load i32, ptr %l308, !tbaa !23
  %t827 = lshr i32 %t826, 16
  %t828 = and i32 %t826, 65535
  %t829 = icmp eq i32 %t827, 1
  %t830 = select i1 %t829, i32 1, i32 0
  %t831 = icmp eq i32 %t826, 0
  %t832 = shl i32 %t830, 16
  %t833 = or i32 %t832, %t828
  %t834 = select i1 %t831, i32 0, i32 %t833
  call void @__olang_scope_close(ptr %s42)
  %t835 = load ptr, ptr %l0, !tbaa !29
  store ptr %t835, ptr %l310, !tbaa !29
  %t836 = load ptr, ptr %l310, !tbaa !29
  %t837 = getelementptr %"compiler/parse:Parser", ptr %t836, i32 0, i32 18
  %t838 = load i64, ptr %t837, !tbaa !24
  %t840 = sub i64 %t838, 1
  %t842 = load ptr, ptr %l310, !tbaa !29
  %t843 = getelementptr %"compiler/parse:Parser", ptr %t842, i32 0, i32 18
  store i64 %t840, ptr %t843, !tbaa !24
  %t844 = load ptr, ptr %l0, !tbaa !29
  %t845 = load i1, ptr %l3, !tbaa !21
  %t848 = getelementptr %"compiler/parse:Parser", ptr %t844, i32 0, i32 11
  store i1 %t845, ptr %t848, !tbaa !21
  %t849 = load ptr, ptr %l0, !tbaa !29
  %t850 = load i1, ptr %l4, !tbaa !21
  %t853 = getelementptr %"compiler/parse:Parser", ptr %t849, i32 0, i32 20
  store i1 %t850, ptr %t853, !tbaa !21
  %t855 = insertvalue { i32, ptr } zeroinitializer, i32 %t834, 0
  store { i32, ptr } %t855, ptr %rv
  br label %ret
bb120:
  call void @__olang_scope_close(ptr %s42)
  br label %bb121
bb121:
  %t856 = load ptr, ptr %l0, !tbaa !29
  %t858 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t856)
  store i32 %t858, ptr %l318
  br label %bb122
bb122:
  %t859 = load ptr, ptr %l0, !tbaa !29
  %t860 = load i32, ptr %l2, !tbaa !23
  %t863 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t859, i32 %t860)
  store %"compiler/source:Span" %t863, ptr %l321
  br label %bb123
bb123:
  %t864 = load ptr, ptr %l1, !tbaa !29
  store ptr %t864, ptr %l322, !tbaa !29
  %t865 = load ptr, ptr %l0, !tbaa !29
  %t867 = getelementptr %"compiler/parse:Parser", ptr %t865, i32 0, i32 31
  %t868 = load i64, ptr %l9, !tbaa !24
  %t871 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t867, i64 %t868)
  store { i64, ptr } %t871, ptr %l326
  br label %bb124
bb124:
  store { i64, [4 x i64] } zeroinitializer, ptr %t872
  %t873 = getelementptr { i64, [4 x i64] }, ptr %t872, i32 0, i32 0
  store i64 15, ptr %t873
  %t874 = load %"compiler/source:Span", ptr %l321
  %t875 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t874, 0
  %t876 = load ptr, ptr %l322, !tbaa !29
  %t877 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t875, ptr %t876, 1
  %t878 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t879 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t877, { i64, ptr } %t878, 2
  %t880 = getelementptr { i64, [4 x i64] }, ptr %t872, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t879, ptr %t880
  %t881 = load { i64, [4 x i64] }, ptr %t872
  %t883 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t881, ptr %t883
  %t884 = load ptr, ptr %l0, !tbaa !29
  store ptr %t884, ptr %l329, !tbaa !29
  %t885 = load ptr, ptr %l329, !tbaa !29
  %t886 = getelementptr %"compiler/parse:Parser", ptr %t885, i32 0, i32 18
  %t887 = load i64, ptr %t886, !tbaa !24
  %t889 = sub i64 %t887, 1
  %t891 = load ptr, ptr %l329, !tbaa !29
  %t892 = getelementptr %"compiler/parse:Parser", ptr %t891, i32 0, i32 18
  store i64 %t889, ptr %t892, !tbaa !24
  %t893 = load ptr, ptr %l0, !tbaa !29
  %t894 = load i1, ptr %l3, !tbaa !21
  %t897 = getelementptr %"compiler/parse:Parser", ptr %t893, i32 0, i32 11
  store i1 %t894, ptr %t897, !tbaa !21
  %t898 = load ptr, ptr %l0, !tbaa !29
  %t899 = load i1, ptr %l4, !tbaa !21
  %t902 = getelementptr %"compiler/parse:Parser", ptr %t898, i32 0, i32 20
  store i1 %t899, ptr %t902, !tbaa !21
  %t904 = insertvalue { i32, ptr } zeroinitializer, ptr %t883, 1
  store { i32, ptr } %t904, ptr %rv
  br label %ret
bb125:
  %t905 = load ptr, ptr %l0, !tbaa !29
  %t907 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t905)
  store i32 %t907, ptr %l337
  br label %bb126
bb126:
  %t908 = load ptr, ptr %l0, !tbaa !29
  %t909 = load i32, ptr %l2, !tbaa !23
  %t912 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t908, i32 %t909)
  store %"compiler/source:Span" %t912, ptr %l340
  br label %bb127
bb127:
  %t913 = load ptr, ptr %l1, !tbaa !29
  store ptr %t913, ptr %l341, !tbaa !29
  %t914 = icmp sge i64 0, 0
  br i1 %t914, label %bb128, label %bb129
bb128:
  %t916 = icmp sle i64 0, 1152921504606846975
  br i1 %t916, label %bb130, label %bb131
bb129:
  call void @__olang_check_failed(ptr @olang_loc_882dfc00c36114e5_890842da0dcd92c9)
  unreachable
bb130:
  %t918 = mul i64 0, 8
  %t919 = insertvalue { i64, ptr } undef, i64 0, 0
  %t920 = insertvalue { i64, ptr } %t919, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [4 x i64] } zeroinitializer, ptr %t921
  %t922 = getelementptr { i64, [4 x i64] }, ptr %t921, i32 0, i32 0
  store i64 15, ptr %t922
  %t923 = load %"compiler/source:Span", ptr %l340
  %t924 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t923, 0
  %t925 = load ptr, ptr %l341, !tbaa !29
  %t926 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t924, ptr %t925, 1
  %t928 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t926, { i64, ptr } %t920, 2
  %t929 = getelementptr { i64, [4 x i64] }, ptr %t921, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t928, ptr %t929
  %t930 = load { i64, [4 x i64] }, ptr %t921
  %t932 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t930, ptr %t932
  %t933 = load ptr, ptr %l0, !tbaa !29
  store ptr %t933, ptr %l347, !tbaa !29
  %t934 = load ptr, ptr %l347, !tbaa !29
  %t935 = getelementptr %"compiler/parse:Parser", ptr %t934, i32 0, i32 18
  %t936 = load i64, ptr %t935, !tbaa !24
  %t938 = sub i64 %t936, 1
  %t940 = load ptr, ptr %l347, !tbaa !29
  %t941 = getelementptr %"compiler/parse:Parser", ptr %t940, i32 0, i32 18
  store i64 %t938, ptr %t941, !tbaa !24
  %t942 = load ptr, ptr %l0, !tbaa !29
  %t943 = load i1, ptr %l3, !tbaa !21
  %t946 = getelementptr %"compiler/parse:Parser", ptr %t942, i32 0, i32 11
  store i1 %t943, ptr %t946, !tbaa !21
  %t947 = load ptr, ptr %l0, !tbaa !29
  %t948 = load i1, ptr %l4, !tbaa !21
  %t951 = getelementptr %"compiler/parse:Parser", ptr %t947, i32 0, i32 20
  store i1 %t948, ptr %t951, !tbaa !21
  %t953 = insertvalue { i32, ptr } zeroinitializer, ptr %t932, 1
  store { i32, ptr } %t953, ptr %rv
  br label %ret
bb131:
  call void @__olang_check_failed(ptr @olang_loc_882dfc00c36114e5_890842da0dcd92c9)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisKw(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/token:Token"
  %l6 = alloca i32
  %l9 = alloca i1
  %l12 = alloca i1
  %l18 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca { i64, ptr }
  %l30 = alloca i1
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
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !range !{i32 0, i32 114}
  store i32 %t6, ptr %l2
  %t7 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t9 = trunc i64 1 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb3:
  %t12 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t14 = trunc i64 0 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l9, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb7
bb6:
  %t18 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t20 = trunc i64 8 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l12, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/parse:Parser", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/scan:Tokens", ptr %t28, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr %"compiler/token:Token", ptr %t35, i64 %t32
  %t37 = load %"compiler/token:Token", ptr %t36
  store %"compiler/token:Token" %t37, ptr %l3
  %t39 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 3
  %t40 = load i32, ptr %t39, !tbaa !23
  %t41 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t42 = load i32, ptr %t41, !tbaa !23
  %t45 = icmp sgt i32 %t40, %t42
  br i1 %t45, label %bb11, label %bb12
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/parse:Parser", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/source:Source", ptr %t50, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l27, !tbaa !27
  %t54 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t55 = load i32, ptr %t54, !tbaa !23
  %t57 = sext i32 %t55 to i64
  %t58 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 %t57
  %t61 = load i8, ptr %t60, !tbaa !32
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t61)
  store i1 %t63, ptr %l30
  br label %bb13
bb12:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb14
bb13:
  %t64 = load i1, ptr %l30, !tbaa !21
  store i1 %t64, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t65 = load i1, ptr %l24, !tbaa !21
  store i1 %t65, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisOperandEnd(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i32
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
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t7 = call i1 @compiler_2fparse_2eisOperandEndTok(i32 %t6)
  store i1 %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb10
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisKw(ptr %v0, ptr %t9, i64 %t10)
  store i1 %t13, ptr %l9
  br label %bb5
bb5:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  %t18 = sub i64 %t16, 1
  %t21 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t15, i64 %t18)
  store i32 %t21, ptr %l14
  br label %bb8
bb7:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb9
bb8:
  %t22 = load i32, ptr %l14, !range !{i32 0, i32 114}
  %t24 = trunc i64 76 to i32
  %t25 = icmp eq i32 %t22, %t24
  store i1 %t25, ptr %l10, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l10, !tbaa !21
  store i1 %t27, ptr %l6, !tbaa !21
  br label %bb10
bb10:
  %t28 = load i1, ptr %l6, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ejoinRest(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l22 = alloca i1
  %l24 = alloca i32
  %l28 = alloca %"compiler/ast:JoinS"
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 14)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l8
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l7
  br label %bb1
bb1:
  %t9 = load i32, ptr %l7, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l8, !tbaa !23
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
  %t23 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t21)
  %t24 = extractvalue { i32, { i64, ptr } } %t23, 1
  %t25 = extractvalue { i32, { i64, ptr } } %t23, 0
  store i32 %t25, ptr %l13
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb5, label %ok.27, !prof !99
ok.27:
  store { i64, ptr } %t24, ptr %l12
  br label %bb4
bb4:
  %t28 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t28, ptr %l10, !tbaa !27
  br label %bb6
bb5:
  %t29 = load i32, ptr %l13, !tbaa !23
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
  %t40 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t40, ptr %l2, !tbaa !27
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %t41, i1 false)
  %t44 = extractvalue { i32, { i64, ptr } } %t43, 1
  %t45 = extractvalue { i32, { i64, ptr } } %t43, 0
  store i32 %t45, ptr %l18
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb8, label %ok.47, !prof !99
ok.47:
  store { i64, ptr } %t44, ptr %l17
  br label %bb7
bb7:
  %t48 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t48, ptr %l15, !tbaa !27
  br label %bb9
bb8:
  %t49 = load i32, ptr %l18, !tbaa !23
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
  %t60 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t60, ptr %l3, !tbaa !27
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t64 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t61, i32 8)
  store i1 %t64, ptr %l22
  br label %bb10
bb10:
  %t65 = load i1, ptr %l22, !tbaa !21
  br i1 %t65, label %bb11, label %bb12
bb11:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t66)
  store i32 %t68, ptr %l24
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t70 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t75 = call %"compiler/ast:JoinS" @compiler_2fast_3aJoinS_2ector(ptr %v1, ptr %v1, ptr %v1, i1 %a1, { i64, ptr } %t70, { i64, ptr } %t71)
  store %"compiler/ast:JoinS" %t75, ptr %l28
  br label %bb15
bb15:
  %t76 = load %"compiler/ast:JoinS", ptr %l28
  %t77 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store %"compiler/ast:JoinS" %t76, ptr %t77
  %t79 = insertvalue { i32, ptr } zeroinitializer, ptr %t77, 1
  store { i32, ptr } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2elastField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l12 = alloca %"compiler/source:Span"
  %l15 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l22 = alloca i1
  %l26 = alloca %"compiler/ast:VarDecl"
  %rv = alloca ptr
  %t16 = alloca i64
  %t41 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store i32 %a2, ptr %l6, !tbaa !23
  %t7 = icmp sge i64 1, 0
  br i1 %t7, label %bb3, label %bb4
bb3:
  %t9 = icmp sle i64 1, 2305843009213693951
  br i1 %t9, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_3f19ed1436e26d3c_ab56bc721c08c978)
  unreachable
bb5:
  %t11 = mul i64 1, 4
  %t12 = load i64, ptr %l4
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call ptr @__olang_scope_alloc(ptr %t13, i64 %t11)
  %t15 = load i32, ptr %l6, !tbaa !23
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
  store { i64, ptr } %t25, ptr %l9, !tbaa !27
  %t26 = ptrtoint ptr %v2 to i64
  store i64 %t26, ptr %l10, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e1
  br i1 %t27, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_3f19ed1436e26d3c_ab56bc721c08c978)
  unreachable
bb7:
  %t29 = call ptr @__olang_region_make(ptr %v2)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  store %"compiler/source:Span" %a3, ptr %l12
  %t32 = icmp sge i64 1, 0
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = icmp sle i64 1, 1152921504606846975
  br i1 %t34, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3f19ed1436e26d3c_ab56bc721c08c978)
  unreachable
bb11:
  %t36 = mul i64 1, 8
  %t37 = load i64, ptr %l10
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t36)
  %t40 = load %"compiler/source:Span", ptr %l12
  store i64 0, ptr %t41
  br label %fill.42
fill.42:
  %t45 = load i64, ptr %t41
  %t46 = icmp slt i64 %t45, 1
  br i1 %t46, label %fillb.43, label %filld.44
fillb.43:
  %t47 = getelementptr %"compiler/source:Span", ptr %t39, i64 %t45
  store %"compiler/source:Span" %t40, ptr %t47
  %t48 = add i64 %t45, 1
  store i64 %t48, ptr %t41
  br label %fill.42
filld.44:
  %t49 = insertvalue { i64, ptr } undef, i64 1, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t39, 1
  store { i64, ptr } %t50, ptr %l15, !tbaa !27
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/ast:VarDecl", ptr %t51, i32 0, i32 2
  %t54 = load ptr, ptr %t53, !tbaa !29
  store ptr %t54, ptr %l17, !tbaa !29
  %t55 = icmp sge i64 0, 0
  br i1 %t55, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_3f19ed1436e26d3c_ab56bc721c08c978)
  unreachable
bb13:
  %t57 = icmp sle i64 0, 1152921504606846975
  br i1 %t57, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_3f19ed1436e26d3c_ab56bc721c08c978)
  unreachable
bb15:
  %t59 = mul i64 0, 8
  %t60 = insertvalue { i64, ptr } undef, i64 0, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t61, ptr %l20, !tbaa !27
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr %"compiler/ast:VarDecl", ptr %t62, i32 0, i32 4
  %t65 = load i1, ptr %t64, !tbaa !21
  store i1 %t65, ptr %l22, !tbaa !21
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_3f19ed1436e26d3c_ab56bc721c08c978)
  unreachable
bb17:
  %t68 = icmp sle i64 0, 1152921504606846975
  br i1 %t68, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_4a6a3f74f4bc8889_5f054cc6a05b49e5)
  unreachable
bb19:
  %t70 = mul i64 0, 8
  %t71 = insertvalue { i64, ptr } undef, i64 0, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t73 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t75 = load ptr, ptr %l17, !tbaa !29
  %t76 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t77 = load i1, ptr %l22, !tbaa !21
  %t79 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v2, ptr %v2, ptr %v1, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t73, { i64, ptr } %t74, ptr %t75, { i64, ptr } %t76, i1 %t77, i1 true, { i64, ptr } %t72, i1 false)
  store %"compiler/ast:VarDecl" %t79, ptr %l26
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4a6a3f74f4bc8889_5f054cc6a05b49e5)
  unreachable
bb21:
  %t80 = load %"compiler/ast:VarDecl", ptr %l26
  %t81 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t80, ptr %t81
  store ptr %t81, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineBody(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/token:Token"
  %l2 = alloca %"compiler/token:Token"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l12 = alloca %"compiler/token:Token"
  %l14 = alloca i32
  %l16 = alloca %"compiler/token:Token"
  %l19 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i32
  %l32 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i32
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
  %l43 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca i32
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca i32
  %l66 = alloca ptr
  %l67 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i32
  %l74 = alloca i32
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l81 = alloca ptr
  %l82 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca i32
  %l94 = alloca %"compiler/diagmsg:Msg"
  %l100 = alloca ptr
  %l101 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i32
  %l108 = alloca i32
  %l109 = alloca %"compiler/diagmsg:Msg"
  %l116 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t1)
  store %"compiler/token:Token" %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load %"compiler/token:Token", ptr %l12
  store %"compiler/token:Token" %t4, ptr %l1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t5)
  store i32 %t7, ptr %l14
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t8)
  store %"compiler/token:Token" %t10, ptr %l16
  br label %bb3
bb3:
  %t11 = load %"compiler/token:Token", ptr %l16
  store %"compiler/token:Token" %t11, ptr %l2
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t12, i32 8)
  store i1 %t15, ptr %l19
  br label %bb4
bb4:
  %t16 = load i1, ptr %l19, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb8
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t20 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t17, i32 0)
  store i1 %t20, ptr %l23
  br label %bb7
bb7:
  %t21 = load i1, ptr %l23, !tbaa !21
  store i1 %t21, ptr %l20, !tbaa !21
  br label %bb8
bb8:
  %t22 = load i1, ptr %l20, !tbaa !21
  br i1 %t22, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb13
bb10:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/parse:Parser", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = getelementptr %"compiler/token:Token", ptr %l2, i32 0, i32 2
  %t28 = load i32, ptr %t27, !tbaa !23
  %t31 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %t26, i32 %t28)
  store i32 %t31, ptr %l28
  br label %bb11
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/parse:Parser", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 2
  %t37 = load i32, ptr %t36, !tbaa !23
  %t40 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %t35, i32 %t37)
  store i32 %t40, ptr %l32
  br label %bb12
bb12:
  %t41 = load i32, ptr %l28, !tbaa !23
  %t42 = load i32, ptr %l32, !tbaa !23
  %t43 = icmp ne i32 %t41, %t42
  store i1 %t43, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l24, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s1
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l34, !tbaa !29
  %t47 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 2
  %t48 = load i32, ptr %t47, !tbaa !23
  store i32 %t48, ptr %l35, !tbaa !23
  %t49 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 3
  %t50 = load i32, ptr %t49, !tbaa !23
  store i32 %t50, ptr %l36, !tbaa !23
  %t51 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyOnLine(ptr %s1)
  store %"compiler/diagmsg:Msg" %t51, ptr %l37
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t52 = load ptr, ptr %l34, !tbaa !29
  %t53 = load i32, ptr %l35, !tbaa !23
  %t54 = load i32, ptr %l36, !tbaa !23
  %t55 = load %"compiler/diagmsg:Msg", ptr %l37
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s1, ptr %t52, i32 %t53, i32 %t54, %"compiler/diagmsg:Msg" %t55)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t57 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t57, ptr %rv
  br label %ret
bb18:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t58)
  store i32 %t60, ptr %l40
  br label %bb19
bb19:
  %t61 = load i32, ptr %l40, !range !{i32 0, i32 114}
  %t62 = call { i64, ptr } @compiler_2fparse_2elineBodyRefused(ptr %s0, i32 %t61)
  store { i64, ptr } %t62, ptr %l41
  br label %bb20
bb20:
  %t63 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t63, ptr %l3, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t64, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t66, ptr %l43
  br label %bb21
bb21:
  %t67 = load i1, ptr %l43, !tbaa !21
  %t68 = xor i1 %t67, true
  br i1 %t68, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s2
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l45, !tbaa !29
  %t71 = getelementptr %"compiler/token:Token", ptr %l2, i32 0, i32 2
  %t72 = load i32, ptr %t71, !tbaa !23
  store i32 %t72, ptr %l46, !tbaa !23
  %t73 = getelementptr %"compiler/token:Token", ptr %l2, i32 0, i32 3
  %t74 = load i32, ptr %t73, !tbaa !23
  store i32 %t74, ptr %l47, !tbaa !23
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t77 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyNotSimple(ptr %s0, ptr %s2, { i64, ptr } %t75)
  store %"compiler/diagmsg:Msg" %t77, ptr %l49
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t78 = load ptr, ptr %l45, !tbaa !29
  %t79 = load i32, ptr %l46, !tbaa !23
  %t80 = load i32, ptr %l47, !tbaa !23
  %t81 = load %"compiler/diagmsg:Msg", ptr %l49
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s2, ptr %t78, i32 %t79, i32 %t80, %"compiler/diagmsg:Msg" %t81)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t83 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t83, ptr %rv
  br label %ret
bb26:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/parse:Parser", ptr %t84, i32 0, i32 14
  %t87 = load i1, ptr %t86, !tbaa !21
  store i1 %t87, ptr %l4, !tbaa !21
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/parse:Parser", ptr %t89, i32 0, i32 14
  store i1 true, ptr %t91, !tbaa !21
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/parse:Parser", ptr %t92, i32 0, i32 12
  %t95 = load i1, ptr %t94, !tbaa !21
  store i1 %t95, ptr %l5, !tbaa !21
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/parse:Parser", ptr %t97, i32 0, i32 12
  store i1 false, ptr %t99, !tbaa !21
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2estmt(ptr %v0, ptr %v1, ptr %t100)
  %t103 = extractvalue { i32, ptr } %t102, 1
  %t104 = extractvalue { i32, ptr } %t102, 0
  store i32 %t104, ptr %l60
  %t105 = icmp ne i32 %t104, 0
  br i1 %t105, label %bb28, label %ok.106, !prof !99
ok.106:
  store ptr %t103, ptr %l59
  br label %bb27
bb27:
  %t107 = load ptr, ptr %l59, !tbaa !29
  store ptr %t107, ptr %l57, !tbaa !29
  br label %bb29
bb28:
  %t108 = load i32, ptr %l60, !tbaa !23
  %t109 = lshr i32 %t108, 16
  %t110 = and i32 %t108, 65535
  %t111 = icmp eq i32 %t109, 1
  %t112 = select i1 %t111, i32 1, i32 0
  %t113 = icmp eq i32 %t108, 0
  %t114 = shl i32 %t112, 16
  %t115 = or i32 %t114, %t110
  %t116 = select i1 %t113, i32 0, i32 %t115
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i1, ptr %l5, !tbaa !21
  %t121 = getelementptr %"compiler/parse:Parser", ptr %t117, i32 0, i32 12
  store i1 %t118, ptr %t121, !tbaa !21
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i1, ptr %l4, !tbaa !21
  %t126 = getelementptr %"compiler/parse:Parser", ptr %t122, i32 0, i32 14
  store i1 %t123, ptr %t126, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  %t128 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t116, 0
  store { i32, { i64, ptr } } %t128, ptr %rv
  br label %ret
bb29:
  %t129 = load ptr, ptr %l57, !tbaa !29
  store ptr %t129, ptr %l6, !tbaa !29
  %t130 = load ptr, ptr %l6, !tbaa !29
  store ptr %t130, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t131 = load ptr, ptr %l66, !tbaa !29
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %bb30, label %bb31
bb30:
  %t134 = load ptr, ptr %l66, !tbaa !29
  %t135 = load i64, ptr %t134, !range !{i64 0, i64 22}
  %t137 = icmp eq i64 %t135, 1
  store i1 %t137, ptr %l67, !tbaa !21
  br label %bb31
bb31:
  %t138 = load i1, ptr %l67, !tbaa !21
  br i1 %t138, label %bb32, label %bb33
bb32:
  %t139 = load ptr, ptr %l6, !tbaa !29
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 1
  %t142 = getelementptr { %"compiler/source:Span", ptr }, ptr %t141, i32 0, i32 0
  %t143 = load %"compiler/source:Span", ptr %t142
  store %"compiler/source:Span" %t143, ptr %l7
  br label %bb34
bb33:
  br label %bb37
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l72, !tbaa !29
  %t146 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t147 = load i32, ptr %t146, !tbaa !23
  store i32 %t147, ptr %l73, !tbaa !23
  %t148 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 1
  %t149 = load i32, ptr %t148, !tbaa !23
  store i32 %t149, ptr %l74, !tbaa !23
  %t150 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyNotSimple(ptr %s7, ptr %s7, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t150, ptr %l75
  br label %bb35
bb35:
  %t151 = load ptr, ptr %l72, !tbaa !29
  %t152 = load i32, ptr %l73, !tbaa !23
  %t153 = load i32, ptr %l74, !tbaa !23
  %t154 = load %"compiler/diagmsg:Msg", ptr %l75
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s7, ptr %t151, i32 %t152, i32 %t153, %"compiler/diagmsg:Msg" %t154)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s7)
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i1, ptr %l5, !tbaa !21
  %t159 = getelementptr %"compiler/parse:Parser", ptr %t155, i32 0, i32 12
  store i1 %t156, ptr %t159, !tbaa !21
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i1, ptr %l4, !tbaa !21
  %t164 = getelementptr %"compiler/parse:Parser", ptr %t160, i32 0, i32 14
  store i1 %t161, ptr %t164, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  %t166 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t166, ptr %rv
  br label %ret
bb37:
  %t167 = load ptr, ptr %l6, !tbaa !29
  store ptr %t167, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t168 = load ptr, ptr %l81, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb38, label %bb39
bb38:
  %t171 = load ptr, ptr %l81, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 22}
  %t174 = icmp eq i64 %t172, 2
  store i1 %t174, ptr %l82, !tbaa !21
  br label %bb39
bb39:
  %t175 = load i1, ptr %l82, !tbaa !21
  br i1 %t175, label %bb40, label %bb41
bb40:
  %t176 = load ptr, ptr %l6, !tbaa !29
  %t178 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", ptr }, ptr %t178, i32 0, i32 0
  %t180 = load %"compiler/source:Span", ptr %t179
  store %"compiler/source:Span" %t180, ptr %l8
  %t182 = load ptr, ptr %l6, !tbaa !29
  %t184 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", ptr }, ptr %t184, i32 0, i32 1
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l9, !tbaa !29
  br label %bb42
bb41:
  br label %bb47
bb42:
  %t188 = load ptr, ptr %l9, !tbaa !29
  %t190 = getelementptr %"compiler/ast:Multi", ptr %t188, i32 0, i32 1
  %t191 = load i1, ptr %t190, !tbaa !21
  br i1 %t191, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s12
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l91, !tbaa !29
  %t194 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t195 = load i32, ptr %t194, !tbaa !23
  store i32 %t195, ptr %l92, !tbaa !23
  %t196 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t197 = load i32, ptr %t196, !tbaa !23
  store i32 %t197, ptr %l93, !tbaa !23
  %t198 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyNotSimple(ptr %s12, ptr %s12, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t198, ptr %l94
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t199 = load ptr, ptr %l91, !tbaa !29
  %t200 = load i32, ptr %l92, !tbaa !23
  %t201 = load i32, ptr %l93, !tbaa !23
  %t202 = load %"compiler/diagmsg:Msg", ptr %l94
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s12, ptr %t199, i32 %t200, i32 %t201, %"compiler/diagmsg:Msg" %t202)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s12)
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i1, ptr %l5, !tbaa !21
  %t207 = getelementptr %"compiler/parse:Parser", ptr %t203, i32 0, i32 12
  store i1 %t204, ptr %t207, !tbaa !21
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i1, ptr %l4, !tbaa !21
  %t212 = getelementptr %"compiler/parse:Parser", ptr %t208, i32 0, i32 14
  store i1 %t209, ptr %t212, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  %t214 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t214, ptr %rv
  br label %ret
bb47:
  %t215 = load ptr, ptr %l6, !tbaa !29
  store ptr %t215, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t216 = load ptr, ptr %l100, !tbaa !29
  %t217 = icmp ne ptr %t216, null
  br i1 %t217, label %bb48, label %bb49
bb48:
  %t219 = load ptr, ptr %l100, !tbaa !29
  %t220 = load i64, ptr %t219, !range !{i64 0, i64 22}
  %t222 = icmp eq i64 %t220, 18
  store i1 %t222, ptr %l101, !tbaa !21
  br label %bb49
bb49:
  %t223 = load i1, ptr %l101, !tbaa !21
  br i1 %t223, label %bb50, label %bb51
bb50:
  %t224 = load ptr, ptr %l6, !tbaa !29
  %t226 = getelementptr { i64, [4 x i64] }, ptr %t224, i32 0, i32 1
  %t227 = getelementptr { %"compiler/source:Span", ptr }, ptr %t226, i32 0, i32 0
  %t228 = load %"compiler/source:Span", ptr %t227
  store %"compiler/source:Span" %t228, ptr %l10
  br label %bb52
bb51:
  br label %bb55
bb52:
  store %olang.scope zeroinitializer, ptr %s17
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l106, !tbaa !29
  %t231 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t232 = load i32, ptr %t231, !tbaa !23
  store i32 %t232, ptr %l107, !tbaa !23
  %t233 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t234 = load i32, ptr %t233, !tbaa !23
  store i32 %t234, ptr %l108, !tbaa !23
  %t235 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyNotSimple(ptr %s17, ptr %s17, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t235, ptr %l109
  br label %bb53
bb53:
  %t236 = load ptr, ptr %l106, !tbaa !29
  %t237 = load i32, ptr %l107, !tbaa !23
  %t238 = load i32, ptr %l108, !tbaa !23
  %t239 = load %"compiler/diagmsg:Msg", ptr %l109
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s17, ptr %t236, i32 %t237, i32 %t238, %"compiler/diagmsg:Msg" %t239)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s17)
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load i1, ptr %l5, !tbaa !21
  %t244 = getelementptr %"compiler/parse:Parser", ptr %t240, i32 0, i32 12
  store i1 %t241, ptr %t244, !tbaa !21
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load i1, ptr %l4, !tbaa !21
  %t249 = getelementptr %"compiler/parse:Parser", ptr %t245, i32 0, i32 14
  store i1 %t246, ptr %t249, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  %t251 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t251, ptr %rv
  br label %ret
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_a66f16e9609fdd27_2fbef1e5bed159db)
  unreachable
bb60:
  %t252 = load ptr, ptr %l6, !tbaa !29
  %t253 = mul i64 1, 8
  %t254 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t253)
  %t255 = insertvalue { i64, ptr } undef, i64 1, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  store { i64, ptr } %t256, ptr %l116, !tbaa !27
  %t258 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr ptr, ptr %t259, i64 0
  store ptr %t252, ptr %t260, !tbaa !39
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i1, ptr %l5, !tbaa !21
  %t265 = getelementptr %"compiler/parse:Parser", ptr %t261, i32 0, i32 12
  store i1 %t262, ptr %t265, !tbaa !21
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load i1, ptr %l4, !tbaa !21
  %t270 = getelementptr %"compiler/parse:Parser", ptr %t266, i32 0, i32 14
  store i1 %t267, ptr %t270, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  %t271 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t272 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t271, 1
  store { i32, { i64, ptr } } %t272, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/token:Token"
  %l4 = alloca i32
  %l8 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i32
  %l16 = alloca %"compiler/token:Token"
  %l18 = alloca i32
  %l20 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i32, ptr %l4, !range !{i32 0, i32 114}
  store i32 %t4, ptr %l1
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t7 = trunc i64 1 to i32
  %t8 = icmp eq i32 %t5, %t7
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t14 = call i1 @compiler_2fparse_2eisWordKeyword(i32 %t12)
  store i1 %t14, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb5
bb4:
  %t15 = load i1, ptr %l10, !tbaa !21
  %t16 = xor i1 %t15, true
  store i1 %t16, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s1, ptr %t19, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i32 %t21, ptr %l13
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb9, label %ok.23, !prof !99
ok.23:
  br label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb10
bb9:
  %t24 = load i32, ptr %l13, !tbaa !23
  %t25 = lshr i32 %t24, 16
  %t26 = and i32 %t24, 65535
  %t27 = icmp eq i32 %t25, 1
  %t28 = select i1 %t27, i32 1, i32 0
  %t29 = icmp eq i32 %t24, 0
  %t30 = shl i32 %t28, 16
  %t31 = or i32 %t30, %t26
  %t32 = select i1 %t29, i32 0, i32 %t31
  call void @__olang_scope_close(ptr %s1)
  %t34 = insertvalue { i32, i32 } zeroinitializer, i32 %t32, 0
  store { i32, i32 } %t34, ptr %rv
  br label %ret
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %bb11
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t35)
  store %"compiler/token:Token" %t37, ptr %l16
  br label %bb12
bb12:
  %t38 = load %"compiler/token:Token", ptr %l16
  store %"compiler/token:Token" %t38, ptr %l2
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t39)
  store i32 %t41, ptr %l18
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/parse:Parser", ptr %t42, i32 0, i32 2
  %t45 = load ptr, ptr %t44, !tbaa !29
  store ptr %t45, ptr %l20, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load %"compiler/token:Token", ptr %l2
  %t50 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t46, %"compiler/token:Token" %t47)
  store { i64, ptr } %t50, ptr %l23
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l20, !tbaa !29
  %t52 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t53 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t51, { i64, ptr } %t52)
  store i32 %t53, ptr %l24
  br label %bb15
bb15:
  %t54 = load i32, ptr %l24, !tbaa !23
  %t55 = insertvalue { i32, i32 } zeroinitializer, i32 %t54, 1
  store { i32, i32 } %t55, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamesBareType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l14 = alloca i1
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t18 = getelementptr %"compiler/parse:Parser", ptr %a0, i32 0, i32 3
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/parse:Oracle", ptr %t19, i32 0, i32 0
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l14
  br label %bb6
bb6:
  %t26 = load i1, ptr %l14, !tbaa !21
  store i1 %t26, ptr %l3, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_caaeb8844a43a47_292034e417eae4cb)
  unreachable
bb12:
  %t27 = load i1, ptr %l3, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eone(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l11 = alloca %"compiler/source:Span"
  %l15 = alloca %"compiler/parse:NameList"
  %rv = alloca ptr
  %t16 = alloca i64
  %t41 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aNameList_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store i32 %a1, ptr %l5, !tbaa !23
  %t7 = icmp sge i64 1, 0
  br i1 %t7, label %bb3, label %bb4
bb3:
  %t9 = icmp sle i64 1, 2305843009213693951
  br i1 %t9, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_56ae34a9066c1560_be19fd249755f1d4)
  unreachable
bb5:
  %t11 = mul i64 1, 4
  %t12 = load i64, ptr %l3
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call ptr @__olang_scope_alloc(ptr %t13, i64 %t11)
  %t15 = load i32, ptr %l5, !tbaa !23
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
  store { i64, ptr } %t25, ptr %l8, !tbaa !27
  %t26 = ptrtoint ptr %v1 to i64
  store i64 %t26, ptr %l9, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aNameList_2e1
  br i1 %t27, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_56ae34a9066c1560_be19fd249755f1d4)
  unreachable
bb7:
  %t29 = call ptr @__olang_region_make(ptr %v1)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  store %"compiler/source:Span" %a2, ptr %l11
  %t32 = icmp sge i64 1, 0
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = icmp sle i64 1, 1152921504606846975
  br i1 %t34, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_56ae34a9066c1560_be19fd249755f1d4)
  unreachable
bb11:
  %t36 = mul i64 1, 8
  %t37 = load i64, ptr %l9
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t36)
  %t40 = load %"compiler/source:Span", ptr %l11
  store i64 0, ptr %t41
  br label %fill.42
fill.42:
  %t45 = load i64, ptr %t41
  %t46 = icmp slt i64 %t45, 1
  br i1 %t46, label %fillb.43, label %filld.44
fillb.43:
  %t47 = getelementptr %"compiler/source:Span", ptr %t39, i64 %t45
  store %"compiler/source:Span" %t40, ptr %t47
  %t48 = add i64 %t45, 1
  store i64 %t48, ptr %t41
  br label %fill.42
filld.44:
  %t49 = insertvalue { i64, ptr } undef, i64 1, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t39, 1
  %t51 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t53 = call %"compiler/parse:NameList" @compiler_2fparse_3aNameList_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t51, { i64, ptr } %t50)
  store %"compiler/parse:NameList" %t53, ptr %l15
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_56ae34a9066c1560_be19fd249755f1d4)
  unreachable
bb13:
  %t54 = load %"compiler/parse:NameList", ptr %l15
  %t55 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/parse:NameList" %t54, ptr %t55
  store ptr %t55, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eopenerOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l24 = alloca i32
  %l26 = alloca i1
  %l29 = alloca i32
  %l31 = alloca i32
  %l33 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i32, ptr %l9, !range !{i32 0, i32 114}
  store i32 %t6, ptr %l2
  %t7 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t9 = trunc i64 109 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i32 108, ptr %l12
  br label %bb4
bb3:
  store i32 110, ptr %l12
  br label %bb4
bb4:
  %t14 = load i32, ptr %l12, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sge i64 %t17, 0
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  br label %bb22
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t23, i64 %t24)
  store i32 %t27, ptr %l21
  br label %bb9
bb9:
  %t28 = load i32, ptr %l21, !range !{i32 0, i32 114}
  store i32 %t28, ptr %l6
  %t29 = load i32, ptr %l6, !range !{i32 0, i32 114}
  store i32 %t29, ptr %l22
  %t30 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t30, ptr %l24
  %t33 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %l22, ptr %l24)
  store i1 %t33, ptr %l26
  br label %bb10
bb10:
  %t34 = load i1, ptr %l26, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb20
bb12:
  %t39 = load i32, ptr %l6, !range !{i32 0, i32 114}
  store i32 %t39, ptr %l29
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 114}
  store i32 %t40, ptr %l31
  %t43 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %l29, ptr %l31)
  store i1 %t43, ptr %l33
  br label %bb13
bb13:
  %t44 = load i1, ptr %l33, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = sub i64 %t45, 1
  store i64 %t47, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t51 = icmp eq i64 %t49, 0
  br i1 %t51, label %bb16, label %bb17
bb15:
  br label %bb19
bb16:
  %t53 = load i64, ptr %l5, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb21
bb21:
  br label %bb5
bb22:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eoperandEndAfter(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l47 = alloca i32
  %l50 = alloca i1
  %l56 = alloca i32
  %l65 = alloca i32
  %l66 = alloca i32
  %l68 = alloca i32
  %l70 = alloca i1
  %l73 = alloca i32
  %l75 = alloca i32
  %l77 = alloca i1
  %l92 = alloca i64
  %l95 = alloca i64
  %l100 = alloca i32
  %l103 = alloca i1
  %l107 = alloca i32
  %l110 = alloca i1
  %l114 = alloca i1
  %l119 = alloca i32
  %l122 = alloca i1
  %l125 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/parse:Parser", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/scan:Tokens", ptr %t6, i32 0, i32 0
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 256, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb3:
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l27, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb5
bb5:
  %t39 = load i64, ptr %l27, !tbaa !24
  store i64 %t39, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l24, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb8, label %bb9
bb8:
  br label %bb68
bb9:
  br label %bb10
bb10:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l9, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l2, !tbaa !24
  %t63 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t59, i64 %t60)
  store i32 %t63, ptr %l47
  br label %bb11
bb11:
  %t64 = load i32, ptr %l47, !range !{i32 0, i32 114}
  store i32 %t64, ptr %l10
  %t65 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t67 = trunc i64 108 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb14
bb13:
  %t70 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t72 = trunc i64 110 to i32
  %t73 = icmp eq i32 %t70, %t72
  store i1 %t73, ptr %l50, !tbaa !21
  br label %bb14
bb14:
  %t75 = load i1, ptr %l50, !tbaa !21
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t76 = load i32, ptr %l10, !range !{i32 0, i32 114}
  store i32 %t76, ptr %l11
  %t78 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t80 = trunc i64 108 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb17, label %bb18
bb16:
  br label %bb41
bb17:
  store i32 109, ptr %l56
  br label %bb19
bb18:
  store i32 111, ptr %l56
  br label %bb19
bb19:
  %t85 = load i32, ptr %l56, !range !{i32 0, i32 114}
  store i32 %t85, ptr %l12
  store i64 0, ptr %l13, !tbaa !24
  br label %bb20
bb20:
  %t86 = load i64, ptr %l2, !tbaa !24
  %t87 = load i64, ptr %l3, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb21, label %bb22
bb21:
  br label %bb37
bb22:
  br label %bb23
bb23:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l2, !tbaa !24
  %t98 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t94, i64 %t95)
  store i32 %t98, ptr %l65
  br label %bb24
bb24:
  %t99 = load i32, ptr %l65, !range !{i32 0, i32 114}
  store i32 %t99, ptr %l14
  %t100 = load i32, ptr %l14, !range !{i32 0, i32 114}
  store i32 %t100, ptr %l66
  %t101 = load i32, ptr %l11, !range !{i32 0, i32 114}
  store i32 %t101, ptr %l68
  %t104 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %l66, ptr %l68)
  store i1 %t104, ptr %l70
  br label %bb25
bb25:
  %t105 = load i1, ptr %l70, !tbaa !21
  br i1 %t105, label %bb26, label %bb27
bb26:
  %t106 = load i64, ptr %l13, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l13, !tbaa !24
  br label %bb35
bb27:
  %t110 = load i32, ptr %l14, !range !{i32 0, i32 114}
  store i32 %t110, ptr %l73
  %t111 = load i32, ptr %l12, !range !{i32 0, i32 114}
  store i32 %t111, ptr %l75
  %t114 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %l73, ptr %l75)
  store i1 %t114, ptr %l77
  br label %bb28
bb28:
  %t115 = load i1, ptr %l77, !tbaa !21
  br i1 %t115, label %bb29, label %bb30
bb29:
  %t116 = load i64, ptr %l13, !tbaa !24
  %t118 = sub i64 %t116, 1
  store i64 %t118, ptr %l13, !tbaa !24
  %t120 = load i64, ptr %l13, !tbaa !24
  %t122 = icmp eq i64 %t120, 0
  br i1 %t122, label %bb31, label %bb32
bb30:
  br label %bb34
bb31:
  br label %bb37
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t124 = load i64, ptr %l2, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l2, !tbaa !24
  br label %bb36
bb36:
  br label %bb20
bb37:
  %t128 = load i64, ptr %l2, !tbaa !24
  %t129 = load i64, ptr %l3, !tbaa !24
  %t132 = icmp sge i64 %t128, %t129
  br i1 %t132, label %bb38, label %bb39
bb38:
  %t134 = load i64, ptr %l1, !tbaa !24
  store i64 %t134, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t136 = load i64, ptr %l2, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l15, !tbaa !24
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i64, ptr %l15, !tbaa !24
  %t144 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t140, i64 %t141)
  store i64 %t144, ptr %l92
  br label %bb42
bb42:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i64, ptr %l2, !tbaa !24
  %t149 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t145, i64 %t146)
  store i64 %t149, ptr %l95
  br label %bb43
bb43:
  %t150 = load i64, ptr %l92, !tbaa !24
  %t151 = load i64, ptr %l95, !tbaa !24
  %t152 = icmp ne i64 %t150, %t151
  br i1 %t152, label %bb44, label %bb45
bb44:
  %t154 = load i64, ptr %l2, !tbaa !24
  store i64 %t154, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i64, ptr %l15, !tbaa !24
  %t160 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t156, i64 %t157)
  store i32 %t160, ptr %l100
  br label %bb47
bb47:
  %t161 = load i32, ptr %l100, !range !{i32 0, i32 114}
  %t163 = trunc i64 76 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb48, label %bb49
bb48:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i64, ptr %l15, !tbaa !24
  %t169 = add i64 %t167, 1
  %t172 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t166, i64 %t169)
  store i32 %t172, ptr %l107
  br label %bb50
bb49:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb55
bb50:
  %t173 = load i32, ptr %l107, !range !{i32 0, i32 114}
  %t175 = trunc i64 1 to i32
  %t176 = icmp eq i32 %t173, %t175
  br i1 %t176, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l110, !tbaa !21
  br label %bb54
bb52:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i64, ptr %l15, !tbaa !24
  %t181 = add i64 %t179, 1
  %t184 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisKw(ptr %v0, ptr %t178, i64 %t181)
  store i1 %t184, ptr %l114
  br label %bb53
bb53:
  %t185 = load i1, ptr %l114, !tbaa !21
  store i1 %t185, ptr %l110, !tbaa !21
  br label %bb54
bb54:
  %t186 = load i1, ptr %l110, !tbaa !21
  store i1 %t186, ptr %l103, !tbaa !21
  br label %bb55
bb55:
  %t187 = load i1, ptr %l103, !tbaa !21
  br i1 %t187, label %bb56, label %bb57
bb56:
  %t188 = load i64, ptr %l15, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l2, !tbaa !24
  br label %bb67
bb57:
  br label %bb58
bb58:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i64, ptr %l15, !tbaa !24
  %t196 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t192, i64 %t193)
  store i32 %t196, ptr %l119
  br label %bb59
bb59:
  %t197 = load i32, ptr %l119, !range !{i32 0, i32 114}
  %t199 = trunc i64 108 to i32
  %t200 = icmp eq i32 %t197, %t199
  br i1 %t200, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l122, !tbaa !21
  br label %bb63
bb61:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load i64, ptr %l15, !tbaa !24
  %t206 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t202, i64 %t203)
  store i32 %t206, ptr %l125
  br label %bb62
bb62:
  %t207 = load i32, ptr %l125, !range !{i32 0, i32 114}
  %t209 = trunc i64 110 to i32
  %t210 = icmp eq i32 %t207, %t209
  store i1 %t210, ptr %l122, !tbaa !21
  br label %bb63
bb63:
  %t212 = load i1, ptr %l122, !tbaa !21
  br i1 %t212, label %bb64, label %bb65
bb64:
  %t213 = load i64, ptr %l15, !tbaa !24
  store i64 %t213, ptr %l2, !tbaa !24
  br label %bb67
bb65:
  br label %bb66
bb66:
  %t215 = load i64, ptr %l2, !tbaa !24
  store i64 %t215, ptr %rv
  br label %ret
bb67:
  %t217 = load i64, ptr %l8, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l8, !tbaa !24
  br label %bb7
bb68:
  %t221 = load i64, ptr %l2, !tbaa !24
  store i64 %t221, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epadsChar(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l8 = alloca i1
  %l12 = alloca i32
  %l20 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = add i64 %t2, 2
  %t7 = icmp slt i64 %a2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = add i64 %t10, 1
  %t15 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t9, i64 %t12)
  store i32 %t15, ptr %l12
  br label %bb3
bb3:
  %t16 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t18 = trunc i64 76 to i32
  %t19 = icmp eq i32 %t16, %t18
  %t21 = xor i1 %t19, true
  store i1 %t21, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l8, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/parse:Parser", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/scan:Tokens", ptr %t29, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l20, !tbaa !27
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = add i64 %t33, 2
  %t37 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr %"compiler/token:Token", ptr %t38, i64 %t35
  %t40 = load %"compiler/token:Token", ptr %t39
  %t43 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t25, %"compiler/token:Token" %t40)
  store { i64, ptr } %t43, ptr %l24
  br label %bb8
bb8:
  %t44 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t44, ptr %l3, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t47, ptr %l26
  br label %bb9
bb9:
  %t48 = load i1, ptr %l26, !tbaa !21
  br i1 %t48, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb13
bb11:
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t49, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t51, ptr %l29
  br label %bb12
bb12:
  %t52 = load i1, ptr %l29, !tbaa !21
  store i1 %t52, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load i1, ptr %l27, !tbaa !21
  store i1 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparams(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca ptr
  %l30 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l40 = alloca i64
  %l43 = alloca i64
  %l62 = alloca i32
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca i32
  %l76 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i32
  %l87 = alloca ptr
  %l90 = alloca i32
  %l93 = alloca i32
  %l94 = alloca i32
  %l101 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 34
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2eLen_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load i64, ptr %l15, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l16, !tbaa !29
  %t8 = load ptr, ptr %l16, !tbaa !29
  %t9 = getelementptr %"compiler/parse:Parser", ptr %t8, i32 0, i32 18
  %t10 = load i64, ptr %t9, !tbaa !24
  %t12 = add i64 %t10, 1
  %t14 = load ptr, ptr %l16, !tbaa !29
  %t15 = getelementptr %"compiler/parse:Parser", ptr %t14, i32 0, i32 18
  store i64 %t12, ptr %t15, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/parse:Parser", ptr %t16, i32 0, i32 19
  %t19 = load i1, ptr %t18, !tbaa !21
  store i1 %t19, ptr %l3, !tbaa !21
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 20
  %t24 = load i1, ptr %t23, !tbaa !21
  store i1 %t24, ptr %l4, !tbaa !21
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/parse:Parser", ptr %t26, i32 0, i32 19
  store i1 false, ptr %t28, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t29, i32 0, i32 20
  store i1 true, ptr %t31, !tbaa !21
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/parse:Parser", ptr %t32, i32 0, i32 50
  %t35 = load i1, ptr %t34, !tbaa !21
  store i1 %t35, ptr %l5, !tbaa !21
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/parse:Parser", ptr %t37, i32 0, i32 50
  store i1 false, ptr %t39, !tbaa !21
  br label %bb2
bb2:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t43 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t40, i32 109)
  store i1 %t43, ptr %l30
  br label %bb3
bb3:
  %t44 = load i1, ptr %l30, !tbaa !21
  %t45 = xor i1 %t44, true
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb4, label %bb5
bb4:
  br label %bb38
bb5:
  br label %bb6
bb6:
  %t49 = load i1, ptr %l5, !tbaa !21
  br i1 %t49, label %bb7, label %bb8
bb7:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eellipsis(ptr %v0, ptr %t51)
  store i1 %t53, ptr %l36
  br label %bb9
bb8:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb10
bb9:
  %t54 = load i1, ptr %l36, !tbaa !21
  store i1 %t54, ptr %l34, !tbaa !21
  br label %bb10
bb10:
  %t55 = load i1, ptr %l34, !tbaa !21
  br i1 %t55, label %bb11, label %bb12
bb11:
  store i64 0, ptr %l6, !tbaa !24
  store i64 3, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t57 = load i64, ptr %l6, !tbaa !24
  %t60 = icmp sgt i64 %t56, %t57
  br i1 %t60, label %bb13, label %bb14
bb12:
  br label %bb26
bb13:
  %t62 = load i64, ptr %l8, !tbaa !24
  %t64 = icmp sgt i64 %t62, 0
  br i1 %t64, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb18
bb15:
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = sub i64 %t66, %t67
  %t71 = load i64, ptr %l8, !tbaa !24
  %t74 = add i64 %t70, %t71
  %t76 = sub i64 %t74, 1
  %t77 = load i64, ptr %l8, !tbaa !24
  %t80 = sdiv i64 %t76, %t77
  store i64 %t80, ptr %l43, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb17
bb17:
  %t82 = load i64, ptr %l43, !tbaa !24
  store i64 %t82, ptr %l40, !tbaa !24
  br label %bb18
bb18:
  %t83 = load i64, ptr %l40, !tbaa !24
  store i64 %t83, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr %l9, !tbaa !24
  %t88 = icmp slt i64 %t84, %t85
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb20, label %bb21
bb20:
  br label %bb25
bb21:
  br label %bb22
bb22:
  %t92 = load i64, ptr %l6, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t97 = mul i64 %t93, %t94
  %t100 = add i64 %t92, %t97
  store i64 %t100, ptr %l11, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t102)
  store i32 %t104, ptr %l62
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t105 = load i64, ptr %l10, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l10, !tbaa !24
  br label %bb19
bb25:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/parse:Parser", ptr %t109, i32 0, i32 53
  store i1 true, ptr %t111, !tbaa !21
  br label %bb38
bb26:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/parse:Parser", ptr %t112, i32 0, i32 34
  store ptr %t114, ptr %l67, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t119 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparam(ptr %v0, ptr %v0, ptr %t115, i1 %a1)
  %t120 = extractvalue { i32, ptr } %t119, 1
  %t121 = extractvalue { i32, ptr } %t119, 0
  store i32 %t121, ptr %l72
  %t122 = icmp ne i32 %t121, 0
  br i1 %t122, label %bb28, label %ok.123, !prof !99
ok.123:
  store ptr %t120, ptr %l71
  br label %bb27
bb27:
  %t124 = load ptr, ptr %l71, !tbaa !29
  store ptr %t124, ptr %l68, !tbaa !29
  br label %bb29
bb28:
  %t125 = load i32, ptr %l72, !tbaa !23
  %t126 = lshr i32 %t125, 16
  %t127 = and i32 %t125, 65535
  %t128 = icmp eq i32 %t126, 1
  %t129 = select i1 %t128, i32 1, i32 0
  %t130 = icmp eq i32 %t125, 0
  %t131 = shl i32 %t129, 16
  %t132 = or i32 %t131, %t127
  %t133 = select i1 %t130, i32 0, i32 %t132
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i1, ptr %l4, !tbaa !21
  %t138 = getelementptr %"compiler/parse:Parser", ptr %t134, i32 0, i32 20
  store i1 %t135, ptr %t138, !tbaa !21
  %t140 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t133, 0
  store { i32, { i64, ptr } } %t140, ptr %rv
  br label %ret
bb29:
  %t141 = load ptr, ptr %l67, !tbaa !29
  %t142 = load ptr, ptr %l68, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ePush_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %v0, ptr %t141, ptr %t142)
  br label %bb30
bb30:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t146 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t143, i32 109)
  %t147 = extractvalue { i32, i1 } %t146, 1
  %t148 = extractvalue { i32, i1 } %t146, 0
  store i32 %t148, ptr %l80
  %t149 = icmp ne i32 %t148, 0
  br i1 %t149, label %bb32, label %ok.150, !prof !99
ok.150:
  store i1 %t147, ptr %l79
  br label %bb31
bb31:
  %t151 = load i1, ptr %l79, !tbaa !21
  store i1 %t151, ptr %l76, !tbaa !21
  br label %bb33
bb32:
  %t152 = load i32, ptr %l80, !tbaa !23
  %t153 = lshr i32 %t152, 16
  %t154 = and i32 %t152, 65535
  %t155 = icmp eq i32 %t153, 1
  %t156 = select i1 %t155, i32 1, i32 0
  %t157 = icmp eq i32 %t152, 0
  %t158 = shl i32 %t156, 16
  %t159 = or i32 %t158, %t154
  %t160 = select i1 %t157, i32 0, i32 %t159
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i1, ptr %l4, !tbaa !21
  %t165 = getelementptr %"compiler/parse:Parser", ptr %t161, i32 0, i32 20
  store i1 %t162, ptr %t165, !tbaa !21
  %t167 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t160, 0
  store { i32, { i64, ptr } } %t167, ptr %rv
  br label %ret
bb33:
  %t168 = load i1, ptr %l76, !tbaa !21
  %t169 = xor i1 %t168, true
  br i1 %t169, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb2
bb38:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i1, ptr %l3, !tbaa !21
  %t175 = getelementptr %"compiler/parse:Parser", ptr %t171, i32 0, i32 19
  store i1 %t172, ptr %t175, !tbaa !21
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l87, !tbaa !29
  %t177 = load ptr, ptr %l87, !tbaa !29
  %t178 = getelementptr %"compiler/parse:Parser", ptr %t177, i32 0, i32 18
  %t179 = load i64, ptr %t178, !tbaa !24
  %t181 = sub i64 %t179, 1
  %t183 = load ptr, ptr %l87, !tbaa !29
  %t184 = getelementptr %"compiler/parse:Parser", ptr %t183, i32 0, i32 18
  store i64 %t181, ptr %t184, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t188 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t185, i32 109)
  %t189 = extractvalue { i32, i32 } %t188, 1
  %t190 = extractvalue { i32, i32 } %t188, 0
  store i32 %t190, ptr %l94
  %t191 = icmp ne i32 %t190, 0
  br i1 %t191, label %bb40, label %ok.192, !prof !99
ok.192:
  store i32 %t189, ptr %l93
  br label %bb39
bb39:
  %t193 = load i32, ptr %l93, !tbaa !23
  store i32 %t193, ptr %l90, !tbaa !23
  br label %bb41
bb40:
  %t194 = load i32, ptr %l94, !tbaa !23
  %t195 = lshr i32 %t194, 16
  %t196 = and i32 %t194, 65535
  %t197 = icmp eq i32 %t195, 1
  %t198 = select i1 %t197, i32 1, i32 0
  %t199 = icmp eq i32 %t194, 0
  %t200 = shl i32 %t198, 16
  %t201 = or i32 %t200, %t196
  %t202 = select i1 %t199, i32 0, i32 %t201
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i1, ptr %l4, !tbaa !21
  %t207 = getelementptr %"compiler/parse:Parser", ptr %t203, i32 0, i32 20
  store i1 %t204, ptr %t207, !tbaa !21
  %t209 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t202, 0
  store { i32, { i64, ptr } } %t209, ptr %rv
  br label %ret
bb41:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/parse:Parser", ptr %t210, i32 0, i32 34
  %t213 = load i64, ptr %l2, !tbaa !24
  %t216 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %v1, ptr %t212, i64 %t213)
  store { i64, ptr } %t216, ptr %l101
  br label %bb42
bb42:
  %t217 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t217, ptr %l12, !tbaa !27
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t220 = load i1, ptr %l5, !tbaa !21
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/parse:Parser", ptr %t221, i32 0, i32 54
  %t224 = load i1, ptr %t223, !tbaa !21
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2espreadRules(ptr %v0, ptr %v1, ptr %t218, { i64, ptr } %t219, i1 %t220, i1 %t224)
  br label %bb43
bb43:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/parse:Parser", ptr %t229, i32 0, i32 54
  store i1 false, ptr %t231, !tbaa !21
  %t232 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i1, ptr %l4, !tbaa !21
  %t237 = getelementptr %"compiler/parse:Parser", ptr %t233, i32 0, i32 20
  store i1 %t234, ptr %t237, !tbaa !21
  %t239 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t232, 1
  store { i32, { i64, ptr } } %t239, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprec(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l30 = alloca i64
  %l39 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l60 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t3 = trunc i64 46 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i64 1, ptr %l2, !tbaa !24
  br label %bb103
bb4:
  %t6 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t8 = trunc i64 47 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 2, ptr %l2, !tbaa !24
  br label %bb103
bb8:
  %t11 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t13 = trunc i64 45 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 3, ptr %l2, !tbaa !24
  br label %bb103
bb12:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 102 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 45
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb16, label %bb17
bb16:
  store i64 4, ptr %l13, !tbaa !24
  br label %bb18
bb17:
  store i64 6, ptr %l13, !tbaa !24
  br label %bb18
bb18:
  %t26 = load i64, ptr %l13, !tbaa !24
  store i64 %t26, ptr %l2, !tbaa !24
  br label %bb103
bb19:
  %t27 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t29 = trunc i64 103 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb26
bb22:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/parse:Parser", ptr %t32, i32 0, i32 45
  %t35 = load i1, ptr %t34, !tbaa !21
  br i1 %t35, label %bb23, label %bb24
bb23:
  store i64 5, ptr %l18, !tbaa !24
  br label %bb25
bb24:
  store i64 7, ptr %l18, !tbaa !24
  br label %bb25
bb25:
  %t37 = load i64, ptr %l18, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb103
bb26:
  %t38 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t40 = trunc i64 101 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb33
bb29:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/parse:Parser", ptr %t43, i32 0, i32 45
  %t46 = load i1, ptr %t45, !tbaa !21
  br i1 %t46, label %bb30, label %bb31
bb30:
  store i64 6, ptr %l23, !tbaa !24
  br label %bb32
bb31:
  store i64 8, ptr %l23, !tbaa !24
  br label %bb32
bb32:
  %t48 = load i64, ptr %l23, !tbaa !24
  store i64 %t48, ptr %l2, !tbaa !24
  br label %bb103
bb33:
  %t49 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t51 = trunc i64 94 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  %t54 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t56 = trunc i64 95 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb42
bb38:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/parse:Parser", ptr %t59, i32 0, i32 45
  %t62 = load i1, ptr %t61, !tbaa !21
  br i1 %t62, label %bb39, label %bb40
bb39:
  store i64 7, ptr %l30, !tbaa !24
  br label %bb41
bb40:
  store i64 4, ptr %l30, !tbaa !24
  br label %bb41
bb41:
  %t64 = load i64, ptr %l30, !tbaa !24
  store i64 %t64, ptr %l2, !tbaa !24
  br label %bb103
bb42:
  %t65 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t67 = trunc i64 27 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb43, label %bb44
bb43:
  br label %bb49
bb44:
  %t70 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t72 = trunc i64 28 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb45, label %bb46
bb45:
  br label %bb49
bb46:
  %t75 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t77 = trunc i64 48 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb53
bb49:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/parse:Parser", ptr %t80, i32 0, i32 45
  %t83 = load i1, ptr %t82, !tbaa !21
  br i1 %t83, label %bb50, label %bb51
bb50:
  store i64 8, ptr %l39, !tbaa !24
  br label %bb52
bb51:
  store i64 5, ptr %l39, !tbaa !24
  br label %bb52
bb52:
  %t85 = load i64, ptr %l39, !tbaa !24
  store i64 %t85, ptr %l2, !tbaa !24
  br label %bb103
bb53:
  %t86 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t88 = trunc i64 97 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb54, label %bb55
bb54:
  br label %bb62
bb55:
  %t91 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t93 = trunc i64 98 to i32
  %t94 = icmp eq i32 %t91, %t93
  br i1 %t94, label %bb56, label %bb57
bb56:
  br label %bb62
bb57:
  %t96 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t98 = trunc i64 99 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb58, label %bb59
bb58:
  br label %bb62
bb59:
  %t101 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t103 = trunc i64 100 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb69
bb62:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/parse:Parser", ptr %t106, i32 0, i32 11
  %t109 = load i1, ptr %t108, !tbaa !21
  br i1 %t109, label %bb63, label %bb64
bb63:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb68
bb64:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/parse:Parser", ptr %t111, i32 0, i32 45
  %t114 = load i1, ptr %t113, !tbaa !21
  br i1 %t114, label %bb65, label %bb66
bb65:
  store i64 8, ptr %l53, !tbaa !24
  br label %bb67
bb66:
  store i64 5, ptr %l53, !tbaa !24
  br label %bb67
bb67:
  %t116 = load i64, ptr %l53, !tbaa !24
  store i64 %t116, ptr %l50, !tbaa !24
  br label %bb68
bb68:
  %t117 = load i64, ptr %l50, !tbaa !24
  store i64 %t117, ptr %l2, !tbaa !24
  br label %bb103
bb69:
  %t118 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t120 = trunc i64 106 to i32
  %t121 = icmp eq i32 %t118, %t120
  br i1 %t121, label %bb70, label %bb71
bb70:
  br label %bb74
bb71:
  %t123 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t125 = trunc i64 107 to i32
  %t126 = icmp eq i32 %t123, %t125
  br i1 %t126, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb78
bb74:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/parse:Parser", ptr %t128, i32 0, i32 11
  %t131 = load i1, ptr %t130, !tbaa !21
  br i1 %t131, label %bb75, label %bb76
bb75:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb77
bb76:
  store i64 9, ptr %l60, !tbaa !24
  br label %bb77
bb77:
  %t133 = load i64, ptr %l60, !tbaa !24
  store i64 %t133, ptr %l2, !tbaa !24
  br label %bb103
bb78:
  %t134 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t136 = trunc i64 68 to i32
  %t137 = icmp eq i32 %t134, %t136
  br i1 %t137, label %bb79, label %bb80
bb79:
  br label %bb83
bb80:
  %t139 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t141 = trunc i64 69 to i32
  %t142 = icmp eq i32 %t139, %t141
  br i1 %t142, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb84
bb83:
  store i64 10, ptr %l2, !tbaa !24
  br label %bb103
bb84:
  %t144 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t146 = trunc i64 70 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb85, label %bb86
bb85:
  br label %bb93
bb86:
  %t149 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t151 = trunc i64 72 to i32
  %t152 = icmp eq i32 %t149, %t151
  br i1 %t152, label %bb87, label %bb88
bb87:
  br label %bb93
bb88:
  %t154 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t156 = trunc i64 73 to i32
  %t157 = icmp eq i32 %t154, %t156
  br i1 %t157, label %bb89, label %bb90
bb89:
  br label %bb93
bb90:
  %t159 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t161 = trunc i64 74 to i32
  %t162 = icmp eq i32 %t159, %t161
  br i1 %t162, label %bb91, label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb94
bb93:
  store i64 11, ptr %l2, !tbaa !24
  br label %bb103
bb94:
  %t164 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t166 = trunc i64 71 to i32
  %t167 = icmp eq i32 %t164, %t166
  br i1 %t167, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb98
bb97:
  store i64 12, ptr %l2, !tbaa !24
  br label %bb103
bb98:
  br i1 true, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  store i64 0, ptr %l2, !tbaa !24
  br label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_1ff519fafba2f33_696c4c198bd75d77)
  unreachable
bb103:
  %t169 = load i64, ptr %l2, !tbaa !24
  store i64 %t169, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epromises(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i32
  %l9 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
  %l16 = alloca i32
  %l18 = alloca i32
  %l20 = alloca i32
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i32
  %l31 = alloca i32
  %l32 = alloca i32
  %l36 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i1
  %l45 = alloca i32
  %l46 = alloca ptr
  %l47 = alloca i32
  %l49 = alloca i32
  %l50 = alloca i32
  %l54 = alloca i1
  %l55 = alloca i1
  %l57 = alloca i1
  %l61 = alloca i32
  %l62 = alloca ptr
  %l63 = alloca i32
  %l65 = alloca i32
  %l66 = alloca i32
  %l68 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l72 = alloca i32
  %l73 = alloca i64
  %l76 = alloca { i64, ptr }
  %l77 = alloca %"compiler/ast:Promise"
  %l80 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPromise_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l1, !tbaa !29
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t5)
  store i32 %t7, ptr %l8
  br label %bb3
bb3:
  %t8 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t9 = call i1 @compiler_2fparse_2epromiseWord(i32 %t8)
  store i1 %t9, ptr %l9
  br label %bb4
bb4:
  %t10 = load i1, ptr %l9, !tbaa !21
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t11)
  store i1 %t13, ptr %l12
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t14 = load i1, ptr %l12, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t17 = load i1, ptr %l10, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %bb65
bb10:
  br label %bb11
bb11:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t20)
  store i32 %t22, ptr %l16
  br label %bb12
bb12:
  %t23 = load i32, ptr %l16, !tbaa !23
  store i32 %t23, ptr %l2, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t24)
  store i32 %t26, ptr %l18
  br label %bb13
bb13:
  %t27 = load i32, ptr %l18, !range !{i32 0, i32 114}
  store i32 %t27, ptr %l3
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t28)
  store i32 %t30, ptr %l20
  br label %bb14
bb14:
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l21
  br label %bb15
bb15:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t33 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %t33
  store ptr %t33, ptr %l4, !tbaa !29
  %t35 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t37 = trunc i64 65 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb18
bb17:
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t42 = trunc i64 64 to i32
  %t43 = icmp eq i32 %t40, %t42
  store i1 %t43, ptr %l25, !tbaa !21
  br label %bb18
bb18:
  %t45 = load i1, ptr %l25, !tbaa !21
  br i1 %t45, label %bb19, label %bb20
bb19:
  %t46 = load ptr, ptr %l4, !tbaa !29
  store ptr %t46, ptr %l28, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t47)
  %t50 = extractvalue { i32, i32 } %t49, 1
  %t51 = extractvalue { i32, i32 } %t49, 0
  store i32 %t51, ptr %l32
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb22, label %ok.53, !prof !99
ok.53:
  store i32 %t50, ptr %l31
  br label %bb21
bb20:
  br label %bb25
bb21:
  %t54 = load i32, ptr %l31, !tbaa !23
  store i32 %t54, ptr %l29, !tbaa !23
  br label %bb23
bb22:
  %t55 = load i32, ptr %l32, !tbaa !23
  %t56 = lshr i32 %t55, 16
  %t57 = and i32 %t55, 65535
  %t58 = icmp eq i32 %t56, 1
  %t59 = select i1 %t58, i32 1, i32 0
  %t60 = icmp eq i32 %t55, 0
  %t61 = shl i32 %t59, 16
  %t62 = or i32 %t61, %t57
  %t63 = select i1 %t60, i32 0, i32 %t62
  call void @__olang_scope_close(ptr %s1)
  %t65 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t63, 0
  store { i32, { i64, ptr } } %t65, ptr %rv
  br label %ret
bb23:
  %t66 = load ptr, ptr %l28, !tbaa !29
  %t67 = load i32, ptr %l29, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s1, ptr %t66, i32 %t67)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t68 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t70 = trunc i64 64 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb26, label %bb27
bb26:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t76 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t73, i32 27)
  store i1 %t76, ptr %l39
  br label %bb28
bb27:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb29
bb28:
  %t77 = load i1, ptr %l39, !tbaa !21
  store i1 %t77, ptr %l36, !tbaa !21
  br label %bb29
bb29:
  %t78 = load i1, ptr %l36, !tbaa !21
  br i1 %t78, label %bb30, label %bb31
bb30:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t79)
  store i1 %t81, ptr %l42
  br label %bb32
bb31:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb33
bb32:
  %t82 = load i1, ptr %l42, !tbaa !21
  %t83 = xor i1 %t82, true
  store i1 %t83, ptr %l40, !tbaa !21
  br label %bb33
bb33:
  %t85 = load i1, ptr %l40, !tbaa !21
  br i1 %t85, label %bb34, label %bb35
bb34:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t86)
  store i32 %t88, ptr %l45
  br label %bb36
bb35:
  br label %bb57
bb36:
  %t89 = load ptr, ptr %l4, !tbaa !29
  store ptr %t89, ptr %l46, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t90)
  %t93 = extractvalue { i32, i32 } %t92, 1
  %t94 = extractvalue { i32, i32 } %t92, 0
  store i32 %t94, ptr %l50
  %t95 = icmp ne i32 %t94, 0
  br i1 %t95, label %bb38, label %ok.96, !prof !99
ok.96:
  store i32 %t93, ptr %l49
  br label %bb37
bb37:
  %t97 = load i32, ptr %l49, !tbaa !23
  store i32 %t97, ptr %l47, !tbaa !23
  br label %bb39
bb38:
  %t98 = load i32, ptr %l50, !tbaa !23
  %t99 = lshr i32 %t98, 16
  %t100 = and i32 %t98, 65535
  %t101 = icmp eq i32 %t99, 1
  %t102 = select i1 %t101, i32 1, i32 0
  %t103 = icmp eq i32 %t98, 0
  %t104 = shl i32 %t102, 16
  %t105 = or i32 %t104, %t100
  %t106 = select i1 %t103, i32 0, i32 %t105
  call void @__olang_scope_close(ptr %s1)
  %t108 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t106, 0
  store { i32, { i64, ptr } } %t108, ptr %rv
  br label %ret
bb39:
  %t109 = load ptr, ptr %l46, !tbaa !29
  %t110 = load i32, ptr %l47, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s1, ptr %t109, i32 %t110)
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t114 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t111, i32 76)
  store i1 %t114, ptr %l54
  br label %bb42
bb42:
  %t115 = load i1, ptr %l54, !tbaa !21
  br i1 %t115, label %bb43, label %bb44
bb43:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t116)
  store i1 %t118, ptr %l57
  br label %bb45
bb44:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb46
bb45:
  %t119 = load i1, ptr %l57, !tbaa !21
  %t120 = xor i1 %t119, true
  store i1 %t120, ptr %l55, !tbaa !21
  br label %bb46
bb46:
  %t122 = load i1, ptr %l55, !tbaa !21
  %t123 = xor i1 %t122, true
  br i1 %t123, label %bb47, label %bb48
bb47:
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t125)
  store i32 %t127, ptr %l61
  br label %bb50
bb50:
  %t128 = load ptr, ptr %l4, !tbaa !29
  store ptr %t128, ptr %l62, !tbaa !29
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t129)
  %t132 = extractvalue { i32, i32 } %t131, 1
  %t133 = extractvalue { i32, i32 } %t131, 0
  store i32 %t133, ptr %l66
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb52, label %ok.135, !prof !99
ok.135:
  store i32 %t132, ptr %l65
  br label %bb51
bb51:
  %t136 = load i32, ptr %l65, !tbaa !23
  store i32 %t136, ptr %l63, !tbaa !23
  br label %bb53
bb52:
  %t137 = load i32, ptr %l66, !tbaa !23
  %t138 = lshr i32 %t137, 16
  %t139 = and i32 %t137, 65535
  %t140 = icmp eq i32 %t138, 1
  %t141 = select i1 %t140, i32 1, i32 0
  %t142 = icmp eq i32 %t137, 0
  %t143 = shl i32 %t141, 16
  %t144 = or i32 %t143, %t139
  %t145 = select i1 %t142, i32 0, i32 %t144
  call void @__olang_scope_close(ptr %s1)
  %t147 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t145, 0
  store { i32, { i64, ptr } } %t147, ptr %rv
  br label %ret
bb53:
  %t148 = load ptr, ptr %l62, !tbaa !29
  %t149 = load i32, ptr %l63, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s1, ptr %t148, i32 %t149)
  br label %bb54
bb54:
  br label %bb55
bb55:
  br label %bb41
bb56:
  br label %bb57
bb57:
  %t150 = load ptr, ptr %l1, !tbaa !29
  store ptr %t150, ptr %l68, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i32, ptr %l2, !tbaa !23
  %t155 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t151, i32 %t152)
  store %"compiler/source:Span" %t155, ptr %l71
  br label %bb58
bb58:
  %t156 = load i32, ptr %l3, !range !{i32 0, i32 114}
  store i32 %t156, ptr %l72
  %t157 = ptrtoint ptr %v1 to i64
  store i64 %t157, ptr %l73, !tbaa !24
  %t158 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aPromise_2e2
  br i1 %t158, label %bb59, label %bb60
bb59:
  %t160 = call ptr @__olang_region_make(ptr %v1)
  %t161 = ptrtoint ptr %t160 to i64
  store i64 %t161, ptr %l73, !tbaa !24
  br label %bb60
bb60:
  %t162 = load ptr, ptr %l4, !tbaa !29
  %t163 = load i64, ptr %l73
  %t164 = inttoptr i64 %t163 to ptr
  %t166 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s1, ptr %t164, ptr %t162)
  store { i64, ptr } %t166, ptr %l76
  br label %bb61
bb61:
  %t167 = load %"compiler/source:Span", ptr %l71
  %t168 = load i32, ptr %l72, !range !{i32 0, i32 114}
  %t169 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t170 = call %"compiler/ast:Promise" @compiler_2fast_3aPromise_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t167, i32 %t168, { i64, ptr } %t169)
  store %"compiler/ast:Promise" %t170, ptr %l77
  br label %bb62
bb62:
  %t171 = load %"compiler/ast:Promise", ptr %l77
  %t172 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/ast:Promise" %t171, ptr %t172
  %t173 = load ptr, ptr %l68, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPromise_26_3e_2ePush_3ccompiler_2fast_3aPromise_26_3e(ptr %v1, ptr %v1, ptr %t173, ptr %t172)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s1)
  br label %bb64
bb64:
  br label %bb2
bb65:
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPromise_26_3e_2eToArr_H644015b27d5daf4fb4fcf02905144e4c(ptr %v1, ptr %v1, ptr %t175)
  store { i64, ptr } %t177, ptr %l80
  br label %bb66
bb66:
  %t178 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t179 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t178, 1
  store { i32, { i64, ptr } } %t179, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/diagmsg:Msg" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l14 = alloca i64
  %l18 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i32
  %l25 = alloca i64
  %t15 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 4
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Parser", ptr %t5, i32 0, i32 5
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load i32, ptr %l1, !tbaa !23
  %t11 = sext i32 %t9 to i64
  %t14 = sext i32 %a2 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 0
  store i64 3, ptr %t16
  %t18 = insertvalue { i64, i64, i64 } undef, i64 %t8, 0
  %t20 = insertvalue { i64, i64, i64 } %t18, i64 %t11, 1
  %t22 = insertvalue { i64, i64, i64 } %t20, i64 %t14, 2
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  store { i64, i64, i64 } %t22, ptr %t23
  %t24 = load { i64, [3 x i64] }, ptr %t15
  %t29 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %t4, { i64, [3 x i64] } %t24, %"compiler/diagmsg:Msg" %a3)
  store i64 %t29, ptr %l14
  br label %bb1
bb1:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/parse:Parser", ptr %t30, i32 0, i32 28
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2eHas_3cI32_2c_20I64_3e(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t36, ptr %l18
  br label %bb2
bb2:
  %t37 = load i1, ptr %l18, !tbaa !21
  %t38 = xor i1 %t37, true
  br i1 %t38, label %bb3, label %bb4
bb3:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/parse:Parser", ptr %t40, i32 0, i32 28
  store ptr %t42, ptr %l21, !tbaa !29
  %t43 = load i32, ptr %l1, !tbaa !23
  store i32 %t43, ptr %l22, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/parse:Parser", ptr %t44, i32 0, i32 26
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t46)
  store i64 %t48, ptr %l25
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t49 = load i64, ptr %l25, !tbaa !24
  %t50 = sub i64 %t49, 1
  %t51 = load ptr, ptr %l21, !tbaa !29
  %t52 = load i32, ptr %l22, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2ePut_3cI32_2c_20I64_3e(ptr %v0, ptr %t51, i32 %t52, i64 %t50)
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l8 = alloca i32
  %l12 = alloca i1
  %l16 = alloca i1
  %l20 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l42 = alloca i1
  %rv = alloca { i32, i1 }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t1, i32 75)
  store i1 %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load i1, ptr %l5, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t10 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etrailing(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l8
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  br label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb6
bb5:
  %t13 = load i32, ptr %l8, !tbaa !23
  %t14 = lshr i32 %t13, 16
  %t15 = and i32 %t13, 65535
  %t16 = icmp eq i32 %t14, 1
  %t17 = select i1 %t16, i32 1, i32 0
  %t18 = icmp eq i32 %t13, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t15
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t23 = insertvalue { i32, i1 } zeroinitializer, i32 %t21, 0
  store { i32, i1 } %t23, ptr %rv
  br label %ret
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t28 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l12
  br label %bb7
bb7:
  %t29 = load i1, ptr %l12, !tbaa !21
  %t30 = xor i1 %t29, true
  %t32 = insertvalue { i32, i1 } zeroinitializer, i1 %t30, 1
  store { i32, i1 } %t32, ptr %rv
  br label %ret
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t36 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t33, i32 8)
  store i1 %t36, ptr %l16
  br label %bb9
bb9:
  %t37 = load i1, ptr %l16, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t38)
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t44 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t44, ptr %l20
  br label %bb13
bb13:
  %t45 = load i1, ptr %l20, !tbaa !21
  %t46 = xor i1 %t45, true
  %t48 = insertvalue { i32, i1 } zeroinitializer, i1 %t46, 1
  store { i32, i1 } %t48, ptr %rv
  br label %ret
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/parse:Parser", ptr %t49, i32 0, i32 9
  %t52 = load i32, ptr %t51, !range !{i32 0, i32 114}
  store i32 %t52, ptr %l2
  %t54 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t56 = trunc i64 113 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb17
bb16:
  %t59 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t61 = trunc i64 99 to i32
  %t62 = icmp eq i32 %t59, %t61
  store i1 %t62, ptr %l26, !tbaa !21
  br label %bb17
bb17:
  %t64 = load i1, ptr %l26, !tbaa !21
  br i1 %t64, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb20
bb19:
  %t65 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t67 = trunc i64 101 to i32
  %t68 = icmp eq i32 %t65, %t67
  store i1 %t68, ptr %l29, !tbaa !21
  br label %bb20
bb20:
  %t70 = load i1, ptr %l29, !tbaa !21
  br i1 %t70, label %bb21, label %bb22
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t71)
  store i1 %t73, ptr %l34
  br label %bb23
bb22:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb24
bb23:
  %t74 = load i1, ptr %l34, !tbaa !21
  store i1 %t74, ptr %l32, !tbaa !21
  br label %bb24
bb24:
  %t75 = load i1, ptr %l32, !tbaa !21
  br i1 %t75, label %bb25, label %bb26
bb25:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t80 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t76, i32 %t77)
  store i1 %t80, ptr %l37
  br label %bb27
bb26:
  br label %bb32
bb27:
  %t81 = load i1, ptr %l37, !tbaa !21
  %t82 = xor i1 %t81, true
  br i1 %t82, label %bb28, label %bb29
bb28:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t87 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t84, i32 0)
  store i1 %t87, ptr %l42
  br label %bb30
bb29:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb31
bb30:
  %t88 = load i1, ptr %l42, !tbaa !21
  %t89 = xor i1 %t88, true
  store i1 %t89, ptr %l39, !tbaa !21
  br label %bb31
bb31:
  %t91 = load i1, ptr %l39, !tbaa !21
  %t92 = insertvalue { i32, i1 } zeroinitializer, i1 %t91, 1
  store { i32, i1 } %t92, ptr %rv
  br label %ret
bb32:
  %t94 = insertvalue { i32, i1 } zeroinitializer, i1 false, 1
  store { i32, i1 } %t94, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i1 }, ptr %rv
  ret { i32, i1 } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2estmt(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca ptr
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca %"compiler/source:Span"
  %l38 = alloca i32
  %l41 = alloca i1
  %l43 = alloca i1
  %l44 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca i32
  %l51 = alloca i32
  %l54 = alloca ptr
  %l56 = alloca ptr
  %l57 = alloca i32
  %l62 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca i32
  %l70 = alloca i32
  %l74 = alloca i32
  %l75 = alloca ptr
  %l78 = alloca ptr
  %l79 = alloca i32
  %l84 = alloca i32
  %l85 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l88 = alloca i32
  %l90 = alloca i32
  %l93 = alloca i32
  %l94 = alloca i32
  %l96 = alloca ptr
  %l98 = alloca ptr
  %l99 = alloca i32
  %l103 = alloca %"compiler/source:Span"
  %l105 = alloca i32
  %l114 = alloca ptr
  %l116 = alloca ptr
  %l117 = alloca i32
  %l121 = alloca %"compiler/source:Span"
  %l124 = alloca i1
  %l126 = alloca i32
  %l134 = alloca i32
  %l139 = alloca i1
  %l141 = alloca i1
  %l144 = alloca ptr
  %l146 = alloca ptr
  %l147 = alloca i32
  %l149 = alloca { i64, ptr }
  %l151 = alloca i1
  %l153 = alloca ptr
  %l155 = alloca i32
  %l156 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l159 = alloca i32
  %l163 = alloca %"compiler/source:Span"
  %l165 = alloca i32
  %l174 = alloca i32
  %l175 = alloca ptr
  %l177 = alloca ptr
  %l178 = alloca i32
  %l182 = alloca %"compiler/source:Span"
  %l184 = alloca i32
  %l193 = alloca i32
  %l194 = alloca ptr
  %l196 = alloca ptr
  %l197 = alloca i32
  %l201 = alloca %"compiler/source:Span"
  %l203 = alloca i32
  %l216 = alloca i32
  %l218 = alloca i32
  %l221 = alloca i1
  %l223 = alloca i1
  %l225 = alloca ptr
  %l227 = alloca ptr
  %l228 = alloca i32
  %l233 = alloca %"compiler/source:Span"
  %l235 = alloca i32
  %l245 = alloca i32
  %l246 = alloca ptr
  %l248 = alloca ptr
  %l249 = alloca i32
  %l253 = alloca i1
  %l254 = alloca ptr
  %l256 = alloca ptr
  %l257 = alloca i32
  %l262 = alloca %"compiler/source:Span"
  %l264 = alloca i32
  %l274 = alloca i32
  %l275 = alloca ptr
  %l277 = alloca ptr
  %l278 = alloca i32
  %l282 = alloca i1
  %l283 = alloca { i64, ptr }
  %l285 = alloca { i64, ptr }
  %l286 = alloca i32
  %l291 = alloca %"compiler/source:Span"
  %l293 = alloca i32
  %l304 = alloca i32
  %l307 = alloca i64
  %l309 = alloca ptr
  %l310 = alloca ptr
  %l312 = alloca ptr
  %l313 = alloca i32
  %l317 = alloca i1
  %l321 = alloca i1
  %l325 = alloca { i64, ptr }
  %l329 = alloca ptr
  %l331 = alloca i32
  %l332 = alloca ptr
  %l334 = alloca ptr
  %l335 = alloca i32
  %l339 = alloca %"compiler/source:Span"
  %l341 = alloca i32
  %l350 = alloca i64
  %l357 = alloca ptr
  %l359 = alloca { i64, ptr }
  %l361 = alloca i32
  %l366 = alloca ptr
  %l372 = alloca %"compiler/source:Span"
  %l374 = alloca i32
  %l376 = alloca %"compiler/source:Span"
  %l385 = alloca ptr
  %l387 = alloca ptr
  %l388 = alloca i32
  %l392 = alloca %"compiler/source:Span"
  %l402 = alloca i1
  %l404 = alloca i32
  %l407 = alloca i1
  %l408 = alloca { i64, ptr }
  %l410 = alloca { i64, ptr }
  %l411 = alloca i32
  %l415 = alloca %"compiler/source:Span"
  %l418 = alloca i1
  %l420 = alloca i32
  %l429 = alloca ptr
  %l431 = alloca ptr
  %l432 = alloca i32
  %l436 = alloca %"compiler/source:Span"
  %l443 = alloca { i64, ptr }
  %l445 = alloca { i64, ptr }
  %l446 = alloca i32
  %l450 = alloca %"compiler/source:Span"
  %l453 = alloca i1
  %l455 = alloca i32
  %l462 = alloca ptr
  %l464 = alloca ptr
  %l465 = alloca i32
  %l469 = alloca ptr
  %l471 = alloca ptr
  %l472 = alloca i32
  %l474 = alloca ptr
  %l476 = alloca ptr
  %l477 = alloca i32
  %s25 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t228 = alloca { i64, [4 x i64] }, align 8
  %t283 = alloca { i64, [4 x i64] }, align 8
  %t408 = alloca { i64, [4 x i64] }, align 8
  %t472 = alloca { i64, [4 x i64] }, align 8
  %t536 = alloca { i64, [4 x i64] }, align 8
  %t628 = alloca { i64, [4 x i64] }, align 8
  %t721 = alloca { i64, [4 x i64] }, align 8
  %t815 = alloca { i64, [4 x i64] }, align 8
  %t945 = alloca { i64, [4 x i64] }, align 8
  %t1048 = alloca { i64, [4 x i64] }, align 8
  %t1093 = alloca { i64, [4 x i64] }, align 8
  %t1165 = alloca { i64, [4 x i64] }, align 8
  %t1176 = alloca { i64, [4 x i64] }, align 8
  %t1217 = alloca { i64, [4 x i64] }, align 8
  %t1272 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l38
  br label %bb1
bb1:
  %t4 = load i32, ptr %l38, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Parser", ptr %t5, i32 0, i32 12
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekeywordFieldHere(ptr %v0, ptr %t10)
  store i1 %t12, ptr %l43
  br label %bb4
bb3:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb5
bb4:
  %t13 = load i1, ptr %l43, !tbaa !21
  store i1 %t13, ptr %l41, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l41, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efieldDecl(ptr %v0, ptr %v1, ptr %t15)
  %t18 = extractvalue { i32, ptr } %t17, 1
  %t19 = extractvalue { i32, ptr } %t17, 0
  store i32 %t19, ptr %l47
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb9, label %ok.21, !prof !99
ok.21:
  store ptr %t18, ptr %l46
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t22 = load ptr, ptr %l46, !tbaa !29
  store ptr %t22, ptr %l44, !tbaa !29
  br label %bb10
bb9:
  %t23 = load i32, ptr %l47, !tbaa !23
  %t24 = lshr i32 %t23, 16
  %t25 = and i32 %t23, 65535
  %t26 = icmp eq i32 %t24, 1
  %t27 = select i1 %t26, i32 1, i32 0
  %t28 = icmp eq i32 %t23, 0
  %t29 = shl i32 %t27, 16
  %t30 = or i32 %t29, %t25
  %t31 = select i1 %t28, i32 0, i32 %t30
  %t33 = insertvalue { i32, ptr } zeroinitializer, i32 %t31, 0
  store { i32, ptr } %t33, ptr %rv
  br label %ret
bb10:
  %t34 = load ptr, ptr %l44, !tbaa !29
  %t35 = insertvalue { i32, ptr } zeroinitializer, ptr %t34, 1
  store { i32, ptr } %t35, ptr %rv
  br label %ret
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2estmtRoom(ptr %v0, ptr %t36)
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t38)
  store i32 %t40, ptr %l51
  br label %bb13
bb13:
  %t41 = load i32, ptr %l51, !range !{i32 0, i32 114}
  store i32 %t41, ptr %l2
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t44 = trunc i64 9 to i32
  %t45 = icmp eq i32 %t42, %t44
  br i1 %t45, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eifStmt(ptr %v0, ptr %v1, ptr %t47)
  %t50 = extractvalue { i32, ptr } %t49, 1
  %t51 = extractvalue { i32, ptr } %t49, 0
  store i32 %t51, ptr %l57
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb18, label %ok.53, !prof !99
ok.53:
  store ptr %t50, ptr %l56
  br label %bb17
bb17:
  %t54 = load ptr, ptr %l56, !tbaa !29
  store ptr %t54, ptr %l54, !tbaa !29
  br label %bb19
bb18:
  %t55 = load i32, ptr %l57, !tbaa !23
  %t56 = lshr i32 %t55, 16
  %t57 = and i32 %t55, 65535
  %t58 = icmp eq i32 %t56, 1
  %t59 = select i1 %t58, i32 1, i32 0
  %t60 = icmp eq i32 %t55, 0
  %t61 = shl i32 %t59, 16
  %t62 = or i32 %t61, %t57
  %t63 = select i1 %t60, i32 0, i32 %t62
  %t65 = insertvalue { i32, ptr } zeroinitializer, i32 %t63, 0
  store { i32, ptr } %t65, ptr %rv
  br label %ret
bb19:
  %t66 = load ptr, ptr %l54, !tbaa !29
  %t69 = insertvalue { i32, ptr } zeroinitializer, ptr %t66, 1
  store { i32, ptr } %t69, ptr %rv
  br label %ret
bb20:
  %t70 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t72 = trunc i64 25 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eforStmt(ptr %v0, ptr %v1, ptr %t75, i32 -1)
  %t78 = extractvalue { i32, ptr } %t77, 1
  %t79 = extractvalue { i32, ptr } %t77, 0
  store i32 %t79, ptr %l65
  %t80 = icmp ne i32 %t79, 0
  br i1 %t80, label %bb25, label %ok.81, !prof !99
ok.81:
  store ptr %t78, ptr %l64
  br label %bb24
bb24:
  %t82 = load ptr, ptr %l64, !tbaa !29
  store ptr %t82, ptr %l62, !tbaa !29
  br label %bb26
bb25:
  %t83 = load i32, ptr %l65, !tbaa !23
  %t84 = lshr i32 %t83, 16
  %t85 = and i32 %t83, 65535
  %t86 = icmp eq i32 %t84, 1
  %t87 = select i1 %t86, i32 1, i32 0
  %t88 = icmp eq i32 %t83, 0
  %t89 = shl i32 %t87, 16
  %t90 = or i32 %t89, %t85
  %t91 = select i1 %t88, i32 0, i32 %t90
  %t93 = insertvalue { i32, ptr } zeroinitializer, i32 %t91, 0
  store { i32, ptr } %t93, ptr %rv
  br label %ret
bb26:
  %t94 = load ptr, ptr %l62, !tbaa !29
  %t95 = insertvalue { i32, ptr } zeroinitializer, ptr %t94, 1
  store { i32, ptr } %t95, ptr %rv
  br label %ret
bb27:
  %t96 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t98 = trunc i64 51 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb38
bb30:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t101, i64 1)
  store i32 %t103, ptr %l70
  br label %bb31
bb31:
  %t104 = load i32, ptr %l70, !range !{i32 0, i32 114}
  %t106 = trunc i64 25 to i32
  %t107 = icmp eq i32 %t104, %t106
  br i1 %t107, label %bb32, label %bb33
bb32:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t109)
  store i32 %t111, ptr %l74
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l1, !tbaa !23
  %t116 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eforStmt(ptr %v0, ptr %v1, ptr %t112, i32 %t113)
  %t117 = extractvalue { i32, ptr } %t116, 1
  %t118 = extractvalue { i32, ptr } %t116, 0
  store i32 %t118, ptr %l79
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb36, label %ok.120, !prof !99
ok.120:
  store ptr %t117, ptr %l78
  br label %bb35
bb35:
  %t121 = load ptr, ptr %l78, !tbaa !29
  store ptr %t121, ptr %l75, !tbaa !29
  br label %bb37
bb36:
  %t122 = load i32, ptr %l79, !tbaa !23
  %t123 = lshr i32 %t122, 16
  %t124 = and i32 %t122, 65535
  %t125 = icmp eq i32 %t123, 1
  %t126 = select i1 %t125, i32 1, i32 0
  %t127 = icmp eq i32 %t122, 0
  %t128 = shl i32 %t126, 16
  %t129 = or i32 %t128, %t124
  %t130 = select i1 %t127, i32 0, i32 %t129
  %t132 = insertvalue { i32, ptr } zeroinitializer, i32 %t130, 0
  store { i32, ptr } %t132, ptr %rv
  br label %ret
bb37:
  %t133 = load ptr, ptr %l75, !tbaa !29
  %t134 = insertvalue { i32, ptr } zeroinitializer, ptr %t133, 1
  store { i32, ptr } %t134, ptr %rv
  br label %ret
bb38:
  %t135 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t137 = trunc i64 26 to i32
  %t138 = icmp eq i32 %t135, %t137
  br i1 %t138, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb56
bb41:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t140)
  store i32 %t142, ptr %l84
  br label %bb42
bb42:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t143)
  %t146 = extractvalue { i32, { i64, ptr } } %t145, 1
  %t147 = extractvalue { i32, { i64, ptr } } %t145, 0
  store i32 %t147, ptr %l88
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb44, label %ok.149, !prof !99
ok.149:
  store { i64, ptr } %t146, ptr %l87
  br label %bb43
bb43:
  %t150 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t150, ptr %l85, !tbaa !27
  br label %bb45
bb44:
  %t151 = load i32, ptr %l88, !tbaa !23
  %t152 = lshr i32 %t151, 16
  %t153 = and i32 %t151, 65535
  %t154 = icmp eq i32 %t152, 1
  %t155 = select i1 %t154, i32 1, i32 0
  %t156 = icmp eq i32 %t151, 0
  %t157 = shl i32 %t155, 16
  %t158 = or i32 %t157, %t153
  %t159 = select i1 %t156, i32 0, i32 %t158
  %t161 = insertvalue { i32, ptr } zeroinitializer, i32 %t159, 0
  store { i32, ptr } %t161, ptr %rv
  br label %ret
bb45:
  %t162 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t162, ptr %l4, !tbaa !27
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t166 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t163, i32 25)
  %t167 = extractvalue { i32, i32 } %t166, 1
  %t168 = extractvalue { i32, i32 } %t166, 0
  store i32 %t168, ptr %l94
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb47, label %ok.170, !prof !99
ok.170:
  store i32 %t167, ptr %l93
  br label %bb46
bb46:
  %t171 = load i32, ptr %l93, !tbaa !23
  store i32 %t171, ptr %l90, !tbaa !23
  br label %bb48
bb47:
  %t172 = load i32, ptr %l94, !tbaa !23
  %t173 = lshr i32 %t172, 16
  %t174 = and i32 %t172, 65535
  %t175 = icmp eq i32 %t173, 1
  %t176 = select i1 %t175, i32 1, i32 0
  %t177 = icmp eq i32 %t172, 0
  %t178 = shl i32 %t176, 16
  %t179 = or i32 %t178, %t174
  %t180 = select i1 %t177, i32 0, i32 %t179
  %t182 = insertvalue { i32, ptr } zeroinitializer, i32 %t180, 0
  store { i32, ptr } %t182, ptr %rv
  br label %ret
bb48:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t183)
  %t186 = extractvalue { i32, ptr } %t185, 1
  %t187 = extractvalue { i32, ptr } %t185, 0
  store i32 %t187, ptr %l99
  %t188 = icmp ne i32 %t187, 0
  br i1 %t188, label %bb50, label %ok.189, !prof !99
ok.189:
  store ptr %t186, ptr %l98
  br label %bb49
bb49:
  %t190 = load ptr, ptr %l98, !tbaa !29
  store ptr %t190, ptr %l96, !tbaa !29
  br label %bb51
bb50:
  %t191 = load i32, ptr %l99, !tbaa !23
  %t192 = lshr i32 %t191, 16
  %t193 = and i32 %t191, 65535
  %t194 = icmp eq i32 %t192, 1
  %t195 = select i1 %t194, i32 1, i32 0
  %t196 = icmp eq i32 %t191, 0
  %t197 = shl i32 %t195, 16
  %t198 = or i32 %t197, %t193
  %t199 = select i1 %t196, i32 0, i32 %t198
  %t201 = insertvalue { i32, ptr } zeroinitializer, i32 %t199, 0
  store { i32, ptr } %t201, ptr %rv
  br label %ret
bb51:
  %t202 = load ptr, ptr %l96, !tbaa !29
  store ptr %t202, ptr %l5, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i32, ptr %l1, !tbaa !23
  %t207 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t203, i32 %t204)
  store %"compiler/source:Span" %t207, ptr %l103
  br label %bb52
bb52:
  %t208 = load %"compiler/source:Span", ptr %l103
  store %"compiler/source:Span" %t208, ptr %l6
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t209)
  store i32 %t211, ptr %l105
  %t212 = icmp ne i32 %t211, 0
  br i1 %t212, label %bb54, label %ok.213, !prof !99
ok.213:
  br label %bb53
bb53:
  br label %bb55
bb54:
  %t214 = load i32, ptr %l105, !tbaa !23
  %t215 = lshr i32 %t214, 16
  %t216 = and i32 %t214, 65535
  %t217 = icmp eq i32 %t215, 1
  %t218 = select i1 %t217, i32 1, i32 0
  %t219 = icmp eq i32 %t214, 0
  %t220 = shl i32 %t218, 16
  %t221 = or i32 %t220, %t216
  %t222 = select i1 %t219, i32 0, i32 %t221
  %t224 = insertvalue { i32, ptr } zeroinitializer, i32 %t222, 0
  store { i32, ptr } %t224, ptr %rv
  br label %ret
bb55:
  %t225 = load %"compiler/source:Span", ptr %l6
  %t226 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t227 = load ptr, ptr %l5, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t228
  %t229 = getelementptr { i64, [4 x i64] }, ptr %t228, i32 0, i32 0
  store i64 10, ptr %t229
  %t231 = insertvalue { %"compiler/source:Span", { i64, ptr }, ptr } undef, %"compiler/source:Span" %t225, 0
  %t233 = insertvalue { %"compiler/source:Span", { i64, ptr }, ptr } %t231, { i64, ptr } %t226, 1
  %t235 = insertvalue { %"compiler/source:Span", { i64, ptr }, ptr } %t233, ptr %t227, 2
  %t236 = getelementptr { i64, [4 x i64] }, ptr %t228, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, ptr } %t235, ptr %t236
  %t237 = load { i64, [4 x i64] }, ptr %t228
  %t239 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t237, ptr %t239
  %t241 = insertvalue { i32, ptr } zeroinitializer, ptr %t239, 1
  store { i32, ptr } %t241, ptr %rv
  br label %ret
bb56:
  %t242 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t244 = trunc i64 31 to i32
  %t245 = icmp eq i32 %t242, %t244
  br i1 %t245, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb69
bb59:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ematchBody(ptr %v0, ptr %v1, ptr %t247, i1 false)
  %t250 = extractvalue { i32, ptr } %t249, 1
  %t251 = extractvalue { i32, ptr } %t249, 0
  store i32 %t251, ptr %l117
  %t252 = icmp ne i32 %t251, 0
  br i1 %t252, label %bb61, label %ok.253, !prof !99
ok.253:
  store ptr %t250, ptr %l116
  br label %bb60
bb60:
  %t254 = load ptr, ptr %l116, !tbaa !29
  store ptr %t254, ptr %l114, !tbaa !29
  br label %bb62
bb61:
  %t255 = load i32, ptr %l117, !tbaa !23
  %t256 = lshr i32 %t255, 16
  %t257 = and i32 %t255, 65535
  %t258 = icmp eq i32 %t256, 1
  %t259 = select i1 %t258, i32 1, i32 0
  %t260 = icmp eq i32 %t255, 0
  %t261 = shl i32 %t259, 16
  %t262 = or i32 %t261, %t257
  %t263 = select i1 %t260, i32 0, i32 %t262
  %t265 = insertvalue { i32, ptr } zeroinitializer, i32 %t263, 0
  store { i32, ptr } %t265, ptr %rv
  br label %ret
bb62:
  %t266 = load ptr, ptr %l114, !tbaa !29
  store ptr %t266, ptr %l7, !tbaa !29
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l1, !tbaa !23
  %t271 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t267, i32 %t268)
  store %"compiler/source:Span" %t271, ptr %l121
  br label %bb63
bb63:
  %t272 = load %"compiler/source:Span", ptr %l121
  store %"compiler/source:Span" %t272, ptr %l8
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t276 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t273, i32 8)
  store i1 %t276, ptr %l124
  br label %bb64
bb64:
  %t277 = load i1, ptr %l124, !tbaa !21
  br i1 %t277, label %bb65, label %bb66
bb65:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t278)
  store i32 %t280, ptr %l126
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb68
bb68:
  %t281 = load %"compiler/source:Span", ptr %l8
  %t282 = load ptr, ptr %l7, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t283
  %t284 = getelementptr { i64, [4 x i64] }, ptr %t283, i32 0, i32 0
  store i64 11, ptr %t284
  %t286 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t281, 0
  %t288 = insertvalue { %"compiler/source:Span", ptr } %t286, ptr %t282, 1
  %t289 = getelementptr { i64, [4 x i64] }, ptr %t283, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t288, ptr %t289
  %t290 = load { i64, [4 x i64] }, ptr %t283
  %t292 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t290, ptr %t292
  %t294 = insertvalue { i32, ptr } zeroinitializer, ptr %t292, 1
  store { i32, ptr } %t294, ptr %rv
  br label %ret
bb69:
  %t295 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t297 = trunc i64 13 to i32
  %t298 = icmp eq i32 %t295, %t297
  br i1 %t298, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb100
bb72:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t300)
  store i32 %t302, ptr %l134
  br label %bb73
bb73:
  %t303 = icmp sge i64 0, 0
  br i1 %t303, label %bb74, label %bb75
bb74:
  %t305 = icmp sle i64 0, 1152921504606846975
  br i1 %t305, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_405430454c9e5d04_720bbb7e3dc9fd0)
  unreachable
bb76:
  %t307 = mul i64 0, 8
  %t308 = insertvalue { i64, ptr } undef, i64 0, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t309, ptr %l9, !tbaa !27
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eatEnd(ptr %v0, ptr %t311)
  store i1 %t313, ptr %l139
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_405430454c9e5d04_720bbb7e3dc9fd0)
  unreachable
bb78:
  %t314 = load i1, ptr %l139, !tbaa !21
  %t315 = xor i1 %t314, true
  br i1 %t315, label %bb79, label %bb80
bb79:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/parse:Parser", ptr %t317, i32 0, i32 15
  %t320 = load i1, ptr %t319, !tbaa !21
  store i1 %t320, ptr %l141, !tbaa !21
  br label %bb81
bb80:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb81
bb81:
  %t322 = load i1, ptr %l141, !tbaa !21
  br i1 %t322, label %bb82, label %bb83
bb82:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t323)
  %t326 = extractvalue { i32, ptr } %t325, 1
  %t327 = extractvalue { i32, ptr } %t325, 0
  store i32 %t327, ptr %l147
  %t328 = icmp ne i32 %t327, 0
  br i1 %t328, label %bb85, label %ok.329, !prof !99
ok.329:
  store ptr %t326, ptr %l146
  br label %bb84
bb83:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eatEnd(ptr %v0, ptr %t330)
  store i1 %t332, ptr %l151
  br label %bb87
bb84:
  %t333 = load ptr, ptr %l146, !tbaa !29
  store ptr %t333, ptr %l144, !tbaa !29
  br label %bb86
bb85:
  %t334 = load i32, ptr %l147, !tbaa !23
  %t335 = lshr i32 %t334, 16
  %t336 = and i32 %t334, 65535
  %t337 = icmp eq i32 %t335, 1
  %t338 = select i1 %t337, i32 1, i32 0
  %t339 = icmp eq i32 %t334, 0
  %t340 = shl i32 %t338, 16
  %t341 = or i32 %t340, %t336
  %t342 = select i1 %t339, i32 0, i32 %t341
  %t344 = insertvalue { i32, ptr } zeroinitializer, i32 %t342, 0
  store { i32, ptr } %t344, ptr %rv
  br label %ret
bb86:
  %t345 = mul i64 1, 8
  %t346 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t345)
  %t347 = insertvalue { i64, ptr } undef, i64 1, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  store { i64, ptr } %t348, ptr %l149, !tbaa !27
  %t349 = load ptr, ptr %l144, !tbaa !29
  %t350 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !27
  %t352 = getelementptr ptr, ptr %t351, i64 0
  store ptr %t349, ptr %t352, !tbaa !39
  %t353 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t353, ptr %l9, !tbaa !27
  br label %bb95
bb87:
  %t354 = load i1, ptr %l151, !tbaa !21
  %t355 = xor i1 %t354, true
  br i1 %t355, label %bb88, label %bb89
bb88:
  %t357 = load ptr, ptr %l0, !tbaa !29
  store ptr %t357, ptr %l153, !tbaa !29
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t358)
  store i32 %t360, ptr %l155
  br label %bb90
bb89:
  br label %bb94
bb90:
  %t361 = load i32, ptr %l155, !tbaa !23
  %t362 = load ptr, ptr %l153, !tbaa !29
  %t363 = getelementptr %"compiler/parse:Parser", ptr %t362, i32 0, i32 25
  store i32 %t361, ptr %t363, !tbaa !23
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprList(ptr %v0, ptr %v1, ptr %t364)
  %t367 = extractvalue { i32, { i64, ptr } } %t366, 1
  %t368 = extractvalue { i32, { i64, ptr } } %t366, 0
  store i32 %t368, ptr %l159
  %t369 = icmp ne i32 %t368, 0
  br i1 %t369, label %bb92, label %ok.370, !prof !99
ok.370:
  store { i64, ptr } %t367, ptr %l158
  br label %bb91
bb91:
  %t371 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t371, ptr %l156, !tbaa !27
  br label %bb93
bb92:
  %t372 = load i32, ptr %l159, !tbaa !23
  %t373 = lshr i32 %t372, 16
  %t374 = and i32 %t372, 65535
  %t375 = icmp eq i32 %t373, 1
  %t376 = select i1 %t375, i32 1, i32 0
  %t377 = icmp eq i32 %t372, 0
  %t378 = shl i32 %t376, 16
  %t379 = or i32 %t378, %t374
  %t380 = select i1 %t377, i32 0, i32 %t379
  %t382 = insertvalue { i32, ptr } zeroinitializer, i32 %t380, 0
  store { i32, ptr } %t382, ptr %rv
  br label %ret
bb93:
  %t383 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t383, ptr %l9, !tbaa !27
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load i32, ptr %l1, !tbaa !23
  %t388 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t384, i32 %t385)
  store %"compiler/source:Span" %t388, ptr %l163
  br label %bb96
bb96:
  %t389 = load %"compiler/source:Span", ptr %l163
  store %"compiler/source:Span" %t389, ptr %l10
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t392 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t390)
  store i32 %t392, ptr %l165
  %t393 = icmp ne i32 %t392, 0
  br i1 %t393, label %bb98, label %ok.394, !prof !99
ok.394:
  br label %bb97
bb97:
  br label %bb99
bb98:
  %t395 = load i32, ptr %l165, !tbaa !23
  %t396 = lshr i32 %t395, 16
  %t397 = and i32 %t395, 65535
  %t398 = icmp eq i32 %t396, 1
  %t399 = select i1 %t398, i32 1, i32 0
  %t400 = icmp eq i32 %t395, 0
  %t401 = shl i32 %t399, 16
  %t402 = or i32 %t401, %t397
  %t403 = select i1 %t400, i32 0, i32 %t402
  %t405 = insertvalue { i32, ptr } zeroinitializer, i32 %t403, 0
  store { i32, ptr } %t405, ptr %rv
  br label %ret
bb99:
  %t406 = load %"compiler/source:Span", ptr %l10
  %t407 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t408
  %t409 = getelementptr { i64, [4 x i64] }, ptr %t408, i32 0, i32 0
  store i64 12, ptr %t409
  %t411 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t406, 0
  %t413 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t411, { i64, ptr } %t407, 1
  %t414 = getelementptr { i64, [4 x i64] }, ptr %t408, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t413, ptr %t414
  %t415 = load { i64, [4 x i64] }, ptr %t408
  %t417 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t415, ptr %t417
  %t419 = insertvalue { i32, ptr } zeroinitializer, ptr %t417, 1
  store { i32, ptr } %t419, ptr %rv
  br label %ret
bb100:
  %t420 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t422 = trunc i64 50 to i32
  %t423 = icmp eq i32 %t420, %t422
  br i1 %t423, label %bb101, label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb112
bb103:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t425)
  store i32 %t427, ptr %l174
  br label %bb104
bb104:
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t428)
  %t431 = extractvalue { i32, ptr } %t430, 1
  %t432 = extractvalue { i32, ptr } %t430, 0
  store i32 %t432, ptr %l178
  %t433 = icmp ne i32 %t432, 0
  br i1 %t433, label %bb106, label %ok.434, !prof !99
ok.434:
  store ptr %t431, ptr %l177
  br label %bb105
bb105:
  %t435 = load ptr, ptr %l177, !tbaa !29
  store ptr %t435, ptr %l175, !tbaa !29
  br label %bb107
bb106:
  %t436 = load i32, ptr %l178, !tbaa !23
  %t437 = lshr i32 %t436, 16
  %t438 = and i32 %t436, 65535
  %t439 = icmp eq i32 %t437, 1
  %t440 = select i1 %t439, i32 1, i32 0
  %t441 = icmp eq i32 %t436, 0
  %t442 = shl i32 %t440, 16
  %t443 = or i32 %t442, %t438
  %t444 = select i1 %t441, i32 0, i32 %t443
  %t446 = insertvalue { i32, ptr } zeroinitializer, i32 %t444, 0
  store { i32, ptr } %t446, ptr %rv
  br label %ret
bb107:
  %t447 = load ptr, ptr %l175, !tbaa !29
  store ptr %t447, ptr %l11, !tbaa !29
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load i32, ptr %l1, !tbaa !23
  %t452 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t448, i32 %t449)
  store %"compiler/source:Span" %t452, ptr %l182
  br label %bb108
bb108:
  %t453 = load %"compiler/source:Span", ptr %l182
  store %"compiler/source:Span" %t453, ptr %l12
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t454)
  store i32 %t456, ptr %l184
  %t457 = icmp ne i32 %t456, 0
  br i1 %t457, label %bb110, label %ok.458, !prof !99
ok.458:
  br label %bb109
bb109:
  br label %bb111
bb110:
  %t459 = load i32, ptr %l184, !tbaa !23
  %t460 = lshr i32 %t459, 16
  %t461 = and i32 %t459, 65535
  %t462 = icmp eq i32 %t460, 1
  %t463 = select i1 %t462, i32 1, i32 0
  %t464 = icmp eq i32 %t459, 0
  %t465 = shl i32 %t463, 16
  %t466 = or i32 %t465, %t461
  %t467 = select i1 %t464, i32 0, i32 %t466
  %t469 = insertvalue { i32, ptr } zeroinitializer, i32 %t467, 0
  store { i32, ptr } %t469, ptr %rv
  br label %ret
bb111:
  %t470 = load %"compiler/source:Span", ptr %l12
  %t471 = load ptr, ptr %l11, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t472
  %t473 = getelementptr { i64, [4 x i64] }, ptr %t472, i32 0, i32 0
  store i64 15, ptr %t473
  %t475 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t470, 0
  %t477 = insertvalue { %"compiler/source:Span", ptr } %t475, ptr %t471, 1
  %t478 = getelementptr { i64, [4 x i64] }, ptr %t472, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t477, ptr %t478
  %t479 = load { i64, [4 x i64] }, ptr %t472
  %t481 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t479, ptr %t481
  %t483 = insertvalue { i32, ptr } zeroinitializer, ptr %t481, 1
  store { i32, ptr } %t483, ptr %rv
  br label %ret
bb112:
  %t484 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t486 = trunc i64 49 to i32
  %t487 = icmp eq i32 %t484, %t486
  br i1 %t487, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb124
bb115:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t491 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t489)
  store i32 %t491, ptr %l193
  br label %bb116
bb116:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t494 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t492)
  %t495 = extractvalue { i32, ptr } %t494, 1
  %t496 = extractvalue { i32, ptr } %t494, 0
  store i32 %t496, ptr %l197
  %t497 = icmp ne i32 %t496, 0
  br i1 %t497, label %bb118, label %ok.498, !prof !99
ok.498:
  store ptr %t495, ptr %l196
  br label %bb117
bb117:
  %t499 = load ptr, ptr %l196, !tbaa !29
  store ptr %t499, ptr %l194, !tbaa !29
  br label %bb119
bb118:
  %t500 = load i32, ptr %l197, !tbaa !23
  %t501 = lshr i32 %t500, 16
  %t502 = and i32 %t500, 65535
  %t503 = icmp eq i32 %t501, 1
  %t504 = select i1 %t503, i32 1, i32 0
  %t505 = icmp eq i32 %t500, 0
  %t506 = shl i32 %t504, 16
  %t507 = or i32 %t506, %t502
  %t508 = select i1 %t505, i32 0, i32 %t507
  %t510 = insertvalue { i32, ptr } zeroinitializer, i32 %t508, 0
  store { i32, ptr } %t510, ptr %rv
  br label %ret
bb119:
  %t511 = load ptr, ptr %l194, !tbaa !29
  store ptr %t511, ptr %l13, !tbaa !29
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t513 = load i32, ptr %l1, !tbaa !23
  %t516 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t512, i32 %t513)
  store %"compiler/source:Span" %t516, ptr %l201
  br label %bb120
bb120:
  %t517 = load %"compiler/source:Span", ptr %l201
  store %"compiler/source:Span" %t517, ptr %l14
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t520 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t518)
  store i32 %t520, ptr %l203
  %t521 = icmp ne i32 %t520, 0
  br i1 %t521, label %bb122, label %ok.522, !prof !99
ok.522:
  br label %bb121
bb121:
  br label %bb123
bb122:
  %t523 = load i32, ptr %l203, !tbaa !23
  %t524 = lshr i32 %t523, 16
  %t525 = and i32 %t523, 65535
  %t526 = icmp eq i32 %t524, 1
  %t527 = select i1 %t526, i32 1, i32 0
  %t528 = icmp eq i32 %t523, 0
  %t529 = shl i32 %t527, 16
  %t530 = or i32 %t529, %t525
  %t531 = select i1 %t528, i32 0, i32 %t530
  %t533 = insertvalue { i32, ptr } zeroinitializer, i32 %t531, 0
  store { i32, ptr } %t533, ptr %rv
  br label %ret
bb123:
  %t534 = load %"compiler/source:Span", ptr %l14
  %t535 = load ptr, ptr %l13, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t536
  %t537 = getelementptr { i64, [4 x i64] }, ptr %t536, i32 0, i32 0
  store i64 21, ptr %t537
  %t539 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t534, 0
  %t541 = insertvalue { %"compiler/source:Span", ptr } %t539, ptr %t535, 1
  %t542 = getelementptr { i64, [4 x i64] }, ptr %t536, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t541, ptr %t542
  %t543 = load { i64, [4 x i64] }, ptr %t536
  %t545 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t543, ptr %t545
  %t547 = insertvalue { i32, ptr } zeroinitializer, ptr %t545, 1
  store { i32, ptr } %t547, ptr %rv
  br label %ret
bb124:
  %t548 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t550 = trunc i64 19 to i32
  %t551 = icmp eq i32 %t548, %t550
  br i1 %t551, label %bb125, label %bb126
bb125:
  br label %bb131
bb126:
  %t553 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t555 = trunc i64 20 to i32
  %t556 = icmp eq i32 %t553, %t555
  br i1 %t556, label %bb127, label %bb128
bb127:
  br label %bb131
bb128:
  %t558 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t560 = trunc i64 21 to i32
  %t561 = icmp eq i32 %t558, %t560
  br i1 %t561, label %bb129, label %bb130
bb129:
  br label %bb131
bb130:
  br label %bb148
bb131:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t565 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t563)
  store i32 %t565, ptr %l216
  br label %bb132
bb132:
  %t566 = load i32, ptr %l216, !range !{i32 0, i32 114}
  store i32 %t566, ptr %l15
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t569 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t567)
  store i32 %t569, ptr %l218
  br label %bb133
bb133:
  store ptr null, ptr %l16, !tbaa !29
  %t570 = load i32, ptr %l15, !range !{i32 0, i32 114}
  %t572 = trunc i64 21 to i32
  %t573 = icmp eq i32 %t570, %t572
  br i1 %t573, label %bb134, label %bb135
bb134:
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t577 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eatEnd(ptr %v0, ptr %t575)
  store i1 %t577, ptr %l223
  br label %bb136
bb135:
  store i1 false, ptr %l221, !tbaa !21
  br label %bb137
bb136:
  %t578 = load i1, ptr %l223, !tbaa !21
  %t579 = xor i1 %t578, true
  store i1 %t579, ptr %l221, !tbaa !21
  br label %bb137
bb137:
  %t581 = load i1, ptr %l221, !tbaa !21
  br i1 %t581, label %bb138, label %bb139
bb138:
  %t582 = load ptr, ptr %l0, !tbaa !29
  %t584 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t582)
  %t585 = extractvalue { i32, ptr } %t584, 1
  %t586 = extractvalue { i32, ptr } %t584, 0
  store i32 %t586, ptr %l228
  %t587 = icmp ne i32 %t586, 0
  br i1 %t587, label %bb141, label %ok.588, !prof !99
ok.588:
  store ptr %t585, ptr %l227
  br label %bb140
bb139:
  br label %bb143
bb140:
  %t589 = load ptr, ptr %l227, !tbaa !29
  store ptr %t589, ptr %l225, !tbaa !29
  br label %bb142
bb141:
  %t590 = load i32, ptr %l228, !tbaa !23
  %t591 = lshr i32 %t590, 16
  %t592 = and i32 %t590, 65535
  %t593 = icmp eq i32 %t591, 1
  %t594 = select i1 %t593, i32 1, i32 0
  %t595 = icmp eq i32 %t590, 0
  %t596 = shl i32 %t594, 16
  %t597 = or i32 %t596, %t592
  %t598 = select i1 %t595, i32 0, i32 %t597
  %t600 = insertvalue { i32, ptr } zeroinitializer, i32 %t598, 0
  store { i32, ptr } %t600, ptr %rv
  br label %ret
bb142:
  %t601 = load ptr, ptr %l225, !tbaa !29
  store ptr %t601, ptr %l16, !tbaa !29
  br label %bb143
bb143:
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t604 = load i32, ptr %l1, !tbaa !23
  %t607 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t603, i32 %t604)
  store %"compiler/source:Span" %t607, ptr %l233
  br label %bb144
bb144:
  %t608 = load %"compiler/source:Span", ptr %l233
  store %"compiler/source:Span" %t608, ptr %l17
  %t609 = load ptr, ptr %l0, !tbaa !29
  %t611 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t609)
  store i32 %t611, ptr %l235
  %t612 = icmp ne i32 %t611, 0
  br i1 %t612, label %bb146, label %ok.613, !prof !99
ok.613:
  br label %bb145
bb145:
  br label %bb147
bb146:
  %t614 = load i32, ptr %l235, !tbaa !23
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
bb147:
  %t625 = load %"compiler/source:Span", ptr %l17
  %t626 = load i32, ptr %l15, !range !{i32 0, i32 114}
  %t627 = load ptr, ptr %l16, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t628
  %t629 = getelementptr { i64, [4 x i64] }, ptr %t628, i32 0, i32 0
  store i64 13, ptr %t629
  %t631 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t625, 0
  %t633 = insertvalue { %"compiler/source:Span", i32, ptr } %t631, i32 %t626, 1
  %t635 = insertvalue { %"compiler/source:Span", i32, ptr } %t633, ptr %t627, 2
  %t636 = getelementptr { i64, [4 x i64] }, ptr %t628, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t635, ptr %t636
  %t637 = load { i64, [4 x i64] }, ptr %t628
  %t639 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t637, ptr %t639
  %t641 = insertvalue { i32, ptr } zeroinitializer, ptr %t639, 1
  store { i32, ptr } %t641, ptr %rv
  br label %ret
bb148:
  %t642 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t644 = trunc i64 24 to i32
  %t645 = icmp eq i32 %t642, %t644
  br i1 %t645, label %bb149, label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb167
bb151:
  %t647 = load ptr, ptr %l0, !tbaa !29
  %t649 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t647)
  store i32 %t649, ptr %l245
  br label %bb152
bb152:
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t652 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t650)
  %t653 = extractvalue { i32, ptr } %t652, 1
  %t654 = extractvalue { i32, ptr } %t652, 0
  store i32 %t654, ptr %l249
  %t655 = icmp ne i32 %t654, 0
  br i1 %t655, label %bb154, label %ok.656, !prof !99
ok.656:
  store ptr %t653, ptr %l248
  br label %bb153
bb153:
  %t657 = load ptr, ptr %l248, !tbaa !29
  store ptr %t657, ptr %l246, !tbaa !29
  br label %bb155
bb154:
  %t658 = load i32, ptr %l249, !tbaa !23
  %t659 = lshr i32 %t658, 16
  %t660 = and i32 %t658, 65535
  %t661 = icmp eq i32 %t659, 1
  %t662 = select i1 %t661, i32 1, i32 0
  %t663 = icmp eq i32 %t658, 0
  %t664 = shl i32 %t662, 16
  %t665 = or i32 %t664, %t660
  %t666 = select i1 %t663, i32 0, i32 %t665
  %t668 = insertvalue { i32, ptr } zeroinitializer, i32 %t666, 0
  store { i32, ptr } %t668, ptr %rv
  br label %ret
bb155:
  %t669 = load ptr, ptr %l246, !tbaa !29
  store ptr %t669, ptr %l18, !tbaa !29
  store ptr null, ptr %l19, !tbaa !29
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t673 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t670, i32 75)
  store i1 %t673, ptr %l253
  br label %bb156
bb156:
  %t674 = load i1, ptr %l253, !tbaa !21
  br i1 %t674, label %bb157, label %bb158
bb157:
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t677 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t675)
  %t678 = extractvalue { i32, ptr } %t677, 1
  %t679 = extractvalue { i32, ptr } %t677, 0
  store i32 %t679, ptr %l257
  %t680 = icmp ne i32 %t679, 0
  br i1 %t680, label %bb160, label %ok.681, !prof !99
ok.681:
  store ptr %t678, ptr %l256
  br label %bb159
bb158:
  br label %bb162
bb159:
  %t682 = load ptr, ptr %l256, !tbaa !29
  store ptr %t682, ptr %l254, !tbaa !29
  br label %bb161
bb160:
  %t683 = load i32, ptr %l257, !tbaa !23
  %t684 = lshr i32 %t683, 16
  %t685 = and i32 %t683, 65535
  %t686 = icmp eq i32 %t684, 1
  %t687 = select i1 %t686, i32 1, i32 0
  %t688 = icmp eq i32 %t683, 0
  %t689 = shl i32 %t687, 16
  %t690 = or i32 %t689, %t685
  %t691 = select i1 %t688, i32 0, i32 %t690
  %t693 = insertvalue { i32, ptr } zeroinitializer, i32 %t691, 0
  store { i32, ptr } %t693, ptr %rv
  br label %ret
bb161:
  %t694 = load ptr, ptr %l254, !tbaa !29
  store ptr %t694, ptr %l19, !tbaa !29
  br label %bb162
bb162:
  %t696 = load ptr, ptr %l0, !tbaa !29
  %t697 = load i32, ptr %l1, !tbaa !23
  %t700 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t696, i32 %t697)
  store %"compiler/source:Span" %t700, ptr %l262
  br label %bb163
bb163:
  %t701 = load %"compiler/source:Span", ptr %l262
  store %"compiler/source:Span" %t701, ptr %l20
  %t702 = load ptr, ptr %l0, !tbaa !29
  %t704 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t702)
  store i32 %t704, ptr %l264
  %t705 = icmp ne i32 %t704, 0
  br i1 %t705, label %bb165, label %ok.706, !prof !99
ok.706:
  br label %bb164
bb164:
  br label %bb166
bb165:
  %t707 = load i32, ptr %l264, !tbaa !23
  %t708 = lshr i32 %t707, 16
  %t709 = and i32 %t707, 65535
  %t710 = icmp eq i32 %t708, 1
  %t711 = select i1 %t710, i32 1, i32 0
  %t712 = icmp eq i32 %t707, 0
  %t713 = shl i32 %t711, 16
  %t714 = or i32 %t713, %t709
  %t715 = select i1 %t712, i32 0, i32 %t714
  %t717 = insertvalue { i32, ptr } zeroinitializer, i32 %t715, 0
  store { i32, ptr } %t717, ptr %rv
  br label %ret
bb166:
  %t718 = load %"compiler/source:Span", ptr %l20
  %t719 = load ptr, ptr %l18, !tbaa !29
  %t720 = load ptr, ptr %l19, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t721
  %t722 = getelementptr { i64, [4 x i64] }, ptr %t721, i32 0, i32 0
  store i64 14, ptr %t722
  %t724 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t718, 0
  %t726 = insertvalue { %"compiler/source:Span", ptr, ptr } %t724, ptr %t719, 1
  %t728 = insertvalue { %"compiler/source:Span", ptr, ptr } %t726, ptr %t720, 2
  %t729 = getelementptr { i64, [4 x i64] }, ptr %t721, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t728, ptr %t729
  %t730 = load { i64, [4 x i64] }, ptr %t721
  %t732 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t730, ptr %t732
  %t734 = insertvalue { i32, ptr } zeroinitializer, ptr %t732, 1
  store { i32, ptr } %t734, ptr %rv
  br label %ret
bb167:
  %t735 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t737 = trunc i64 38 to i32
  %t738 = icmp eq i32 %t735, %t737
  br i1 %t738, label %bb168, label %bb169
bb168:
  br label %bb170
bb169:
  br label %bb186
bb170:
  %t740 = load ptr, ptr %l0, !tbaa !29
  %t742 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t740)
  store i32 %t742, ptr %l274
  br label %bb171
bb171:
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t745 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epath(ptr %v0, ptr %v1, ptr %t743)
  %t746 = extractvalue { i32, ptr } %t745, 1
  %t747 = extractvalue { i32, ptr } %t745, 0
  store i32 %t747, ptr %l278
  %t748 = icmp ne i32 %t747, 0
  br i1 %t748, label %bb173, label %ok.749, !prof !99
ok.749:
  store ptr %t746, ptr %l277
  br label %bb172
bb172:
  %t750 = load ptr, ptr %l277, !tbaa !29
  store ptr %t750, ptr %l275, !tbaa !29
  br label %bb174
bb173:
  %t751 = load i32, ptr %l278, !tbaa !23
  %t752 = lshr i32 %t751, 16
  %t753 = and i32 %t751, 65535
  %t754 = icmp eq i32 %t752, 1
  %t755 = select i1 %t754, i32 1, i32 0
  %t756 = icmp eq i32 %t751, 0
  %t757 = shl i32 %t755, 16
  %t758 = or i32 %t757, %t753
  %t759 = select i1 %t756, i32 0, i32 %t758
  %t761 = insertvalue { i32, ptr } zeroinitializer, i32 %t759, 0
  store { i32, ptr } %t761, ptr %rv
  br label %ret
bb174:
  %t762 = load ptr, ptr %l275, !tbaa !29
  store ptr %t762, ptr %l21, !tbaa !29
  store { i64, ptr } { i64 -1, ptr null }, ptr %l22, !tbaa !27
  %t763 = load ptr, ptr %l0, !tbaa !29
  %t766 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t763, i32 108)
  store i1 %t766, ptr %l282
  br label %bb175
bb175:
  %t767 = load i1, ptr %l282, !tbaa !21
  br i1 %t767, label %bb176, label %bb177
bb176:
  %t768 = load ptr, ptr %l0, !tbaa !29
  %t770 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eargs(ptr %v0, ptr %v1, ptr %t768)
  %t771 = extractvalue { i32, { i64, ptr } } %t770, 1
  %t772 = extractvalue { i32, { i64, ptr } } %t770, 0
  store i32 %t772, ptr %l286
  %t773 = icmp ne i32 %t772, 0
  br i1 %t773, label %bb179, label %ok.774, !prof !99
ok.774:
  store { i64, ptr } %t771, ptr %l285
  br label %bb178
bb177:
  br label %bb181
bb178:
  %t775 = load { i64, ptr }, ptr %l285, !tbaa !27
  store { i64, ptr } %t775, ptr %l283, !tbaa !27
  br label %bb180
bb179:
  %t776 = load i32, ptr %l286, !tbaa !23
  %t777 = lshr i32 %t776, 16
  %t778 = and i32 %t776, 65535
  %t779 = icmp eq i32 %t777, 1
  %t780 = select i1 %t779, i32 1, i32 0
  %t781 = icmp eq i32 %t776, 0
  %t782 = shl i32 %t780, 16
  %t783 = or i32 %t782, %t778
  %t784 = select i1 %t781, i32 0, i32 %t783
  %t786 = insertvalue { i32, ptr } zeroinitializer, i32 %t784, 0
  store { i32, ptr } %t786, ptr %rv
  br label %ret
bb180:
  %t787 = load { i64, ptr }, ptr %l283, !tbaa !27
  store { i64, ptr } %t787, ptr %l22, !tbaa !27
  br label %bb181
bb181:
  %t789 = load ptr, ptr %l0, !tbaa !29
  %t790 = load i32, ptr %l1, !tbaa !23
  %t793 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t789, i32 %t790)
  store %"compiler/source:Span" %t793, ptr %l291
  br label %bb182
bb182:
  %t794 = load %"compiler/source:Span", ptr %l291
  store %"compiler/source:Span" %t794, ptr %l23
  %t795 = load ptr, ptr %l0, !tbaa !29
  %t797 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t795)
  store i32 %t797, ptr %l293
  %t798 = icmp ne i32 %t797, 0
  br i1 %t798, label %bb184, label %ok.799, !prof !99
ok.799:
  br label %bb183
bb183:
  br label %bb185
bb184:
  %t800 = load i32, ptr %l293, !tbaa !23
  %t801 = lshr i32 %t800, 16
  %t802 = and i32 %t800, 65535
  %t803 = icmp eq i32 %t801, 1
  %t804 = select i1 %t803, i32 1, i32 0
  %t805 = icmp eq i32 %t800, 0
  %t806 = shl i32 %t804, 16
  %t807 = or i32 %t806, %t802
  %t808 = select i1 %t805, i32 0, i32 %t807
  %t810 = insertvalue { i32, ptr } zeroinitializer, i32 %t808, 0
  store { i32, ptr } %t810, ptr %rv
  br label %ret
bb185:
  %t811 = load %"compiler/source:Span", ptr %l23
  %t812 = load ptr, ptr %l21, !tbaa !29
  %t814 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t815
  %t816 = getelementptr { i64, [4 x i64] }, ptr %t815, i32 0, i32 0
  store i64 16, ptr %t816
  %t818 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t811, 0
  %t820 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t818, ptr %t812, 1
  %t822 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t820, { i64, ptr } %t814, 2
  %t823 = getelementptr { i64, [4 x i64] }, ptr %t815, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t822, ptr %t823
  %t824 = load { i64, [4 x i64] }, ptr %t815
  %t826 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t824, ptr %t826
  %t828 = insertvalue { i32, ptr } zeroinitializer, ptr %t826, 1
  store { i32, ptr } %t828, ptr %rv
  br label %ret
bb186:
  %t829 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t831 = trunc i64 15 to i32
  %t832 = icmp eq i32 %t829, %t831
  br i1 %t832, label %bb187, label %bb188
bb187:
  br label %bb189
bb188:
  br label %bb238
bb189:
  %t834 = load ptr, ptr %l0, !tbaa !29
  %t836 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t834)
  store i32 %t836, ptr %l304
  br label %bb190
bb190:
  %t837 = load ptr, ptr %l0, !tbaa !29
  %t839 = getelementptr %"compiler/parse:Parser", ptr %t837, i32 0, i32 31
  %t841 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t839)
  store i64 %t841, ptr %l307
  br label %bb191
bb191:
  %t842 = load i64, ptr %l307, !tbaa !24
  store i64 %t842, ptr %l24, !tbaa !24
  br label %bb192
bb192:
  %t843 = load ptr, ptr %l0, !tbaa !29
  %t845 = getelementptr %"compiler/parse:Parser", ptr %t843, i32 0, i32 31
  store ptr %t845, ptr %l309, !tbaa !29
  %t846 = load ptr, ptr %l0, !tbaa !29
  %t848 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v0, ptr %t846)
  %t849 = extractvalue { i32, ptr } %t848, 1
  %t850 = extractvalue { i32, ptr } %t848, 0
  store i32 %t850, ptr %l313
  %t851 = icmp ne i32 %t850, 0
  br i1 %t851, label %bb194, label %ok.852, !prof !99
ok.852:
  store ptr %t849, ptr %l312
  br label %bb193
bb193:
  %t853 = load ptr, ptr %l312, !tbaa !29
  store ptr %t853, ptr %l310, !tbaa !29
  br label %bb195
bb194:
  %t854 = load i32, ptr %l313, !tbaa !23
  %t855 = lshr i32 %t854, 16
  %t856 = and i32 %t854, 65535
  %t857 = icmp eq i32 %t855, 1
  %t858 = select i1 %t857, i32 1, i32 0
  %t859 = icmp eq i32 %t854, 0
  %t860 = shl i32 %t858, 16
  %t861 = or i32 %t860, %t856
  %t862 = select i1 %t859, i32 0, i32 %t861
  %t864 = insertvalue { i32, ptr } zeroinitializer, i32 %t862, 0
  store { i32, ptr } %t864, ptr %rv
  br label %ret
bb195:
  %t865 = load ptr, ptr %l309, !tbaa !29
  %t866 = load ptr, ptr %l310, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t865, ptr %t866)
  br label %bb196
bb196:
  %t867 = load ptr, ptr %l0, !tbaa !29
  %t870 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t867, i32 75)
  store i1 %t870, ptr %l317
  br label %bb197
bb197:
  %t871 = load i1, ptr %l317, !tbaa !21
  %t872 = xor i1 %t871, true
  br i1 %t872, label %bb198, label %bb199
bb198:
  br label %bb202
bb199:
  br label %bb200
bb200:
  br label %bb201
bb201:
  br label %bb192
bb202:
  %t874 = load ptr, ptr %l0, !tbaa !29
  %t877 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t874, i32 78)
  store i1 %t877, ptr %l321
  br label %bb203
bb203:
  %t878 = load i1, ptr %l321, !tbaa !21
  br i1 %t878, label %bb204, label %bb205
bb204:
  %t879 = load ptr, ptr %l0, !tbaa !29
  %t881 = getelementptr %"compiler/parse:Parser", ptr %t879, i32 0, i32 31
  %t882 = load i64, ptr %l24, !tbaa !24
  %t885 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t881, i64 %t882)
  store { i64, ptr } %t885, ptr %l325
  br label %bb206
bb205:
  br label %bb218
bb206:
  %t886 = load { i64, ptr }, ptr %l325, !tbaa !27
  store { i64, ptr } %t886, ptr %l25, !tbaa !27
  %t887 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t889 = extractvalue { i64, ptr } %t887, 0
  %t891 = icmp sgt i64 %t889, 1
  br i1 %t891, label %bb207, label %bb208
bb207:
  %t893 = load ptr, ptr %l0, !tbaa !29
  store ptr %t893, ptr %l329, !tbaa !29
  %t894 = load ptr, ptr %l0, !tbaa !29
  %t896 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t894)
  store i32 %t896, ptr %l331
  br label %bb209
bb208:
  br label %bb210
bb209:
  %t897 = load i32, ptr %l331, !tbaa !23
  %t898 = load ptr, ptr %l329, !tbaa !29
  %t899 = getelementptr %"compiler/parse:Parser", ptr %t898, i32 0, i32 25
  store i32 %t897, ptr %t899, !tbaa !23
  br label %bb210
bb210:
  %t900 = load ptr, ptr %l0, !tbaa !29
  %t902 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t900)
  %t903 = extractvalue { i32, ptr } %t902, 1
  %t904 = extractvalue { i32, ptr } %t902, 0
  store i32 %t904, ptr %l335
  %t905 = icmp ne i32 %t904, 0
  br i1 %t905, label %bb212, label %ok.906, !prof !99
ok.906:
  store ptr %t903, ptr %l334
  br label %bb211
bb211:
  %t907 = load ptr, ptr %l334, !tbaa !29
  store ptr %t907, ptr %l332, !tbaa !29
  br label %bb213
bb212:
  %t908 = load i32, ptr %l335, !tbaa !23
  %t909 = lshr i32 %t908, 16
  %t910 = and i32 %t908, 65535
  %t911 = icmp eq i32 %t909, 1
  %t912 = select i1 %t911, i32 1, i32 0
  %t913 = icmp eq i32 %t908, 0
  %t914 = shl i32 %t912, 16
  %t915 = or i32 %t914, %t910
  %t916 = select i1 %t913, i32 0, i32 %t915
  %t918 = insertvalue { i32, ptr } zeroinitializer, i32 %t916, 0
  store { i32, ptr } %t918, ptr %rv
  br label %ret
bb213:
  %t919 = load ptr, ptr %l332, !tbaa !29
  store ptr %t919, ptr %l26, !tbaa !29
  %t920 = load ptr, ptr %l0, !tbaa !29
  %t921 = load i32, ptr %l1, !tbaa !23
  %t924 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t920, i32 %t921)
  store %"compiler/source:Span" %t924, ptr %l339
  br label %bb214
bb214:
  %t925 = load %"compiler/source:Span", ptr %l339
  store %"compiler/source:Span" %t925, ptr %l27
  %t926 = load ptr, ptr %l0, !tbaa !29
  %t928 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t926)
  store i32 %t928, ptr %l341
  %t929 = icmp ne i32 %t928, 0
  br i1 %t929, label %bb216, label %ok.930, !prof !99
ok.930:
  br label %bb215
bb215:
  br label %bb217
bb216:
  %t931 = load i32, ptr %l341, !tbaa !23
  %t932 = lshr i32 %t931, 16
  %t933 = and i32 %t931, 65535
  %t934 = icmp eq i32 %t932, 1
  %t935 = select i1 %t934, i32 1, i32 0
  %t936 = icmp eq i32 %t931, 0
  %t937 = shl i32 %t935, 16
  %t938 = or i32 %t937, %t933
  %t939 = select i1 %t936, i32 0, i32 %t938
  %t941 = insertvalue { i32, ptr } zeroinitializer, i32 %t939, 0
  store { i32, ptr } %t941, ptr %rv
  br label %ret
bb217:
  %t942 = load %"compiler/source:Span", ptr %l27
  %t943 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t944 = load ptr, ptr %l26, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t945
  %t946 = getelementptr { i64, [4 x i64] }, ptr %t945, i32 0, i32 0
  store i64 17, ptr %t946
  %t948 = insertvalue { %"compiler/source:Span", { i64, ptr }, ptr } undef, %"compiler/source:Span" %t942, 0
  %t950 = insertvalue { %"compiler/source:Span", { i64, ptr }, ptr } %t948, { i64, ptr } %t943, 1
  %t952 = insertvalue { %"compiler/source:Span", { i64, ptr }, ptr } %t950, ptr %t944, 2
  %t953 = getelementptr { i64, [4 x i64] }, ptr %t945, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, ptr } %t952, ptr %t953
  %t954 = load { i64, [4 x i64] }, ptr %t945
  %t956 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t954, ptr %t956
  %t958 = insertvalue { i32, ptr } zeroinitializer, ptr %t956, 1
  store { i32, ptr } %t958, ptr %rv
  br label %ret
bb218:
  %t959 = load ptr, ptr %l0, !tbaa !29
  %t961 = getelementptr %"compiler/parse:Parser", ptr %t959, i32 0, i32 31
  %t963 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t961)
  store i64 %t963, ptr %l350
  br label %bb219
bb219:
  %t964 = load i64, ptr %l24, !tbaa !24
  %t965 = load i64, ptr %l350, !tbaa !24
  %t967 = sub i64 %t965, %t964
  %t969 = icmp ne i64 %t967, 1
  br i1 %t969, label %bb220, label %bb221
bb220:
  store %olang.scope zeroinitializer, ptr %s25
  %t971 = load ptr, ptr %l0, !tbaa !29
  %t973 = getelementptr %"compiler/parse:Parser", ptr %t971, i32 0, i32 31
  %t974 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t973, i64 %t974)
  br label %bb222
bb221:
  br label %bb227
bb222:
  %t977 = load ptr, ptr %l0, !tbaa !29
  store ptr %t977, ptr %l357, !tbaa !29
  %t979 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s25, i32 78)
  store { i64, ptr } %t979, ptr %l359
  br label %bb223
bb223:
  %t980 = load { i64, ptr }, ptr %l359, !tbaa !27
  %t981 = extractvalue { i64, ptr } %t980, 0
  %t982 = extractvalue { i64, ptr } %t980, 1
  %t983 = mul i64 %t981, 1
  %t984 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t983)
  call void @llvm.memcpy.p0.p0.i64(ptr %t984, ptr %t982, i64 %t983, i1 false)
  %t985 = insertvalue { i64, ptr } undef, i64 %t981, 0
  %t986 = insertvalue { i64, ptr } %t985, ptr %t984, 1
  %t987 = load ptr, ptr %l357, !tbaa !29
  %t989 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s25, ptr %t987, { i64, ptr } %t986)
  store i32 %t989, ptr %l361
  %t990 = icmp ne i32 %t989, 0
  br i1 %t990, label %bb225, label %ok.991, !prof !99
ok.991:
  br label %bb224
bb224:
  br label %bb226
bb225:
  %t992 = load i32, ptr %l361, !tbaa !23
  %t993 = lshr i32 %t992, 16
  %t994 = and i32 %t992, 65535
  %t995 = icmp eq i32 %t993, 1
  %t996 = select i1 %t995, i32 1, i32 0
  %t997 = icmp eq i32 %t992, 0
  %t998 = shl i32 %t996, 16
  %t999 = or i32 %t998, %t994
  %t1000 = select i1 %t997, i32 0, i32 %t999
  call void @__olang_scope_close(ptr %s25)
  %t1002 = insertvalue { i32, ptr } zeroinitializer, i32 %t1000, 0
  store { i32, ptr } %t1002, ptr %rv
  br label %ret
bb226:
  call void @__olang_scope_close(ptr %s25)
  br label %bb227
bb227:
  %t1003 = load ptr, ptr %l0, !tbaa !29
  %t1005 = getelementptr %"compiler/parse:Parser", ptr %t1003, i32 0, i32 31
  %t1006 = load i64, ptr %l24, !tbaa !24
  %t1009 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eAt_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t1005, i64 %t1006)
  store ptr %t1009, ptr %l366
  br label %bb228
bb228:
  %t1010 = load ptr, ptr %l366, !tbaa !29
  store ptr %t1010, ptr %l28, !tbaa !29
  %t1011 = load ptr, ptr %l0, !tbaa !29
  %t1013 = getelementptr %"compiler/parse:Parser", ptr %t1011, i32 0, i32 31
  %t1014 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t1013, i64 %t1014)
  br label %bb229
bb229:
  %t1017 = load ptr, ptr %l0, !tbaa !29
  %t1018 = load i32, ptr %l1, !tbaa !23
  %t1021 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t1017, i32 %t1018)
  store %"compiler/source:Span" %t1021, ptr %l372
  br label %bb230
bb230:
  %t1022 = load %"compiler/source:Span", ptr %l372
  store %"compiler/source:Span" %t1022, ptr %l29
  %t1023 = load ptr, ptr %l0, !tbaa !29
  %t1025 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t1023)
  store i32 %t1025, ptr %l374
  %t1026 = icmp ne i32 %t1025, 0
  br i1 %t1026, label %bb232, label %ok.1027, !prof !99
ok.1027:
  br label %bb231
bb231:
  br label %bb233
bb232:
  %t1028 = load i32, ptr %l374, !tbaa !23
  %t1029 = lshr i32 %t1028, 16
  %t1030 = and i32 %t1028, 65535
  %t1031 = icmp eq i32 %t1029, 1
  %t1032 = select i1 %t1031, i32 1, i32 0
  %t1033 = icmp eq i32 %t1028, 0
  %t1034 = shl i32 %t1032, 16
  %t1035 = or i32 %t1034, %t1030
  %t1036 = select i1 %t1033, i32 0, i32 %t1035
  %t1038 = insertvalue { i32, ptr } zeroinitializer, i32 %t1036, 0
  store { i32, ptr } %t1038, ptr %rv
  br label %ret
bb233:
  %t1039 = load %"compiler/source:Span", ptr %l29
  store %"compiler/source:Span" %t1039, ptr %l376
  %t1040 = icmp sge i64 0, 0
  br i1 %t1040, label %bb234, label %bb235
bb234:
  %t1042 = icmp sle i64 0, 1152921504606846975
  br i1 %t1042, label %bb236, label %bb237
bb235:
  call void @__olang_check_failed(ptr @olang_loc_52ee6a0603ddde11_c2fcf6abb1634cfd)
  unreachable
bb236:
  %t1044 = mul i64 0, 8
  %t1045 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1046 = insertvalue { i64, ptr } %t1045, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1047 = load ptr, ptr %l28, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t1048
  %t1049 = getelementptr { i64, [4 x i64] }, ptr %t1048, i32 0, i32 0
  store i64 17, ptr %t1049
  %t1050 = load %"compiler/source:Span", ptr %l376
  %t1051 = insertvalue { %"compiler/source:Span", { i64, ptr }, ptr } undef, %"compiler/source:Span" %t1050, 0
  %t1053 = insertvalue { %"compiler/source:Span", { i64, ptr }, ptr } %t1051, { i64, ptr } %t1046, 1
  %t1055 = insertvalue { %"compiler/source:Span", { i64, ptr }, ptr } %t1053, ptr %t1047, 2
  %t1056 = getelementptr { i64, [4 x i64] }, ptr %t1048, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, ptr } %t1055, ptr %t1056
  %t1057 = load { i64, [4 x i64] }, ptr %t1048
  %t1059 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t1057, ptr %t1059
  %t1061 = insertvalue { i32, ptr } zeroinitializer, ptr %t1059, 1
  store { i32, ptr } %t1061, ptr %rv
  br label %ret
bb237:
  call void @__olang_check_failed(ptr @olang_loc_52ee6a0603ddde11_c2fcf6abb1634cfd)
  unreachable
bb238:
  %t1062 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1064 = trunc i64 14 to i32
  %t1065 = icmp eq i32 %t1062, %t1064
  br i1 %t1065, label %bb239, label %bb240
bb239:
  br label %bb241
bb240:
  br label %bb246
bb241:
  %t1067 = load ptr, ptr %l0, !tbaa !29
  %t1069 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ejoinRest(ptr %v0, ptr %v1, ptr %t1067, i1 false)
  %t1070 = extractvalue { i32, ptr } %t1069, 1
  %t1071 = extractvalue { i32, ptr } %t1069, 0
  store i32 %t1071, ptr %l388
  %t1072 = icmp ne i32 %t1071, 0
  br i1 %t1072, label %bb243, label %ok.1073, !prof !99
ok.1073:
  store ptr %t1070, ptr %l387
  br label %bb242
bb242:
  %t1074 = load ptr, ptr %l387, !tbaa !29
  store ptr %t1074, ptr %l385, !tbaa !29
  br label %bb244
bb243:
  %t1075 = load i32, ptr %l388, !tbaa !23
  %t1076 = lshr i32 %t1075, 16
  %t1077 = and i32 %t1075, 65535
  %t1078 = icmp eq i32 %t1076, 1
  %t1079 = select i1 %t1078, i32 1, i32 0
  %t1080 = icmp eq i32 %t1075, 0
  %t1081 = shl i32 %t1079, 16
  %t1082 = or i32 %t1081, %t1077
  %t1083 = select i1 %t1080, i32 0, i32 %t1082
  %t1085 = insertvalue { i32, ptr } zeroinitializer, i32 %t1083, 0
  store { i32, ptr } %t1085, ptr %rv
  br label %ret
bb244:
  %t1086 = load ptr, ptr %l385, !tbaa !29
  store ptr %t1086, ptr %l30, !tbaa !29
  %t1087 = load ptr, ptr %l0, !tbaa !29
  %t1088 = load i32, ptr %l1, !tbaa !23
  %t1091 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t1087, i32 %t1088)
  store %"compiler/source:Span" %t1091, ptr %l392
  br label %bb245
bb245:
  %t1092 = load ptr, ptr %l30, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t1093
  %t1094 = getelementptr { i64, [4 x i64] }, ptr %t1093, i32 0, i32 0
  store i64 18, ptr %t1094
  %t1095 = load %"compiler/source:Span", ptr %l392
  %t1096 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t1095, 0
  %t1098 = insertvalue { %"compiler/source:Span", ptr } %t1096, ptr %t1092, 1
  %t1099 = getelementptr { i64, [4 x i64] }, ptr %t1093, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t1098, ptr %t1099
  %t1100 = load { i64, [4 x i64] }, ptr %t1093
  %t1102 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t1100, ptr %t1102
  %t1104 = insertvalue { i32, ptr } zeroinitializer, ptr %t1102, 1
  store { i32, ptr } %t1104, ptr %rv
  br label %ret
bb246:
  %t1105 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1107 = trunc i64 16 to i32
  %t1108 = icmp eq i32 %t1105, %t1107
  br i1 %t1108, label %bb247, label %bb248
bb247:
  br label %bb251
bb248:
  %t1110 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1112 = trunc i64 17 to i32
  %t1113 = icmp eq i32 %t1110, %t1112
  br i1 %t1113, label %bb249, label %bb250
bb249:
  br label %bb251
bb250:
  br label %bb271
bb251:
  %t1115 = load ptr, ptr %l0, !tbaa !29
  %t1118 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1115, i32 17)
  store i1 %t1118, ptr %l402
  br label %bb252
bb252:
  %t1119 = load i1, ptr %l402, !tbaa !21
  store i1 %t1119, ptr %l31, !tbaa !21
  %t1120 = load ptr, ptr %l0, !tbaa !29
  %t1122 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t1120)
  store i32 %t1122, ptr %l404
  br label %bb253
bb253:
  %t1123 = load ptr, ptr %l0, !tbaa !29
  %t1126 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1123, i32 112)
  store i1 %t1126, ptr %l407
  br label %bb254
bb254:
  %t1127 = load i1, ptr %l407, !tbaa !21
  br i1 %t1127, label %bb255, label %bb256
bb255:
  %t1128 = load ptr, ptr %l0, !tbaa !29
  %t1130 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t1128)
  %t1131 = extractvalue { i32, { i64, ptr } } %t1130, 1
  %t1132 = extractvalue { i32, { i64, ptr } } %t1130, 0
  store i32 %t1132, ptr %l411
  %t1133 = icmp ne i32 %t1132, 0
  br i1 %t1133, label %bb258, label %ok.1134, !prof !99
ok.1134:
  store { i64, ptr } %t1131, ptr %l410
  br label %bb257
bb256:
  br label %bb266
bb257:
  %t1135 = load { i64, ptr }, ptr %l410, !tbaa !27
  store { i64, ptr } %t1135, ptr %l408, !tbaa !27
  br label %bb259
bb258:
  %t1136 = load i32, ptr %l411, !tbaa !23
  %t1137 = lshr i32 %t1136, 16
  %t1138 = and i32 %t1136, 65535
  %t1139 = icmp eq i32 %t1137, 1
  %t1140 = select i1 %t1139, i32 1, i32 0
  %t1141 = icmp eq i32 %t1136, 0
  %t1142 = shl i32 %t1140, 16
  %t1143 = or i32 %t1142, %t1138
  %t1144 = select i1 %t1141, i32 0, i32 %t1143
  %t1146 = insertvalue { i32, ptr } zeroinitializer, i32 %t1144, 0
  store { i32, ptr } %t1146, ptr %rv
  br label %ret
bb259:
  %t1147 = load { i64, ptr }, ptr %l408, !tbaa !27
  store { i64, ptr } %t1147, ptr %l32, !tbaa !27
  %t1148 = load ptr, ptr %l0, !tbaa !29
  %t1149 = load i32, ptr %l1, !tbaa !23
  %t1152 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t1148, i32 %t1149)
  store %"compiler/source:Span" %t1152, ptr %l415
  br label %bb260
bb260:
  %t1153 = load %"compiler/source:Span", ptr %l415
  store %"compiler/source:Span" %t1153, ptr %l33
  %t1154 = load ptr, ptr %l0, !tbaa !29
  %t1157 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1154, i32 8)
  store i1 %t1157, ptr %l418
  br label %bb261
bb261:
  %t1158 = load i1, ptr %l418, !tbaa !21
  br i1 %t1158, label %bb262, label %bb263
bb262:
  %t1159 = load ptr, ptr %l0, !tbaa !29
  %t1161 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t1159)
  store i32 %t1161, ptr %l420
  br label %bb264
bb263:
  br label %bb265
bb264:
  br label %bb265
bb265:
  %t1162 = load %"compiler/source:Span", ptr %l33
  %t1163 = load %"compiler/source:Span", ptr %l33
  %t1164 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t1165
  %t1166 = getelementptr { i64, [4 x i64] }, ptr %t1165, i32 0, i32 0
  store i64 20, ptr %t1166
  %t1168 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t1163, 0
  %t1170 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t1168, { i64, ptr } %t1164, 1
  %t1171 = getelementptr { i64, [4 x i64] }, ptr %t1165, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t1170, ptr %t1171
  %t1172 = load { i64, [4 x i64] }, ptr %t1165
  %t1174 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t1172, ptr %t1174
  %t1175 = load i1, ptr %l31, !tbaa !21
  store { i64, [4 x i64] } zeroinitializer, ptr %t1176
  %t1177 = getelementptr { i64, [4 x i64] }, ptr %t1176, i32 0, i32 0
  store i64 19, ptr %t1177
  %t1179 = insertvalue { %"compiler/source:Span", ptr, i1 } undef, %"compiler/source:Span" %t1162, 0
  %t1181 = insertvalue { %"compiler/source:Span", ptr, i1 } %t1179, ptr %t1174, 1
  %t1183 = insertvalue { %"compiler/source:Span", ptr, i1 } %t1181, i1 %t1175, 2
  %t1184 = getelementptr { i64, [4 x i64] }, ptr %t1176, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1 } %t1183, ptr %t1184
  %t1185 = load { i64, [4 x i64] }, ptr %t1176
  %t1187 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t1185, ptr %t1187
  %t1189 = insertvalue { i32, ptr } zeroinitializer, ptr %t1187, 1
  store { i32, ptr } %t1189, ptr %rv
  br label %ret
bb266:
  %t1190 = load ptr, ptr %l0, !tbaa !29
  %t1192 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2estmt(ptr %v0, ptr %v1, ptr %t1190)
  %t1193 = extractvalue { i32, ptr } %t1192, 1
  %t1194 = extractvalue { i32, ptr } %t1192, 0
  store i32 %t1194, ptr %l432
  %t1195 = icmp ne i32 %t1194, 0
  br i1 %t1195, label %bb268, label %ok.1196, !prof !99
ok.1196:
  store ptr %t1193, ptr %l431
  br label %bb267
bb267:
  %t1197 = load ptr, ptr %l431, !tbaa !29
  store ptr %t1197, ptr %l429, !tbaa !29
  br label %bb269
bb268:
  %t1198 = load i32, ptr %l432, !tbaa !23
  %t1199 = lshr i32 %t1198, 16
  %t1200 = and i32 %t1198, 65535
  %t1201 = icmp eq i32 %t1199, 1
  %t1202 = select i1 %t1201, i32 1, i32 0
  %t1203 = icmp eq i32 %t1198, 0
  %t1204 = shl i32 %t1202, 16
  %t1205 = or i32 %t1204, %t1200
  %t1206 = select i1 %t1203, i32 0, i32 %t1205
  %t1208 = insertvalue { i32, ptr } zeroinitializer, i32 %t1206, 0
  store { i32, ptr } %t1208, ptr %rv
  br label %ret
bb269:
  %t1209 = load ptr, ptr %l429, !tbaa !29
  store ptr %t1209, ptr %l34, !tbaa !29
  %t1210 = load ptr, ptr %l0, !tbaa !29
  %t1211 = load i32, ptr %l1, !tbaa !23
  %t1214 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t1210, i32 %t1211)
  store %"compiler/source:Span" %t1214, ptr %l436
  br label %bb270
bb270:
  %t1215 = load ptr, ptr %l34, !tbaa !29
  %t1216 = load i1, ptr %l31, !tbaa !21
  store { i64, [4 x i64] } zeroinitializer, ptr %t1217
  %t1218 = getelementptr { i64, [4 x i64] }, ptr %t1217, i32 0, i32 0
  store i64 19, ptr %t1218
  %t1219 = load %"compiler/source:Span", ptr %l436
  %t1220 = insertvalue { %"compiler/source:Span", ptr, i1 } undef, %"compiler/source:Span" %t1219, 0
  %t1222 = insertvalue { %"compiler/source:Span", ptr, i1 } %t1220, ptr %t1215, 1
  %t1224 = insertvalue { %"compiler/source:Span", ptr, i1 } %t1222, i1 %t1216, 2
  %t1225 = getelementptr { i64, [4 x i64] }, ptr %t1217, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1 } %t1224, ptr %t1225
  %t1226 = load { i64, [4 x i64] }, ptr %t1217
  %t1228 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t1226, ptr %t1228
  %t1230 = insertvalue { i32, ptr } zeroinitializer, ptr %t1228, 1
  store { i32, ptr } %t1230, ptr %rv
  br label %ret
bb271:
  %t1231 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1233 = trunc i64 112 to i32
  %t1234 = icmp eq i32 %t1231, %t1233
  br i1 %t1234, label %bb272, label %bb273
bb272:
  br label %bb274
bb273:
  br label %bb284
bb274:
  %t1236 = load ptr, ptr %l0, !tbaa !29
  %t1238 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t1236)
  %t1239 = extractvalue { i32, { i64, ptr } } %t1238, 1
  %t1240 = extractvalue { i32, { i64, ptr } } %t1238, 0
  store i32 %t1240, ptr %l446
  %t1241 = icmp ne i32 %t1240, 0
  br i1 %t1241, label %bb276, label %ok.1242, !prof !99
ok.1242:
  store { i64, ptr } %t1239, ptr %l445
  br label %bb275
bb275:
  %t1243 = load { i64, ptr }, ptr %l445, !tbaa !27
  store { i64, ptr } %t1243, ptr %l443, !tbaa !27
  br label %bb277
bb276:
  %t1244 = load i32, ptr %l446, !tbaa !23
  %t1245 = lshr i32 %t1244, 16
  %t1246 = and i32 %t1244, 65535
  %t1247 = icmp eq i32 %t1245, 1
  %t1248 = select i1 %t1247, i32 1, i32 0
  %t1249 = icmp eq i32 %t1244, 0
  %t1250 = shl i32 %t1248, 16
  %t1251 = or i32 %t1250, %t1246
  %t1252 = select i1 %t1249, i32 0, i32 %t1251
  %t1254 = insertvalue { i32, ptr } zeroinitializer, i32 %t1252, 0
  store { i32, ptr } %t1254, ptr %rv
  br label %ret
bb277:
  %t1255 = load { i64, ptr }, ptr %l443, !tbaa !27
  store { i64, ptr } %t1255, ptr %l35, !tbaa !27
  %t1256 = load ptr, ptr %l0, !tbaa !29
  %t1257 = load i32, ptr %l1, !tbaa !23
  %t1260 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t1256, i32 %t1257)
  store %"compiler/source:Span" %t1260, ptr %l450
  br label %bb278
bb278:
  %t1261 = load %"compiler/source:Span", ptr %l450
  store %"compiler/source:Span" %t1261, ptr %l36
  %t1262 = load ptr, ptr %l0, !tbaa !29
  %t1265 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1262, i32 8)
  store i1 %t1265, ptr %l453
  br label %bb279
bb279:
  %t1266 = load i1, ptr %l453, !tbaa !21
  br i1 %t1266, label %bb280, label %bb281
bb280:
  %t1267 = load ptr, ptr %l0, !tbaa !29
  %t1269 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t1267)
  store i32 %t1269, ptr %l455
  br label %bb282
bb281:
  br label %bb283
bb282:
  br label %bb283
bb283:
  %t1270 = load %"compiler/source:Span", ptr %l36
  %t1271 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t1272
  %t1273 = getelementptr { i64, [4 x i64] }, ptr %t1272, i32 0, i32 0
  store i64 20, ptr %t1273
  %t1275 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t1270, 0
  %t1277 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t1275, { i64, ptr } %t1271, 1
  %t1278 = getelementptr { i64, [4 x i64] }, ptr %t1272, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t1277, ptr %t1278
  %t1279 = load { i64, [4 x i64] }, ptr %t1272
  %t1281 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t1279, ptr %t1281
  %t1283 = insertvalue { i32, ptr } zeroinitializer, ptr %t1281, 1
  store { i32, ptr } %t1283, ptr %rv
  br label %ret
bb284:
  %t1284 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1286 = trunc i64 11 to i32
  %t1287 = icmp eq i32 %t1284, %t1286
  br i1 %t1287, label %bb285, label %bb286
bb285:
  br label %bb287
bb286:
  br label %bb291
bb287:
  %t1289 = load ptr, ptr %l0, !tbaa !29
  %t1291 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etryStmt(ptr %v0, ptr %v1, ptr %t1289)
  %t1292 = extractvalue { i32, ptr } %t1291, 1
  %t1293 = extractvalue { i32, ptr } %t1291, 0
  store i32 %t1293, ptr %l465
  %t1294 = icmp ne i32 %t1293, 0
  br i1 %t1294, label %bb289, label %ok.1295, !prof !99
ok.1295:
  store ptr %t1292, ptr %l464
  br label %bb288
bb288:
  %t1296 = load ptr, ptr %l464, !tbaa !29
  store ptr %t1296, ptr %l462, !tbaa !29
  br label %bb290
bb289:
  %t1297 = load i32, ptr %l465, !tbaa !23
  %t1298 = lshr i32 %t1297, 16
  %t1299 = and i32 %t1297, 65535
  %t1300 = icmp eq i32 %t1298, 1
  %t1301 = select i1 %t1300, i32 1, i32 0
  %t1302 = icmp eq i32 %t1297, 0
  %t1303 = shl i32 %t1301, 16
  %t1304 = or i32 %t1303, %t1299
  %t1305 = select i1 %t1302, i32 0, i32 %t1304
  %t1307 = insertvalue { i32, ptr } zeroinitializer, i32 %t1305, 0
  store { i32, ptr } %t1307, ptr %rv
  br label %ret
bb290:
  %t1308 = load ptr, ptr %l462, !tbaa !29
  %t1309 = insertvalue { i32, ptr } zeroinitializer, ptr %t1308, 1
  store { i32, ptr } %t1309, ptr %rv
  br label %ret
bb291:
  %t1310 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1312 = trunc i64 1 to i32
  %t1313 = icmp eq i32 %t1310, %t1312
  br i1 %t1313, label %bb292, label %bb293
bb292:
  br label %bb294
bb293:
  br label %bb298
bb294:
  %t1315 = load ptr, ptr %l0, !tbaa !29
  %t1317 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eidenStmt(ptr %v0, ptr %v1, ptr %t1315)
  %t1318 = extractvalue { i32, ptr } %t1317, 1
  %t1319 = extractvalue { i32, ptr } %t1317, 0
  store i32 %t1319, ptr %l472
  %t1320 = icmp ne i32 %t1319, 0
  br i1 %t1320, label %bb296, label %ok.1321, !prof !99
ok.1321:
  store ptr %t1318, ptr %l471
  br label %bb295
bb295:
  %t1322 = load ptr, ptr %l471, !tbaa !29
  store ptr %t1322, ptr %l469, !tbaa !29
  br label %bb297
bb296:
  %t1323 = load i32, ptr %l472, !tbaa !23
  %t1324 = lshr i32 %t1323, 16
  %t1325 = and i32 %t1323, 65535
  %t1326 = icmp eq i32 %t1324, 1
  %t1327 = select i1 %t1326, i32 1, i32 0
  %t1328 = icmp eq i32 %t1323, 0
  %t1329 = shl i32 %t1327, 16
  %t1330 = or i32 %t1329, %t1325
  %t1331 = select i1 %t1328, i32 0, i32 %t1330
  %t1333 = insertvalue { i32, ptr } zeroinitializer, i32 %t1331, 0
  store { i32, ptr } %t1333, ptr %rv
  br label %ret
bb297:
  %t1334 = load ptr, ptr %l469, !tbaa !29
  %t1335 = insertvalue { i32, ptr } zeroinitializer, ptr %t1334, 1
  store { i32, ptr } %t1335, ptr %rv
  br label %ret
bb298:
  br i1 true, label %bb299, label %bb300
bb299:
  br label %bb301
bb300:
  br label %bb305
bb301:
  %t1336 = load ptr, ptr %l0, !tbaa !29
  %t1338 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprStmt(ptr %v0, ptr %v1, ptr %t1336)
  %t1339 = extractvalue { i32, ptr } %t1338, 1
  %t1340 = extractvalue { i32, ptr } %t1338, 0
  store i32 %t1340, ptr %l477
  %t1341 = icmp ne i32 %t1340, 0
  br i1 %t1341, label %bb303, label %ok.1342, !prof !99
ok.1342:
  store ptr %t1339, ptr %l476
  br label %bb302
bb302:
  %t1343 = load ptr, ptr %l476, !tbaa !29
  store ptr %t1343, ptr %l474, !tbaa !29
  br label %bb304
bb303:
  %t1344 = load i32, ptr %l477, !tbaa !23
  %t1345 = lshr i32 %t1344, 16
  %t1346 = and i32 %t1344, 65535
  %t1347 = icmp eq i32 %t1345, 1
  %t1348 = select i1 %t1347, i32 1, i32 0
  %t1349 = icmp eq i32 %t1344, 0
  %t1350 = shl i32 %t1348, 16
  %t1351 = or i32 %t1350, %t1346
  %t1352 = select i1 %t1349, i32 0, i32 %t1351
  %t1354 = insertvalue { i32, ptr } zeroinitializer, i32 %t1352, 0
  store { i32, ptr } %t1354, ptr %rv
  br label %ret
bb304:
  %t1355 = load ptr, ptr %l474, !tbaa !29
  %t1356 = insertvalue { i32, ptr } zeroinitializer, ptr %t1355, 1
  store { i32, ptr } %t1356, ptr %rv
  br label %ret
bb305:
  call void @__olang_check_failed(ptr @olang_loc_98b5a7b541ba17c1_7be6170cba707005)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopIf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l12 = alloca %"compiler/source:Span"
  %rv = alloca { i32, ptr }
  %t31 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i32, ptr %l4, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopIfRest(ptr %v0, ptr %v1, ptr %t5)
  %t8 = extractvalue { i32, ptr } %t7, 1
  %t9 = extractvalue { i32, ptr } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb3, label %ok.11, !prof !99
ok.11:
  store ptr %t8, ptr %l7
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l7, !tbaa !29
  store ptr %t12, ptr %l5, !tbaa !29
  br label %bb4
bb3:
  %t13 = load i32, ptr %l8, !tbaa !23
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
  %t24 = load ptr, ptr %l5, !tbaa !29
  store ptr %t24, ptr %l2, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t25, i32 %t26)
  store %"compiler/source:Span" %t29, ptr %l12
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l2, !tbaa !29
  store { i64, [8 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [8 x i64] }, ptr %t31, i32 0, i32 0
  store i64 7, ptr %t32
  %t33 = load %"compiler/source:Span", ptr %l12
  %t34 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t33, 0
  %t36 = insertvalue { %"compiler/source:Span", ptr } %t34, ptr %t30, 1
  %t37 = getelementptr { i64, [8 x i64] }, ptr %t31, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t36, ptr %t37
  %t38 = load { i64, [8 x i64] }, ptr %t31
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t38, ptr %t40
  %t42 = insertvalue { i32, ptr } zeroinitializer, ptr %t40, 1
  store { i32, ptr } %t42, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArg(ptr %v0, ptr %v1, ptr %a0) #0 {
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

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeDeclRest(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i1
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l19 = alloca i1
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i32
  %l30 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l35 = alloca i1
  %l38 = alloca { i64, ptr }
  %l40 = alloca i64
  %l42 = alloca i1
  %l45 = alloca i32
  %l46 = alloca i32
  %l52 = alloca ptr
  %l54 = alloca i32
  %l56 = alloca %"compiler/token:Token"
  %l57 = alloca i32
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i32
  %l63 = alloca i1
  %l66 = alloca i1
  %l67 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca i32
  %l74 = alloca %"compiler/source:Span"
  %l77 = alloca i1
  %l79 = alloca i32
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca i32
  %l82 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca ptr
  %l90 = alloca %"compiler/ast:TypeDecl"
  %s4 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t188 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  %t2 = icmp sge i64 0, 0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = icmp sle i64 0, 1152921504606846975
  br i1 %t4, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_411e8cbc479e6c68_8a93085e0dfe7db4)
  unreachable
bb3:
  %t6 = mul i64 0, 8
  %t7 = insertvalue { i64, ptr } undef, i64 0, 0
  %t8 = insertvalue { i64, ptr } %t7, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t10 = load ptr, ptr %l10, !tbaa !29
  %t11 = getelementptr %"compiler/parse:Parser", ptr %t10, i32 0, i32 40
  store { i64, ptr } %t8, ptr %t11, !tbaa !27
  %t12 = icmp sge i64 0, 0
  br i1 %t12, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_411e8cbc479e6c68_8a93085e0dfe7db4)
  unreachable
bb5:
  %t14 = icmp sle i64 0, 1152921504606846975
  br i1 %t14, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_a3bb9cce88491c55_2084ae246c483bc1)
  unreachable
bb7:
  %t16 = mul i64 0, 8
  %t17 = insertvalue { i64, ptr } undef, i64 0, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t23 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t20, i32 97)
  store i1 %t23, ptr %l19
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_a3bb9cce88491c55_2084ae246c483bc1)
  unreachable
bb9:
  %t24 = load i1, ptr %l19, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeParams(ptr %v0, ptr %v1, ptr %t25)
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l23
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb13, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l22
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t32 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t32, ptr %l20, !tbaa !27
  br label %bb14
bb13:
  %t33 = load i32, ptr %l23, !tbaa !23
  %t34 = lshr i32 %t33, 16
  %t35 = and i32 %t33, 65535
  %t36 = icmp eq i32 %t34, 1
  %t37 = select i1 %t36, i32 1, i32 0
  %t38 = icmp eq i32 %t33, 0
  %t39 = shl i32 %t37, 16
  %t40 = or i32 %t39, %t35
  %t41 = select i1 %t38, i32 0, i32 %t40
  %t43 = insertvalue { i32, ptr } zeroinitializer, i32 %t41, 0
  store { i32, ptr } %t43, ptr %rv
  br label %ret
bb14:
  %t44 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t44, ptr %l3, !tbaa !27
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = getelementptr %"compiler/parse:Parser", ptr %t45, i32 0, i32 40
  store { i64, ptr } %t46, ptr %t49, !tbaa !27
  br label %bb15
bb15:
  store i32 0, ptr %l4
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t54 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t51, i32 54)
  store i1 %t54, ptr %l30
  br label %bb17
bb17:
  %t55 = load i1, ptr %l30, !tbaa !21
  br i1 %t55, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb21
bb19:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t59 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t56, i32 53)
  store i1 %t59, ptr %l34
  br label %bb20
bb20:
  %t60 = load i1, ptr %l34, !tbaa !21
  store i1 %t60, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t61 = load i1, ptr %l31, !tbaa !21
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/parse:Parser", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/scan:Tokens", ptr %t65, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l38, !tbaa !27
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eafter(ptr %v0, ptr %t69, i64 1)
  store i64 %t71, ptr %l40
  br label %bb24
bb23:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb26
bb24:
  %t72 = load i64, ptr %l40, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr %"compiler/token:Token", ptr %t74, i64 %t72
  %t76 = getelementptr %"compiler/token:Token", ptr %t75, i32 0, i32 0
  %t77 = load i32, ptr %t76, !range !{i32 0, i32 114}
  %t79 = call i1 @compiler_2fparse_2edeclWordBody(i32 %t77)
  store i1 %t79, ptr %l42
  br label %bb25
bb25:
  %t80 = load i1, ptr %l42, !tbaa !21
  store i1 %t80, ptr %l35, !tbaa !21
  br label %bb26
bb26:
  %t81 = load i1, ptr %l35, !tbaa !21
  %t82 = xor i1 %t81, true
  br i1 %t82, label %bb27, label %bb28
bb27:
  br label %bb44
bb28:
  br label %bb29
bb29:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t84)
  store i32 %t86, ptr %l45
  br label %bb30
bb30:
  %t87 = load i32, ptr %l45, !range !{i32 0, i32 114}
  %t88 = call i32 @compiler_2fparse_2edeclWord(i32 %t87)
  store i32 %t88, ptr %l46
  br label %bb31
bb31:
  %t89 = load i32, ptr %l46, !range !{i32 0, i32 3}
  store i32 %t89, ptr %l5
  %t90 = load i32, ptr %l5, !range !{i32 0, i32 3}
  %t92 = trunc i64 0 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb32, label %bb33
bb32:
  br label %bb44
bb33:
  br label %bb34
bb34:
  %t95 = load i32, ptr %l4, !range !{i32 0, i32 3}
  %t97 = trunc i64 0 to i32
  %t98 = icmp eq i32 %t95, %t97
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s4
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l52, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t103)
  store i32 %t105, ptr %l54
  br label %bb37
bb36:
  br label %bb41
bb37:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t106)
  store %"compiler/token:Token" %t108, ptr %l56
  br label %bb38
bb38:
  %t109 = getelementptr %"compiler/token:Token", ptr %l56, i32 0, i32 3
  %t110 = load i32, ptr %t109, !tbaa !23
  store i32 %t110, ptr %l57, !tbaa !23
  %t111 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmut(ptr %s4)
  store %"compiler/diagmsg:Msg" %t111, ptr %l58
  br label %bb39
bb39:
  %t112 = load ptr, ptr %l52, !tbaa !29
  %t113 = load i32, ptr %l54, !tbaa !23
  %t114 = load i32, ptr %l57, !tbaa !23
  %t115 = load %"compiler/diagmsg:Msg", ptr %l58
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s4, ptr %t112, i32 %t113, i32 %t114, %"compiler/diagmsg:Msg" %t115)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb41
bb41:
  %t116 = load i32, ptr %l5, !range !{i32 0, i32 3}
  store i32 %t116, ptr %l4
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t118)
  store i32 %t120, ptr %l61
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb16
bb44:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epackedWord(ptr %v0, ptr %t121)
  store i1 %t123, ptr %l63
  br label %bb45
bb45:
  %t124 = load i1, ptr %l63, !tbaa !21
  store i1 %t124, ptr %l6, !tbaa !21
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t128 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t125, i32 22)
  store i1 %t128, ptr %l66
  br label %bb46
bb46:
  %t129 = load i1, ptr %l66, !tbaa !21
  store i1 %t129, ptr %l7, !tbaa !21
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBody(ptr %v0, ptr %v1, ptr %t130)
  %t133 = extractvalue { i32, ptr } %t132, 1
  %t134 = extractvalue { i32, ptr } %t132, 0
  store i32 %t134, ptr %l70
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb48, label %ok.136, !prof !99
ok.136:
  store ptr %t133, ptr %l69
  br label %bb47
bb47:
  %t137 = load ptr, ptr %l69, !tbaa !29
  store ptr %t137, ptr %l67, !tbaa !29
  br label %bb49
bb48:
  %t138 = load i32, ptr %l70, !tbaa !23
  %t139 = lshr i32 %t138, 16
  %t140 = and i32 %t138, 65535
  %t141 = icmp eq i32 %t139, 1
  %t142 = select i1 %t141, i32 1, i32 0
  %t143 = icmp eq i32 %t138, 0
  %t144 = shl i32 %t142, 16
  %t145 = or i32 %t144, %t140
  %t146 = select i1 %t143, i32 0, i32 %t145
  %t148 = insertvalue { i32, ptr } zeroinitializer, i32 %t146, 0
  store { i32, ptr } %t148, ptr %rv
  br label %ret
bb49:
  %t149 = load ptr, ptr %l67, !tbaa !29
  store ptr %t149, ptr %l8, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t154 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t150, i32 %a1)
  store %"compiler/source:Span" %t154, ptr %l74
  br label %bb50
bb50:
  %t155 = load %"compiler/source:Span", ptr %l74
  store %"compiler/source:Span" %t155, ptr %l9
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t159 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t156, i32 8)
  store i1 %t159, ptr %l77
  br label %bb51
bb51:
  %t160 = load i1, ptr %l77, !tbaa !21
  br i1 %t160, label %bb52, label %bb53
bb52:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t161)
  store i32 %t163, ptr %l79
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  %t164 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t164, ptr %l80
  store i32 %a2, ptr %l81, !tbaa !23
  %t166 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t166, ptr %l82, !tbaa !27
  %t167 = load i1, ptr %l7, !tbaa !21
  store i1 %t167, ptr %l83, !tbaa !21
  %t168 = load ptr, ptr %l8, !tbaa !29
  store ptr %t168, ptr %l84, !tbaa !29
  %t169 = icmp sge i64 0, 0
  br i1 %t169, label %bb56, label %bb57
bb56:
  %t171 = icmp sle i64 0, 1152921504606846975
  br i1 %t171, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_e0fefcf45e67d736_e2134333a7c352a2)
  unreachable
bb58:
  %t173 = mul i64 0, 8
  %t174 = insertvalue { i64, ptr } undef, i64 0, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t176 = load i32, ptr %l4, !range !{i32 0, i32 3}
  %t177 = load i1, ptr %l6, !tbaa !21
  %t178 = load i32, ptr %l81, !tbaa !23
  %t179 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t180 = load i1, ptr %l83, !tbaa !21
  %t181 = load ptr, ptr %l84, !tbaa !29
  %t185 = call %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t178, { i64, ptr } %t179, i1 %t180, ptr %t181, { i64, ptr } %t175, i32 %t176, i1 %t177)
  store %"compiler/ast:TypeDecl" %t185, ptr %l90
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_e0fefcf45e67d736_e2134333a7c352a2)
  unreachable
bb60:
  %t186 = load %"compiler/ast:TypeDecl", ptr %l90
  %t187 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/ast:TypeDecl" %t186, ptr %t187
  store { i64, [8 x i64] } zeroinitializer, ptr %t188
  %t189 = getelementptr { i64, [8 x i64] }, ptr %t188, i32 0, i32 0
  store i64 2, ptr %t189
  %t190 = load %"compiler/source:Span", ptr %l80
  %t191 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t190, 0
  %t193 = insertvalue { %"compiler/source:Span", ptr } %t191, ptr %t187, 1
  %t194 = getelementptr { i64, [8 x i64] }, ptr %t188, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t193, ptr %t194
  %t195 = load { i64, [8 x i64] }, ptr %t188
  %t197 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t195, ptr %t197
  %t199 = insertvalue { i32, ptr } zeroinitializer, ptr %t197, 1
  store { i32, ptr } %t199, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeParams(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca ptr
  %l13 = alloca i32
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i1
  %l24 = alloca i32
  %l25 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l33 = alloca ptr
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca i32
  %l41 = alloca %"compiler/ast:TypeParam"
  %l44 = alloca i32
  %l45 = alloca i32
  %l47 = alloca i32
  %l48 = alloca i32
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i1
  %l59 = alloca i1
  %l62 = alloca i1
  %l64 = alloca i1
  %l66 = alloca i1
  %l68 = alloca i1
  %l71 = alloca i1
  %l80 = alloca ptr
  %l82 = alloca ptr
  %l83 = alloca i32
  %l95 = alloca ptr
  %l98 = alloca %"compiler/source:Span"
  %l99 = alloca i32
  %l100 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l103 = alloca %"compiler/ast:TypeParam"
  %l107 = alloca i1
  %l108 = alloca i1
  %l111 = alloca i1
  %l112 = alloca i32
  %l118 = alloca i32
  %l121 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eopenAngle(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l13
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t6 = load i32, ptr %l13, !tbaa !23
  %t7 = lshr i32 %t6, 16
  %t8 = and i32 %t6, 65535
  %t9 = icmp eq i32 %t7, 1
  %t10 = select i1 %t9, i32 1, i32 0
  %t11 = icmp eq i32 %t6, 0
  %t12 = shl i32 %t10, 16
  %t13 = or i32 %t12, %t8
  %t14 = select i1 %t11, i32 0, i32 %t13
  %t16 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t14, 0
  store { i32, { i64, ptr } } %t16, ptr %rv
  br label %ret
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/parse:Parser", ptr %t17, i32 0, i32 19
  %t20 = load i1, ptr %t19, !tbaa !21
  store i1 %t20, ptr %l1, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/parse:Parser", ptr %t22, i32 0, i32 19
  store i1 false, ptr %t24, !tbaa !21
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeParam_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l18
  br label %bb4
bb4:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  %t27 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %t27
  store ptr %t27, ptr %l2, !tbaa !29
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t29, i32 77)
  store i1 %t32, ptr %l22
  br label %bb6
bb6:
  %t33 = load i1, ptr %l22, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t34)
  store i32 %t36, ptr %l24
  br label %bb9
bb8:
  br label %bb21
bb9:
  %t37 = load i32, ptr %l24, !tbaa !23
  store i32 %t37, ptr %l3, !tbaa !23
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t38)
  %t41 = extractvalue { i32, i32 } %t40, 1
  %t42 = extractvalue { i32, i32 } %t40, 0
  store i32 %t42, ptr %l28
  %t43 = icmp ne i32 %t42, 0
  br i1 %t43, label %bb11, label %ok.44, !prof !99
ok.44:
  store i32 %t41, ptr %l27
  br label %bb10
bb10:
  %t45 = load i32, ptr %l27, !tbaa !23
  store i32 %t45, ptr %l25, !tbaa !23
  br label %bb12
bb11:
  %t46 = load i32, ptr %l28, !tbaa !23
  %t47 = lshr i32 %t46, 16
  %t48 = and i32 %t46, 65535
  %t49 = icmp eq i32 %t47, 1
  %t50 = select i1 %t49, i32 1, i32 0
  %t51 = icmp eq i32 %t46, 0
  %t52 = shl i32 %t50, 16
  %t53 = or i32 %t52, %t48
  %t54 = select i1 %t51, i32 0, i32 %t53
  %t56 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t54, 0
  store { i32, { i64, ptr } } %t56, ptr %rv
  br label %ret
bb12:
  %t57 = load i32, ptr %l25, !tbaa !23
  store i32 %t57, ptr %l4, !tbaa !23
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/parse:Parser", ptr %t58, i32 0, i32 29
  %t61 = load i32, ptr %l4, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t60, i32 %t61)
  br label %bb13
bb13:
  %t64 = load ptr, ptr %l2, !tbaa !29
  store ptr %t64, ptr %l33, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l3, !tbaa !23
  %t69 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t65, i32 %t66)
  store %"compiler/source:Span" %t69, ptr %l36
  br label %bb14
bb14:
  %t70 = load i32, ptr %l4, !tbaa !23
  store i32 %t70, ptr %l37, !tbaa !23
  %t71 = icmp sge i64 0, 0
  br i1 %t71, label %bb15, label %bb16
bb15:
  %t73 = icmp sle i64 0, 1152921504606846975
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_1d244c71d015ce10_e3593377956a04fc)
  unreachable
bb17:
  %t75 = mul i64 0, 8
  %t76 = insertvalue { i64, ptr } undef, i64 0, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t78 = load %"compiler/source:Span", ptr %l36
  %t79 = load i32, ptr %l37, !tbaa !23
  %t81 = call %"compiler/ast:TypeParam" @compiler_2fast_3aTypeParam_2ector(ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t78, i32 %t79, ptr null, { i64, ptr } %t77, i1 true)
  store %"compiler/ast:TypeParam" %t81, ptr %l41
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_1d244c71d015ce10_e3593377956a04fc)
  unreachable
bb19:
  %t82 = load %"compiler/ast:TypeParam", ptr %l41
  %t83 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store %"compiler/ast:TypeParam" %t82, ptr %t83
  %t84 = load ptr, ptr %l33, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeParam_26_3e_2ePus_H37c80a976dd4e939873b1680de0974c7(ptr %v1, ptr %v1, ptr %t84, ptr %t83)
  br label %bb20
bb20:
  br label %bb69
bb21:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t86)
  store i32 %t88, ptr %l44
  br label %bb22
bb22:
  %t89 = load i32, ptr %l44, !tbaa !23
  store i32 %t89, ptr %l5, !tbaa !23
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t90)
  %t93 = extractvalue { i32, i32 } %t92, 1
  %t94 = extractvalue { i32, i32 } %t92, 0
  store i32 %t94, ptr %l48
  %t95 = icmp ne i32 %t94, 0
  br i1 %t95, label %bb24, label %ok.96, !prof !99
ok.96:
  store i32 %t93, ptr %l47
  br label %bb23
bb23:
  %t97 = load i32, ptr %l47, !tbaa !23
  store i32 %t97, ptr %l45, !tbaa !23
  br label %bb25
bb24:
  %t98 = load i32, ptr %l48, !tbaa !23
  %t99 = lshr i32 %t98, 16
  %t100 = and i32 %t98, 65535
  %t101 = icmp eq i32 %t99, 1
  %t102 = select i1 %t101, i32 1, i32 0
  %t103 = icmp eq i32 %t98, 0
  %t104 = shl i32 %t102, 16
  %t105 = or i32 %t104, %t100
  %t106 = select i1 %t103, i32 0, i32 %t105
  %t108 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t106, 0
  store { i32, { i64, ptr } } %t108, ptr %rv
  br label %ret
bb25:
  %t109 = load i32, ptr %l45, !tbaa !23
  store i32 %t109, ptr %l6, !tbaa !23
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/parse:Parser", ptr %t110, i32 0, i32 29
  %t113 = load i32, ptr %l6, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t112, i32 %t113)
  br label %bb26
bb26:
  store ptr null, ptr %l7, !tbaa !29
  %t116 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t116, ptr %l53
  br label %bb27
bb27:
  %t117 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  %t118 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t117, ptr %t118
  store ptr %t118, ptr %l8, !tbaa !29
  br label %bb28
bb28:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t123 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t120, i32 75)
  store i1 %t123, ptr %l57
  br label %bb29
bb29:
  %t124 = load i1, ptr %l57, !tbaa !21
  %t125 = xor i1 %t124, true
  br i1 %t125, label %bb30, label %bb31
bb30:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t130 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t127, i32 8)
  store i1 %t130, ptr %l62
  br label %bb32
bb31:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb33
bb32:
  %t131 = load i1, ptr %l62, !tbaa !21
  %t132 = xor i1 %t131, true
  store i1 %t132, ptr %l59, !tbaa !21
  br label %bb33
bb33:
  %t134 = load i1, ptr %l59, !tbaa !21
  br i1 %t134, label %bb34, label %bb35
bb34:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclosesAngle(ptr %v0, ptr %t135)
  store i1 %t137, ptr %l66
  br label %bb36
bb35:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb37
bb36:
  %t138 = load i1, ptr %l66, !tbaa !21
  %t139 = xor i1 %t138, true
  store i1 %t139, ptr %l64, !tbaa !21
  br label %bb37
bb37:
  %t141 = load i1, ptr %l64, !tbaa !21
  br i1 %t141, label %bb38, label %bb39
bb38:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t145 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t142, i32 77)
  store i1 %t145, ptr %l71
  br label %bb40
bb39:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb41
bb40:
  %t146 = load i1, ptr %l71, !tbaa !21
  %t147 = xor i1 %t146, true
  store i1 %t147, ptr %l68, !tbaa !21
  br label %bb41
bb41:
  %t149 = load i1, ptr %l68, !tbaa !21
  %t150 = xor i1 %t149, true
  br i1 %t150, label %bb42, label %bb43
bb42:
  br label %bb53
bb43:
  br label %bb44
bb44:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/parse:Parser", ptr %t152, i32 0, i32 11
  %t155 = load i1, ptr %t154, !tbaa !21
  store i1 %t155, ptr %l9, !tbaa !21
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/parse:Parser", ptr %t157, i32 0, i32 20
  %t160 = load i1, ptr %t159, !tbaa !21
  store i1 %t160, ptr %l10, !tbaa !21
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/parse:Parser", ptr %t162, i32 0, i32 11
  store i1 true, ptr %t164, !tbaa !21
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/parse:Parser", ptr %t165, i32 0, i32 20
  store i1 true, ptr %t167, !tbaa !21
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t168)
  %t171 = extractvalue { i32, ptr } %t170, 1
  %t172 = extractvalue { i32, ptr } %t170, 0
  store i32 %t172, ptr %l83
  %t173 = icmp ne i32 %t172, 0
  br i1 %t173, label %bb46, label %ok.174, !prof !99
ok.174:
  store ptr %t171, ptr %l82
  br label %bb45
bb45:
  %t175 = load ptr, ptr %l82, !tbaa !29
  store ptr %t175, ptr %l80, !tbaa !29
  br label %bb47
bb46:
  %t176 = load i32, ptr %l83, !tbaa !23
  %t177 = lshr i32 %t176, 16
  %t178 = and i32 %t176, 65535
  %t179 = icmp eq i32 %t177, 1
  %t180 = select i1 %t179, i32 1, i32 0
  %t181 = icmp eq i32 %t176, 0
  %t182 = shl i32 %t180, 16
  %t183 = or i32 %t182, %t178
  %t184 = select i1 %t181, i32 0, i32 %t183
  %t186 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t184, 0
  store { i32, { i64, ptr } } %t186, ptr %rv
  br label %ret
bb47:
  %t187 = load ptr, ptr %l80, !tbaa !29
  store ptr %t187, ptr %l11, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i1, ptr %l9, !tbaa !21
  %t192 = getelementptr %"compiler/parse:Parser", ptr %t188, i32 0, i32 11
  store i1 %t189, ptr %t192, !tbaa !21
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i1, ptr %l10, !tbaa !21
  %t197 = getelementptr %"compiler/parse:Parser", ptr %t193, i32 0, i32 20
  store i1 %t194, ptr %t197, !tbaa !21
  %t198 = load ptr, ptr %l7, !tbaa !29
  %t200 = icmp eq ptr %t198, null
  br i1 %t200, label %bb48, label %bb49
bb48:
  %t202 = load ptr, ptr %l11, !tbaa !29
  store ptr %t202, ptr %l7, !tbaa !29
  br label %bb51
bb49:
  %t205 = load ptr, ptr %l8, !tbaa !29
  %t206 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v1, ptr %v1, ptr %t205, ptr %t206)
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  br label %bb28
bb53:
  %t209 = load ptr, ptr %l2, !tbaa !29
  store ptr %t209, ptr %l95, !tbaa !29
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load i32, ptr %l5, !tbaa !23
  %t214 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t210, i32 %t211)
  store %"compiler/source:Span" %t214, ptr %l98
  br label %bb54
bb54:
  %t215 = load i32, ptr %l6, !tbaa !23
  store i32 %t215, ptr %l99, !tbaa !23
  %t216 = load ptr, ptr %l7, !tbaa !29
  store ptr %t216, ptr %l100, !tbaa !29
  %t217 = load ptr, ptr %l8, !tbaa !29
  %t219 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eToArr_Ha78c9aad18467c47f48c596ab5d9c770(ptr %v1, ptr %v1, ptr %t217)
  store { i64, ptr } %t219, ptr %l102
  br label %bb55
bb55:
  %t220 = load %"compiler/source:Span", ptr %l98
  %t221 = load i32, ptr %l99, !tbaa !23
  %t222 = load ptr, ptr %l100, !tbaa !29
  %t223 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t224 = call %"compiler/ast:TypeParam" @compiler_2fast_3aTypeParam_2ector(ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t220, i32 %t221, ptr %t222, { i64, ptr } %t223, i1 false)
  store %"compiler/ast:TypeParam" %t224, ptr %l103
  br label %bb56
bb56:
  %t225 = load %"compiler/ast:TypeParam", ptr %l103
  %t226 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store %"compiler/ast:TypeParam" %t225, ptr %t226
  %t227 = load ptr, ptr %l95, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeParam_26_3e_2ePus_H37c80a976dd4e939873b1680de0974c7(ptr %v1, ptr %v1, ptr %t227, ptr %t226)
  br label %bb57
bb57:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t232 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t229, i32 77)
  store i1 %t232, ptr %l107
  br label %bb58
bb58:
  %t233 = load i1, ptr %l107, !tbaa !21
  br i1 %t233, label %bb59, label %bb60
bb59:
  br label %bb68
bb60:
  br label %bb61
bb61:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t237 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t234, i32 99)
  %t238 = extractvalue { i32, i1 } %t237, 1
  %t239 = extractvalue { i32, i1 } %t237, 0
  store i32 %t239, ptr %l112
  %t240 = icmp ne i32 %t239, 0
  br i1 %t240, label %bb63, label %ok.241, !prof !99
ok.241:
  store i1 %t238, ptr %l111
  br label %bb62
bb62:
  %t242 = load i1, ptr %l111, !tbaa !21
  store i1 %t242, ptr %l108, !tbaa !21
  br label %bb64
bb63:
  %t243 = load i32, ptr %l112, !tbaa !23
  %t244 = lshr i32 %t243, 16
  %t245 = and i32 %t243, 65535
  %t246 = icmp eq i32 %t244, 1
  %t247 = select i1 %t246, i32 1, i32 0
  %t248 = icmp eq i32 %t243, 0
  %t249 = shl i32 %t247, 16
  %t250 = or i32 %t249, %t245
  %t251 = select i1 %t248, i32 0, i32 %t250
  %t253 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t251, 0
  store { i32, { i64, ptr } } %t253, ptr %rv
  br label %ret
bb64:
  %t254 = load i1, ptr %l108, !tbaa !21
  %t255 = xor i1 %t254, true
  br i1 %t255, label %bb65, label %bb66
bb65:
  br label %bb69
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  br label %bb5
bb69:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load i1, ptr %l1, !tbaa !21
  %t261 = getelementptr %"compiler/parse:Parser", ptr %t257, i32 0, i32 19
  store i1 %t258, ptr %t261, !tbaa !21
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecloseAngle(ptr %v0, ptr %t262)
  store i32 %t264, ptr %l118
  %t265 = icmp ne i32 %t264, 0
  br i1 %t265, label %bb71, label %ok.266, !prof !99
ok.266:
  br label %bb70
bb70:
  br label %bb72
bb71:
  %t267 = load i32, ptr %l118, !tbaa !23
  %t268 = lshr i32 %t267, 16
  %t269 = and i32 %t267, 65535
  %t270 = icmp eq i32 %t268, 1
  %t271 = select i1 %t270, i32 1, i32 0
  %t272 = icmp eq i32 %t267, 0
  %t273 = shl i32 %t271, 16
  %t274 = or i32 %t273, %t269
  %t275 = select i1 %t272, i32 0, i32 %t274
  %t277 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t275, 0
  store { i32, { i64, ptr } } %t277, ptr %rv
  br label %ret
bb72:
  %t278 = load ptr, ptr %l2, !tbaa !29
  %t280 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeParam_26_3e_2eToA_H6e630dc6e3e172d7593a8563d6f9ad2c(ptr %v1, ptr %v1, ptr %t278)
  store { i64, ptr } %t280, ptr %l121
  br label %bb73
bb73:
  %t281 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t282 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t281, 1
  store { i32, { i64, ptr } } %t282, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evalues(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i32
  %l23 = alloca i64
  %l30 = alloca i1
  %l33 = alloca i1
  %l38 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = xor i1 %a2, true
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprList(ptr %v0, ptr %v2, ptr %t5)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l9
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb4, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l8
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  br label %bb5
bb4:
  %t13 = load i32, ptr %l9, !tbaa !23
  %t14 = lshr i32 %t13, 16
  %t15 = and i32 %t13, 65535
  %t16 = icmp eq i32 %t14, 1
  %t17 = select i1 %t16, i32 1, i32 0
  %t18 = icmp eq i32 %t13, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t15
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t23 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t21, 0
  store { i32, { i64, ptr } } %t23, ptr %rv
  br label %ret
bb5:
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t24, 1
  store { i32, { i64, ptr } } %t25, ptr %rv
  br label %ret
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/parse:Parser", ptr %t26, i32 0, i32 31
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l13
  br label %bb7
bb7:
  %t31 = load i64, ptr %l13, !tbaa !24
  store i64 %t31, ptr %l3, !tbaa !24
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/parse:Parser", ptr %t32, i32 0, i32 31
  store ptr %t34, ptr %l15, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v0, ptr %t35)
  %t38 = extractvalue { i32, ptr } %t37, 1
  %t39 = extractvalue { i32, ptr } %t37, 0
  store i32 %t39, ptr %l19
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb10, label %ok.41, !prof !99
ok.41:
  store ptr %t38, ptr %l18
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l18, !tbaa !29
  store ptr %t42, ptr %l16, !tbaa !29
  br label %bb11
bb10:
  %t43 = load i32, ptr %l19, !tbaa !23
  %t44 = lshr i32 %t43, 16
  %t45 = and i32 %t43, 65535
  %t46 = icmp eq i32 %t44, 1
  %t47 = select i1 %t46, i32 1, i32 0
  %t48 = icmp eq i32 %t43, 0
  %t49 = shl i32 %t47, 16
  %t50 = or i32 %t49, %t45
  %t51 = select i1 %t48, i32 0, i32 %t50
  %t53 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t51, 0
  store { i32, { i64, ptr } } %t53, ptr %rv
  br label %ret
bb11:
  %t54 = load ptr, ptr %l15, !tbaa !29
  %t55 = load ptr, ptr %l16, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t54, ptr %t55)
  br label %bb12
bb12:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/parse:Parser", ptr %t56, i32 0, i32 31
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t58)
  store i64 %t60, ptr %l23
  br label %bb13
bb13:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i64, ptr %l23, !tbaa !24
  %t64 = sub i64 %t62, %t61
  %t67 = getelementptr %"compiler/parse:NameList", ptr %a1, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t73 = icmp sge i64 %t64, %t70
  br i1 %t73, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb17
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t78 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t75, i32 75)
  store i1 %t78, ptr %l33
  br label %bb16
bb16:
  %t79 = load i1, ptr %l33, !tbaa !21
  %t80 = xor i1 %t79, true
  store i1 %t80, ptr %l30, !tbaa !21
  br label %bb17
bb17:
  %t82 = load i1, ptr %l30, !tbaa !21
  br i1 %t82, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb8
bb22:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/parse:Parser", ptr %t83, i32 0, i32 31
  %t86 = load i64, ptr %l3, !tbaa !24
  %t89 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t85, i64 %t86)
  store { i64, ptr } %t89, ptr %l38
  br label %bb23
bb23:
  %t90 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t91 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t90, 1
  store { i32, { i64, ptr } } %t91, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l5 = alloca i32
  %l7 = alloca i1
  %l9 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l13 = alloca i32
  %l16 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i32, ptr %l1, !range !{i32 0, i32 114}
  store i32 %t4, ptr %l5
  %t7 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftoken_3aTok(ptr %l3, ptr %l5)
  store i1 %t7, ptr %l7
  br label %bb2
bb2:
  %t8 = load i1, ptr %l7, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l9, !tbaa !29
  %t12 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t14 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s1, i32 %t12)
  store { i64, ptr } %t14, ptr %l11
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t15 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  %t17 = extractvalue { i64, ptr } %t15, 1
  %t18 = mul i64 %t16, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t18)
  call void @llvm.memcpy.p0.p0.i64(ptr %t19, ptr %t17, i64 %t18, i1 false)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  %t22 = load ptr, ptr %l9, !tbaa !29
  %t24 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s1, ptr %t22, { i64, ptr } %t21)
  store i32 %t24, ptr %l13
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb7, label %ok.26, !prof !99
ok.26:
  br label %bb6
bb6:
  br label %bb8
bb7:
  %t27 = load i32, ptr %l13, !tbaa !23
  %t28 = lshr i32 %t27, 16
  %t29 = and i32 %t27, 65535
  %t30 = icmp eq i32 %t28, 1
  %t31 = select i1 %t30, i32 1, i32 0
  %t32 = icmp eq i32 %t27, 0
  %t33 = shl i32 %t31, 16
  %t34 = or i32 %t33, %t29
  %t35 = select i1 %t32, i32 0, i32 %t34
  call void @__olang_scope_close(ptr %s1)
  %t37 = insertvalue { i32, i32 } zeroinitializer, i32 %t35, 0
  store { i32, i32 } %t37, ptr %rv
  br label %ret
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t38)
  store i32 %t40, ptr %l16
  br label %bb10
bb10:
  %t41 = load i32, ptr %l16, !tbaa !23
  %t42 = insertvalue { i32, i32 } zeroinitializer, i32 %t41, 1
  store { i32, i32 } %t42, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewithContract(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l24 = alloca %"compiler/ast:Sig"
  %rv = alloca ptr
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
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/ast:Sig", ptr %t7, i32 0, i32 0
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Sig", ptr %t11, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Sig", ptr %t15, i32 0, i32 2
  %t18 = load i1, ptr %t17, !tbaa !21
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/ast:Sig", ptr %t19, i32 0, i32 3
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Sig", ptr %t23, i32 0, i32 4
  %t26 = load i1, ptr %t25, !tbaa !21
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Sig", ptr %t29, i32 0, i32 6
  %t32 = load i1, ptr %t31, !tbaa !21
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/ast:Sig", ptr %t33, i32 0, i32 7
  %t36 = load i1, ptr %t35, !tbaa !21
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/ast:Sig", ptr %t37, i32 0, i32 8
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  %t50 = call %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v2, ptr %v1, ptr %v3, { i64, ptr } %t10, { i64, ptr } %t14, i1 %t18, { i64, ptr } %t22, i1 %t26, ptr %t27, i1 %t32, i1 %t36, { i64, ptr } %t40)
  store %"compiler/ast:Sig" %t50, ptr %l24
  br label %bb4
bb4:
  %t51 = load %"compiler/ast:Sig", ptr %l24
  %t52 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 96, i64 8)
  store %"compiler/ast:Sig" %t51, ptr %t52
  store ptr %t52, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fparse_2epromiseWord(i32 %a0) #0 {
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
  %t3 = trunc i64 57 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb11
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 58 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t13 = trunc i64 59 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t18 = trunc i64 60 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t23 = trunc i64 61 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb29
bb12:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t28 = trunc i64 62 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb13, label %bb14
bb13:
  br label %bb23
bb14:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t33 = trunc i64 63 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 64 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t43 = trunc i64 65 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t48 = trunc i64 66 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_674728a9afb53deb_f473243cfc12c1d7)
  unreachable
bb29:
  %t51 = load i1, ptr %l1, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2evaluePattern(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call i1 @compiler_2fparse_2eisLiteral(ptr %v0, ptr %t16)
  store i1 %t18, ptr %l9
  br label %bb6
bb6:
  %t19 = load i1, ptr %l9, !tbaa !21
  %t20 = xor i1 %t19, true
  store i1 %t20, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_c78d1b8d8b2c466f_3d420e0461112043)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a declaration" }>, align 8
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
@.d1 = private constant <{ i64, [79 x i8] }> <{ i64 0, [79 x i8] c"a type's name after '@' - an attribute is written '@Name' or '@Name(arguments)'" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
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
@olang_2esole_2ecompiler_2fparse_3aNameList_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2fparse_3aNameList_2e1 = weak hidden constant i1 false
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fast_3aSig_2e3 = weak hidden constant i1 false
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a declaration" }>, align 8
@.d5 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a declaration" }>, align 8
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a join" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a name" }>, align 8
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

@.d8 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"PadStart" }>, align 8
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"PadEnd" }>, align 8
@olang_2esole_2ecompiler_2fast_3aPromise_2e2 = weak hidden constant i1 false
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
declare i1 @compiler_2fparse_2eisOrdering(i32 %a0)
@olang_loc_1b8b9060a075dfbb_f19ba567ef63a0af = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eLen_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %a0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eitem(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %v0, i32 %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aAttr_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %a0)
@G_2ecompiler_2ftoken_2eSpace = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\02" }>, align 8
declare i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %a0, i8 %a1)
declare { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsCall(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eargs(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/ast:Attr" @compiler_2fast_3aAttr_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, ptr %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aAttr_26_3e_2ePush_3ccompiler_2fast_3aAttr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aAttr_26_3e_2eToArray_3ccompiler_2fast_3aAttr_26_3e(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ftoken_2eLineBreak = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %a0, i32 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_562ee49de0d7f4dc_ca929e902ecee878 = external constant [0 x i8]
declare %"compiler/ast:Compr" @compiler_2fast_3aCompr_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5, i1 %a6, i64 %a7)
@olang_loc_8028beeed4c0afcb_93e9486db4deb497 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eLen_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ePush_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/ast:ContractBlock" @compiler_2fast_3aContractBlock_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarListCount(ptr %v0, i64 %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekeywordFieldHere(ptr %v0, ptr %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/parse:NameList" @compiler_2fparse_3aNameList_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_88b4df24f395cba0_7a8585039ef7582c = external constant [0 x i8]
declare %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_4e443757629da3cd_7cffa119f74ad1b9 = external constant [0 x i8]
@olang_loc_67de16d9be6ee138_13a4ec417790e6ac = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_7c64805d8f6adba5_161f0857cfe46039 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eLen_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eTrunc_H311fd53ced078d1b110127cfa5549832(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_1981dec301b76378_38f305e42bd9bf3c = external constant [0 x i8]
@olang_loc_cd306f178609e3e5_44435844e9b3da89 = external constant [0 x i8]
declare %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, i1 %a4, ptr %a5, i1 %a6, i1 %a7, { i64, ptr } %a8)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ector(ptr %v0, i64 %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epath(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2ePush_3ccompiler_2fast_3aPath_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_7f2178e2c302e3c6_11752dec4e05ebca = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPath_26_3e_2eToArray_3ccompiler_2fast_3aPath_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i1 %a2, i1 %a3)
@olang_loc_30a3a318854048f4_b503dd06e25e7b98 = external constant [0 x i8]
@olang_loc_e19d14955fbda001_52d897baee579005 = external constant [0 x i8]
declare %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, %"compiler/source:Span" %a0, ptr %a1, i32 %a2, ptr %a3, { i64, ptr } %a4, { i64, ptr } %a5, i1 %a6, i1 %a7, { i64, ptr } %a8, ptr %a9, i32 %a10)
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v1, ptr %a0, %"compiler/token:Token" %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evarDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
@G_2ecompiler_2fmsgs_2eEndOfLine = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2fmsgs_2eEndOfFile = external constant <{ [8 x i8], ptr }>
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprAsType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisQualifiedType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f067807cf96ff280_872aeb81d2c2c23c = external constant [0 x i8]
@olang_loc_882dfc00c36114e5_890842da0dcd92c9 = external constant [0 x i8]
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @compiler_2fparse_2eisOperandEndTok(i32 %a0)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/ast:JoinS" @compiler_2fast_3aJoinS_2ector(ptr %v0, ptr %v1, ptr %v2, i1 %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_3f19ed1436e26d3c_ab56bc721c08c978 = external constant [0 x i8]
@olang_loc_4a6a3f74f4bc8889_5f054cc6a05b49e5 = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyOnLine(ptr %v0)
declare { i64, ptr } @compiler_2fparse_2elineBodyRefused(ptr %v0, i32 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineBodyNotSimple(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_a66f16e9609fdd27_2fbef1e5bed159db = external constant [0 x i8]
declare i1 @compiler_2fparse_2eisWordKeyword(i32 %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_caaeb8844a43a47_292034e417eae4cb = external constant [0 x i8]
@olang_loc_56ae34a9066c1560_be19fd249755f1d4 = external constant [0 x i8]
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2eLen_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eellipsis(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparam(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ePush_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2espreadRules(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3)
@olang_loc_1ff519fafba2f33_696c4c198bd75d77 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPromise_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:Promise" @compiler_2fast_3aPromise_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, i32 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPromise_26_3e_2ePush_3ccompiler_2fast_3aPromise_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPromise_26_3e_2eToArr_H644015b27d5daf4fb4fcf02905144e4c(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2eHas_3cI32_2c_20I64_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2ePut_3cI32_2c_20I64_3e(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etrailing(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2estmtRoom(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eifStmt(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eforStmt(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ematchBody(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
@olang_loc_405430454c9e5d04_720bbb7e3dc9fd0 = external constant [0 x i8]
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eatEnd(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprList(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eAt_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_52ee6a0603ddde11_c2fcf6abb1634cfd = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etryStmt(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eidenStmt(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprStmt(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_98b5a7b541ba17c1_7be6170cba707005 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopIfRest(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_411e8cbc479e6c68_8a93085e0dfe7db4 = external constant [0 x i8]
@olang_loc_a3bb9cce88491c55_2084ae246c483bc1 = external constant [0 x i8]
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eafter(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2edeclWordBody(i32 %a0)
declare i32 @compiler_2fparse_2edeclWord(i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmut(ptr %v0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epackedWord(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBody(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_e0fefcf45e67d736_e2134333a7c352a2 = external constant [0 x i8]
declare %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i32 %a5, i1 %a6)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eopenAngle(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeParam_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_1d244c71d015ce10_e3593377956a04fc = external constant [0 x i8]
declare %"compiler/ast:TypeParam" @compiler_2fast_3aTypeParam_2ector(ptr %v0, ptr %v1, ptr %v2, %"compiler/source:Span" %a0, i32 %a1, ptr %a2, { i64, ptr } %a3, i1 %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeParam_26_3e_2ePus_H37c80a976dd4e939873b1680de0974c7(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eToArr_Ha78c9aad18467c47f48c596ab5d9c770(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecloseAngle(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeParam_26_3e_2eToA_H6e630dc6e3e172d7593a8563d6f9ad2c(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_674728a9afb53deb_f473243cfc12c1d7 = external constant [0 x i8]
declare i1 @compiler_2fparse_2eisLiteral(ptr %v0, ptr %a0)
@olang_loc_c78d1b8d8b2c466f_3d420e0461112043 = external constant [0 x i8]

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
