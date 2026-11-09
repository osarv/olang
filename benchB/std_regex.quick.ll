source_filename = "std_regex.quick.ll"
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
%"std/regex:Regex" = type { ptr }
%"std/regex:parser" = type { { i64, ptr }, ptr, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i64, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/regex:prog" = type { { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1 }
%"std/regex:Match" = type { { i64, ptr }, { i64, ptr }, i64, i64 }
%"std/regex:searcher" = type { { i64, ptr }, ptr, ptr, ptr, i1 }
%"std/regex:machine" = type { ptr, { i64, ptr }, i64, ptr, ptr, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i64 }
%"std/regex:dfa" = type { ptr, { i64, ptr }, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/regex:threads" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64 }
%"std/regex:node" = type { i64, i64, i64, i64, i64, i1, i1, i1 }
@G_2estd_2fregex_2eatLineEnd = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eatLineStart = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eatNotWord = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eatTextEnd = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eatTextStart = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eatWord = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2edfaMaxStates = constant <{ [8 x i8] }> <{ [8 x i8] c"\88\13\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2edfaMinText = constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2emaxProgram = constant <{ [8 x i8] }> <{ [8 x i8] c"\A0\86\01\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2emaxRepeat = constant <{ [8 x i8] }> <{ [8 x i8] c"\E8\03\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2enAlt = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2enAny = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2enAssert = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2enCat = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2enClass = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2enEmpty = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2enGroup = constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2enLit = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2enRepeat = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eopAny = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eopAssert = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eopChar = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eopClass = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eopJmp = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eopMatch = constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eopSave = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fregex_2eopSplit = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
define dso_local { i32, %"std/regex:Regex" } @std_2fregex_2eRegex_2eCompile(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/regex:parser"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i32
  %l23 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca i64
  %l45 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca i64
  %l51 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca i64
  %l60 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l68 = alloca i64
  %l72 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l97 = alloca ptr
  %l98 = alloca i64
  %l103 = alloca i64
  %l106 = alloca i1
  %l109 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i64
  %l116 = alloca i64
  %l123 = alloca ptr
  %l124 = alloca i64
  %l128 = alloca ptr
  %l129 = alloca i64
  %l133 = alloca ptr
  %l134 = alloca i64
  %l138 = alloca ptr
  %l139 = alloca i64
  %l145 = alloca i32
  %l147 = alloca ptr
  %l148 = alloca i64
  %l152 = alloca i64
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l155 = alloca i64
  %l157 = alloca i64
  %l160 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l163 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca i64
  %l167 = alloca i64
  %l171 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l175 = alloca %"std/regex:Regex"
  %rv = alloca { i32, %"std/regex:Regex" }
  %t51 = alloca { i64, [1 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"std/regex:parser" @std_2fregex_3aparser_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
  store %"std/regex:parser" %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 120, i64 8)
  store ptr %t4, ptr %lp1
  %t5 = load %"std/regex:parser", ptr %l11
  %t6 = load ptr, ptr %lp1
  store %"std/regex:parser" %t5, ptr %t6
  %t7 = load ptr, ptr %lp1
  %t8 = getelementptr %"std/regex:parser", ptr %t7, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l12, !tbaa !29
  %t10 = ptrtoint ptr %v1 to i64
  store i64 %t10, ptr %l13, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l12, !tbaa !29
  %t14 = call ptr @__olang_region_or(ptr %t13, ptr %v1)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l13, !tbaa !24
  br label %bb3
bb3:
  %t16 = load ptr, ptr %lp1
  %t17 = getelementptr %"std/regex:parser", ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"std/regex:prog", ptr %t18, i32 0, i32 6
  %t21 = load i64, ptr %l13
  %t22 = inttoptr i64 %t21 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %t22, ptr %v1, ptr %t20, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb4
bb4:
  %t24 = load ptr, ptr %lp1
  %t26 = call { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2ealternation(ptr %v1, ptr %t24)
  %t27 = extractvalue { i32, i64 } %t26, 1
  %t28 = extractvalue { i32, i64 } %t26, 0
  store i32 %t28, ptr %l20
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb6, label %ok.30, !prof !99
ok.30:
  store i64 %t27, ptr %l19
  br label %bb5
bb5:
  %t31 = load i64, ptr %l19, !tbaa !24
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb7
bb6:
  %t32 = load i32, ptr %l20, !tbaa !23
  %t33 = lshr i32 %t32, 16
  %t34 = and i32 %t32, 65535
  %t35 = icmp eq i32 %t33, 1
  %t36 = select i1 %t35, i32 1, i32 0
  %t37 = icmp eq i32 %t32, 0
  %t38 = shl i32 %t36, 16
  %t39 = or i32 %t38, %t34
  %t40 = select i1 %t37, i32 0, i32 %t39
  %t42 = insertvalue { i32, %"std/regex:Regex" } zeroinitializer, i32 %t40, 0
  store { i32, %"std/regex:Regex" } %t42, ptr %rv
  br label %ret
bb7:
  %t43 = load i64, ptr %l17, !tbaa !24
  store i64 %t43, ptr %l2, !tbaa !24
  %t44 = load ptr, ptr %lp1
  %t46 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v1, ptr %t44)
  store i1 %t46, ptr %l23
  br label %bb8
bb8:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t48 = load ptr, ptr %lp1
  %t49 = getelementptr %"std/regex:parser", ptr %t48, i32 0, i32 2
  %t50 = load i64, ptr %t49, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t51
  %t52 = getelementptr { i64, [1 x i64] }, ptr %t51, i32 0, i32 0
  store i64 1, ptr %t52
  %t54 = insertvalue { i64 } undef, i64 %t50, 0
  %t55 = getelementptr { i64, [1 x i64] }, ptr %t51, i32 0, i32 1
  store { i64 } %t54, ptr %t55
  %t56 = load { i64, [1 x i64] }, ptr %t51
  %t57 = call ptr @__olang_errpay_push()
  %t58 = ptrtoint ptr %t57 to i64
  %t61 = inttoptr i64 %t58 to ptr
  %t62 = call ptr @__olang_scope_alloc_a(ptr %t61, i64 16, i64 8)
  store { i64, [1 x i64] } %t56, ptr %t62
  call void @__olang_errpay_set(ptr %t62)
  %t65 = insertvalue { i32, %"std/regex:Regex" } zeroinitializer, i32 65537, 0
  store { i32, %"std/regex:Regex" } %t65, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t66 = load ptr, ptr %lp1
  %t67 = getelementptr %"std/regex:parser", ptr %t66, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l3, !tbaa !29
  %t70 = load ptr, ptr %l3, !tbaa !29
  store ptr %t70, ptr %l30, !tbaa !29
  %t71 = ptrtoint ptr %v1 to i64
  store i64 %t71, ptr %l31, !tbaa !24
  %t72 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t72, label %bb12, label %bb13
bb12:
  %t74 = load ptr, ptr %l30, !tbaa !29
  %t75 = call ptr @__olang_region_or(ptr %t74, ptr %v1)
  %t76 = ptrtoint ptr %t75 to i64
  store i64 %t76, ptr %l31, !tbaa !24
  br label %bb13
bb13:
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t78 = load i64, ptr @G_2estd_2fregex_2eopSave, !tbaa !24
  %t79 = load i64, ptr %l31
  %t80 = inttoptr i64 %t79 to ptr
  %t83 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %t80, ptr %t77, i64 %t78, i64 0, i64 0, i64 0)
  store i64 %t83, ptr %l35
  br label %bb14
bb14:
  %t84 = load ptr, ptr %lp1
  %t85 = load i64, ptr %l2, !tbaa !24
  %t88 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v1, ptr %t84, i64 %t85)
  store i32 %t88, ptr %l38
  %t89 = icmp ne i32 %t88, 0
  br i1 %t89, label %bb16, label %ok.90, !prof !99
ok.90:
  br label %bb15
bb15:
  br label %bb17
bb16:
  %t91 = load i32, ptr %l38, !tbaa !23
  %t92 = lshr i32 %t91, 16
  %t93 = and i32 %t91, 65535
  %t94 = icmp eq i32 %t92, 1
  %t95 = select i1 %t94, i32 1, i32 0
  %t96 = icmp eq i32 %t91, 0
  %t97 = shl i32 %t95, 16
  %t98 = or i32 %t97, %t93
  %t99 = select i1 %t96, i32 0, i32 %t98
  %t101 = insertvalue { i32, %"std/regex:Regex" } zeroinitializer, i32 %t99, 0
  store { i32, %"std/regex:Regex" } %t101, ptr %rv
  br label %ret
bb17:
  %t102 = load ptr, ptr %l3, !tbaa !29
  store ptr %t102, ptr %l40, !tbaa !29
  %t103 = ptrtoint ptr %v1 to i64
  store i64 %t103, ptr %l41, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t104, label %bb18, label %bb19
bb18:
  %t106 = load ptr, ptr %l40, !tbaa !29
  %t107 = call ptr @__olang_region_or(ptr %t106, ptr %v1)
  %t108 = ptrtoint ptr %t107 to i64
  store i64 %t108, ptr %l41, !tbaa !24
  br label %bb19
bb19:
  %t109 = load ptr, ptr %l3, !tbaa !29
  %t110 = load i64, ptr @G_2estd_2fregex_2eopSave, !tbaa !24
  %t111 = load i64, ptr %l41
  %t112 = inttoptr i64 %t111 to ptr
  %t115 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %t112, ptr %t109, i64 %t110, i64 1, i64 0, i64 0)
  store i64 %t115, ptr %l45
  br label %bb20
bb20:
  %t116 = load ptr, ptr %l3, !tbaa !29
  store ptr %t116, ptr %l46, !tbaa !29
  %t117 = ptrtoint ptr %v1 to i64
  store i64 %t117, ptr %l47, !tbaa !24
  %t118 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t118, label %bb21, label %bb22
bb21:
  %t120 = load ptr, ptr %l46, !tbaa !29
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr %v1)
  %t122 = ptrtoint ptr %t121 to i64
  store i64 %t122, ptr %l47, !tbaa !24
  br label %bb22
bb22:
  %t123 = load ptr, ptr %l3, !tbaa !29
  %t124 = load i64, ptr @G_2estd_2fregex_2eopMatch, !tbaa !24
  %t125 = load i64, ptr %l47
  %t126 = inttoptr i64 %t125 to ptr
  %t129 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %t126, ptr %t123, i64 %t124, i64 0, i64 0, i64 0)
  store i64 %t129, ptr %l51
  br label %bb23
bb23:
  %t130 = load ptr, ptr %l3, !tbaa !29
  store ptr %t130, ptr %l52, !tbaa !29
  %t131 = ptrtoint ptr %v1 to i64
  store i64 %t131, ptr %l53, !tbaa !24
  %t132 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t132, label %bb24, label %bb25
bb24:
  %t134 = load ptr, ptr %l52, !tbaa !29
  %t135 = call ptr @__olang_region_or(ptr %t134, ptr %v1)
  %t136 = ptrtoint ptr %t135 to i64
  store i64 %t136, ptr %l53, !tbaa !24
  br label %bb25
bb25:
  %t137 = load ptr, ptr %l3, !tbaa !29
  %t138 = load i64, ptr %l53
  %t139 = inttoptr i64 %t138 to ptr
  call void @std_2fregex_2estd_2fregex_3aprog_2efindPrefix(ptr %t139, ptr %t137)
  br label %bb26
bb26:
  %t141 = load ptr, ptr %l3, !tbaa !29
  store ptr %t141, ptr %l56, !tbaa !29
  %t142 = load ptr, ptr %l3, !tbaa !29
  store ptr %t142, ptr %l57, !tbaa !29
  %t143 = ptrtoint ptr %v1 to i64
  store i64 %t143, ptr %l58, !tbaa !24
  %t144 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t144, label %bb27, label %bb28
bb27:
  %t146 = load ptr, ptr %l57, !tbaa !29
  %t147 = call ptr @__olang_region_or(ptr %t146, ptr %v1)
  %t148 = ptrtoint ptr %t147 to i64
  store i64 %t148, ptr %l58, !tbaa !24
  br label %bb28
bb28:
  %t149 = load i64, ptr %l58
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = ptrtoint ptr %t150 to i64
  store i64 %t151, ptr %l60, !tbaa !24
  %t152 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e9
  br i1 %t152, label %bb29, label %bb30
bb29:
  %t154 = load i64, ptr %l58
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = call ptr @__olang_region_make(ptr %t155)
  %t157 = ptrtoint ptr %t156 to i64
  store i64 %t157, ptr %l60, !tbaa !24
  br label %bb30
bb30:
  %t158 = load ptr, ptr %l3, !tbaa !29
  %t159 = load i64, ptr %l60
  %t160 = inttoptr i64 %t159 to ptr
  %t162 = call { i64, ptr } @std_2fregex_2estd_2fregex_3aprog_2epack(ptr %v1, ptr %t160, ptr %t158)
  store { i64, ptr } %t162, ptr %l63
  br label %bb31
bb31:
  %t163 = load ptr, ptr %l56, !tbaa !29
  %t164 = getelementptr %"std/regex:prog", ptr %t163, i32 0, i32 9
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  store { i64, ptr } %t165, ptr %l64, !tbaa !27
  %t166 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t167 = load ptr, ptr %l56, !tbaa !29
  %t168 = getelementptr %"std/regex:prog", ptr %t167, i32 0, i32 9
  store { i64, ptr } %t166, ptr %t168, !tbaa !27
  %t169 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e9
  br i1 %t169, label %bb32, label %bb33
bb32:
  %t171 = load { i64, ptr }, ptr %l64
  %t172 = extractvalue { i64, ptr } %t171, 1
  call void @__olang_region_release(ptr %t172)
  store { i64, ptr } zeroinitializer, ptr %l64
  br label %bb33
bb33:
  %t173 = load ptr, ptr %l3, !tbaa !29
  %t175 = getelementptr %"std/regex:prog", ptr %t173, i32 0, i32 12
  store i1 true, ptr %t175, !tbaa !21
  store i64 0, ptr %l4, !tbaa !24
  %t176 = load ptr, ptr %l3, !tbaa !29
  store ptr %t176, ptr %l67, !tbaa !29
  %t177 = ptrtoint ptr %v1 to i64
  store i64 %t177, ptr %l68, !tbaa !24
  %t178 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t178, label %bb34, label %bb35
bb34:
  %t180 = load ptr, ptr %l67, !tbaa !29
  %t181 = call ptr @__olang_region_or(ptr %t180, ptr %v1)
  %t182 = ptrtoint ptr %t181 to i64
  store i64 %t182, ptr %l68, !tbaa !24
  br label %bb35
bb35:
  %t183 = load ptr, ptr %l3, !tbaa !29
  %t185 = getelementptr %"std/regex:prog", ptr %t183, i32 0, i32 1
  %t186 = load i64, ptr %l68
  %t187 = inttoptr i64 %t186 to ptr
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t187, ptr %t185)
  store i64 %t189, ptr %l72
  br label %bb36
bb36:
  %t190 = load i64, ptr %l72, !tbaa !24
  store i64 %t190, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t191 = load i64, ptr %l5, !tbaa !24
  %t192 = load i64, ptr %l4, !tbaa !24
  %t195 = icmp sgt i64 %t191, %t192
  br i1 %t195, label %bb37, label %bb38
bb37:
  %t197 = load i64, ptr %l6, !tbaa !24
  %t199 = icmp sgt i64 %t197, 0
  br i1 %t199, label %bb39, label %bb40
bb38:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb42
bb39:
  %t201 = load i64, ptr %l5, !tbaa !24
  %t202 = load i64, ptr %l4, !tbaa !24
  %t205 = sub i64 %t201, %t202
  %t206 = load i64, ptr %l6, !tbaa !24
  %t209 = add i64 %t205, %t206
  %t211 = sub i64 %t209, 1
  %t212 = load i64, ptr %l6, !tbaa !24
  %t215 = sdiv i64 %t211, %t212
  store i64 %t215, ptr %l79, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb41
bb41:
  %t217 = load i64, ptr %l79, !tbaa !24
  store i64 %t217, ptr %l76, !tbaa !24
  br label %bb42
bb42:
  %t218 = load i64, ptr %l76, !tbaa !24
  store i64 %t218, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb43
bb43:
  %t219 = load i64, ptr %l8, !tbaa !24
  %t220 = load i64, ptr %l7, !tbaa !24
  %t223 = icmp slt i64 %t219, %t220
  %t225 = xor i1 %t223, true
  br i1 %t225, label %bb44, label %bb45
bb44:
  br label %bb63
bb45:
  br label %bb46
bb46:
  %t227 = load i64, ptr %l4, !tbaa !24
  %t228 = load i64, ptr %l8, !tbaa !24
  %t229 = load i64, ptr %l6, !tbaa !24
  %t232 = mul i64 %t228, %t229
  %t235 = add i64 %t227, %t232
  store i64 %t235, ptr %l9, !tbaa !24
  %t237 = load ptr, ptr %l3, !tbaa !29
  store ptr %t237, ptr %l97, !tbaa !29
  %t238 = ptrtoint ptr %v1 to i64
  store i64 %t238, ptr %l98, !tbaa !24
  %t239 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t239, label %bb47, label %bb48
bb47:
  %t241 = load ptr, ptr %l97, !tbaa !29
  %t242 = call ptr @__olang_region_or(ptr %t241, ptr %v1)
  %t243 = ptrtoint ptr %t242 to i64
  store i64 %t243, ptr %l98, !tbaa !24
  br label %bb48
bb48:
  %t244 = load ptr, ptr %l3, !tbaa !29
  %t246 = getelementptr %"std/regex:prog", ptr %t244, i32 0, i32 1
  %t247 = load i64, ptr %l9, !tbaa !24
  %t248 = load i64, ptr %l98
  %t249 = inttoptr i64 %t248 to ptr
  %t252 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t249, ptr %t246, i64 %t247)
  store i64 %t252, ptr %l103
  br label %bb49
bb49:
  %t253 = load i64, ptr @G_2estd_2fregex_2eopAssert, !tbaa !24
  %t254 = load i64, ptr %l103, !tbaa !24
  %t256 = icmp eq i64 %t254, %t253
  br i1 %t256, label %bb50, label %bb51
bb50:
  %t258 = load i64, ptr %l9, !tbaa !24
  %t260 = icmp eq i64 %t258, 1
  br i1 %t260, label %bb52, label %bb53
bb51:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb58
bb52:
  %t262 = load ptr, ptr %l3, !tbaa !29
  store ptr %t262, ptr %l110, !tbaa !29
  %t263 = ptrtoint ptr %v1 to i64
  store i64 %t263, ptr %l111, !tbaa !24
  %t264 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t264, label %bb54, label %bb55
bb53:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb57
bb54:
  %t266 = load ptr, ptr %l110, !tbaa !29
  %t267 = call ptr @__olang_region_or(ptr %t266, ptr %v1)
  %t268 = ptrtoint ptr %t267 to i64
  store i64 %t268, ptr %l111, !tbaa !24
  br label %bb55
bb55:
  %t269 = load ptr, ptr %l3, !tbaa !29
  %t271 = getelementptr %"std/regex:prog", ptr %t269, i32 0, i32 2
  %t272 = load i64, ptr %l9, !tbaa !24
  %t273 = load i64, ptr %l111
  %t274 = inttoptr i64 %t273 to ptr
  %t277 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t274, ptr %t271, i64 %t272)
  store i64 %t277, ptr %l116
  br label %bb56
bb56:
  %t278 = load i64, ptr @G_2estd_2fregex_2eatTextStart, !tbaa !24
  %t279 = load i64, ptr %l116, !tbaa !24
  %t281 = icmp eq i64 %t279, %t278
  store i1 %t281, ptr %l109, !tbaa !21
  br label %bb57
bb57:
  %t283 = load i1, ptr %l109, !tbaa !21
  %t284 = xor i1 %t283, true
  store i1 %t284, ptr %l106, !tbaa !21
  br label %bb58
bb58:
  %t286 = load i1, ptr %l106, !tbaa !21
  br i1 %t286, label %bb59, label %bb60
bb59:
  %t287 = load ptr, ptr %l3, !tbaa !29
  %t289 = getelementptr %"std/regex:prog", ptr %t287, i32 0, i32 12
  store i1 false, ptr %t289, !tbaa !21
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t290 = load i64, ptr %l8, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l8, !tbaa !24
  br label %bb43
bb63:
  %t294 = load ptr, ptr %l3, !tbaa !29
  store ptr %t294, ptr %l123, !tbaa !29
  %t295 = ptrtoint ptr %v1 to i64
  store i64 %t295, ptr %l124, !tbaa !24
  %t296 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t296, label %bb64, label %bb65
bb64:
  %t298 = load ptr, ptr %l123, !tbaa !29
  %t299 = call ptr @__olang_region_or(ptr %t298, ptr %v1)
  %t300 = ptrtoint ptr %t299 to i64
  store i64 %t300, ptr %l124, !tbaa !24
  br label %bb65
bb65:
  %t301 = load ptr, ptr %l3, !tbaa !29
  %t303 = getelementptr %"std/regex:prog", ptr %t301, i32 0, i32 1
  %t304 = load i64, ptr %l124
  %t305 = inttoptr i64 %t304 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t305, ptr %t303)
  br label %bb66
bb66:
  %t307 = load ptr, ptr %l3, !tbaa !29
  store ptr %t307, ptr %l128, !tbaa !29
  %t308 = ptrtoint ptr %v1 to i64
  store i64 %t308, ptr %l129, !tbaa !24
  %t309 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t309, label %bb67, label %bb68
bb67:
  %t311 = load ptr, ptr %l128, !tbaa !29
  %t312 = call ptr @__olang_region_or(ptr %t311, ptr %v1)
  %t313 = ptrtoint ptr %t312 to i64
  store i64 %t313, ptr %l129, !tbaa !24
  br label %bb68
bb68:
  %t314 = load ptr, ptr %l3, !tbaa !29
  %t316 = getelementptr %"std/regex:prog", ptr %t314, i32 0, i32 2
  %t317 = load i64, ptr %l129
  %t318 = inttoptr i64 %t317 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t318, ptr %t316)
  br label %bb69
bb69:
  %t320 = load ptr, ptr %l3, !tbaa !29
  store ptr %t320, ptr %l133, !tbaa !29
  %t321 = ptrtoint ptr %v1 to i64
  store i64 %t321, ptr %l134, !tbaa !24
  %t322 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t322, label %bb70, label %bb71
bb70:
  %t324 = load ptr, ptr %l133, !tbaa !29
  %t325 = call ptr @__olang_region_or(ptr %t324, ptr %v1)
  %t326 = ptrtoint ptr %t325 to i64
  store i64 %t326, ptr %l134, !tbaa !24
  br label %bb71
bb71:
  %t327 = load ptr, ptr %l3, !tbaa !29
  %t329 = getelementptr %"std/regex:prog", ptr %t327, i32 0, i32 3
  %t330 = load i64, ptr %l134
  %t331 = inttoptr i64 %t330 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t331, ptr %t329)
  br label %bb72
bb72:
  %t333 = load ptr, ptr %l3, !tbaa !29
  store ptr %t333, ptr %l138, !tbaa !29
  %t334 = ptrtoint ptr %v1 to i64
  store i64 %t334, ptr %l139, !tbaa !24
  %t335 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t335, label %bb73, label %bb74
bb73:
  %t337 = load ptr, ptr %l138, !tbaa !29
  %t338 = call ptr @__olang_region_or(ptr %t337, ptr %v1)
  %t339 = ptrtoint ptr %t338 to i64
  store i64 %t339, ptr %l139, !tbaa !24
  br label %bb74
bb74:
  %t340 = load ptr, ptr %l3, !tbaa !29
  %t342 = getelementptr %"std/regex:prog", ptr %t340, i32 0, i32 4
  %t343 = load i64, ptr %l139
  %t344 = inttoptr i64 %t343 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t344, ptr %t342)
  br label %bb75
bb75:
  %t346 = load ptr, ptr %lp1
  %t347 = getelementptr %"std/regex:parser", ptr %t346, i32 0, i32 9
  store i1 true, ptr %t347, !tbaa !21
  %t348 = load ptr, ptr %lp1
  %t349 = load i64, ptr %l2, !tbaa !24
  %t352 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v1, ptr %t348, i64 %t349)
  store i32 %t352, ptr %l145
  %t353 = icmp ne i32 %t352, 0
  br i1 %t353, label %bb77, label %ok.354, !prof !99
ok.354:
  br label %bb76
bb76:
  br label %bb78
bb77:
  %t355 = load i32, ptr %l145, !tbaa !23
  %t356 = lshr i32 %t355, 16
  %t357 = and i32 %t355, 65535
  %t358 = icmp eq i32 %t356, 1
  %t359 = select i1 %t358, i32 1, i32 0
  %t360 = icmp eq i32 %t355, 0
  %t361 = shl i32 %t359, 16
  %t362 = or i32 %t361, %t357
  %t363 = select i1 %t360, i32 0, i32 %t362
  %t365 = insertvalue { i32, %"std/regex:Regex" } zeroinitializer, i32 %t363, 0
  store { i32, %"std/regex:Regex" } %t365, ptr %rv
  br label %ret
bb78:
  %t366 = load ptr, ptr %l3, !tbaa !29
  store ptr %t366, ptr %l147, !tbaa !29
  %t367 = ptrtoint ptr %v1 to i64
  store i64 %t367, ptr %l148, !tbaa !24
  %t368 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t368, label %bb79, label %bb80
bb79:
  %t370 = load ptr, ptr %l147, !tbaa !29
  %t371 = call ptr @__olang_region_or(ptr %t370, ptr %v1)
  %t372 = ptrtoint ptr %t371 to i64
  store i64 %t372, ptr %l148, !tbaa !24
  br label %bb80
bb80:
  %t373 = load ptr, ptr %l3, !tbaa !29
  %t374 = load i64, ptr @G_2estd_2fregex_2eopMatch, !tbaa !24
  %t375 = load i64, ptr %l148
  %t376 = inttoptr i64 %t375 to ptr
  %t379 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %t376, ptr %t373, i64 %t374, i64 0, i64 0, i64 0)
  store i64 %t379, ptr %l152
  br label %bb81
bb81:
  %t380 = load ptr, ptr %l3, !tbaa !29
  store ptr %t380, ptr %l153, !tbaa !29
  %t381 = load ptr, ptr %l3, !tbaa !29
  store ptr %t381, ptr %l154, !tbaa !29
  %t382 = ptrtoint ptr %v1 to i64
  store i64 %t382, ptr %l155, !tbaa !24
  %t383 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t383, label %bb82, label %bb83
bb82:
  %t385 = load ptr, ptr %l154, !tbaa !29
  %t386 = call ptr @__olang_region_or(ptr %t385, ptr %v1)
  %t387 = ptrtoint ptr %t386 to i64
  store i64 %t387, ptr %l155, !tbaa !24
  br label %bb83
bb83:
  %t388 = load i64, ptr %l155
  %t389 = inttoptr i64 %t388 to ptr
  %t390 = ptrtoint ptr %t389 to i64
  store i64 %t390, ptr %l157, !tbaa !24
  %t391 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e10
  br i1 %t391, label %bb84, label %bb85
bb84:
  %t393 = load i64, ptr %l155
  %t394 = inttoptr i64 %t393 to ptr
  %t395 = call ptr @__olang_region_make(ptr %t394)
  %t396 = ptrtoint ptr %t395 to i64
  store i64 %t396, ptr %l157, !tbaa !24
  br label %bb85
bb85:
  %t397 = load ptr, ptr %l3, !tbaa !29
  %t398 = load i64, ptr %l157
  %t399 = inttoptr i64 %t398 to ptr
  %t401 = call { i64, ptr } @std_2fregex_2estd_2fregex_3aprog_2epack(ptr %v1, ptr %t399, ptr %t397)
  store { i64, ptr } %t401, ptr %l160
  br label %bb86
bb86:
  %t402 = load ptr, ptr %l153, !tbaa !29
  %t403 = getelementptr %"std/regex:prog", ptr %t402, i32 0, i32 10
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  store { i64, ptr } %t404, ptr %l161, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t406 = load ptr, ptr %l153, !tbaa !29
  %t407 = getelementptr %"std/regex:prog", ptr %t406, i32 0, i32 10
  store { i64, ptr } %t405, ptr %t407, !tbaa !27
  %t408 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e10
  br i1 %t408, label %bb87, label %bb88
bb87:
  %t410 = load { i64, ptr }, ptr %l161
  %t411 = extractvalue { i64, ptr } %t410, 1
  call void @__olang_region_release(ptr %t411)
  store { i64, ptr } zeroinitializer, ptr %l161
  br label %bb88
bb88:
  %t412 = load ptr, ptr %l3, !tbaa !29
  store ptr %t412, ptr %l163, !tbaa !29
  %t413 = load ptr, ptr %l3, !tbaa !29
  store ptr %t413, ptr %l164, !tbaa !29
  %t414 = ptrtoint ptr %v1 to i64
  store i64 %t414, ptr %l165, !tbaa !24
  %t415 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t415, label %bb89, label %bb90
bb89:
  %t417 = load ptr, ptr %l164, !tbaa !29
  %t418 = call ptr @__olang_region_or(ptr %t417, ptr %v1)
  %t419 = ptrtoint ptr %t418 to i64
  store i64 %t419, ptr %l165, !tbaa !24
  br label %bb90
bb90:
  %t420 = load i64, ptr %l165
  %t421 = inttoptr i64 %t420 to ptr
  %t422 = ptrtoint ptr %t421 to i64
  store i64 %t422, ptr %l167, !tbaa !24
  %t423 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e11
  br i1 %t423, label %bb91, label %bb92
bb91:
  %t425 = load i64, ptr %l165
  %t426 = inttoptr i64 %t425 to ptr
  %t427 = call ptr @__olang_region_make(ptr %t426)
  %t428 = ptrtoint ptr %t427 to i64
  store i64 %t428, ptr %l167, !tbaa !24
  br label %bb92
bb92:
  %t429 = load ptr, ptr %l3, !tbaa !29
  %t431 = getelementptr %"std/regex:prog", ptr %t429, i32 0, i32 5
  %t432 = load i64, ptr %l167
  %t433 = inttoptr i64 %t432 to ptr
  %t435 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eToArray_3cU32_3e(ptr %v1, ptr %t433, ptr %t431)
  store { i64, ptr } %t435, ptr %l171
  br label %bb93
bb93:
  %t436 = load ptr, ptr %l163, !tbaa !29
  %t437 = getelementptr %"std/regex:prog", ptr %t436, i32 0, i32 11
  %t438 = load { i64, ptr }, ptr %t437, !tbaa !27
  store { i64, ptr } %t438, ptr %l172, !tbaa !27
  %t439 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t440 = load ptr, ptr %l163, !tbaa !29
  %t441 = getelementptr %"std/regex:prog", ptr %t440, i32 0, i32 11
  store { i64, ptr } %t439, ptr %t441, !tbaa !27
  %t442 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e11
  br i1 %t442, label %bb94, label %bb95
bb94:
  %t444 = load { i64, ptr }, ptr %l172
  %t445 = extractvalue { i64, ptr } %t444, 1
  call void @__olang_region_release(ptr %t445)
  store { i64, ptr } zeroinitializer, ptr %l172
  br label %bb95
bb95:
  %t446 = load ptr, ptr %l3, !tbaa !29
  %t448 = call %"std/regex:Regex" @std_2fregex_3aRegex_2ector(ptr %v1, ptr %v1, ptr %t446)
  store %"std/regex:Regex" %t448, ptr %l175
  br label %bb96
bb96:
  %t449 = load %"std/regex:Regex", ptr %l175
  %t450 = insertvalue { i32, %"std/regex:Regex" } zeroinitializer, %"std/regex:Regex" %t449, 1
  store { i32, %"std/regex:Regex" } %t450, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/regex:Regex" }, ptr %rv
  ret { i32, %"std/regex:Regex" } %rr
}

define dso_local { i64, ptr } @std_2fregex_2ecopyOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l9, !tbaa !24
  %t4 = load i64, ptr %l9, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l9, !tbaa !24
  %t8 = icmp sle i64 %t7, 1152921504606846975
  br i1 %t8, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_d1d956f37e45fa5d_12a1d1438663f649)
  unreachable
bb3:
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = mul i64 %t10, 8
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_d1d956f37e45fa5d_12a1d1438663f649)
  unreachable
bb5:
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb10
bb7:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l21, !tbaa !24
  store i64 %t46, ptr %l18, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l18, !tbaa !24
  store i64 %t47, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t56 = load i64, ptr %l2, !tbaa !24
  %t57 = load i64, ptr %l6, !tbaa !24
  %t58 = load i64, ptr %l4, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l7, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t66, ptr %l39, !tbaa !27
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t68, ptr %l41, !tbaa !27
  %t69 = load i64, ptr %l7, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i64, ptr %t72, i64 %t69
  %t74 = load i64, ptr %t73, !tbaa !34
  %t77 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 %t67
  store i64 %t74, ptr %t79, !tbaa !34
  br label %bb15
bb15:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb11
bb16:
  %t84 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t84, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fregex_2eexpand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca i8
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %l32 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i32
  %l59 = alloca i1
  %l66 = alloca { i64, ptr }
  %l68 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l83 = alloca i1
  %l90 = alloca i1
  %l91 = alloca { i64, ptr }
  %l94 = alloca i1
  %l98 = alloca { i64, ptr }
  %l100 = alloca i64
  %l101 = alloca i64
  %l102 = alloca i64
  %l115 = alloca i1
  %l116 = alloca { i64, ptr }
  %l118 = alloca i1
  %l119 = alloca i64
  %l120 = alloca { i64, ptr }
  %l121 = alloca i64
  %l122 = alloca i32
  %l123 = alloca i64
  %l124 = alloca i32
  %l126 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l132 = alloca i32
  %l134 = alloca i1
  %l135 = alloca i64
  %l138 = alloca i64
  %l139 = alloca i32
  %l141 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l147 = alloca i32
  %l149 = alloca i1
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp slt i64 %t1, %t4
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %bb88
bb3:
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t11, ptr %l17, !tbaa !27
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  store i8 %t17, ptr %l5, !tbaa !22
  %t19 = load i8, ptr %l5, !tbaa !22
  %t21 = icmp ne i8 %t19, 36
  br i1 %t21, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb7
bb6:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = add i64 %t23, 1
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t31 = icmp sge i64 %t25, %t28
  store i1 %t31, ptr %l22, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l22, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t34, i8 %t35)
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l4, !tbaa !24
  br label %bb87
bb11:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t42, ptr %l32, !tbaa !27
  %t43 = load i64, ptr %l4, !tbaa !24
  %t45 = add i64 %t43, 1
  %t47 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i8, ptr %t48, i64 %t45
  %t50 = load i8, ptr %t49, !tbaa !32
  store i8 %t50, ptr %l6, !tbaa !22
  %t52 = load i8, ptr %l6, !tbaa !22
  %t54 = icmp eq i8 %t52, 36
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t56, i8 36)
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t58 = load i64, ptr %l4, !tbaa !24
  %t60 = add i64 %t58, 2
  store i64 %t60, ptr %l4, !tbaa !24
  br label %bb87
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t62 = load i8, ptr %l6, !tbaa !22
  %t64 = icmp eq i8 %t62, 123
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t66, ptr %l44, !tbaa !27
  %t67 = load i64, ptr %l4, !tbaa !24
  %t69 = add i64 %t67, 2
  store i64 %t69, ptr %l46, !tbaa !24
  %t70 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t70, 0
  store i64 %t73, ptr %l49, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l50, !tbaa !24
  %t76 = load i64, ptr %l46, !tbaa !24
  %t77 = icmp sge i64 %t76, 0
  br i1 %t77, label %bb18, label %bb19
bb17:
  %t79 = load i8, ptr %l6, !tbaa !22
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t79)
  store i1 %t81, ptr %l83
  br label %bb38
bb18:
  %t82 = load i64, ptr %l46, !tbaa !24
  %t83 = load i64, ptr %l49, !tbaa !24
  %t84 = icmp sle i64 %t82, %t83
  br i1 %t84, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d7ce2e5cb630a489_c1ddac025820271d)
  unreachable
bb20:
  %t86 = load i64, ptr %l49, !tbaa !24
  %t87 = load i64, ptr %l50, !tbaa !24
  %t88 = icmp sle i64 %t86, %t87
  br i1 %t88, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_d7ce2e5cb630a489_c1ddac025820271d)
  unreachable
bb22:
  %t90 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = load i64, ptr %l46, !tbaa !24
  %t93 = load i64, ptr %l49, !tbaa !24
  %t94 = getelementptr i8, ptr %t91, i64 %t92
  %t95 = sub i64 %t93, %t92
  %t96 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t94, 1
  %t100 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v3, { i64, ptr } %t97, i8 125)
  %t101 = extractvalue { i32, i64 } %t100, 1
  %t102 = extractvalue { i32, i64 } %t100, 0
  store i32 %t102, ptr %l57
  %t103 = icmp ne i32 %t102, 0
  br i1 %t103, label %bb25, label %ok.104, !prof !99
ok.104:
  store i64 %t101, ptr %l56
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_d7ce2e5cb630a489_c1ddac025820271d)
  unreachable
bb24:
  %t105 = load i64, ptr %l56, !tbaa !24
  store i64 %t105, ptr %l43, !tbaa !24
  br label %bb27
bb25:
  %t106 = load i32, ptr %l57, !tbaa !23
  %t107 = ashr i32 %t106, 16
  %t109 = icmp eq i32 %t107, 1
  store i1 %t109, ptr %l59, !tbaa !21
  br label %bb26
bb26:
  store i64 -1, ptr %l43, !tbaa !24
  br label %bb27
bb27:
  %t110 = load i64, ptr %l43, !tbaa !24
  store i64 %t110, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = icmp slt i64 %t111, 0
  br i1 %t113, label %bb28, label %bb29
bb28:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t115, i8 %t116)
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t119 = load i64, ptr %l4, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l4, !tbaa !24
  br label %bb87
bb31:
  %t123 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t123, ptr %l66, !tbaa !27
  %t124 = load i64, ptr %l4, !tbaa !24
  %t126 = add i64 %t124, 2
  store i64 %t126, ptr %l68, !tbaa !24
  %t127 = load i64, ptr %l4, !tbaa !24
  %t129 = add i64 %t127, 2
  %t130 = load i64, ptr %l8, !tbaa !24
  %t133 = add i64 %t129, %t130
  store i64 %t133, ptr %l72, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  store i64 %t135, ptr %l73, !tbaa !24
  %t136 = load i64, ptr %l68, !tbaa !24
  %t137 = icmp sge i64 %t136, 0
  br i1 %t137, label %bb32, label %bb33
bb32:
  %t139 = load i64, ptr %l68, !tbaa !24
  %t140 = load i64, ptr %l72, !tbaa !24
  %t141 = icmp sle i64 %t139, %t140
  br i1 %t141, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_4cb5475c85a0a71c_30e84b8abf0e5bc0)
  unreachable
bb34:
  %t143 = load i64, ptr %l72, !tbaa !24
  %t144 = load i64, ptr %l73, !tbaa !24
  %t145 = icmp sle i64 %t143, %t144
  br i1 %t145, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_4cb5475c85a0a71c_30e84b8abf0e5bc0)
  unreachable
bb36:
  %t147 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = load i64, ptr %l68, !tbaa !24
  %t150 = load i64, ptr %l72, !tbaa !24
  %t151 = getelementptr i8, ptr %t148, i64 %t149
  %t152 = sub i64 %t150, %t149
  %t153 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t151, 1
  store { i64, ptr } %t154, ptr %l7, !tbaa !27
  %t156 = load i64, ptr %l4, !tbaa !24
  %t157 = load i64, ptr %l8, !tbaa !24
  %t159 = add i64 %t157, 3
  %t162 = add i64 %t156, %t159
  store i64 %t162, ptr %l4, !tbaa !24
  br label %bb59
bb37:
  call void @__olang_check_failed(ptr @olang_loc_4cb5475c85a0a71c_30e84b8abf0e5bc0)
  unreachable
bb38:
  %t164 = load i1, ptr %l83, !tbaa !21
  br i1 %t164, label %bb39, label %bb40
bb39:
  %t165 = load i64, ptr %l4, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l9, !tbaa !24
  br label %bb41
bb40:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t169, i8 %t170)
  br label %bb57
bb41:
  %t173 = load i64, ptr %l9, !tbaa !24
  %t174 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t179 = icmp slt i64 %t173, %t176
  br i1 %t179, label %bb42, label %bb43
bb42:
  %t181 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t181, ptr %l91, !tbaa !27
  %t182 = load i64, ptr %l9, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i8, ptr %t185, i64 %t182
  %t187 = load i8, ptr %t186, !tbaa !32
  %t189 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t187)
  store i1 %t189, ptr %l94
  br label %bb44
bb43:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb45
bb44:
  %t190 = load i1, ptr %l94, !tbaa !21
  store i1 %t190, ptr %l90, !tbaa !21
  br label %bb45
bb45:
  %t191 = load i1, ptr %l90, !tbaa !21
  %t192 = xor i1 %t191, true
  br i1 %t192, label %bb46, label %bb47
bb46:
  br label %bb50
bb47:
  br label %bb48
bb48:
  %t194 = load i64, ptr %l9, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l9, !tbaa !24
  br label %bb49
bb49:
  br label %bb41
bb50:
  %t198 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t198, ptr %l98, !tbaa !27
  %t199 = load i64, ptr %l4, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l100, !tbaa !24
  %t202 = load i64, ptr %l9, !tbaa !24
  store i64 %t202, ptr %l101, !tbaa !24
  %t203 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 0
  store i64 %t204, ptr %l102, !tbaa !24
  %t205 = load i64, ptr %l100, !tbaa !24
  %t206 = icmp sge i64 %t205, 0
  br i1 %t206, label %bb51, label %bb52
bb51:
  %t208 = load i64, ptr %l100, !tbaa !24
  %t209 = load i64, ptr %l101, !tbaa !24
  %t210 = icmp sle i64 %t208, %t209
  br i1 %t210, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_8442faa205becbc7_64113088887f38bb)
  unreachable
bb53:
  %t212 = load i64, ptr %l101, !tbaa !24
  %t213 = load i64, ptr %l102, !tbaa !24
  %t214 = icmp sle i64 %t212, %t213
  br i1 %t214, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_8442faa205becbc7_64113088887f38bb)
  unreachable
bb55:
  %t216 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = load i64, ptr %l100, !tbaa !24
  %t219 = load i64, ptr %l101, !tbaa !24
  %t220 = getelementptr i8, ptr %t217, i64 %t218
  %t221 = sub i64 %t219, %t218
  %t222 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t220, 1
  store { i64, ptr } %t223, ptr %l7, !tbaa !27
  %t225 = load i64, ptr %l9, !tbaa !24
  store i64 %t225, ptr %l4, !tbaa !24
  br label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_8442faa205becbc7_64113088887f38bb)
  unreachable
bb57:
  %t227 = load i64, ptr %l4, !tbaa !24
  %t229 = add i64 %t227, 1
  store i64 %t229, ptr %l4, !tbaa !24
  br label %bb87
bb58:
  br label %bb59
bb59:
  %t231 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t231, 0
  %t235 = icmp sgt i64 %t233, 0
  br i1 %t235, label %bb60, label %bb61
bb60:
  %t237 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t237, ptr %l116, !tbaa !27
  %t238 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr i8, ptr %t239, i64 0
  %t241 = load i8, ptr %t240, !tbaa !32
  %t243 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t241)
  store i1 %t243, ptr %l118
  br label %bb62
bb61:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb63
bb62:
  %t244 = load i1, ptr %l118, !tbaa !21
  store i1 %t244, ptr %l115, !tbaa !21
  br label %bb63
bb63:
  %t245 = load i1, ptr %l115, !tbaa !21
  br i1 %t245, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s10
  %t246 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t246, ptr %l120, !tbaa !27
  %t247 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s10, i64 10)
  %t248 = extractvalue { i32, i64 } %t247, 1
  %t249 = extractvalue { i32, i64 } %t247, 0
  store i32 %t249, ptr %l122
  %t250 = icmp ne i32 %t249, 0
  br i1 %t250, label %bb67, label %ok.251, !prof !99
ok.251:
  store i64 %t248, ptr %l121
  br label %bb66
bb65:
  %t253 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t256 = call { i32, i64 } @std_2fregex_2estd_2fregex_3aRegex_2eGroupNamed(ptr %v1, ptr %v3, ptr %a1, { i64, ptr } %t253)
  %t257 = extractvalue { i32, i64 } %t256, 1
  %t258 = extractvalue { i32, i64 } %t256, 0
  store i32 %t258, ptr %l139
  %t259 = icmp ne i32 %t258, 0
  br i1 %t259, label %bb78, label %ok.260, !prof !99
ok.260:
  store i64 %t257, ptr %l138
  br label %bb77
bb66:
  %t261 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t262 = load i64, ptr %l121, !tbaa !24
  %t263 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v3, { i64, ptr } %t261, i64 %t262)
  %t264 = extractvalue { i32, i64 } %t263, 1
  %t265 = extractvalue { i32, i64 } %t263, 0
  store i32 %t265, ptr %l124
  %t266 = icmp ne i32 %t265, 0
  br i1 %t266, label %bb69, label %ok.267, !prof !99
ok.267:
  store i64 %t264, ptr %l123
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_1dd3c36670b3541_58deb7f3d7eb4ae5)
  unreachable
bb68:
  %t268 = load i64, ptr %l123, !tbaa !24
  store i64 %t268, ptr %l119, !tbaa !24
  br label %bb71
bb69:
  %t269 = load i32, ptr %l124, !tbaa !23
  %t270 = ashr i32 %t269, 16
  %t272 = icmp eq i32 %t270, 1
  store i1 %t272, ptr %l126, !tbaa !21
  br label %bb70
bb70:
  store i64 -1, ptr %l119, !tbaa !24
  br label %bb71
bb71:
  %t273 = load i64, ptr %l119, !tbaa !24
  %t274 = load ptr, ptr %l0, !tbaa !29
  store ptr %t274, ptr %l127, !tbaa !29
  %t275 = load ptr, ptr %l2, !tbaa !29
  %t279 = call { i32, { i64, ptr } } @std_2fregex_2estd_2fregex_3aMatch_2eGroup(ptr %v2, ptr %v2, ptr %t275, i64 %t273)
  %t280 = extractvalue { i32, { i64, ptr } } %t279, 1
  %t281 = extractvalue { i32, { i64, ptr } } %t279, 0
  store i32 %t281, ptr %l132
  %t282 = icmp ne i32 %t281, 0
  br i1 %t282, label %bb73, label %ok.283, !prof !99
ok.283:
  store { i64, ptr } %t280, ptr %l131
  br label %bb72
bb72:
  %t284 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t284, ptr %l128, !tbaa !27
  br label %bb75
bb73:
  %t285 = load i32, ptr %l132, !tbaa !23
  %t286 = ashr i32 %t285, 16
  %t288 = icmp eq i32 %t286, 1
  store i1 %t288, ptr %l134, !tbaa !21
  br label %bb74
bb74:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l128, !tbaa !27
  br label %bb75
bb75:
  %t289 = load ptr, ptr %l127, !tbaa !29
  %t290 = load { i64, ptr }, ptr %l128, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v2, ptr %t289, { i64, ptr } %t290)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s10)
  br label %bb86
bb77:
  %t291 = load i64, ptr %l138, !tbaa !24
  store i64 %t291, ptr %l135, !tbaa !24
  br label %bb80
bb78:
  %t292 = load i32, ptr %l139, !tbaa !23
  %t293 = ashr i32 %t292, 16
  %t295 = icmp eq i32 %t293, 1
  store i1 %t295, ptr %l141, !tbaa !21
  br label %bb79
bb79:
  store i64 -1, ptr %l135, !tbaa !24
  br label %bb80
bb80:
  %t296 = load i64, ptr %l135, !tbaa !24
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l142, !tbaa !29
  %t298 = load ptr, ptr %l2, !tbaa !29
  %t302 = call { i32, { i64, ptr } } @std_2fregex_2estd_2fregex_3aMatch_2eGroup(ptr %v2, ptr %v2, ptr %t298, i64 %t296)
  %t303 = extractvalue { i32, { i64, ptr } } %t302, 1
  %t304 = extractvalue { i32, { i64, ptr } } %t302, 0
  store i32 %t304, ptr %l147
  %t305 = icmp ne i32 %t304, 0
  br i1 %t305, label %bb82, label %ok.306, !prof !99
ok.306:
  store { i64, ptr } %t303, ptr %l146
  br label %bb81
bb81:
  %t307 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } %t307, ptr %l143, !tbaa !27
  br label %bb84
bb82:
  %t308 = load i32, ptr %l147, !tbaa !23
  %t309 = ashr i32 %t308, 16
  %t311 = icmp eq i32 %t309, 1
  store i1 %t311, ptr %l149, !tbaa !21
  br label %bb83
bb83:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l143, !tbaa !27
  br label %bb84
bb84:
  %t312 = load ptr, ptr %l142, !tbaa !29
  %t313 = load { i64, ptr }, ptr %l143, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v2, ptr %t312, { i64, ptr } %t313)
  br label %bb85
bb85:
  br label %bb86
bb86:
  br label %bb87
bb87:
  br label %bb1
bb88:
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fregex_2ehexValue(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l8 = alloca i1
  %l17 = alloca i1
  %rv = alloca i64
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = sub i8 %t5, 48
  %t9 = zext i8 %t7 to i64
  store i64 %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load i8, ptr %l0, !tbaa !22
  %t13 = icmp uge i8 %t11, 97
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp ule i8 %t15, 102
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t19 = load i1, ptr %l8, !tbaa !21
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = sub i8 %t20, 97
  %t24 = zext i8 %t22 to i64
  %t26 = add i64 %t24, 10
  store i64 %t26, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load i8, ptr %l0, !tbaa !22
  %t30 = icmp uge i8 %t28, 65
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = load i8, ptr %l0, !tbaa !22
  %t34 = icmp ule i8 %t32, 70
  store i1 %t34, ptr %l17, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb13
bb13:
  %t36 = load i1, ptr %l17, !tbaa !21
  br i1 %t36, label %bb14, label %bb15
bb14:
  %t37 = load i8, ptr %l0, !tbaa !22
  %t39 = sub i8 %t37, 65
  %t41 = zext i8 %t39 to i64
  %t43 = add i64 %t41, 10
  store i64 %t43, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fregex_2eisWord(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l4 = alloca i1
  %l8 = alloca i1
  %l12 = alloca i1
  %l16 = alloca i1
  %l20 = alloca i1
  %l24 = alloca i1
  %rv = alloca i1
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = zext i8 97 to i64
  %t5 = icmp sge i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l0, !tbaa !24
  %t8 = zext i8 122 to i64
  %t11 = icmp sle i64 %t7, %t8
  store i1 %t11, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l4, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb9
bb5:
  %t14 = load i64, ptr %l0, !tbaa !24
  %t15 = zext i8 65 to i64
  %t18 = icmp sge i64 %t14, %t15
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load i64, ptr %l0, !tbaa !24
  %t21 = zext i8 90 to i64
  %t24 = icmp sle i64 %t20, %t21
  store i1 %t24, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l12, !tbaa !21
  store i1 %t26, ptr %l8, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l8, !tbaa !21
  br i1 %t27, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb15
bb11:
  %t28 = load i64, ptr %l0, !tbaa !24
  %t29 = zext i8 48 to i64
  %t32 = icmp sge i64 %t28, %t29
  br i1 %t32, label %bb12, label %bb13
bb12:
  %t34 = load i64, ptr %l0, !tbaa !24
  %t35 = zext i8 57 to i64
  %t38 = icmp sle i64 %t34, %t35
  store i1 %t38, ptr %l20, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t40 = load i1, ptr %l20, !tbaa !21
  store i1 %t40, ptr %l16, !tbaa !21
  br label %bb15
bb15:
  %t41 = load i1, ptr %l16, !tbaa !21
  br i1 %t41, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb18
bb17:
  %t42 = load i64, ptr %l0, !tbaa !24
  %t43 = zext i8 95 to i64
  %t46 = icmp eq i64 %t42, %t43
  store i1 %t46, ptr %l24, !tbaa !21
  br label %bb18
bb18:
  %t48 = load i1, ptr %l24, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @std_2fregex_2elocate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca i64
  %l19 = alloca i64
  %rv = alloca { i64, i64 }
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = load i64, ptr %l3, !tbaa !24
  %t7 = call i64 @std_2fregex_2estd_2fregex_3adfa_2eend(ptr %v0, ptr %v2, ptr %a0, { i64, ptr } %t2, i64 %t3, i1 false)
  store i64 %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load i64, ptr %l9, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = insertvalue { i64, i64 } undef, i64 %t13, 0
  %t18 = insertvalue { i64, i64 } %t16, i64 %t14, 1
  store { i64, i64 } %t18, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t28 = call i64 @std_2fregex_2estd_2fregex_3adfa_2ebegin(ptr %v1, ptr %v2, ptr %a1, { i64, ptr } %t21, i64 %t22, i64 %t23)
  store i64 %t28, ptr %l19
  br label %bb5
bb5:
  %t29 = load i64, ptr %l19, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = insertvalue { i64, i64 } undef, i64 %t29, 0
  %t35 = insertvalue { i64, i64 } %t33, i64 %t31, 1
  store { i64, i64 } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i64 @std_2fregex_2eonFrom(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, i64 }
  %l8 = alloca i1
  %l13 = alloca i64
  %l17 = alloca i64
  %l21 = alloca { i64, i64 }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp sge i64 %t7, %t10
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t16 = load i64, ptr %l2, !tbaa !24
  store i64 %t16, ptr %l13, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = icmp eq i64 %t17, %t18
  br i1 %t21, label %bb6, label %bb7
bb5:
  br label %bb9
bb6:
  store i64 1, ptr %l17, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb8
bb8:
  %t23 = load i64, ptr %l13, !tbaa !24
  %t24 = load i64, ptr %l17, !tbaa !24
  %t25 = add i64 %t23, %t24
  store i64 %t25, ptr %rv
  br label %ret
bb9:
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = call { i64, i64 } @std_2fregex_2eruneAt(ptr %v0, { i64, ptr } %t27, i64 %t28)
  store { i64, i64 } %t31, ptr %l21
  br label %bb10
bb10:
  %t32 = load { i64, i64 }, ptr %l21
  store { i64, i64 } %t32, ptr %l3
  %t33 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 1
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t40 = add i64 %t36, %t34
  store i64 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, i64 } @std_2fregex_2eruneAt(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i8
  %l3 = alloca { i32, i64 }
  %l6 = alloca { i64, ptr }
  %l14 = alloca { i32, i64 }
  %l17 = alloca { i32, i64 }
  %l18 = alloca i32
  %l20 = alloca i1
  %rv = alloca { i64, i64 }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i8, ptr %t5, i64 %t2
  %t7 = load i8, ptr %t6, !tbaa !32
  store i8 %t7, ptr %l2, !tbaa !22
  %t9 = load i8, ptr %l2, !tbaa !22
  %t11 = icmp ult i8 %t9, -128
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i8, ptr %l2, !tbaa !22
  %t15 = zext i8 %t13 to i64
  %t17 = insertvalue { i64, i64 } undef, i64 %t15, 0
  %t18 = insertvalue { i64, i64 } %t17, i64 1, 1
  store { i64, i64 } %t18, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = load i64, ptr %l1, !tbaa !24
  %t24 = call { i32, { i32, i64 } } @std_2futf8_2eDecode(ptr %v0, { i64, ptr } %t20, i64 %t21)
  %t25 = extractvalue { i32, { i32, i64 } } %t24, 1
  %t26 = extractvalue { i32, { i32, i64 } } %t24, 0
  store i32 %t26, ptr %l18
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb5, label %ok.28, !prof !99
ok.28:
  store { i32, i64 } %t25, ptr %l17
  br label %bb4
bb4:
  %t29 = load { i32, i64 }, ptr %l17
  store { i32, i64 } %t29, ptr %l14
  br label %bb7
bb5:
  %t30 = load i32, ptr %l18, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  store i1 %t33, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i32, ptr @G_2estd_2futf8_2eReplacement, !tbaa !64
  %t36 = insertvalue { i32, i64 } undef, i32 %t34, 0
  %t37 = insertvalue { i32, i64 } %t36, i64 1, 1
  store { i32, i64 } %t37, ptr %l14
  br label %bb7
bb7:
  %t38 = load { i32, i64 }, ptr %l14
  store { i32, i64 } %t38, ptr %l3
  %t39 = getelementptr { i32, i64 }, ptr %l3, i32 0, i32 0
  %t40 = load i32, ptr %t39, !tbaa !64
  %t42 = getelementptr { i32, i64 }, ptr %l3, i32 0, i32 1
  %t43 = load i64, ptr %t42, !tbaa !24
  %t47 = zext i32 %t40 to i64
  %t50 = insertvalue { i64, i64 } undef, i64 %t47, 0
  %t52 = insertvalue { i64, i64 } %t50, i64 %t43, 1
  store { i64, i64 } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local { i64, i64 } @std_2fregex_2eruneBefore(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i8
  %l3 = alloca i64
  %l4 = alloca { i32, i64 }
  %l5 = alloca i32
  %l7 = alloca { i64, ptr }
  %l22 = alloca i1
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l36 = alloca { i32, i64 }
  %l39 = alloca { i32, i64 }
  %l40 = alloca i32
  %l42 = alloca i1
  %rv = alloca { i64, i64 }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l7, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = sub i64 %t2, 1
  %t6 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i8, ptr %t7, i64 %t4
  %t9 = load i8, ptr %t8, !tbaa !32
  store i8 %t9, ptr %l2, !tbaa !22
  %t11 = load i8, ptr %l2, !tbaa !22
  %t13 = icmp ult i8 %t11, -128
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i8, ptr %l2, !tbaa !22
  %t17 = zext i8 %t15 to i64
  %t18 = load i64, ptr %l1, !tbaa !24
  %t20 = sub i64 %t18, 1
  %t22 = insertvalue { i64, i64 } undef, i64 %t17, 0
  %t24 = insertvalue { i64, i64 } %t22, i64 %t20, 1
  store { i64, i64 } %t24, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = sub i64 %t26, 1
  store i64 %t28, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb5, label %bb6
bb5:
  %t34 = load i64, ptr %l1, !tbaa !24
  %t35 = load i64, ptr %l3, !tbaa !24
  %t38 = sub i64 %t34, %t35
  %t40 = icmp slt i64 %t38, 4
  store i1 %t40, ptr %l22, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb7
bb7:
  %t42 = load i1, ptr %l22, !tbaa !21
  br i1 %t42, label %bb8, label %bb9
bb8:
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t43, ptr %l28, !tbaa !27
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i8, ptr %t47, i64 %t44
  %t49 = load i8, ptr %t48, !tbaa !32
  %t51 = and i8 %t49, -64
  %t53 = icmp eq i8 %t51, -128
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t55 = load i1, ptr %l27, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t60 = sub i64 %t58, 1
  store i64 %t60, ptr %l3, !tbaa !24
  br label %bb14
bb14:
  br label %bb4
bb15:
  %t62 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t63 = load i64, ptr %l3, !tbaa !24
  %t66 = call { i32, { i32, i64 } } @std_2futf8_2eDecode(ptr %v0, { i64, ptr } %t62, i64 %t63)
  %t67 = extractvalue { i32, { i32, i64 } } %t66, 1
  %t68 = extractvalue { i32, { i32, i64 } } %t66, 0
  store i32 %t68, ptr %l40
  %t69 = icmp ne i32 %t68, 0
  br i1 %t69, label %bb17, label %ok.70, !prof !99
ok.70:
  store { i32, i64 } %t67, ptr %l39
  br label %bb16
bb16:
  %t71 = load { i32, i64 }, ptr %l39
  store { i32, i64 } %t71, ptr %l36
  br label %bb19
bb17:
  %t72 = load i32, ptr %l40, !tbaa !23
  %t73 = ashr i32 %t72, 16
  %t75 = icmp eq i32 %t73, 1
  store i1 %t75, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t76 = load i32, ptr @G_2estd_2futf8_2eReplacement, !tbaa !64
  %t78 = insertvalue { i32, i64 } undef, i32 %t76, 0
  %t79 = insertvalue { i32, i64 } %t78, i64 0, 1
  store { i32, i64 } %t79, ptr %l36
  br label %bb19
bb19:
  %t80 = load { i32, i64 }, ptr %l36
  store { i32, i64 } %t80, ptr %l4
  %t81 = getelementptr { i32, i64 }, ptr %l4, i32 0, i32 0
  %t82 = load i32, ptr %t81, !tbaa !64
  store i32 %t82, ptr %l5, !tbaa !64
  %t84 = getelementptr { i32, i64 }, ptr %l4, i32 0, i32 1
  %t85 = load i64, ptr %t84, !tbaa !24
  %t88 = load i64, ptr %l1, !tbaa !24
  %t89 = load i64, ptr %l3, !tbaa !24
  %t92 = sub i64 %t88, %t89
  %t95 = icmp eq i64 %t85, %t92
  br i1 %t95, label %bb20, label %bb21
bb20:
  %t97 = load i32, ptr %l5, !tbaa !64
  %t99 = zext i32 %t97 to i64
  %t100 = load i64, ptr %l3, !tbaa !24
  %t102 = insertvalue { i64, i64 } undef, i64 %t99, 0
  %t104 = insertvalue { i64, i64 } %t102, i64 %t100, 1
  store { i64, i64 } %t104, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t106 = load i32, ptr @G_2estd_2futf8_2eReplacement, !tbaa !64
  %t108 = zext i32 %t106 to i64
  %t109 = load i64, ptr %l1, !tbaa !24
  %t111 = sub i64 %t109, 1
  %t113 = insertvalue { i64, i64 } undef, i64 %t108, 0
  %t115 = insertvalue { i64, i64 } %t113, i64 %t111, 1
  store { i64, i64 } %t115, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fregex_2estd_2fregex_3aMatch_2eGroup(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l12 = alloca i1
  %l14 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca i64
  %l28 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = mul i64 2, %t5
  %t9 = add i64 %t7, 1
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/regex:Match", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t18 = icmp sge i64 %t9, %t15
  store i1 %t18, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t20 = load i1, ptr %l4, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/regex:Match", ptr %t21, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l14, !tbaa !27
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = mul i64 2, %t25
  %t29 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr i64, ptr %t30, i64 %t27
  %t32 = load i64, ptr %t31, !tbaa !34
  %t34 = icmp slt i64 %t32, 0
  store i1 %t34, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l12, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t38 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t38, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"std/regex:Match", ptr %t39, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l21, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"std/regex:Match", ptr %t43, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l23, !tbaa !27
  %t47 = load i64, ptr %l1, !tbaa !24
  %t49 = mul i64 2, %t47
  %t51 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i64, ptr %t52, i64 %t49
  %t54 = load i64, ptr %t53, !tbaa !34
  store i64 %t54, ptr %l26, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"std/regex:Match", ptr %t55, i32 0, i32 1
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l28, !tbaa !27
  %t59 = load i64, ptr %l1, !tbaa !24
  %t61 = mul i64 2, %t59
  %t63 = add i64 %t61, 1
  %t65 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i64, ptr %t66, i64 %t63
  %t68 = load i64, ptr %t67, !tbaa !34
  store i64 %t68, ptr %l32, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  store i64 %t70, ptr %l33, !tbaa !24
  %t71 = load i64, ptr %l26, !tbaa !24
  %t72 = icmp sge i64 %t71, 0
  br i1 %t72, label %bb10, label %bb11
bb10:
  %t74 = load i64, ptr %l26, !tbaa !24
  %t75 = load i64, ptr %l32, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_fad6be9f9a8bc235_afbd0997a4255a21)
  unreachable
bb12:
  %t78 = load i64, ptr %l32, !tbaa !24
  %t79 = load i64, ptr %l33, !tbaa !24
  %t80 = icmp sle i64 %t78, %t79
  br i1 %t80, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_fad6be9f9a8bc235_afbd0997a4255a21)
  unreachable
bb14:
  %t82 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = load i64, ptr %l26, !tbaa !24
  %t85 = load i64, ptr %l32, !tbaa !24
  %t86 = getelementptr i8, ptr %t83, i64 %t84
  %t87 = sub i64 %t85, %t84
  %t88 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t86, 1
  %t91 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t89, 1
  store { i32, { i64, ptr } } %t91, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_fad6be9f9a8bc235_afbd0997a4255a21)
  unreachable
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, i64 } } @std_2fregex_2estd_2fregex_3aMatch_2eSpan(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l12 = alloca i1
  %l14 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, i64 } }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = mul i64 2, %t5
  %t9 = add i64 %t7, 1
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/regex:Match", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t18 = icmp sge i64 %t9, %t15
  store i1 %t18, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t20 = load i1, ptr %l4, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/regex:Match", ptr %t21, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l14, !tbaa !27
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = mul i64 2, %t25
  %t29 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr i64, ptr %t30, i64 %t27
  %t32 = load i64, ptr %t31, !tbaa !34
  %t34 = icmp slt i64 %t32, 0
  store i1 %t34, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l12, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t38 = insertvalue { i32, { i64, i64 } } zeroinitializer, i32 65536, 0
  store { i32, { i64, i64 } } %t38, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"std/regex:Match", ptr %t39, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l21, !tbaa !27
  %t43 = load i64, ptr %l1, !tbaa !24
  %t45 = mul i64 2, %t43
  %t47 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i64, ptr %t48, i64 %t45
  %t50 = load i64, ptr %t49, !tbaa !34
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"std/regex:Match", ptr %t51, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l26, !tbaa !27
  %t55 = load i64, ptr %l1, !tbaa !24
  %t57 = mul i64 2, %t55
  %t59 = add i64 %t57, 1
  %t61 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t59
  %t64 = load i64, ptr %t63, !tbaa !34
  %t66 = insertvalue { i64, i64 } undef, i64 %t50, 0
  %t68 = insertvalue { i64, i64 } %t66, i64 %t64, 1
  %t70 = insertvalue { i32, { i64, i64 } } zeroinitializer, { i64, i64 } %t68, 1
  store { i32, { i64, i64 } } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, i64 } }, ptr %rv
  ret { i32, { i64, i64 } } %rr
}

define dso_local { i64, ptr } @std_2fregex_2estd_2fregex_3aMatch_2eText(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:Match", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/regex:Match", ptr %t5, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/regex:Match", ptr %t9, i32 0, i32 3
  %t12 = load i64, ptr %t11, !tbaa !24
  store i64 %t12, ptr %l6, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l7, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = icmp sle i64 %t18, %t19
  br i1 %t20, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_628ce399e2e64a43_8112419940ee25d7)
  unreachable
bb3:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_628ce399e2e64a43_8112419940ee25d7)
  unreachable
bb5:
  %t26 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l6, !tbaa !24
  %t30 = getelementptr i8, ptr %t27, i64 %t28
  %t31 = sub i64 %t29, %t28
  %t32 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t30, 1
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_628ce399e2e64a43_8112419940ee25d7)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3aRegex_2eCount(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/regex:searcher"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca %"std/regex:searcher"
  %l20 = alloca i1
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l41 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"std/regex:Regex", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = call %"std/regex:searcher" @std_2fregex_3asearcher_2ector(ptr %v0, ptr %v1, ptr %s0, ptr %t4, { i64, ptr } %t5, i64 2)
  store %"std/regex:searcher" %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load %"std/regex:searcher", ptr %l10
  store %"std/regex:searcher" %t9, ptr %l2
  %t10 = getelementptr %"std/regex:searcher", ptr %l2, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"std/regex:machine", ptr %t11, i32 0, i32 8
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t22 = icmp sle i64 %t16, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = call i1 @std_2fregex_2estd_2fregex_3asearcher_2enext(ptr %s0, ptr %l2, i64 %t26)
  store i1 %t29, ptr %l20
  br label %bb6
bb6:
  %t30 = load i1, ptr %l20, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb7, label %bb8
bb7:
  br label %bb18
bb8:
  br label %bb9
bb9:
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t33, ptr %l22, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i64, ptr %t35, i64 0
  %t37 = load i64, ptr %t36, !tbaa !34
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t38, ptr %l24, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i64, ptr %t40, i64 1
  %t42 = load i64, ptr %t41, !tbaa !34
  %t45 = icmp ne i64 %t37, %t42
  br i1 %t45, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb12
bb11:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t47, ptr %l28, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i64, ptr %t49, i64 0
  %t51 = load i64, ptr %t50, !tbaa !34
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = icmp ne i64 %t51, %t52
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l27, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t58 = load i64, ptr %l4, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l4, !tbaa !24
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l34, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i64, ptr %t64, i64 1
  %t66 = load i64, ptr %t65, !tbaa !34
  store i64 %t66, ptr %l6, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t69, ptr %l37, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 0
  %t73 = load i64, ptr %t72, !tbaa !34
  %t74 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t74, ptr %l39, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i64, ptr %t76, i64 1
  %t78 = load i64, ptr %t77, !tbaa !34
  %t82 = call i64 @std_2fregex_2eonFrom(ptr %v1, { i64, ptr } %t68, i64 %t73, i64 %t78)
  store i64 %t82, ptr %l41
  br label %bb16
bb16:
  %t83 = load i64, ptr %l41, !tbaa !24
  store i64 %t83, ptr %l5, !tbaa !24
  br label %bb17
bb17:
  br label %bb2
bb18:
  %t84 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t84, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, %"std/regex:Match" } @std_2fregex_2estd_2fregex_3aRegex_2eFind(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/regex:Match"
  %l5 = alloca %"std/regex:Match"
  %l6 = alloca i32
  %rv = alloca { i32, %"std/regex:Match" }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, %"std/regex:Match" } @std_2fregex_2estd_2fregex_3aRegex_2eFindFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 0)
  %t6 = extractvalue { i32, %"std/regex:Match" } %t5, 1
  %t7 = extractvalue { i32, %"std/regex:Match" } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store %"std/regex:Match" %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load %"std/regex:Match", ptr %l5
  store %"std/regex:Match" %t10, ptr %l2
  br label %bb3
bb2:
  %t11 = load i32, ptr %l6, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  %t21 = insertvalue { i32, %"std/regex:Match" } zeroinitializer, i32 %t19, 0
  store { i32, %"std/regex:Match" } %t21, ptr %rv
  br label %ret
bb3:
  %t22 = load %"std/regex:Match", ptr %l2
  %t23 = insertvalue { i32, %"std/regex:Match" } zeroinitializer, %"std/regex:Match" %t22, 1
  store { i32, %"std/regex:Match" } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/regex:Match" }, ptr %rv
  ret { i32, %"std/regex:Match" } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fregex_2estd_2fregex_3aRegex_2eFindAll(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca i64
  %l18 = alloca i64
  %l20 = alloca %"std/regex:searcher"
  %l30 = alloca i1
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca ptr
  %l51 = alloca %"std/regex:Match"
  %l52 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca i64
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/regex:Regex", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l9, !tbaa !29
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l10, !tbaa !27
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/regex:Regex", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  store ptr %t13, ptr %l12, !tbaa !29
  %t14 = ptrtoint ptr %v0 to i64
  store i64 %t14, ptr %l13, !tbaa !24
  %t15 = load i1, ptr @olang_2esole_2estd_2fregex_3aRegex_2e0
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr %v0)
  %t19 = ptrtoint ptr %t18 to i64
  store i64 %t19, ptr %l13, !tbaa !24
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/regex:Regex", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"std/regex:prog", ptr %t23, i32 0, i32 6
  %t26 = load i64, ptr %l13
  %t27 = inttoptr i64 %t26 to ptr
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %t27, ptr %t25)
  store i64 %t29, ptr %l18
  br label %bb4
bb4:
  %t30 = load i64, ptr %l18, !tbaa !24
  %t31 = mul i64 2, %t30
  %t32 = load ptr, ptr %l9, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t35 = call %"std/regex:searcher" @std_2fregex_3asearcher_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %t32, { i64, ptr } %t33, i64 %t31)
  store %"std/regex:searcher" %t35, ptr %l20
  br label %bb5
bb5:
  %t36 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t36, ptr %lp3
  %t37 = load %"std/regex:searcher", ptr %l20
  %t38 = load ptr, ptr %lp3
  store %"std/regex:searcher" %t37, ptr %t38
  %t39 = load ptr, ptr %lp3
  %t40 = getelementptr %"std/regex:searcher", ptr %t39, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"std/regex:machine", ptr %t41, i32 0, i32 8
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  store { i64, ptr } %t44, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t46 = load i64, ptr %l5, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t52 = icmp sle i64 %t46, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb7, label %bb8
bb7:
  br label %bb25
bb8:
  br label %bb9
bb9:
  %t56 = load ptr, ptr %lp3
  %t57 = load i64, ptr %l5, !tbaa !24
  %t60 = call i1 @std_2fregex_2estd_2fregex_3asearcher_2enext(ptr %v2, ptr %t56, i64 %t57)
  store i1 %t60, ptr %l30
  br label %bb10
bb10:
  %t61 = load i1, ptr %l30, !tbaa !21
  %t62 = xor i1 %t61, true
  br i1 %t62, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  br label %bb13
bb13:
  %t64 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t64, ptr %l32, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i64, ptr %t66, i64 0
  %t68 = load i64, ptr %t67, !tbaa !34
  %t69 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t69, ptr %l34, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 1
  %t73 = load i64, ptr %t72, !tbaa !34
  %t76 = icmp eq i64 %t68, %t73
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t78 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t78, ptr %l38, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i64, ptr %t80, i64 0
  %t82 = load i64, ptr %t81, !tbaa !34
  %t83 = load i64, ptr %l6, !tbaa !24
  %t86 = icmp eq i64 %t82, %t83
  store i1 %t86, ptr %l37, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb16
bb16:
  %t88 = load i1, ptr %l37, !tbaa !21
  br i1 %t88, label %bb17, label %bb18
bb17:
  %t89 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t90, ptr %l43, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr i64, ptr %t92, i64 0
  %t94 = load i64, ptr %t93, !tbaa !34
  %t95 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t95, ptr %l45, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i64, ptr %t97, i64 1
  %t99 = load i64, ptr %t98, !tbaa !34
  %t103 = call i64 @std_2fregex_2eonFrom(ptr %v1, { i64, ptr } %t89, i64 %t94, i64 %t99)
  store i64 %t103, ptr %l47
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t104 = load i64, ptr %l47, !tbaa !24
  store i64 %t104, ptr %l5, !tbaa !24
  br label %bb24
bb20:
  %t105 = load ptr, ptr %lp2
  store ptr %t105, ptr %l48, !tbaa !29
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t110 = call %"std/regex:Match" @std_2fregex_3aMatch_2ector(ptr %v1, ptr %v2, ptr %v2, { i64, ptr } %t106, { i64, ptr } %t107)
  store %"std/regex:Match" %t110, ptr %l51
  br label %bb21
bb21:
  %t111 = load ptr, ptr %l48, !tbaa !29
  %t112 = load %"std/regex:Match", ptr %l51
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2ePush_3cstd_2fregex_3aMatch_3e(ptr %v2, ptr %v2, ptr %t111, %"std/regex:Match" %t112)
  br label %bb22
bb22:
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t113, ptr %l52, !tbaa !27
  %t114 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i64, ptr %t115, i64 1
  %t117 = load i64, ptr %t116, !tbaa !34
  store i64 %t117, ptr %l6, !tbaa !24
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t120, ptr %l55, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i64, ptr %t122, i64 0
  %t124 = load i64, ptr %t123, !tbaa !34
  %t125 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t125, ptr %l57, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i64, ptr %t127, i64 1
  %t129 = load i64, ptr %t128, !tbaa !34
  %t133 = call i64 @std_2fregex_2eonFrom(ptr %v1, { i64, ptr } %t119, i64 %t124, i64 %t129)
  store i64 %t133, ptr %l59
  br label %bb23
bb23:
  %t134 = load i64, ptr %l59, !tbaa !24
  store i64 %t134, ptr %l5, !tbaa !24
  br label %bb24
bb24:
  br label %bb6
bb25:
  %t135 = load ptr, ptr %lp2
  %t136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t135
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i32, %"std/regex:Match" } @std_2fregex_2estd_2fregex_3aRegex_2eFindFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca i64
  %l22 = alloca i64
  %l24 = alloca %"std/regex:searcher"
  %l27 = alloca i1
  %l33 = alloca %"std/regex:Match"
  %rv = alloca { i32, %"std/regex:Match" }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t11 = icmp sgt i64 %t5, %t8
  store i1 %t11, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l6, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = insertvalue { i32, %"std/regex:Match" } zeroinitializer, i32 65536, 0
  store { i32, %"std/regex:Match" } %t15, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/regex:Regex", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t20, ptr %l14, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/regex:Regex", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l16, !tbaa !29
  %t25 = ptrtoint ptr %v0 to i64
  store i64 %t25, ptr %l17, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2estd_2fregex_3aRegex_2e0
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = call ptr @__olang_region_or(ptr %t28, ptr %v0)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l17, !tbaa !24
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"std/regex:Regex", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"std/regex:prog", ptr %t34, i32 0, i32 6
  %t37 = load i64, ptr %l17
  %t38 = inttoptr i64 %t37 to ptr
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %t38, ptr %t36)
  store i64 %t40, ptr %l22
  br label %bb9
bb9:
  %t41 = load i64, ptr %l22, !tbaa !24
  %t42 = mul i64 2, %t41
  %t43 = load ptr, ptr %l13, !tbaa !29
  %t44 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t46 = call %"std/regex:searcher" @std_2fregex_3asearcher_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %t43, { i64, ptr } %t44, i64 %t42)
  store %"std/regex:searcher" %t46, ptr %l24
  br label %bb10
bb10:
  %t47 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t47, ptr %lp3
  %t48 = load %"std/regex:searcher", ptr %l24
  %t49 = load ptr, ptr %lp3
  store %"std/regex:searcher" %t48, ptr %t49
  %t50 = load ptr, ptr %lp3
  %t51 = load i64, ptr %l2, !tbaa !24
  %t54 = call i1 @std_2fregex_2estd_2fregex_3asearcher_2enext(ptr %v2, ptr %t50, i64 %t51)
  store i1 %t54, ptr %l27
  br label %bb11
bb11:
  %t55 = load i1, ptr %l27, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  %t59 = insertvalue { i32, %"std/regex:Match" } zeroinitializer, i32 65536, 0
  store { i32, %"std/regex:Match" } %t59, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t61 = load ptr, ptr %lp3
  %t62 = getelementptr %"std/regex:searcher", ptr %t61, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"std/regex:machine", ptr %t63, i32 0, i32 8
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t69 = call %"std/regex:Match" @std_2fregex_3aMatch_2ector(ptr %v1, ptr %v2, ptr %v2, { i64, ptr } %t60, { i64, ptr } %t66)
  store %"std/regex:Match" %t69, ptr %l33
  br label %bb15
bb15:
  %t70 = load %"std/regex:Match", ptr %l33
  %t71 = insertvalue { i32, %"std/regex:Match" } zeroinitializer, %"std/regex:Match" %t70, 1
  store { i32, %"std/regex:Match" } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/regex:Match" }, ptr %rv
  ret { i32, %"std/regex:Match" } %rr
}

define dso_local { i32, i64 } @std_2fregex_2estd_2fregex_3aRegex_2eGroupNamed(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l40 = alloca { i64, ptr }
  %l42 = alloca i1
  %l43 = alloca i1
  %rv = alloca { i32, i64 }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/regex:Regex", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"std/regex:prog", ptr %t4, i32 0, i32 6
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l13
  br label %bb1
bb1:
  %t11 = load i64, ptr %l13, !tbaa !24
  store i64 %t11, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l20, !tbaa !24
  store i64 %t38, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l17, !tbaa !24
  store i64 %t39, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l8, !tbaa !24
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t58, i64 %t59)
  store { i64, ptr } %t62, ptr %l40
  br label %bb12
bb12:
  %t63 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t64, { i64, ptr } %t63)
  store i1 %t66, ptr %l42
  br label %bb13
bb13:
  %t67 = load i1, ptr %l42, !tbaa !21
  br i1 %t67, label %bb14, label %bb15
bb14:
  %t68 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t72 = icmp sgt i64 %t70, 0
  store i1 %t72, ptr %l43, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t74 = load i1, ptr %l43, !tbaa !21
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = insertvalue { i32, i64 } zeroinitializer, i64 %t75, 1
  store { i32, i64 } %t77, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l7, !tbaa !24
  br label %bb8
bb21:
  %t83 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t83, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3aRegex_2eGroups(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:Regex", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2estd_2fregex_3aRegex_2e0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t9 = call ptr @__olang_region_or(ptr %t8, ptr %v0)
  %t10 = ptrtoint ptr %t9 to i64
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/regex:Regex", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"std/regex:prog", ptr %t14, i32 0, i32 6
  %t17 = load i64, ptr %l3
  %t18 = inttoptr i64 %t17 to ptr
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %t18, ptr %t16)
  store i64 %t20, ptr %l8
  br label %bb3
bb3:
  %t21 = load i64, ptr %l8, !tbaa !24
  %t22 = sub i64 %t21, 1
  store i64 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fregex_2estd_2fregex_3aRegex_2eMatches(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca %"std/regex:dfa"
  %l4 = alloca i64
  %l5 = alloca %"std/regex:machine"
  %l10 = alloca i1
  %l18 = alloca %"std/regex:dfa"
  %l21 = alloca i64
  %l28 = alloca %"std/regex:machine"
  %l30 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i1
  %t25 = alloca %"std/regex:dfa", align 8
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"std/regex:Regex", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"std/regex:prog", ptr %t6, i32 0, i32 12
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = load i64, ptr @G_2estd_2fregex_2edfaMinText, !tbaa !24
  %t17 = icmp sge i64 %t13, %t14
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l10, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"std/regex:prog", ptr %t21, i32 0, i32 9
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  call void @std_2fregex_3adfa_2ector(ptr %t25, ptr %v0, ptr %v0, ptr %s1, ptr %t20, { i64, ptr } %t24, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t25, i64 456, i1 false)
  br label %bb6
bb5:
  br label %bb11
bb6:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l18, i64 456, i1 false)
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = call i64 @std_2fregex_2estd_2fregex_3adfa_2eend(ptr %s1, ptr %v1, ptr %l3, { i64, ptr } %t28, i64 0, i1 true)
  store i64 %t31, ptr %l21
  br label %bb7
bb7:
  %t32 = load i64, ptr %l21, !tbaa !24
  store i64 %t32, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t35 = icmp ne i64 %t33, -2
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp sge i64 %t37, 0
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i1 %t39, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t45 = call %"std/regex:machine" @std_2fregex_3amachine_2ector(ptr %v0, ptr %v1, ptr %s0, ptr %t41, { i64, ptr } %t42, i64 0)
  store %"std/regex:machine" %t45, ptr %l28
  br label %bb12
bb12:
  %t46 = load %"std/regex:machine", ptr %l28
  store %"std/regex:machine" %t46, ptr %l5
  %t48 = call i1 @std_2fregex_2estd_2fregex_3amachine_2erun(ptr %s0, ptr %l5, i64 0, i1 true)
  store i1 %t48, ptr %l30
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t49 = load i1, ptr %l30, !tbaa !21
  store i1 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @std_2fregex_2estd_2fregex_3aRegex_2eReplace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/regex:Match"
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"std/regex:Match"
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l49 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l8
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fregex_2estd_2fregex_3aRegex_2eFindAll(ptr %v0, ptr %v1, ptr %s1, ptr %t3, { i64, ptr } %t4)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l11
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  store ptr %t9, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l13, !tbaa !24
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eLen_3cstd_2fregex_3aMatch_3e(ptr %s1, ptr %t12)
  store i64 %t14, ptr %l15
  br label %bb4
bb4:
  %t15 = load i64, ptr %l13, !tbaa !24
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l5, !tbaa !29
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = call %"std/regex:Match" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eAt_3cstd_2fregex_3aMatch_3e(ptr %s1, ptr %s1, ptr %t21, i64 %t22)
  store %"std/regex:Match" %t25, ptr %l20
  br label %bb8
bb8:
  %t26 = load %"std/regex:Match", ptr %l20
  store %"std/regex:Match" %t26, ptr %l7
  store ptr %l3, ptr %l21, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t27, ptr %l22, !tbaa !27
  %t28 = load i64, ptr %l4, !tbaa !24
  store i64 %t28, ptr %l23, !tbaa !24
  %t29 = getelementptr %"std/regex:Match", ptr %l7, i32 0, i32 2
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l24, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l25, !tbaa !24
  %t33 = load i64, ptr %l23, !tbaa !24
  %t34 = icmp sge i64 %t33, 0
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l23, !tbaa !24
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = icmp sle i64 %t36, %t37
  br i1 %t38, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_474656555b17887a_ac2d9832f46fc0e)
  unreachable
bb11:
  %t40 = load i64, ptr %l24, !tbaa !24
  %t41 = load i64, ptr %l25, !tbaa !24
  %t42 = icmp sle i64 %t40, %t41
  br i1 %t42, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_474656555b17887a_ac2d9832f46fc0e)
  unreachable
bb13:
  %t44 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = load i64, ptr %l23, !tbaa !24
  %t47 = load i64, ptr %l24, !tbaa !24
  %t48 = getelementptr i8, ptr %t45, i64 %t46
  %t49 = sub i64 %t47, %t46
  %t50 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  %t52 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t52, { i64, ptr } %t51)
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_474656555b17887a_ac2d9832f46fc0e)
  unreachable
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fregex_2eexpand(ptr %s0, ptr %v0, ptr %s2, ptr %v2, ptr %l3, ptr %t54, ptr %l7, { i64, ptr } %a2)
  br label %bb16
bb16:
  %t60 = getelementptr %"std/regex:Match", ptr %l7, i32 0, i32 3
  %t61 = load i64, ptr %t60, !tbaa !24
  store i64 %t61, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t63 = load i64, ptr %l6, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l6, !tbaa !24
  br label %bb3
bb18:
  call void @__olang_scope_close(ptr %s1)
  store ptr %l3, ptr %l37, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t67, ptr %l38, !tbaa !27
  %t68 = load i64, ptr %l4, !tbaa !24
  store i64 %t68, ptr %l39, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t69, 0
  store i64 %t72, ptr %l42, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  store i64 %t74, ptr %l43, !tbaa !24
  %t75 = load i64, ptr %l39, !tbaa !24
  %t76 = icmp sge i64 %t75, 0
  br i1 %t76, label %bb19, label %bb20
bb19:
  %t78 = load i64, ptr %l39, !tbaa !24
  %t79 = load i64, ptr %l42, !tbaa !24
  %t80 = icmp sle i64 %t78, %t79
  br i1 %t80, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_645703fcb9c25e57_963319b49941480b)
  unreachable
bb21:
  %t82 = load i64, ptr %l42, !tbaa !24
  %t83 = load i64, ptr %l43, !tbaa !24
  %t84 = icmp sle i64 %t82, %t83
  br i1 %t84, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_645703fcb9c25e57_963319b49941480b)
  unreachable
bb23:
  %t86 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = load i64, ptr %l39, !tbaa !24
  %t89 = load i64, ptr %l42, !tbaa !24
  %t90 = getelementptr i8, ptr %t87, i64 %t88
  %t91 = sub i64 %t89, %t88
  %t92 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t90, 1
  %t94 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t94, { i64, ptr } %t93)
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_645703fcb9c25e57_963319b49941480b)
  unreachable
bb25:
  %t97 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l3)
  store { i64, ptr } %t97, ptr %l49
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t98 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fregex_2estd_2fregex_3aRegex_2eReplaceFunc(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2c, ptr %a2e) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/regex:Match"
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"std/regex:Match"
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l30 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l50 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  %pf2 = insertvalue { ptr, ptr } undef, ptr %a2c, 0
  %pg2 = insertvalue { ptr, ptr } %pf2, ptr %a2e, 1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l8
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s1
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fregex_2estd_2fregex_3aRegex_2eFindAll(ptr %v0, ptr %v1, ptr %s1, ptr %a0, { i64, ptr } %t4)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l11
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  store ptr %t9, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l13, !tbaa !24
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eLen_3cstd_2fregex_3aMatch_3e(ptr %s1, ptr %t12)
  store i64 %t14, ptr %l15
  br label %bb4
bb4:
  %t15 = load i64, ptr %l13, !tbaa !24
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l5, !tbaa !29
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = call %"std/regex:Match" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eAt_3cstd_2fregex_3aMatch_3e(ptr %s1, ptr %s1, ptr %t21, i64 %t22)
  store %"std/regex:Match" %t25, ptr %l20
  br label %bb8
bb8:
  %t26 = load %"std/regex:Match", ptr %l20
  store %"std/regex:Match" %t26, ptr %l7
  store ptr %l3, ptr %l21, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t27, ptr %l22, !tbaa !27
  %t28 = load i64, ptr %l4, !tbaa !24
  store i64 %t28, ptr %l23, !tbaa !24
  %t29 = getelementptr %"std/regex:Match", ptr %l7, i32 0, i32 2
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l24, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l25, !tbaa !24
  %t33 = load i64, ptr %l23, !tbaa !24
  %t34 = icmp sge i64 %t33, 0
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l23, !tbaa !24
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = icmp sle i64 %t36, %t37
  br i1 %t38, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_80ee03e65c5d9164_c0738b5671b6f6a0)
  unreachable
bb11:
  %t40 = load i64, ptr %l24, !tbaa !24
  %t41 = load i64, ptr %l25, !tbaa !24
  %t42 = icmp sle i64 %t40, %t41
  br i1 %t42, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_80ee03e65c5d9164_c0738b5671b6f6a0)
  unreachable
bb13:
  %t44 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = load i64, ptr %l23, !tbaa !24
  %t47 = load i64, ptr %l24, !tbaa !24
  %t48 = getelementptr i8, ptr %t45, i64 %t46
  %t49 = sub i64 %t47, %t46
  %t50 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  %t52 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t52, { i64, ptr } %t51)
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_80ee03e65c5d9164_c0738b5671b6f6a0)
  unreachable
bb15:
  store ptr %l3, ptr %l30, !tbaa !29
  %t55 = load %"std/regex:Match", ptr %l7
  %t57 = extractvalue { ptr, ptr } %pg2, 0
  %t58 = extractvalue { ptr, ptr } %pg2, 1
  %t60 = call { i64, ptr } %t57(ptr %t58, ptr %s1, ptr %s2, %"std/regex:Match" %t55)
  store { i64, ptr } %t60, ptr %l33
  br label %bb16
bb16:
  %t61 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  %t63 = extractvalue { i64, ptr } %t61, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t68 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t68, { i64, ptr } %t67)
  br label %bb17
bb17:
  %t70 = getelementptr %"std/regex:Match", ptr %l7, i32 0, i32 3
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l6, !tbaa !24
  br label %bb3
bb19:
  call void @__olang_scope_close(ptr %s1)
  store ptr %l3, ptr %l38, !tbaa !29
  %t77 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t77, ptr %l39, !tbaa !27
  %t78 = load i64, ptr %l4, !tbaa !24
  store i64 %t78, ptr %l40, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t79, 0
  store i64 %t82, ptr %l43, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l44, !tbaa !24
  %t85 = load i64, ptr %l40, !tbaa !24
  %t86 = icmp sge i64 %t85, 0
  br i1 %t86, label %bb20, label %bb21
bb20:
  %t88 = load i64, ptr %l40, !tbaa !24
  %t89 = load i64, ptr %l43, !tbaa !24
  %t90 = icmp sle i64 %t88, %t89
  br i1 %t90, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_30cf43fa63ed7451_c58d81c59eb0d0fd)
  unreachable
bb22:
  %t92 = load i64, ptr %l43, !tbaa !24
  %t93 = load i64, ptr %l44, !tbaa !24
  %t94 = icmp sle i64 %t92, %t93
  br i1 %t94, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_30cf43fa63ed7451_c58d81c59eb0d0fd)
  unreachable
bb24:
  %t96 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = load i64, ptr %l40, !tbaa !24
  %t99 = load i64, ptr %l43, !tbaa !24
  %t100 = getelementptr i8, ptr %t97, i64 %t98
  %t101 = sub i64 %t99, %t98
  %t102 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t100, 1
  %t104 = load ptr, ptr %l38, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t104, { i64, ptr } %t103)
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_30cf43fa63ed7451_c58d81c59eb0d0fd)
  unreachable
bb26:
  %t107 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l3)
  store { i64, ptr } %t107, ptr %l50
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t108 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t108, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fregex_2estd_2fregex_3aRegex_2eSplit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/regex:Match"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l27 = alloca %"std/regex:Match"
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l41 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fregex_2estd_2fregex_3aRegex_2eFindAll(ptr %v0, ptr %v1, ptr %s0, ptr %a0, { i64, ptr } %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l2
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eLen_3cstd_2fregex_3aMatch_3e(ptr %s0, ptr %l2)
  store i64 %t8, ptr %l13
  br label %bb2
bb2:
  %t9 = load i64, ptr %l13, !tbaa !24
  %t10 = add i64 %t9, 1
  store i64 %t10, ptr %l14, !tbaa !24
  %t11 = load i64, ptr %l14, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i64, ptr %l14, !tbaa !24
  %t15 = icmp sle i64 %t14, 576460752303423487
  br i1 %t15, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_b478556e76be53ca_8296c7ef827c5ebe)
  unreachable
bb5:
  %t17 = load i64, ptr %l14, !tbaa !24
  %t18 = mul i64 %t17, 16
  %t19 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  store ptr %l2, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_b478556e76be53ca_8296c7ef827c5ebe)
  unreachable
bb7:
  %t24 = load i64, ptr %l6, !tbaa !24
  store i64 %t24, ptr %l19, !tbaa !24
  %t25 = load ptr, ptr %l5, !tbaa !29
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eLen_3cstd_2fregex_3aMatch_3e(ptr %s0, ptr %t25)
  store i64 %t27, ptr %l21
  br label %bb8
bb8:
  %t28 = load i64, ptr %l19, !tbaa !24
  %t29 = load i64, ptr %l21, !tbaa !24
  %t30 = icmp slt i64 %t28, %t29
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb9, label %bb10
bb9:
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t34 = load i64, ptr %l6, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = call %"std/regex:Match" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eAt_3cstd_2fregex_3aMatch_3e(ptr %s0, ptr %s0, ptr %t36, i64 %t37)
  store %"std/regex:Match" %t40, ptr %l27
  br label %bb12
bb12:
  %t41 = load %"std/regex:Match", ptr %l27
  store %"std/regex:Match" %t41, ptr %l8
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t42, ptr %l28, !tbaa !27
  %t43 = load i64, ptr %l7, !tbaa !24
  store i64 %t43, ptr %l29, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t44, ptr %l30, !tbaa !27
  %t45 = load i64, ptr %l4, !tbaa !24
  store i64 %t45, ptr %l31, !tbaa !24
  %t46 = getelementptr %"std/regex:Match", ptr %l8, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  store i64 %t47, ptr %l32, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l33, !tbaa !24
  %t50 = load i64, ptr %l31, !tbaa !24
  %t51 = icmp sge i64 %t50, 0
  br i1 %t51, label %bb13, label %bb14
bb13:
  %t53 = load i64, ptr %l31, !tbaa !24
  %t54 = load i64, ptr %l32, !tbaa !24
  %t55 = icmp sle i64 %t53, %t54
  br i1 %t55, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_27f4c120f59fa35f_833012e64c44eadb)
  unreachable
bb15:
  %t57 = load i64, ptr %l32, !tbaa !24
  %t58 = load i64, ptr %l33, !tbaa !24
  %t59 = icmp sle i64 %t57, %t58
  br i1 %t59, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_27f4c120f59fa35f_833012e64c44eadb)
  unreachable
bb17:
  %t61 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = load i64, ptr %l31, !tbaa !24
  %t64 = load i64, ptr %l32, !tbaa !24
  %t65 = getelementptr i8, ptr %t62, i64 %t63
  %t66 = sub i64 %t64, %t63
  %t67 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t65, 1
  %t70 = load i64, ptr %l29, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %t72, i64 %t70
  store { i64, ptr } %t68, ptr %t73, !tbaa !37
  %t74 = getelementptr %"std/regex:Match", ptr %l8, i32 0, i32 3
  %t75 = load i64, ptr %t74, !tbaa !24
  store i64 %t75, ptr %l4, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_27f4c120f59fa35f_833012e64c44eadb)
  unreachable
bb19:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb7
bb20:
  %t81 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t81, ptr %l41, !tbaa !27
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eLen_3cstd_2fregex_3aMatch_3e(ptr %s0, ptr %l2)
  store i64 %t83, ptr %l43
  br label %bb21
bb21:
  %t84 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t84, ptr %l44, !tbaa !27
  %t85 = load i64, ptr %l4, !tbaa !24
  store i64 %t85, ptr %l45, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t86, 0
  store i64 %t89, ptr %l48, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  store i64 %t91, ptr %l49, !tbaa !24
  %t92 = load i64, ptr %l45, !tbaa !24
  %t93 = icmp sge i64 %t92, 0
  br i1 %t93, label %bb22, label %bb23
bb22:
  %t95 = load i64, ptr %l45, !tbaa !24
  %t96 = load i64, ptr %l48, !tbaa !24
  %t97 = icmp sle i64 %t95, %t96
  br i1 %t97, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_b7d4b418f286e474_d03bd50a2deebe0)
  unreachable
bb24:
  %t99 = load i64, ptr %l48, !tbaa !24
  %t100 = load i64, ptr %l49, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_b7d4b418f286e474_d03bd50a2deebe0)
  unreachable
bb26:
  %t103 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l45, !tbaa !24
  %t106 = load i64, ptr %l48, !tbaa !24
  %t107 = getelementptr i8, ptr %t104, i64 %t105
  %t108 = sub i64 %t106, %t105
  %t109 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t107, 1
  %t112 = load i64, ptr %l43, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %t114, i64 %t112
  store { i64, ptr } %t110, ptr %t115, !tbaa !37
  %t116 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t116, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_b7d4b418f286e474_d03bd50a2deebe0)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fregex_2estd_2fregex_3aRegex_2eStr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/regex:Regex", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"std/regex:prog", ptr %t4, i32 0, i32 0
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t9, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3adfa_2ebegin(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, i64 }
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l22 = alloca i1
  %l23 = alloca i1
  %l29 = alloca { i64, i64 }
  %l35 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fregex_2estd_2fregex_3adfa_2einitial(ptr %v0, ptr %t1, i1 false)
  store i64 %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load i64, ptr %l11, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  store i64 %a3, ptr %l5, !tbaa !24
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/regex:dfa", ptr %t7, i32 0, i32 7
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t9, i64 %t10)
  store i64 %t13, ptr %l16
  br label %bb3
bb3:
  %t14 = load i64, ptr %l16, !tbaa !24
  %t15 = and i64 %t14, 2
  %t17 = icmp ne i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l5, !tbaa !24
  store i64 %t19, ptr %l6, !tbaa !24
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = call i1 @std_2fregex_2estd_2fregex_3adfa_2edead(ptr %v0, ptr %t21, i64 %t22)
  store i1 %t25, ptr %l22
  br label %bb7
bb7:
  %t26 = load i1, ptr %l22, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb10
bb9:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t31 = icmp sle i64 %t27, %a2
  store i1 %t31, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l23, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = call { i64, i64 } @std_2fregex_2eruneBefore(ptr %v1, { i64, ptr } %a1, i64 %t35)
  store { i64, i64 } %t38, ptr %l29
  br label %bb14
bb14:
  %t39 = load { i64, i64 }, ptr %l29
  store { i64, i64 } %t39, ptr %l7
  %t40 = getelementptr { i64, i64 }, ptr %l7, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = getelementptr { i64, i64 }, ptr %l7, i32 0, i32 1
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l9, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l4, !tbaa !24
  %t52 = call i64 @std_2fregex_2estd_2fregex_3adfa_2estep(ptr %v0, ptr %t46, i64 %t47, i64 %t41)
  store i64 %t52, ptr %l35
  br label %bb15
bb15:
  %t53 = load i64, ptr %l35, !tbaa !24
  store i64 %t53, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l9, !tbaa !24
  store i64 %t54, ptr %l5, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"std/regex:dfa", ptr %t56, i32 0, i32 16
  %t59 = load i1, ptr %t58, !tbaa !21
  br i1 %t59, label %bb16, label %bb17
bb16:
  store i64 -2, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb2
bb20:
  %t62 = load i64, ptr %l6, !tbaa !24
  store i64 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2fregex_2estd_2fregex_3adfa_2eclosure(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l65 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:dfa", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/regex:dfa", ptr %t6, i32 0, i32 15
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l3, !tbaa !27
  store i64 1, ptr %l4, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i64, ptr %t15, i64 0
  store i64 %a1, ptr %t16, !tbaa !34
  br label %bb1
bb1:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb2, label %bb3
bb2:
  br label %bb25
bb3:
  br label %bb4
bb4:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = sub i64 %t23, 1
  store i64 %t25, ptr %l4, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t27, ptr %l18, !tbaa !27
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i64, ptr %t31, i64 %t28
  %t33 = load i64, ptr %t32, !tbaa !34
  store i64 %t33, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"std/regex:dfa", ptr %t35, i32 0, i32 12
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l22, !tbaa !27
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i64, ptr %t42, i64 %t39
  %t44 = load i64, ptr %t43, !tbaa !34
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"std/regex:dfa", ptr %t45, i32 0, i32 13
  %t48 = load i64, ptr %t47, !tbaa !24
  %t51 = icmp eq i64 %t44, %t48
  br i1 %t51, label %bb6, label %bb7
bb6:
  br label %bb23
bb7:
  br label %bb8
bb8:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/regex:dfa", ptr %t53, i32 0, i32 12
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l29, !tbaa !27
  %t57 = load i64, ptr %l5, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"std/regex:dfa", ptr %t58, i32 0, i32 13
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t57
  store i64 %t61, ptr %t66, !tbaa !34
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t67, ptr %l33, !tbaa !27
  %t68 = load i64, ptr %l5, !tbaa !24
  %t70 = mul i64 4, %t68
  %t72 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i64, ptr %t73, i64 %t70
  %t75 = load i64, ptr %t74, !tbaa !34
  store i64 %t75, ptr %l6, !tbaa !24
  %t77 = load i64, ptr %l6, !tbaa !24
  %t78 = load i64, ptr @G_2estd_2fregex_2eopJmp, !tbaa !24
  %t81 = icmp eq i64 %t77, %t78
  br i1 %t81, label %bb9, label %bb10
bb9:
  %t83 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t83, ptr %l40, !tbaa !27
  %t84 = load i64, ptr %l5, !tbaa !24
  %t86 = mul i64 4, %t84
  %t88 = add i64 %t86, 1
  %t90 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i64, ptr %t91, i64 %t88
  %t93 = load i64, ptr %t92, !tbaa !34
  store i64 %t93, ptr %l5, !tbaa !24
  br label %bb21
bb10:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load i64, ptr @G_2estd_2fregex_2eopSplit, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  br i1 %t99, label %bb11, label %bb12
bb11:
  %t101 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t101, ptr %l48, !tbaa !27
  %t102 = load i64, ptr %l4, !tbaa !24
  %t103 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t103, ptr %l50, !tbaa !27
  %t104 = load i64, ptr %l5, !tbaa !24
  %t106 = mul i64 4, %t104
  %t108 = add i64 %t106, 2
  %t110 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i64, ptr %t111, i64 %t108
  %t113 = load i64, ptr %t112, !tbaa !34
  %t116 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i64, ptr %t117, i64 %t102
  store i64 %t113, ptr %t118, !tbaa !34
  %t119 = load i64, ptr %l4, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l4, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t123, ptr %l57, !tbaa !27
  %t124 = load i64, ptr %l5, !tbaa !24
  %t126 = mul i64 4, %t124
  %t128 = add i64 %t126, 1
  %t130 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i64, ptr %t131, i64 %t128
  %t133 = load i64, ptr %t132, !tbaa !34
  store i64 %t133, ptr %l5, !tbaa !24
  br label %bb20
bb12:
  %t135 = load i64, ptr %l6, !tbaa !24
  %t136 = load i64, ptr @G_2estd_2fregex_2eopSave, !tbaa !24
  %t139 = icmp eq i64 %t135, %t136
  br i1 %t139, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb15
bb14:
  %t141 = load i64, ptr %l6, !tbaa !24
  %t142 = load i64, ptr @G_2estd_2fregex_2eopAssert, !tbaa !24
  %t145 = icmp eq i64 %t141, %t142
  store i1 %t145, ptr %l65, !tbaa !21
  br label %bb15
bb15:
  %t147 = load i1, ptr %l65, !tbaa !21
  br i1 %t147, label %bb16, label %bb17
bb16:
  %t148 = load i64, ptr %l5, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l5, !tbaa !24
  br label %bb19
bb17:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"std/regex:dfa", ptr %t152, i32 0, i32 14
  %t155 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t154, i64 %t155)
  br label %bb18
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb5
bb23:
  br label %bb24
bb24:
  br label %bb1
bb25:
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fregex_2estd_2fregex_3adfa_2edead(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/regex:dfa", ptr %a0, i32 0, i32 6
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %a1)
  store i64 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp eq i64 %t8, 0
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3adfa_2eend(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i8
  %l11 = alloca { i64, i64 }
  %l13 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca i1
  %l21 = alloca i64
  %l30 = alloca i1
  %l34 = alloca i1
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i32
  %l52 = alloca i1
  %l62 = alloca i64
  %l70 = alloca i1
  %l71 = alloca i1
  %l76 = alloca { i64, ptr }
  %l85 = alloca i64
  %l90 = alloca { i64, i64 }
  %l96 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/regex:dfa", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = getelementptr %"std/regex:prog", ptr %t5, i32 0, i32 8
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  store i1 %t12, ptr %l18, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l14, !tbaa !29
  %t15 = load i1, ptr %l18, !tbaa !21
  %t16 = call i64 @std_2fregex_2estd_2fregex_3adfa_2einitial(ptr %v0, ptr %t14, i1 %t15)
  store i64 %t16, ptr %l21
  br label %bb4
bb4:
  %t17 = load i64, ptr %l21, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  store i64 %t20, ptr %l6, !tbaa !24
  store i64 -1, ptr %l7, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/regex:dfa", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"std/regex:prog", ptr %t25, i32 0, i32 7
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l8, !tbaa !27
  br label %bb5
bb5:
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp eq i64 %t30, %t31
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t40 = icmp sgt i64 %t38, 0
  store i1 %t40, ptr %l30, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb8
bb8:
  %t42 = load i1, ptr %l30, !tbaa !21
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp slt i64 %t43, 0
  store i1 %t45, ptr %l34, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l34, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t48, ptr %l38, !tbaa !27
  %t49 = load i64, ptr %l6, !tbaa !24
  store i64 %t49, ptr %l39, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t50, 0
  store i64 %t53, ptr %l42, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l43, !tbaa !24
  %t56 = load i64, ptr %l39, !tbaa !24
  %t57 = icmp sge i64 %t56, 0
  br i1 %t57, label %bb14, label %bb15
bb13:
  br label %bb27
bb14:
  %t59 = load i64, ptr %l39, !tbaa !24
  %t60 = load i64, ptr %l42, !tbaa !24
  %t61 = icmp sle i64 %t59, %t60
  br i1 %t61, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4ff02c66b403d1ab_e592f7aadf729b77)
  unreachable
bb16:
  %t63 = load i64, ptr %l42, !tbaa !24
  %t64 = load i64, ptr %l43, !tbaa !24
  %t65 = icmp sle i64 %t63, %t64
  br i1 %t65, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_4ff02c66b403d1ab_e592f7aadf729b77)
  unreachable
bb18:
  %t67 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = load i64, ptr %l39, !tbaa !24
  %t70 = load i64, ptr %l42, !tbaa !24
  %t71 = getelementptr i8, ptr %t68, i64 %t69
  %t72 = sub i64 %t70, %t69
  %t73 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t71, 1
  %t75 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t78 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %v0, { i64, ptr } %t74, { i64, ptr } %t75)
  %t79 = extractvalue { i32, i64 } %t78, 1
  %t80 = extractvalue { i32, i64 } %t78, 0
  store i32 %t80, ptr %l50
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb21, label %ok.82, !prof !99
ok.82:
  store i64 %t79, ptr %l49
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_4ff02c66b403d1ab_e592f7aadf729b77)
  unreachable
bb20:
  %t83 = load i64, ptr %l49, !tbaa !24
  store i64 %t83, ptr %l37, !tbaa !24
  br label %bb23
bb21:
  %t84 = load i32, ptr %l50, !tbaa !23
  %t85 = ashr i32 %t84, 16
  %t87 = icmp eq i32 %t85, 1
  store i1 %t87, ptr %l52, !tbaa !21
  br label %bb22
bb22:
  store i64 -1, ptr %l37, !tbaa !24
  br label %bb23
bb23:
  %t88 = load i64, ptr %l37, !tbaa !24
  store i64 %t88, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l9, !tbaa !24
  %t91 = icmp slt i64 %t89, 0
  br i1 %t91, label %bb24, label %bb25
bb24:
  store i64 -1, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t94 = load i64, ptr %l6, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t98 = add i64 %t94, %t95
  store i64 %t98, ptr %l6, !tbaa !24
  br label %bb27
bb27:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"std/regex:dfa", ptr %t100, i32 0, i32 7
  %t103 = load i64, ptr %l5, !tbaa !24
  %t106 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t102, i64 %t103)
  store i64 %t106, ptr %l62
  br label %bb28
bb28:
  %t107 = load i64, ptr %l62, !tbaa !24
  %t108 = and i64 %t107, 2
  %t110 = icmp ne i64 %t108, 0
  br i1 %t110, label %bb29, label %bb30
bb29:
  %t112 = load i64, ptr %l6, !tbaa !24
  store i64 %t112, ptr %l7, !tbaa !24
  br i1 %a3, label %bb31, label %bb32
bb30:
  br label %bb34
bb31:
  %t116 = load i64, ptr %l6, !tbaa !24
  store i64 %t116, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i64, ptr %l5, !tbaa !24
  %t122 = call i1 @std_2fregex_2estd_2fregex_3adfa_2edead(ptr %v0, ptr %t118, i64 %t119)
  store i1 %t122, ptr %l70
  br label %bb35
bb35:
  %t123 = load i1, ptr %l70, !tbaa !21
  br i1 %t123, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb38
bb37:
  %t124 = load i64, ptr %l6, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t130 = icmp sge i64 %t124, %t127
  store i1 %t130, ptr %l71, !tbaa !21
  br label %bb38
bb38:
  %t132 = load i1, ptr %l71, !tbaa !21
  br i1 %t132, label %bb39, label %bb40
bb39:
  br label %bb52
bb40:
  br label %bb41
bb41:
  %t133 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t133, ptr %l76, !tbaa !27
  %t134 = load i64, ptr %l6, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t134
  %t139 = load i8, ptr %t138, !tbaa !32
  store i8 %t139, ptr %l10, !tbaa !22
  %t141 = load i8, ptr %l10, !tbaa !22
  %t143 = icmp ult i8 %t141, -128
  br i1 %t143, label %bb42, label %bb43
bb42:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i64, ptr %l5, !tbaa !24
  %t147 = load i8, ptr %l10, !tbaa !22
  %t149 = zext i8 %t147 to i64
  %t153 = call i64 @std_2fregex_2estd_2fregex_3adfa_2estep(ptr %v0, ptr %t145, i64 %t146, i64 %t149)
  store i64 %t153, ptr %l85
  br label %bb44
bb43:
  %t154 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t155 = load i64, ptr %l6, !tbaa !24
  %t158 = call { i64, i64 } @std_2fregex_2eruneAt(ptr %v1, { i64, ptr } %t154, i64 %t155)
  store { i64, i64 } %t158, ptr %l90
  br label %bb45
bb44:
  %t159 = load i64, ptr %l85, !tbaa !24
  store i64 %t159, ptr %l5, !tbaa !24
  %t160 = load i64, ptr %l6, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l6, !tbaa !24
  br label %bb47
bb45:
  %t164 = load { i64, i64 }, ptr %l90
  store { i64, i64 } %t164, ptr %l11
  %t165 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 0
  %t166 = load i64, ptr %t165, !tbaa !24
  %t168 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 1
  %t169 = load i64, ptr %t168, !tbaa !24
  store i64 %t169, ptr %l13, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i64, ptr %l5, !tbaa !24
  %t177 = call i64 @std_2fregex_2estd_2fregex_3adfa_2estep(ptr %v0, ptr %t171, i64 %t172, i64 %t166)
  store i64 %t177, ptr %l96
  br label %bb46
bb46:
  %t178 = load i64, ptr %l96, !tbaa !24
  store i64 %t178, ptr %l5, !tbaa !24
  %t179 = load i64, ptr %l6, !tbaa !24
  %t180 = load i64, ptr %l13, !tbaa !24
  %t183 = add i64 %t179, %t180
  store i64 %t183, ptr %l6, !tbaa !24
  br label %bb47
bb47:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"std/regex:dfa", ptr %t185, i32 0, i32 16
  %t188 = load i1, ptr %t187, !tbaa !21
  br i1 %t188, label %bb48, label %bb49
bb48:
  store i64 -2, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb5
bb52:
  %t191 = load i64, ptr %l7, !tbaa !24
  store i64 %t191, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3adfa_2einitial(ptr %v0, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l16 = alloca i1
  %l19 = alloca i64
  %l22 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l45 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = getelementptr %"std/regex:dfa", ptr %t2, i32 0, i32 13
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t9 = getelementptr %"std/regex:dfa", ptr %t8, i32 0, i32 13
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/regex:dfa", ptr %t10, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t12)
  br label %bb1
bb1:
  %t14 = load i1, ptr %l1, !tbaa !21
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fregex_2estd_2fregex_3adfa_2eclosure(ptr %v0, ptr %t18, i64 0)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t20 = load i1, ptr %l1, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb8
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/regex:dfa", ptr %t22, i32 0, i32 2
  %t25 = load i1, ptr %t24, !tbaa !21
  store i1 %t25, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l16, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  store i64 1, ptr %l19, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb11
bb11:
  %t28 = load i64, ptr %l19, !tbaa !24
  store i64 %t28, ptr %l2, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"std/regex:dfa", ptr %t29, i32 0, i32 14
  %t33 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v0, ptr %v0, ptr %t31)
  store { i64, ptr } %t33, ptr %l22
  br label %bb12
bb12:
  %t34 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t34, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l5, !tbaa !24
  br label %bb13
bb13:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb14, label %bb15
bb14:
  br label %bb21
bb15:
  br label %bb16
bb16:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t47, ptr %l29, !tbaa !27
  %t48 = load i64, ptr %l4, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i64, ptr %t51, i64 %t48
  %t53 = load i64, ptr %t52, !tbaa !34
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"std/regex:dfa", ptr %t55, i32 0, i32 1
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l33, !tbaa !27
  %t61 = mul i64 4, %t53
  %t63 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i64, ptr %t64, i64 %t61
  %t66 = load i64, ptr %t65, !tbaa !34
  %t67 = load i64, ptr @G_2estd_2fregex_2eopMatch, !tbaa !24
  %t70 = icmp eq i64 %t66, %t67
  br i1 %t70, label %bb17, label %bb18
bb17:
  %t72 = load i64, ptr %l2, !tbaa !24
  %t74 = or i64 %t72, 2
  store i64 %t74, ptr %l2, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l4, !tbaa !24
  br label %bb13
bb21:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l2, !tbaa !24
  %t84 = call i64 @std_2fregex_2estd_2fregex_3adfa_2eintern(ptr %v0, ptr %t80, i64 %t81)
  store i64 %t84, ptr %l45
  br label %bb22
bb22:
  %t85 = load i64, ptr %l45, !tbaa !24
  store i64 %t85, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3adfa_2eintern(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l32 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l65 = alloca i64
  %l69 = alloca i64
  %l70 = alloca i32
  %l72 = alloca i1
  %l80 = alloca i64
  %l83 = alloca i1
  %l87 = alloca i64
  %l89 = alloca i64
  %l94 = alloca i64
  %l96 = alloca i64
  %l100 = alloca i64
  %l103 = alloca i64
  %l126 = alloca i64
  %l129 = alloca i64
  %l138 = alloca i64
  %l141 = alloca i64
  %l147 = alloca ptr
  %l150 = alloca i64
  %l152 = alloca ptr
  %l154 = alloca i64
  %l156 = alloca ptr
  %l158 = alloca { i64, ptr }
  %l165 = alloca i64
  %l168 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:dfa", ptr %t1, i32 0, i32 14
  store ptr %t3, ptr %l2, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = mul i64 %t5, 1099511628211
  store i64 %t7, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l32
  br label %bb1
bb1:
  %t12 = load i64, ptr %l32, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
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
  store i64 0, ptr %l36, !tbaa !24
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
  store i64 %t37, ptr %l39, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l39, !tbaa !24
  store i64 %t39, ptr %l36, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l36, !tbaa !24
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
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  %t59 = load i64, ptr %l3, !tbaa !24
  store i64 %t59, ptr %l57, !tbaa !24
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t60, i64 %t57)
  store i64 %t64, ptr %l60
  br label %bb12
bb12:
  %t65 = load i64, ptr %l57, !tbaa !24
  %t66 = load i64, ptr %l60, !tbaa !24
  %t67 = xor i64 %t65, %t66
  %t69 = mul i64 %t67, 1099511628211
  store i64 %t69, ptr %l3, !tbaa !24
  br label %bb13
bb13:
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l8, !tbaa !24
  br label %bb8
bb14:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"std/regex:dfa", ptr %t75, i32 0, i32 10
  %t78 = load i64, ptr %l3, !tbaa !24
  %t81 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t77, i64 %t78)
  %t82 = extractvalue { i32, i64 } %t81, 1
  %t83 = extractvalue { i32, i64 } %t81, 0
  store i32 %t83, ptr %l70
  %t84 = icmp ne i32 %t83, 0
  br i1 %t84, label %bb16, label %ok.85, !prof !99
ok.85:
  store i64 %t82, ptr %l69
  br label %bb15
bb15:
  %t86 = load i64, ptr %l69, !tbaa !24
  store i64 %t86, ptr %l65, !tbaa !24
  br label %bb18
bb16:
  %t87 = load i32, ptr %l70, !tbaa !23
  %t88 = ashr i32 %t87, 16
  %t90 = icmp eq i32 %t88, 1
  store i1 %t90, ptr %l72, !tbaa !21
  br label %bb17
bb17:
  store i64 -1, ptr %l65, !tbaa !24
  br label %bb18
bb18:
  %t91 = load i64, ptr %l65, !tbaa !24
  store i64 %t91, ptr %l10, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  store i64 %t92, ptr %l11, !tbaa !24
  br label %bb19
bb19:
  %t94 = load i64, ptr %l10, !tbaa !24
  %t96 = icmp sge i64 %t94, 0
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb20, label %bb21
bb20:
  br label %bb56
bb21:
  br label %bb22
bb22:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"std/regex:dfa", ptr %t100, i32 0, i32 7
  %t103 = load i64, ptr %l10, !tbaa !24
  %t106 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t102, i64 %t103)
  store i64 %t106, ptr %l80
  br label %bb23
bb23:
  %t107 = load i64, ptr %l1, !tbaa !24
  %t108 = load i64, ptr %l80, !tbaa !24
  %t110 = icmp eq i64 %t108, %t107
  br i1 %t110, label %bb24, label %bb25
bb24:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/regex:dfa", ptr %t112, i32 0, i32 6
  %t115 = load i64, ptr %l10, !tbaa !24
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t114, i64 %t115)
  store i64 %t118, ptr %l87
  br label %bb26
bb25:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb28
bb26:
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t121 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t119)
  store i64 %t121, ptr %l89
  br label %bb27
bb27:
  %t122 = load i64, ptr %l87, !tbaa !24
  %t123 = load i64, ptr %l89, !tbaa !24
  %t124 = icmp eq i64 %t122, %t123
  store i1 %t124, ptr %l83, !tbaa !21
  br label %bb28
bb28:
  %t126 = load i1, ptr %l83, !tbaa !21
  br i1 %t126, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l12, !tbaa !21
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"std/regex:dfa", ptr %t127, i32 0, i32 5
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t129, i64 %t130)
  store i64 %t133, ptr %l94
  br label %bb31
bb30:
  br label %bb53
bb31:
  %t134 = load i64, ptr %l94, !tbaa !24
  store i64 %t134, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  %t135 = load ptr, ptr %l2, !tbaa !29
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t135)
  store i64 %t137, ptr %l96
  br label %bb32
bb32:
  %t138 = load i64, ptr %l96, !tbaa !24
  store i64 %t138, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t139 = load i64, ptr %l15, !tbaa !24
  %t140 = load i64, ptr %l14, !tbaa !24
  %t143 = icmp sgt i64 %t139, %t140
  br i1 %t143, label %bb33, label %bb34
bb33:
  %t145 = load i64, ptr %l16, !tbaa !24
  %t147 = icmp sgt i64 %t145, 0
  br i1 %t147, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb38
bb35:
  %t149 = load i64, ptr %l15, !tbaa !24
  %t150 = load i64, ptr %l14, !tbaa !24
  %t153 = sub i64 %t149, %t150
  %t154 = load i64, ptr %l16, !tbaa !24
  %t157 = add i64 %t153, %t154
  %t159 = sub i64 %t157, 1
  %t160 = load i64, ptr %l16, !tbaa !24
  %t163 = sdiv i64 %t159, %t160
  store i64 %t163, ptr %l103, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb37
bb37:
  %t165 = load i64, ptr %l103, !tbaa !24
  store i64 %t165, ptr %l100, !tbaa !24
  br label %bb38
bb38:
  %t166 = load i64, ptr %l100, !tbaa !24
  store i64 %t166, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb39
bb39:
  %t167 = load i64, ptr %l18, !tbaa !24
  %t168 = load i64, ptr %l17, !tbaa !24
  %t171 = icmp slt i64 %t167, %t168
  %t173 = xor i1 %t171, true
  br i1 %t173, label %bb40, label %bb41
bb40:
  br label %bb49
bb41:
  br label %bb42
bb42:
  %t175 = load i64, ptr %l14, !tbaa !24
  %t176 = load i64, ptr %l18, !tbaa !24
  %t177 = load i64, ptr %l16, !tbaa !24
  %t180 = mul i64 %t176, %t177
  %t183 = add i64 %t175, %t180
  store i64 %t183, ptr %l19, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"std/regex:dfa", ptr %t185, i32 0, i32 4
  %t188 = load i64, ptr %l13, !tbaa !24
  %t189 = load i64, ptr %l19, !tbaa !24
  %t192 = add i64 %t188, %t189
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t187, i64 %t192)
  store i64 %t195, ptr %l126
  br label %bb43
bb43:
  %t196 = load ptr, ptr %l2, !tbaa !29
  %t197 = load i64, ptr %l19, !tbaa !24
  %t200 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t196, i64 %t197)
  store i64 %t200, ptr %l129
  br label %bb44
bb44:
  %t201 = load i64, ptr %l126, !tbaa !24
  %t202 = load i64, ptr %l129, !tbaa !24
  %t203 = icmp ne i64 %t201, %t202
  br i1 %t203, label %bb45, label %bb46
bb45:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb49
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t205 = load i64, ptr %l18, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l18, !tbaa !24
  br label %bb39
bb49:
  %t209 = load i1, ptr %l12, !tbaa !21
  br i1 %t209, label %bb50, label %bb51
bb50:
  %t211 = load i64, ptr %l10, !tbaa !24
  store i64 %t211, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"std/regex:dfa", ptr %t213, i32 0, i32 11
  %t216 = load i64, ptr %l10, !tbaa !24
  %t219 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t215, i64 %t216)
  store i64 %t219, ptr %l138
  br label %bb54
bb54:
  %t220 = load i64, ptr %l138, !tbaa !24
  store i64 %t220, ptr %l10, !tbaa !24
  br label %bb55
bb55:
  br label %bb19
bb56:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"std/regex:dfa", ptr %t221, i32 0, i32 5
  %t225 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t223)
  store i64 %t225, ptr %l141
  br label %bb57
bb57:
  %t226 = load i64, ptr %l141, !tbaa !24
  store i64 %t226, ptr %l20, !tbaa !24
  %t227 = load i64, ptr %l20, !tbaa !24
  %t228 = load i64, ptr @G_2estd_2fregex_2edfaMaxStates, !tbaa !24
  %t231 = icmp sge i64 %t227, %t228
  br i1 %t231, label %bb58, label %bb59
bb58:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"std/regex:dfa", ptr %t233, i32 0, i32 16
  store i1 true, ptr %t235, !tbaa !21
  br label %bb60
bb59:
  br label %bb60
bb60:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"std/regex:dfa", ptr %t236, i32 0, i32 5
  store ptr %t238, ptr %l147, !tbaa !29
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"std/regex:dfa", ptr %t239, i32 0, i32 4
  %t243 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t241)
  store i64 %t243, ptr %l150
  br label %bb61
bb61:
  %t244 = load ptr, ptr %l147, !tbaa !29
  %t245 = load i64, ptr %l150, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t244, i64 %t245)
  br label %bb62
bb62:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"std/regex:dfa", ptr %t246, i32 0, i32 6
  store ptr %t248, ptr %l152, !tbaa !29
  %t249 = load ptr, ptr %l2, !tbaa !29
  %t251 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t249)
  store i64 %t251, ptr %l154
  br label %bb63
bb63:
  %t252 = load ptr, ptr %l152, !tbaa !29
  %t253 = load i64, ptr %l154, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t252, i64 %t253)
  br label %bb64
bb64:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"std/regex:dfa", ptr %t254, i32 0, i32 4
  store ptr %t256, ptr %l156, !tbaa !29
  %t257 = load ptr, ptr %l2, !tbaa !29
  %t259 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v0, ptr %v0, ptr %t257)
  store { i64, ptr } %t259, ptr %l158
  br label %bb65
bb65:
  %t260 = load ptr, ptr %l156, !tbaa !29
  %t261 = load { i64, ptr }, ptr %l158, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePushAll_3cI64_3e(ptr %v0, ptr %v0, ptr %t260, { i64, ptr } %t261)
  br label %bb66
bb66:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"std/regex:dfa", ptr %t262, i32 0, i32 7
  %t265 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t264, i64 %t265)
  br label %bb67
bb67:
  store i64 0, ptr %l21, !tbaa !24
  store i64 128, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t268 = load i64, ptr %l22, !tbaa !24
  %t269 = load i64, ptr %l21, !tbaa !24
  %t272 = icmp sgt i64 %t268, %t269
  br i1 %t272, label %bb68, label %bb69
bb68:
  %t274 = load i64, ptr %l23, !tbaa !24
  %t276 = icmp sgt i64 %t274, 0
  br i1 %t276, label %bb70, label %bb71
bb69:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb73
bb70:
  %t278 = load i64, ptr %l22, !tbaa !24
  %t279 = load i64, ptr %l21, !tbaa !24
  %t282 = sub i64 %t278, %t279
  %t283 = load i64, ptr %l23, !tbaa !24
  %t286 = add i64 %t282, %t283
  %t288 = sub i64 %t286, 1
  %t289 = load i64, ptr %l23, !tbaa !24
  %t292 = sdiv i64 %t288, %t289
  store i64 %t292, ptr %l168, !tbaa !24
  br label %bb72
bb71:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb72
bb72:
  %t294 = load i64, ptr %l168, !tbaa !24
  store i64 %t294, ptr %l165, !tbaa !24
  br label %bb73
bb73:
  %t295 = load i64, ptr %l165, !tbaa !24
  store i64 %t295, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb74
bb74:
  %t296 = load i64, ptr %l25, !tbaa !24
  %t297 = load i64, ptr %l24, !tbaa !24
  %t300 = icmp slt i64 %t296, %t297
  %t302 = xor i1 %t300, true
  br i1 %t302, label %bb75, label %bb76
bb75:
  br label %bb80
bb76:
  br label %bb77
bb77:
  %t304 = load i64, ptr %l21, !tbaa !24
  %t305 = load i64, ptr %l25, !tbaa !24
  %t306 = load i64, ptr %l23, !tbaa !24
  %t309 = mul i64 %t305, %t306
  %t312 = add i64 %t304, %t309
  store i64 %t312, ptr %l26, !tbaa !24
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = getelementptr %"std/regex:dfa", ptr %t314, i32 0, i32 8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t316, i64 -1)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t318 = load i64, ptr %l25, !tbaa !24
  %t320 = add i64 %t318, 1
  store i64 %t320, ptr %l25, !tbaa !24
  br label %bb74
bb80:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"std/regex:dfa", ptr %t322, i32 0, i32 11
  %t325 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t324, i64 %t325)
  br label %bb81
bb81:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"std/regex:dfa", ptr %t328, i32 0, i32 10
  %t331 = load i64, ptr %l3, !tbaa !24
  %t332 = load i64, ptr %l20, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t330, i64 %t331, i64 %t332)
  br label %bb82
bb82:
  %t336 = load i64, ptr %l20, !tbaa !24
  store i64 %t336, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3adfa_2estep(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i32
  %l42 = alloca i1
  %l46 = alloca ptr
  %l54 = alloca i64
  %l58 = alloca i64
  %l62 = alloca i64
  %l67 = alloca i64
  %l70 = alloca i64
  %l93 = alloca i64
  %l95 = alloca { i64, ptr }
  %l109 = alloca i1
  %l118 = alloca i1
  %l128 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l151 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 128
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/regex:dfa", ptr %t5, i32 0, i32 8
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = mul i64 128, %t8
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = add i64 %t10, %t11
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t7, i64 %t14)
  store i64 %t17, ptr %l28
  br label %bb3
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/regex:dfa", ptr %t18, i32 0, i32 9
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = mul i64 %t21, 1114112
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t30 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t20, i64 %t27)
  %t31 = extractvalue { i32, i64 } %t30, 1
  %t32 = extractvalue { i32, i64 } %t30, 0
  store i32 %t32, ptr %l40
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb8, label %ok.34, !prof !99
ok.34:
  store i64 %t31, ptr %l39
  br label %bb7
bb3:
  %t35 = load i64, ptr %l28, !tbaa !24
  store i64 %t35, ptr %l3, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t38 = icmp sge i64 %t36, 0
  br i1 %t38, label %bb4, label %bb5
bb4:
  %t40 = load i64, ptr %l3, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  br label %bb14
bb7:
  %t42 = load i64, ptr %l39, !tbaa !24
  store i64 %t42, ptr %l32, !tbaa !24
  br label %bb10
bb8:
  %t43 = load i32, ptr %l40, !tbaa !23
  %t44 = ashr i32 %t43, 16
  %t46 = icmp eq i32 %t44, 1
  store i1 %t46, ptr %l42, !tbaa !21
  br label %bb9
bb9:
  store i64 -1, ptr %l32, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l32, !tbaa !24
  store i64 %t47, ptr %l4, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t50 = icmp sge i64 %t48, 0
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = load i64, ptr %l4, !tbaa !24
  store i64 %t52, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l46, !tbaa !29
  %t55 = load ptr, ptr %l46, !tbaa !29
  %t56 = getelementptr %"std/regex:dfa", ptr %t55, i32 0, i32 13
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = add i64 %t57, 1
  %t61 = load ptr, ptr %l46, !tbaa !29
  %t62 = getelementptr %"std/regex:dfa", ptr %t61, i32 0, i32 13
  store i64 %t59, ptr %t62, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"std/regex:dfa", ptr %t63, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t65)
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"std/regex:dfa", ptr %t67, i32 0, i32 7
  %t70 = load i64, ptr %l1, !tbaa !24
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t69, i64 %t70)
  store i64 %t73, ptr %l54
  br label %bb16
bb16:
  %t74 = load i64, ptr %l54, !tbaa !24
  store i64 %t74, ptr %l5, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"std/regex:dfa", ptr %t75, i32 0, i32 5
  %t78 = load i64, ptr %l1, !tbaa !24
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t77, i64 %t78)
  store i64 %t81, ptr %l58
  br label %bb17
bb17:
  %t82 = load i64, ptr %l58, !tbaa !24
  store i64 %t82, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"std/regex:dfa", ptr %t83, i32 0, i32 6
  %t86 = load i64, ptr %l1, !tbaa !24
  %t89 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t85, i64 %t86)
  store i64 %t89, ptr %l62
  br label %bb18
bb18:
  %t90 = load i64, ptr %l62, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  store i64 %t90, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t97 = icmp sgt i64 %t93, %t94
  br i1 %t97, label %bb19, label %bb20
bb19:
  %t99 = load i64, ptr %l10, !tbaa !24
  %t101 = icmp sgt i64 %t99, 0
  br i1 %t101, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb24
bb21:
  %t103 = load i64, ptr %l9, !tbaa !24
  %t104 = load i64, ptr %l8, !tbaa !24
  %t107 = sub i64 %t103, %t104
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = sub i64 %t111, 1
  %t114 = load i64, ptr %l10, !tbaa !24
  %t117 = sdiv i64 %t113, %t114
  store i64 %t117, ptr %l70, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb23
bb23:
  %t119 = load i64, ptr %l70, !tbaa !24
  store i64 %t119, ptr %l67, !tbaa !24
  br label %bb24
bb24:
  %t120 = load i64, ptr %l67, !tbaa !24
  store i64 %t120, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb25
bb25:
  %t121 = load i64, ptr %l12, !tbaa !24
  %t122 = load i64, ptr %l11, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb26, label %bb27
bb26:
  br label %bb42
bb27:
  br label %bb28
bb28:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t130 = load i64, ptr %l12, !tbaa !24
  %t131 = load i64, ptr %l10, !tbaa !24
  %t134 = mul i64 %t130, %t131
  %t137 = add i64 %t129, %t134
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"std/regex:dfa", ptr %t139, i32 0, i32 4
  %t142 = load i64, ptr %l6, !tbaa !24
  %t146 = add i64 %t142, %t137
  %t149 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t141, i64 %t146)
  store i64 %t149, ptr %l93
  br label %bb29
bb29:
  %t150 = load i64, ptr %l93, !tbaa !24
  store i64 %t150, ptr %l14, !tbaa !24
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"std/regex:dfa", ptr %t151, i32 0, i32 1
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  store { i64, ptr } %t154, ptr %l95, !tbaa !27
  %t155 = load i64, ptr %l14, !tbaa !24
  %t157 = mul i64 4, %t155
  %t159 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i64, ptr %t160, i64 %t157
  %t162 = load i64, ptr %t161, !tbaa !34
  %t163 = load i64, ptr @G_2estd_2fregex_2eopMatch, !tbaa !24
  %t166 = icmp eq i64 %t162, %t163
  br i1 %t166, label %bb30, label %bb31
bb30:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"std/regex:dfa", ptr %t168, i32 0, i32 2
  %t171 = load i1, ptr %t170, !tbaa !21
  %t173 = xor i1 %t171, true
  br i1 %t173, label %bb32, label %bb33
bb31:
  br label %bb35
bb32:
  %t175 = load i64, ptr %l5, !tbaa !24
  %t177 = or i64 %t175, 1
  store i64 %t177, ptr %l5, !tbaa !24
  br label %bb42
bb33:
  br label %bb34
bb34:
  br label %bb41
bb35:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i64, ptr %l14, !tbaa !24
  %t181 = load i64, ptr %l2, !tbaa !24
  %t185 = call i1 @std_2fregex_2estd_2fregex_3adfa_2etakes(ptr %v0, ptr %t179, i64 %t180, i64 %t181)
  store i1 %t185, ptr %l109
  br label %bb36
bb36:
  %t186 = load i1, ptr %l109, !tbaa !21
  br i1 %t186, label %bb37, label %bb38
bb37:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i64, ptr %l14, !tbaa !24
  %t190 = add i64 %t188, 1
  call void @std_2fregex_2estd_2fregex_3adfa_2eclosure(ptr %v0, ptr %t187, i64 %t190)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t193 = load i64, ptr %l12, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l12, !tbaa !24
  br label %bb25
bb42:
  %t197 = load i64, ptr %l5, !tbaa !24
  %t199 = and i64 %t197, 1
  %t201 = icmp eq i64 %t199, 0
  br i1 %t201, label %bb43, label %bb44
bb43:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"std/regex:dfa", ptr %t203, i32 0, i32 0
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"std/regex:prog", ptr %t206, i32 0, i32 8
  %t209 = load i1, ptr %t208, !tbaa !21
  %t211 = xor i1 %t209, true
  store i1 %t211, ptr %l118, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb45
bb45:
  %t213 = load i1, ptr %l118, !tbaa !21
  br i1 %t213, label %bb46, label %bb47
bb46:
  %t214 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fregex_2estd_2fregex_3adfa_2eclosure(ptr %v0, ptr %t214, i64 0)
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb49
bb49:
  %t216 = load i64, ptr %l5, !tbaa !24
  %t218 = and i64 %t216, 1
  store i64 %t218, ptr %l5, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"std/regex:dfa", ptr %t220, i32 0, i32 14
  %t224 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v0, ptr %v0, ptr %t222)
  store { i64, ptr } %t224, ptr %l128
  br label %bb50
bb50:
  %t225 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t225, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t226, 0
  store i64 %t228, ptr %l17, !tbaa !24
  br label %bb51
bb51:
  %t230 = load i64, ptr %l16, !tbaa !24
  %t231 = load i64, ptr %l17, !tbaa !24
  %t234 = icmp slt i64 %t230, %t231
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb52, label %bb53
bb52:
  br label %bb59
bb53:
  br label %bb54
bb54:
  %t238 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t238, ptr %l135, !tbaa !27
  %t239 = load i64, ptr %l16, !tbaa !24
  %t241 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr i64, ptr %t242, i64 %t239
  %t244 = load i64, ptr %t243, !tbaa !34
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"std/regex:dfa", ptr %t246, i32 0, i32 1
  %t249 = load { i64, ptr }, ptr %t248, !tbaa !27
  store { i64, ptr } %t249, ptr %l139, !tbaa !27
  %t252 = mul i64 4, %t244
  %t254 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr i64, ptr %t255, i64 %t252
  %t257 = load i64, ptr %t256, !tbaa !34
  %t258 = load i64, ptr @G_2estd_2fregex_2eopMatch, !tbaa !24
  %t261 = icmp eq i64 %t257, %t258
  br i1 %t261, label %bb55, label %bb56
bb55:
  %t263 = load i64, ptr %l5, !tbaa !24
  %t265 = or i64 %t263, 2
  store i64 %t265, ptr %l5, !tbaa !24
  br label %bb57
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t267 = load i64, ptr %l16, !tbaa !24
  %t269 = add i64 %t267, 1
  store i64 %t269, ptr %l16, !tbaa !24
  br label %bb51
bb59:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load i64, ptr %l5, !tbaa !24
  %t275 = call i64 @std_2fregex_2estd_2fregex_3adfa_2eintern(ptr %v0, ptr %t271, i64 %t272)
  store i64 %t275, ptr %l151
  br label %bb60
bb60:
  %t276 = load i64, ptr %l151, !tbaa !24
  store i64 %t276, ptr %l19, !tbaa !24
  %t277 = load i64, ptr %l2, !tbaa !24
  %t279 = icmp slt i64 %t277, 128
  br i1 %t279, label %bb61, label %bb62
bb61:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"std/regex:dfa", ptr %t281, i32 0, i32 8
  %t284 = load i64, ptr %l1, !tbaa !24
  %t286 = mul i64 128, %t284
  %t287 = load i64, ptr %l2, !tbaa !24
  %t290 = add i64 %t286, %t287
  %t291 = load i64, ptr %l19, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t283, i64 %t290, i64 %t291)
  br label %bb63
bb62:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"std/regex:dfa", ptr %t295, i32 0, i32 9
  %t298 = load i64, ptr %l1, !tbaa !24
  %t300 = mul i64 %t298, 1114112
  %t301 = load i64, ptr %l2, !tbaa !24
  %t304 = add i64 %t300, %t301
  %t305 = load i64, ptr %l19, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t297, i64 %t304, i64 %t305)
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb65
bb65:
  %t309 = load i64, ptr %l19, !tbaa !24
  store i64 %t309, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fregex_2estd_2fregex_3adfa_2etakes(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l63 = alloca i64
  %l66 = alloca i64
  %l84 = alloca { i64, ptr }
  %l93 = alloca i1
  %l95 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:dfa", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %l16, !tbaa !27
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = mul i64 4, %t7
  %t11 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr i64, ptr %t12, i64 %t9
  %t14 = load i64, ptr %t13, !tbaa !34
  store i64 %t14, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr @G_2estd_2fregex_2eopChar, !tbaa !24
  %t20 = icmp eq i64 %t16, %t17
  br i1 %t20, label %bb1, label %bb2
bb1:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l23, !tbaa !27
  %t23 = load i64, ptr %l1, !tbaa !24
  %t25 = mul i64 4, %t23
  %t27 = add i64 %t25, 1
  %t29 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr i64, ptr %t30, i64 %t27
  %t32 = load i64, ptr %t31, !tbaa !34
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = icmp eq i64 %t32, %t33
  store i1 %t36, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = load i64, ptr @G_2estd_2fregex_2eopAny, !tbaa !24
  %t42 = icmp eq i64 %t38, %t39
  br i1 %t42, label %bb4, label %bb5
bb4:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = zext i8 10 to i64
  %t48 = icmp ne i64 %t44, %t45
  br i1 %t48, label %bb6, label %bb7
bb5:
  br label %bb9
bb6:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb8
bb7:
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t50, ptr %l37, !tbaa !27
  %t51 = load i64, ptr %l1, !tbaa !24
  %t53 = mul i64 4, %t51
  %t55 = add i64 %t53, 2
  %t57 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i64, ptr %t58, i64 %t55
  %t60 = load i64, ptr %t59, !tbaa !34
  %t62 = icmp eq i64 %t60, 1
  store i1 %t62, ptr %l36, !tbaa !21
  br label %bb8
bb8:
  %t64 = load i1, ptr %l36, !tbaa !21
  store i1 %t64, ptr %rv
  br label %ret
bb9:
  %t65 = load i64, ptr %l4, !tbaa !24
  %t66 = load i64, ptr @G_2estd_2fregex_2eopClass, !tbaa !24
  %t69 = icmp ne i64 %t65, %t66
  br i1 %t69, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"std/regex:dfa", ptr %t72, i32 0, i32 0
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"std/regex:prog", ptr %t75, i32 0, i32 11
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l5, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t80, ptr %l50, !tbaa !27
  %t81 = load i64, ptr %l1, !tbaa !24
  %t83 = mul i64 4, %t81
  %t85 = add i64 %t83, 1
  %t87 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i64, ptr %t88, i64 %t85
  %t90 = load i64, ptr %t89, !tbaa !34
  store i64 %t90, ptr %l6, !tbaa !24
  store i1 false, ptr %l7, !tbaa !21
  store i64 0, ptr %l8, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t92, ptr %l55, !tbaa !27
  %t93 = load i64, ptr %l1, !tbaa !24
  %t95 = mul i64 4, %t93
  %t97 = add i64 %t95, 2
  %t99 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i64, ptr %t100, i64 %t97
  %t102 = load i64, ptr %t101, !tbaa !34
  store i64 %t102, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l8, !tbaa !24
  %t108 = icmp sgt i64 %t104, %t105
  br i1 %t108, label %bb13, label %bb14
bb13:
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = icmp sgt i64 %t110, 0
  br i1 %t112, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb18
bb15:
  %t114 = load i64, ptr %l9, !tbaa !24
  %t115 = load i64, ptr %l8, !tbaa !24
  %t118 = sub i64 %t114, %t115
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t124 = sub i64 %t122, 1
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = sdiv i64 %t124, %t125
  store i64 %t128, ptr %l66, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb17
bb17:
  %t130 = load i64, ptr %l66, !tbaa !24
  store i64 %t130, ptr %l63, !tbaa !24
  br label %bb18
bb18:
  %t131 = load i64, ptr %l63, !tbaa !24
  store i64 %t131, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb19
bb19:
  %t132 = load i64, ptr %l12, !tbaa !24
  %t133 = load i64, ptr %l11, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb20, label %bb21
bb20:
  br label %bb30
bb21:
  br label %bb22
bb22:
  %t140 = load i64, ptr %l8, !tbaa !24
  %t141 = load i64, ptr %l12, !tbaa !24
  %t142 = load i64, ptr %l10, !tbaa !24
  %t145 = mul i64 %t141, %t142
  %t148 = add i64 %t140, %t145
  store i64 %t148, ptr %l13, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t150, ptr %l84, !tbaa !27
  %t151 = load i64, ptr %l6, !tbaa !24
  %t152 = load i64, ptr %l13, !tbaa !24
  %t154 = mul i64 2, %t152
  %t157 = add i64 %t151, %t154
  %t159 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i32, ptr %t160, i64 %t157
  %t162 = load i32, ptr %t161, !tbaa !84
  %t164 = zext i32 %t162 to i64
  %t165 = load i64, ptr %l2, !tbaa !24
  %t168 = icmp sle i64 %t164, %t165
  br i1 %t168, label %bb23, label %bb24
bb23:
  %t170 = load i64, ptr %l2, !tbaa !24
  %t171 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t171, ptr %l95, !tbaa !27
  %t172 = load i64, ptr %l6, !tbaa !24
  %t173 = load i64, ptr %l13, !tbaa !24
  %t175 = mul i64 2, %t173
  %t178 = add i64 %t172, %t175
  %t180 = add i64 %t178, 1
  %t182 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i32, ptr %t183, i64 %t180
  %t185 = load i32, ptr %t184, !tbaa !84
  %t187 = zext i32 %t185 to i64
  %t190 = icmp sle i64 %t170, %t187
  store i1 %t190, ptr %l93, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb25
bb25:
  %t192 = load i1, ptr %l93, !tbaa !21
  br i1 %t192, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb30
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t193 = load i64, ptr %l12, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l12, !tbaa !24
  br label %bb19
bb30:
  %t197 = load i1, ptr %l7, !tbaa !21
  %t198 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t198, ptr %l107, !tbaa !27
  %t199 = load i64, ptr %l1, !tbaa !24
  %t201 = mul i64 4, %t199
  %t203 = add i64 %t201, 3
  %t205 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i64, ptr %t206, i64 %t203
  %t208 = load i64, ptr %t207, !tbaa !34
  %t210 = icmp eq i64 %t208, 1
  %t213 = icmp ne i1 %t197, %t210
  store i1 %t213, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fregex_2estd_2fregex_3amachine_2eadd(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
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
  %l24 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l47 = alloca i1
  %l49 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l131 = alloca i1
  %l146 = alloca i64
  %l149 = alloca i64
  %l168 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = getelementptr %"std/regex:prog", ptr %t4, i32 0, i32 9
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l5, !tbaa !27
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/regex:machine", ptr %t11, i32 0, i32 6
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l6, !tbaa !27
  store i64 1, ptr %l7, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t16, ptr %l24, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i64, ptr %t20, i64 0
  store i64 %a2, ptr %t21, !tbaa !34
  br label %bb1
bb1:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb2, label %bb3
bb2:
  br label %bb47
bb3:
  br label %bb4
bb4:
  %t28 = load i64, ptr %l7, !tbaa !24
  %t30 = sub i64 %t28, 1
  store i64 %t30, ptr %l7, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t32, ptr %l31, !tbaa !27
  %t33 = load i64, ptr %l7, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i64, ptr %t36, i64 %t33
  %t38 = load i64, ptr %t37, !tbaa !34
  store i64 %t38, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t42 = icmp slt i64 %t40, -1
  br i1 %t42, label %bb5, label %bb6
bb5:
  %t44 = load i64, ptr %l7, !tbaa !24
  %t46 = sub i64 %t44, 1
  store i64 %t46, ptr %l7, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/regex:machine", ptr %t48, i32 0, i32 5
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  store { i64, ptr } %t51, ptr %l39, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = sub i64 -2, %t52
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t55, ptr %l42, !tbaa !27
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i64, ptr %t59, i64 %t56
  %t61 = load i64, ptr %t60, !tbaa !34
  %t64 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t54
  store i64 %t61, ptr %t66, !tbaa !34
  br label %bb46
bb6:
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = call i1 @std_2fregex_2estd_2fregex_3athreads_2ehas(ptr %v1, ptr %t67, i64 %t68)
  store i1 %t71, ptr %l47
  br label %bb9
bb9:
  %t72 = load i1, ptr %l47, !tbaa !21
  br i1 %t72, label %bb10, label %bb11
bb10:
  br label %bb45
bb11:
  br label %bb12
bb12:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"std/regex:threads", ptr %t73, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l49, !tbaa !27
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"std/regex:threads", ptr %t78, i32 0, i32 3
  %t81 = load i64, ptr %t80, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t77
  store i64 %t81, ptr %t86, !tbaa !34
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"std/regex:threads", ptr %t87, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  store { i64, ptr } %t90, ptr %l54, !tbaa !27
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"std/regex:threads", ptr %t91, i32 0, i32 3
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = load i64, ptr %l8, !tbaa !24
  %t98 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t94
  store i64 %t95, ptr %t100, !tbaa !34
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l58, !tbaa !29
  %t102 = load ptr, ptr %l58, !tbaa !29
  %t103 = getelementptr %"std/regex:threads", ptr %t102, i32 0, i32 3
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = add i64 %t104, 1
  %t108 = load ptr, ptr %l58, !tbaa !29
  %t109 = getelementptr %"std/regex:threads", ptr %t108, i32 0, i32 3
  store i64 %t106, ptr %t109, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t110, ptr %l61, !tbaa !27
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = mul i64 4, %t111
  %t115 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i64, ptr %t116, i64 %t113
  %t118 = load i64, ptr %t117, !tbaa !34
  store i64 %t118, ptr %l9, !tbaa !24
  %t120 = load i64, ptr %l9, !tbaa !24
  %t121 = load i64, ptr @G_2estd_2fregex_2eopJmp, !tbaa !24
  %t124 = icmp eq i64 %t120, %t121
  br i1 %t124, label %bb13, label %bb14
bb13:
  %t126 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t126, ptr %l68, !tbaa !27
  %t127 = load i64, ptr %l8, !tbaa !24
  %t129 = mul i64 4, %t127
  %t131 = add i64 %t129, 1
  %t133 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i64, ptr %t134, i64 %t131
  %t136 = load i64, ptr %t135, !tbaa !34
  store i64 %t136, ptr %l8, !tbaa !24
  br label %bb43
bb14:
  %t138 = load i64, ptr %l9, !tbaa !24
  %t139 = load i64, ptr @G_2estd_2fregex_2eopSplit, !tbaa !24
  %t142 = icmp eq i64 %t138, %t139
  br i1 %t142, label %bb15, label %bb16
bb15:
  %t144 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t144, ptr %l76, !tbaa !27
  %t145 = load i64, ptr %l7, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t146, ptr %l78, !tbaa !27
  %t147 = load i64, ptr %l8, !tbaa !24
  %t149 = mul i64 4, %t147
  %t151 = add i64 %t149, 2
  %t153 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i64, ptr %t154, i64 %t151
  %t156 = load i64, ptr %t155, !tbaa !34
  %t159 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i64, ptr %t160, i64 %t145
  store i64 %t156, ptr %t161, !tbaa !34
  %t162 = load i64, ptr %l7, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l7, !tbaa !24
  %t166 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t166, ptr %l85, !tbaa !27
  %t167 = load i64, ptr %l8, !tbaa !24
  %t169 = mul i64 4, %t167
  %t171 = add i64 %t169, 1
  %t173 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr i64, ptr %t174, i64 %t171
  %t176 = load i64, ptr %t175, !tbaa !34
  store i64 %t176, ptr %l8, !tbaa !24
  br label %bb42
bb16:
  %t178 = load i64, ptr %l9, !tbaa !24
  %t179 = load i64, ptr @G_2estd_2fregex_2eopSave, !tbaa !24
  %t182 = icmp eq i64 %t178, %t179
  br i1 %t182, label %bb17, label %bb18
bb17:
  %t184 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t184, ptr %l93, !tbaa !27
  %t185 = load i64, ptr %l8, !tbaa !24
  %t187 = mul i64 4, %t185
  %t189 = add i64 %t187, 1
  %t191 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr i64, ptr %t192, i64 %t189
  %t194 = load i64, ptr %t193, !tbaa !34
  store i64 %t194, ptr %l10, !tbaa !24
  %t196 = load i64, ptr %l10, !tbaa !24
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"std/regex:machine", ptr %t197, i32 0, i32 2
  %t200 = load i64, ptr %t199, !tbaa !24
  %t203 = icmp slt i64 %t196, %t200
  br i1 %t203, label %bb19, label %bb20
bb18:
  %t205 = load i64, ptr %l9, !tbaa !24
  %t206 = load i64, ptr @G_2estd_2fregex_2eopAssert, !tbaa !24
  %t209 = icmp eq i64 %t205, %t206
  br i1 %t209, label %bb22, label %bb23
bb19:
  %t211 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t211, ptr %l102, !tbaa !27
  %t212 = load i64, ptr %l7, !tbaa !24
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"std/regex:machine", ptr %t213, i32 0, i32 5
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  store { i64, ptr } %t216, ptr %l105, !tbaa !27
  %t217 = load i64, ptr %l10, !tbaa !24
  %t219 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr i64, ptr %t220, i64 %t217
  %t222 = load i64, ptr %t221, !tbaa !34
  %t225 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr i64, ptr %t226, i64 %t212
  store i64 %t222, ptr %t227, !tbaa !34
  %t228 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t228, ptr %l108, !tbaa !27
  %t229 = load i64, ptr %l7, !tbaa !24
  %t231 = add i64 %t229, 1
  %t232 = load i64, ptr %l10, !tbaa !24
  %t234 = sub i64 -2, %t232
  %t237 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr i64, ptr %t238, i64 %t231
  store i64 %t234, ptr %t239, !tbaa !34
  %t240 = load i64, ptr %l7, !tbaa !24
  %t242 = add i64 %t240, 2
  store i64 %t242, ptr %l7, !tbaa !24
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"std/regex:machine", ptr %t244, i32 0, i32 5
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  store { i64, ptr } %t247, ptr %l116, !tbaa !27
  %t248 = load i64, ptr %l10, !tbaa !24
  %t249 = load i64, ptr %l3, !tbaa !24
  %t252 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr i64, ptr %t253, i64 %t248
  store i64 %t249, ptr %t254, !tbaa !34
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t255 = load i64, ptr %l8, !tbaa !24
  %t257 = add i64 %t255, 1
  store i64 %t257, ptr %l8, !tbaa !24
  br label %bb41
bb22:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t260, ptr %l125, !tbaa !27
  %t261 = load i64, ptr %l8, !tbaa !24
  %t263 = mul i64 4, %t261
  %t265 = add i64 %t263, 1
  %t267 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr i64, ptr %t268, i64 %t265
  %t270 = load i64, ptr %t269, !tbaa !34
  %t271 = load i64, ptr %l3, !tbaa !24
  %t275 = call i1 @std_2fregex_2estd_2fregex_3amachine_2eholds(ptr %v0, ptr %t259, i64 %t270, i64 %t271)
  store i1 %t275, ptr %l131
  br label %bb24
bb23:
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t278 = getelementptr %"std/regex:threads", ptr %t276, i32 0, i32 3
  %t279 = load i64, ptr %t278, !tbaa !24
  %t281 = sub i64 %t279, 1
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"std/regex:machine", ptr %t282, i32 0, i32 2
  %t285 = load i64, ptr %t284, !tbaa !24
  %t288 = mul i64 %t281, %t285
  store i64 %t288, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"std/regex:machine", ptr %t290, i32 0, i32 2
  %t293 = load i64, ptr %t292, !tbaa !24
  store i64 %t293, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t295 = load i64, ptr %l13, !tbaa !24
  %t296 = load i64, ptr %l12, !tbaa !24
  %t299 = icmp sgt i64 %t295, %t296
  br i1 %t299, label %bb28, label %bb29
bb24:
  %t301 = load i1, ptr %l131, !tbaa !21
  %t302 = xor i1 %t301, true
  br i1 %t302, label %bb25, label %bb26
bb25:
  br label %bb45
bb26:
  br label %bb27
bb27:
  %t304 = load i64, ptr %l8, !tbaa !24
  %t306 = add i64 %t304, 1
  store i64 %t306, ptr %l8, !tbaa !24
  br label %bb40
bb28:
  %t308 = load i64, ptr %l14, !tbaa !24
  %t310 = icmp sgt i64 %t308, 0
  br i1 %t310, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l146, !tbaa !24
  br label %bb33
bb30:
  %t312 = load i64, ptr %l13, !tbaa !24
  %t313 = load i64, ptr %l12, !tbaa !24
  %t316 = sub i64 %t312, %t313
  %t317 = load i64, ptr %l14, !tbaa !24
  %t320 = add i64 %t316, %t317
  %t322 = sub i64 %t320, 1
  %t323 = load i64, ptr %l14, !tbaa !24
  %t326 = sdiv i64 %t322, %t323
  store i64 %t326, ptr %l149, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb32
bb32:
  %t328 = load i64, ptr %l149, !tbaa !24
  store i64 %t328, ptr %l146, !tbaa !24
  br label %bb33
bb33:
  %t329 = load i64, ptr %l146, !tbaa !24
  store i64 %t329, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb34
bb34:
  %t330 = load i64, ptr %l16, !tbaa !24
  %t331 = load i64, ptr %l15, !tbaa !24
  %t334 = icmp slt i64 %t330, %t331
  %t336 = xor i1 %t334, true
  br i1 %t336, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  br label %bb37
bb37:
  %t338 = load i64, ptr %l12, !tbaa !24
  %t339 = load i64, ptr %l16, !tbaa !24
  %t340 = load i64, ptr %l14, !tbaa !24
  %t343 = mul i64 %t339, %t340
  %t346 = add i64 %t338, %t343
  store i64 %t346, ptr %l17, !tbaa !24
  %t348 = load ptr, ptr %l1, !tbaa !29
  %t350 = getelementptr %"std/regex:threads", ptr %t348, i32 0, i32 2
  %t351 = load { i64, ptr }, ptr %t350, !tbaa !27
  store { i64, ptr } %t351, ptr %l168, !tbaa !27
  %t352 = load i64, ptr %l11, !tbaa !24
  %t353 = load i64, ptr %l17, !tbaa !24
  %t356 = add i64 %t352, %t353
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"std/regex:machine", ptr %t357, i32 0, i32 5
  %t360 = load { i64, ptr }, ptr %t359, !tbaa !27
  store { i64, ptr } %t360, ptr %l173, !tbaa !27
  %t361 = load i64, ptr %l17, !tbaa !24
  %t363 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !27
  %t365 = getelementptr i64, ptr %t364, i64 %t361
  %t366 = load i64, ptr %t365, !tbaa !34
  %t369 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr i64, ptr %t370, i64 %t356
  store i64 %t366, ptr %t371, !tbaa !34
  br label %bb38
bb38:
  %t372 = load i64, ptr %l16, !tbaa !24
  %t374 = add i64 %t372, 1
  store i64 %t374, ptr %l16, !tbaa !24
  br label %bb34
bb39:
  br label %bb45
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb8
bb45:
  br label %bb46
bb46:
  br label %bb1
bb47:
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fregex_2estd_2fregex_3amachine_2eholds(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l25 = alloca i1
  %l26 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l51 = alloca i1
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l61 = alloca i1
  %rv = alloca i1
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/regex:machine", ptr %a0, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = load i64, ptr @G_2estd_2fregex_2eatTextStart, !tbaa !24
  %t10 = icmp eq i64 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp eq i64 %t12, 0
  store i1 %t14, ptr %rv
  br label %ret
bb4:
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load i64, ptr @G_2estd_2fregex_2eatTextEnd, !tbaa !24
  %t20 = icmp eq i64 %t16, %t17
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t28 = icmp eq i64 %t22, %t25
  store i1 %t28, ptr %rv
  br label %ret
bb8:
  %t30 = load i64, ptr %l1, !tbaa !24
  %t31 = load i64, ptr @G_2estd_2fregex_2eatLineStart, !tbaa !24
  %t34 = icmp eq i64 %t30, %t31
  br i1 %t34, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = icmp eq i64 %t36, 0
  br i1 %t38, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb14
bb13:
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t40, ptr %l26, !tbaa !27
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = sub i64 %t41, 1
  %t45 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i8, ptr %t46, i64 %t43
  %t48 = load i8, ptr %t47, !tbaa !32
  %t50 = icmp eq i8 %t48, 10
  store i1 %t50, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  %t52 = load i1, ptr %l25, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
bb15:
  %t53 = load i64, ptr %l1, !tbaa !24
  %t54 = load i64, ptr @G_2estd_2fregex_2eatLineEnd, !tbaa !24
  %t57 = icmp eq i64 %t53, %t54
  br i1 %t57, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t59 = load i64, ptr %l2, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t65 = icmp eq i64 %t59, %t62
  br i1 %t65, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb21
bb20:
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t67, ptr %l39, !tbaa !27
  %t68 = load i64, ptr %l2, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i8, ptr %t71, i64 %t68
  %t73 = load i8, ptr %t72, !tbaa !32
  %t75 = icmp eq i8 %t73, 10
  store i1 %t75, ptr %l38, !tbaa !21
  br label %bb21
bb21:
  %t77 = load i1, ptr %l38, !tbaa !21
  store i1 %t77, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb34
bb25:
  %t78 = load i64, ptr %l2, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb26, label %bb27
bb26:
  %t82 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t82, ptr %l46, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = sub i64 %t83, 1
  %t87 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i8, ptr %t88, i64 %t85
  %t90 = load i8, ptr %t89, !tbaa !32
  %t92 = zext i8 %t90 to i64
  %t94 = call i1 @std_2fregex_2eisWord(i64 %t92)
  store i1 %t94, ptr %l51
  br label %bb28
bb27:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb29
bb28:
  %t95 = load i1, ptr %l51, !tbaa !21
  store i1 %t95, ptr %l45, !tbaa !21
  br label %bb29
bb29:
  %t96 = load i1, ptr %l45, !tbaa !21
  store i1 %t96, ptr %l4, !tbaa !21
  %t97 = load i64, ptr %l2, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t103 = icmp slt i64 %t97, %t100
  br i1 %t103, label %bb30, label %bb31
bb30:
  %t105 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t105, ptr %l57, !tbaa !27
  %t106 = load i64, ptr %l2, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i8, ptr %t109, i64 %t106
  %t111 = load i8, ptr %t110, !tbaa !32
  %t113 = zext i8 %t111 to i64
  %t115 = call i1 @std_2fregex_2eisWord(i64 %t113)
  store i1 %t115, ptr %l61
  br label %bb32
bb31:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb33
bb32:
  %t116 = load i1, ptr %l61, !tbaa !21
  store i1 %t116, ptr %l56, !tbaa !21
  br label %bb33
bb33:
  %t117 = load i1, ptr %l56, !tbaa !21
  %t118 = load i1, ptr %l4, !tbaa !21
  %t122 = icmp ne i1 %t118, %t117
  %t123 = load i64, ptr %l1, !tbaa !24
  %t124 = load i64, ptr @G_2estd_2fregex_2eatWord, !tbaa !24
  %t127 = icmp eq i64 %t123, %t124
  %t130 = icmp eq i1 %t122, %t127
  store i1 %t130, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_ba53ab31381ca0c5_2e1dc8549570eb59)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @std_2fregex_2estd_2fregex_3amachine_2erun(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, i64 }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i1
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l51 = alloca i1
  %l58 = alloca i1
  %l61 = alloca i1
  %l65 = alloca i1
  %l74 = alloca i1
  %l78 = alloca i64
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l91 = alloca i64
  %l92 = alloca i32
  %l94 = alloca i1
  %l103 = alloca i1
  %l107 = alloca i1
  %l117 = alloca i64
  %l120 = alloca i64
  %l139 = alloca { i64, ptr }
  %l157 = alloca { i64, i64 }
  %l168 = alloca i64
  %l171 = alloca i64
  %l191 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l207 = alloca i64
  %l210 = alloca i64
  %l229 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l250 = alloca { i64, ptr }
  %l260 = alloca ptr
  %l261 = alloca i64
  %l266 = alloca i1
  %l273 = alloca i1
  %l274 = alloca { i64, ptr }
  %l286 = alloca i64
  %l289 = alloca i64
  %l308 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l336 = alloca ptr
  %l339 = alloca ptr
  %l341 = alloca ptr
  %l343 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = getelementptr %"std/regex:prog", ptr %t6, i32 0, i32 9
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l4, !tbaa !27
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/regex:machine", ptr %t11, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l5, !tbaa !27
  store i64 %a1, ptr %l6, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/regex:machine", ptr %t18, i32 0, i32 3
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"std/regex:threads", ptr %t21, i32 0, i32 3
  store i64 0, ptr %t23, !tbaa !24
  br label %bb1
bb1:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"std/regex:machine", ptr %t24, i32 0, i32 7
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb2, label %bb3
bb2:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"std/regex:machine", ptr %t31, i32 0, i32 3
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"std/regex:threads", ptr %t34, i32 0, i32 3
  %t37 = load i64, ptr %t36, !tbaa !24
  %t39 = icmp eq i64 %t37, 0
  store i1 %t39, ptr %l51, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb4
bb4:
  %t41 = load i1, ptr %l51, !tbaa !21
  br i1 %t41, label %bb5, label %bb6
bb5:
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t44 = getelementptr %"std/regex:prog", ptr %t42, i32 0, i32 8
  %t45 = load i1, ptr %t44, !tbaa !21
  br i1 %t45, label %bb7, label %bb8
bb6:
  br label %bb38
bb7:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  store i1 %t49, ptr %l58, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb9
bb9:
  %t51 = load i1, ptr %l58, !tbaa !21
  br i1 %t51, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb15
bb11:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"std/regex:machine", ptr %t52, i32 0, i32 9
  %t55 = load i64, ptr %t54, !tbaa !24
  %t57 = icmp sge i64 %t55, 0
  br i1 %t57, label %bb12, label %bb13
bb12:
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/regex:machine", ptr %t60, i32 0, i32 9
  %t63 = load i64, ptr %t62, !tbaa !24
  %t66 = icmp sgt i64 %t59, %t63
  store i1 %t66, ptr %l65, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb14
bb14:
  %t68 = load i1, ptr %l65, !tbaa !21
  store i1 %t68, ptr %l61, !tbaa !21
  br label %bb15
bb15:
  %t69 = load i1, ptr %l61, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  br label %bb140
bb17:
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = getelementptr %"std/regex:prog", ptr %t70, i32 0, i32 7
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb19, label %bb20
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"std/regex:machine", ptr %t79, i32 0, i32 9
  %t82 = load i64, ptr %t81, !tbaa !24
  %t84 = icmp slt i64 %t82, 0
  store i1 %t84, ptr %l74, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb21
bb21:
  %t86 = load i1, ptr %l74, !tbaa !21
  br i1 %t86, label %bb22, label %bb23
bb22:
  %t87 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t87, ptr %l79, !tbaa !27
  %t88 = load i64, ptr %l6, !tbaa !24
  store i64 %t88, ptr %l80, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t89, 0
  store i64 %t92, ptr %l83, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  store i64 %t94, ptr %l84, !tbaa !24
  %t95 = load i64, ptr %l80, !tbaa !24
  %t96 = icmp sge i64 %t95, 0
  br i1 %t96, label %bb24, label %bb25
bb23:
  br label %bb37
bb24:
  %t98 = load i64, ptr %l80, !tbaa !24
  %t99 = load i64, ptr %l83, !tbaa !24
  %t100 = icmp sle i64 %t98, %t99
  br i1 %t100, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_e0007b4d7c2df66f_e279725bd041d3cb)
  unreachable
bb26:
  %t102 = load i64, ptr %l83, !tbaa !24
  %t103 = load i64, ptr %l84, !tbaa !24
  %t104 = icmp sle i64 %t102, %t103
  br i1 %t104, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_e0007b4d7c2df66f_e279725bd041d3cb)
  unreachable
bb28:
  %t106 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l80, !tbaa !24
  %t109 = load i64, ptr %l83, !tbaa !24
  %t110 = getelementptr i8, ptr %t107, i64 %t108
  %t111 = sub i64 %t109, %t108
  %t112 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t110, 1
  %t114 = load ptr, ptr %l3, !tbaa !29
  %t116 = getelementptr %"std/regex:prog", ptr %t114, i32 0, i32 7
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t120 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v0, { i64, ptr } %t113, { i64, ptr } %t117)
  %t121 = extractvalue { i32, i64 } %t120, 1
  %t122 = extractvalue { i32, i64 } %t120, 0
  store i32 %t122, ptr %l92
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb31, label %ok.124, !prof !99
ok.124:
  store i64 %t121, ptr %l91
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_e0007b4d7c2df66f_e279725bd041d3cb)
  unreachable
bb30:
  %t125 = load i64, ptr %l91, !tbaa !24
  store i64 %t125, ptr %l78, !tbaa !24
  br label %bb33
bb31:
  %t126 = load i32, ptr %l92, !tbaa !23
  %t127 = ashr i32 %t126, 16
  %t129 = icmp eq i32 %t127, 1
  store i1 %t129, ptr %l94, !tbaa !21
  br label %bb32
bb32:
  store i64 -1, ptr %l78, !tbaa !24
  br label %bb33
bb33:
  %t130 = load i64, ptr %l78, !tbaa !24
  store i64 %t130, ptr %l7, !tbaa !24
  %t131 = load i64, ptr %l7, !tbaa !24
  %t133 = icmp slt i64 %t131, 0
  br i1 %t133, label %bb34, label %bb35
bb34:
  br label %bb140
bb35:
  br label %bb36
bb36:
  %t135 = load i64, ptr %l6, !tbaa !24
  %t136 = load i64, ptr %l7, !tbaa !24
  %t139 = add i64 %t135, %t136
  store i64 %t139, ptr %l6, !tbaa !24
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"std/regex:machine", ptr %t141, i32 0, i32 7
  %t144 = load i1, ptr %t143, !tbaa !21
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb39, label %bb40
bb39:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"std/regex:machine", ptr %t148, i32 0, i32 9
  %t151 = load i64, ptr %t150, !tbaa !24
  %t153 = icmp slt i64 %t151, 0
  br i1 %t153, label %bb41, label %bb42
bb40:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb44
bb41:
  store i1 true, ptr %l107, !tbaa !21
  br label %bb43
bb42:
  %t155 = load i64, ptr %l6, !tbaa !24
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"std/regex:machine", ptr %t156, i32 0, i32 9
  %t159 = load i64, ptr %t158, !tbaa !24
  %t162 = icmp eq i64 %t155, %t159
  store i1 %t162, ptr %l107, !tbaa !21
  br label %bb43
bb43:
  %t164 = load i1, ptr %l107, !tbaa !21
  store i1 %t164, ptr %l103, !tbaa !21
  br label %bb44
bb44:
  %t165 = load i1, ptr %l103, !tbaa !21
  br i1 %t165, label %bb45, label %bb46
bb45:
  store i64 0, ptr %l8, !tbaa !24
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"std/regex:machine", ptr %t166, i32 0, i32 2
  %t169 = load i64, ptr %t168, !tbaa !24
  store i64 %t169, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t171 = load i64, ptr %l9, !tbaa !24
  %t172 = load i64, ptr %l8, !tbaa !24
  %t175 = icmp sgt i64 %t171, %t172
  br i1 %t175, label %bb47, label %bb48
bb46:
  br label %bb60
bb47:
  %t177 = load i64, ptr %l10, !tbaa !24
  %t179 = icmp sgt i64 %t177, 0
  br i1 %t179, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb52
bb49:
  %t181 = load i64, ptr %l9, !tbaa !24
  %t182 = load i64, ptr %l8, !tbaa !24
  %t185 = sub i64 %t181, %t182
  %t186 = load i64, ptr %l10, !tbaa !24
  %t189 = add i64 %t185, %t186
  %t191 = sub i64 %t189, 1
  %t192 = load i64, ptr %l10, !tbaa !24
  %t195 = sdiv i64 %t191, %t192
  store i64 %t195, ptr %l120, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb51
bb51:
  %t197 = load i64, ptr %l120, !tbaa !24
  store i64 %t197, ptr %l117, !tbaa !24
  br label %bb52
bb52:
  %t198 = load i64, ptr %l117, !tbaa !24
  store i64 %t198, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb53
bb53:
  %t199 = load i64, ptr %l12, !tbaa !24
  %t200 = load i64, ptr %l11, !tbaa !24
  %t203 = icmp slt i64 %t199, %t200
  %t205 = xor i1 %t203, true
  br i1 %t205, label %bb54, label %bb55
bb54:
  br label %bb58
bb55:
  br label %bb56
bb56:
  %t207 = load i64, ptr %l8, !tbaa !24
  %t208 = load i64, ptr %l12, !tbaa !24
  %t209 = load i64, ptr %l10, !tbaa !24
  %t212 = mul i64 %t208, %t209
  %t215 = add i64 %t207, %t212
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"std/regex:machine", ptr %t217, i32 0, i32 5
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  store { i64, ptr } %t220, ptr %l139, !tbaa !27
  %t223 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr i64, ptr %t224, i64 %t215
  store i64 -1, ptr %t225, !tbaa !34
  br label %bb57
bb57:
  %t226 = load i64, ptr %l12, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l12, !tbaa !24
  br label %bb53
bb58:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"std/regex:machine", ptr %t231, i32 0, i32 3
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t235 = load i64, ptr %l6, !tbaa !24
  call void @std_2fregex_2estd_2fregex_3amachine_2eadd(ptr %v0, ptr %v0, ptr %t230, ptr %t234, i64 0, i64 %t235)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"std/regex:machine", ptr %t239, i32 0, i32 3
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = getelementptr %"std/regex:threads", ptr %t242, i32 0, i32 3
  %t245 = load i64, ptr %t244, !tbaa !24
  %t247 = icmp eq i64 %t245, 0
  br i1 %t247, label %bb61, label %bb62
bb61:
  br label %bb140
bb62:
  br label %bb63
bb63:
  store i64 -1, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  %t249 = load i64, ptr %l6, !tbaa !24
  %t250 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t255 = icmp slt i64 %t249, %t252
  br i1 %t255, label %bb64, label %bb65
bb64:
  %t257 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t258 = load i64, ptr %l6, !tbaa !24
  %t261 = call { i64, i64 } @std_2fregex_2eruneAt(ptr %v0, { i64, ptr } %t257, i64 %t258)
  store { i64, i64 } %t261, ptr %l157
  br label %bb66
bb65:
  br label %bb67
bb66:
  %t262 = load { i64, i64 }, ptr %l157
  store { i64, i64 } %t262, ptr %l16
  %t263 = getelementptr { i64, i64 }, ptr %l16, i32 0, i32 0
  %t264 = load i64, ptr %t263, !tbaa !24
  store i64 %t264, ptr %l14, !tbaa !24
  %t266 = getelementptr { i64, i64 }, ptr %l16, i32 0, i32 1
  %t267 = load i64, ptr %t266, !tbaa !24
  store i64 %t267, ptr %l15, !tbaa !24
  br label %bb67
bb67:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"std/regex:machine", ptr %t269, i32 0, i32 4
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = getelementptr %"std/regex:threads", ptr %t272, i32 0, i32 3
  store i64 0, ptr %t274, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"std/regex:machine", ptr %t275, i32 0, i32 3
  %t278 = load ptr, ptr %t277, !tbaa !29
  %t280 = getelementptr %"std/regex:threads", ptr %t278, i32 0, i32 3
  %t281 = load i64, ptr %t280, !tbaa !24
  store i64 %t281, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t283 = load i64, ptr %l18, !tbaa !24
  %t284 = load i64, ptr %l17, !tbaa !24
  %t287 = icmp sgt i64 %t283, %t284
  br i1 %t287, label %bb68, label %bb69
bb68:
  %t289 = load i64, ptr %l19, !tbaa !24
  %t291 = icmp sgt i64 %t289, 0
  br i1 %t291, label %bb70, label %bb71
bb69:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb73
bb70:
  %t293 = load i64, ptr %l18, !tbaa !24
  %t294 = load i64, ptr %l17, !tbaa !24
  %t297 = sub i64 %t293, %t294
  %t298 = load i64, ptr %l19, !tbaa !24
  %t301 = add i64 %t297, %t298
  %t303 = sub i64 %t301, 1
  %t304 = load i64, ptr %l19, !tbaa !24
  %t307 = sdiv i64 %t303, %t304
  store i64 %t307, ptr %l171, !tbaa !24
  br label %bb72
bb71:
  store i64 0, ptr %l171, !tbaa !24
  br label %bb72
bb72:
  %t309 = load i64, ptr %l171, !tbaa !24
  store i64 %t309, ptr %l168, !tbaa !24
  br label %bb73
bb73:
  %t310 = load i64, ptr %l168, !tbaa !24
  store i64 %t310, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb74
bb74:
  %t311 = load i64, ptr %l21, !tbaa !24
  %t312 = load i64, ptr %l20, !tbaa !24
  %t315 = icmp slt i64 %t311, %t312
  %t317 = xor i1 %t315, true
  br i1 %t317, label %bb75, label %bb76
bb75:
  br label %bb131
bb76:
  br label %bb77
bb77:
  %t319 = load i64, ptr %l17, !tbaa !24
  %t320 = load i64, ptr %l21, !tbaa !24
  %t321 = load i64, ptr %l19, !tbaa !24
  %t324 = mul i64 %t320, %t321
  %t327 = add i64 %t319, %t324
  store i64 %t327, ptr %l22, !tbaa !24
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"std/regex:machine", ptr %t329, i32 0, i32 3
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t334 = getelementptr %"std/regex:threads", ptr %t332, i32 0, i32 0
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  store { i64, ptr } %t335, ptr %l191, !tbaa !27
  %t336 = load i64, ptr %l22, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr i64, ptr %t339, i64 %t336
  %t341 = load i64, ptr %t340, !tbaa !34
  store i64 %t341, ptr %l23, !tbaa !24
  %t343 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t343, ptr %l194, !tbaa !27
  %t344 = load i64, ptr %l23, !tbaa !24
  %t346 = mul i64 4, %t344
  %t348 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !27
  %t350 = getelementptr i64, ptr %t349, i64 %t346
  %t351 = load i64, ptr %t350, !tbaa !34
  store i64 %t351, ptr %l24, !tbaa !24
  %t353 = load i64, ptr %l24, !tbaa !24
  %t354 = load i64, ptr @G_2estd_2fregex_2eopMatch, !tbaa !24
  %t357 = icmp eq i64 %t353, %t354
  br i1 %t357, label %bb78, label %bb79
bb78:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"std/regex:machine", ptr %t359, i32 0, i32 7
  store i1 true, ptr %t361, !tbaa !21
  store i64 0, ptr %l25, !tbaa !24
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t364 = getelementptr %"std/regex:machine", ptr %t362, i32 0, i32 2
  %t365 = load i64, ptr %t364, !tbaa !24
  store i64 %t365, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t367 = load i64, ptr %l26, !tbaa !24
  %t368 = load i64, ptr %l25, !tbaa !24
  %t371 = icmp sgt i64 %t367, %t368
  br i1 %t371, label %bb80, label %bb81
bb79:
  br label %bb95
bb80:
  %t373 = load i64, ptr %l27, !tbaa !24
  %t375 = icmp sgt i64 %t373, 0
  br i1 %t375, label %bb82, label %bb83
bb81:
  store i64 0, ptr %l207, !tbaa !24
  br label %bb85
bb82:
  %t377 = load i64, ptr %l26, !tbaa !24
  %t378 = load i64, ptr %l25, !tbaa !24
  %t381 = sub i64 %t377, %t378
  %t382 = load i64, ptr %l27, !tbaa !24
  %t385 = add i64 %t381, %t382
  %t387 = sub i64 %t385, 1
  %t388 = load i64, ptr %l27, !tbaa !24
  %t391 = sdiv i64 %t387, %t388
  store i64 %t391, ptr %l210, !tbaa !24
  br label %bb84
bb83:
  store i64 0, ptr %l210, !tbaa !24
  br label %bb84
bb84:
  %t393 = load i64, ptr %l210, !tbaa !24
  store i64 %t393, ptr %l207, !tbaa !24
  br label %bb85
bb85:
  %t394 = load i64, ptr %l207, !tbaa !24
  store i64 %t394, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb86
bb86:
  %t395 = load i64, ptr %l29, !tbaa !24
  %t396 = load i64, ptr %l28, !tbaa !24
  %t399 = icmp slt i64 %t395, %t396
  %t401 = xor i1 %t399, true
  br i1 %t401, label %bb87, label %bb88
bb87:
  br label %bb91
bb88:
  br label %bb89
bb89:
  %t403 = load i64, ptr %l25, !tbaa !24
  %t404 = load i64, ptr %l29, !tbaa !24
  %t405 = load i64, ptr %l27, !tbaa !24
  %t408 = mul i64 %t404, %t405
  %t411 = add i64 %t403, %t408
  store i64 %t411, ptr %l30, !tbaa !24
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"std/regex:machine", ptr %t413, i32 0, i32 8
  %t416 = load { i64, ptr }, ptr %t415, !tbaa !27
  store { i64, ptr } %t416, ptr %l229, !tbaa !27
  %t417 = load i64, ptr %l30, !tbaa !24
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t420 = getelementptr %"std/regex:machine", ptr %t418, i32 0, i32 3
  %t421 = load ptr, ptr %t420, !tbaa !29
  %t423 = getelementptr %"std/regex:threads", ptr %t421, i32 0, i32 2
  %t424 = load { i64, ptr }, ptr %t423, !tbaa !27
  store { i64, ptr } %t424, ptr %l233, !tbaa !27
  %t425 = load i64, ptr %l22, !tbaa !24
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"std/regex:machine", ptr %t426, i32 0, i32 2
  %t429 = load i64, ptr %t428, !tbaa !24
  %t432 = mul i64 %t425, %t429
  %t433 = load i64, ptr %l30, !tbaa !24
  %t436 = add i64 %t432, %t433
  %t438 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t439 = load ptr, ptr %t438, !tbaa !27
  %t440 = getelementptr i64, ptr %t439, i64 %t436
  %t441 = load i64, ptr %t440, !tbaa !34
  %t444 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t445 = load ptr, ptr %t444, !tbaa !27
  %t446 = getelementptr i64, ptr %t445, i64 %t417
  store i64 %t441, ptr %t446, !tbaa !34
  br label %bb90
bb90:
  %t447 = load i64, ptr %l29, !tbaa !24
  %t449 = add i64 %t447, 1
  store i64 %t449, ptr %l29, !tbaa !24
  br label %bb86
bb91:
  br i1 %a2, label %bb92, label %bb93
bb92:
  store i1 true, ptr %rv
  br label %ret
bb93:
  br label %bb94
bb94:
  br label %bb131
bb95:
  %t454 = load i64, ptr %l14, !tbaa !24
  %t456 = icmp slt i64 %t454, 0
  br i1 %t456, label %bb96, label %bb97
bb96:
  br label %bb130
bb97:
  br label %bb98
bb98:
  store i1 false, ptr %l31, !tbaa !21
  %t458 = load i64, ptr %l24, !tbaa !24
  %t459 = load i64, ptr @G_2estd_2fregex_2eopChar, !tbaa !24
  %t462 = icmp eq i64 %t458, %t459
  br i1 %t462, label %bb99, label %bb100
bb99:
  %t464 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t464, ptr %l250, !tbaa !27
  %t465 = load i64, ptr %l23, !tbaa !24
  %t467 = mul i64 4, %t465
  %t469 = add i64 %t467, 1
  %t471 = getelementptr { i64, ptr }, ptr %l250, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !27
  %t473 = getelementptr i64, ptr %t472, i64 %t469
  %t474 = load i64, ptr %t473, !tbaa !34
  %t475 = load i64, ptr %l14, !tbaa !24
  %t478 = icmp eq i64 %t474, %t475
  store i1 %t478, ptr %l31, !tbaa !21
  br label %bb113
bb100:
  %t480 = load i64, ptr %l24, !tbaa !24
  %t481 = load i64, ptr @G_2estd_2fregex_2eopClass, !tbaa !24
  %t484 = icmp eq i64 %t480, %t481
  br i1 %t484, label %bb101, label %bb102
bb101:
  %t486 = load ptr, ptr %l3, !tbaa !29
  store ptr %t486, ptr %l260, !tbaa !29
  %t487 = ptrtoint ptr %v0 to i64
  store i64 %t487, ptr %l261, !tbaa !24
  %t488 = load i1, ptr @olang_2esole_2estd_2fregex_3amachine_2e0
  br i1 %t488, label %bb103, label %bb104
bb102:
  %t490 = load i64, ptr %l24, !tbaa !24
  %t491 = load i64, ptr @G_2estd_2fregex_2eopAny, !tbaa !24
  %t494 = icmp eq i64 %t490, %t491
  br i1 %t494, label %bb106, label %bb107
bb103:
  %t496 = load ptr, ptr %l260, !tbaa !29
  %t497 = call ptr @__olang_region_or(ptr %t496, ptr %v0)
  %t498 = ptrtoint ptr %t497 to i64
  store i64 %t498, ptr %l261, !tbaa !24
  br label %bb104
bb104:
  %t499 = load ptr, ptr %l3, !tbaa !29
  %t500 = load i64, ptr %l23, !tbaa !24
  %t501 = load i64, ptr %l14, !tbaa !24
  %t502 = load i64, ptr %l261
  %t503 = inttoptr i64 %t502 to ptr
  %t507 = call i1 @std_2fregex_2estd_2fregex_3aprog_2einClass(ptr %t503, ptr %t499, i64 %t500, i64 %t501)
  store i1 %t507, ptr %l266
  br label %bb105
bb105:
  %t508 = load i1, ptr %l266, !tbaa !21
  store i1 %t508, ptr %l31, !tbaa !21
  br label %bb112
bb106:
  %t509 = load i64, ptr %l14, !tbaa !24
  %t510 = zext i8 10 to i64
  %t513 = icmp ne i64 %t509, %t510
  br i1 %t513, label %bb108, label %bb109
bb107:
  br label %bb111
bb108:
  store i1 true, ptr %l273, !tbaa !21
  br label %bb110
bb109:
  %t515 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t515, ptr %l274, !tbaa !27
  %t516 = load i64, ptr %l23, !tbaa !24
  %t518 = mul i64 4, %t516
  %t520 = add i64 %t518, 2
  %t522 = getelementptr { i64, ptr }, ptr %l274, i32 0, i32 1
  %t523 = load ptr, ptr %t522, !tbaa !27
  %t524 = getelementptr i64, ptr %t523, i64 %t520
  %t525 = load i64, ptr %t524, !tbaa !34
  %t527 = icmp eq i64 %t525, 1
  store i1 %t527, ptr %l273, !tbaa !21
  br label %bb110
bb110:
  %t529 = load i1, ptr %l273, !tbaa !21
  store i1 %t529, ptr %l31, !tbaa !21
  br label %bb111
bb111:
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t530 = load i1, ptr %l31, !tbaa !21
  br i1 %t530, label %bb114, label %bb115
bb114:
  store i64 0, ptr %l32, !tbaa !24
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t534 = getelementptr %"std/regex:machine", ptr %t532, i32 0, i32 2
  %t535 = load i64, ptr %t534, !tbaa !24
  store i64 %t535, ptr %l33, !tbaa !24
  store i64 1, ptr %l34, !tbaa !24
  %t537 = load i64, ptr %l33, !tbaa !24
  %t538 = load i64, ptr %l32, !tbaa !24
  %t541 = icmp sgt i64 %t537, %t538
  br i1 %t541, label %bb116, label %bb117
bb115:
  br label %bb129
bb116:
  %t543 = load i64, ptr %l34, !tbaa !24
  %t545 = icmp sgt i64 %t543, 0
  br i1 %t545, label %bb118, label %bb119
bb117:
  store i64 0, ptr %l286, !tbaa !24
  br label %bb121
bb118:
  %t547 = load i64, ptr %l33, !tbaa !24
  %t548 = load i64, ptr %l32, !tbaa !24
  %t551 = sub i64 %t547, %t548
  %t552 = load i64, ptr %l34, !tbaa !24
  %t555 = add i64 %t551, %t552
  %t557 = sub i64 %t555, 1
  %t558 = load i64, ptr %l34, !tbaa !24
  %t561 = sdiv i64 %t557, %t558
  store i64 %t561, ptr %l289, !tbaa !24
  br label %bb120
bb119:
  store i64 0, ptr %l289, !tbaa !24
  br label %bb120
bb120:
  %t563 = load i64, ptr %l289, !tbaa !24
  store i64 %t563, ptr %l286, !tbaa !24
  br label %bb121
bb121:
  %t564 = load i64, ptr %l286, !tbaa !24
  store i64 %t564, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  br label %bb122
bb122:
  %t565 = load i64, ptr %l36, !tbaa !24
  %t566 = load i64, ptr %l35, !tbaa !24
  %t569 = icmp slt i64 %t565, %t566
  %t571 = xor i1 %t569, true
  br i1 %t571, label %bb123, label %bb124
bb123:
  br label %bb127
bb124:
  br label %bb125
bb125:
  %t573 = load i64, ptr %l32, !tbaa !24
  %t574 = load i64, ptr %l36, !tbaa !24
  %t575 = load i64, ptr %l34, !tbaa !24
  %t578 = mul i64 %t574, %t575
  %t581 = add i64 %t573, %t578
  store i64 %t581, ptr %l37, !tbaa !24
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t585 = getelementptr %"std/regex:machine", ptr %t583, i32 0, i32 5
  %t586 = load { i64, ptr }, ptr %t585, !tbaa !27
  store { i64, ptr } %t586, ptr %l308, !tbaa !27
  %t587 = load i64, ptr %l37, !tbaa !24
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t590 = getelementptr %"std/regex:machine", ptr %t588, i32 0, i32 3
  %t591 = load ptr, ptr %t590, !tbaa !29
  %t593 = getelementptr %"std/regex:threads", ptr %t591, i32 0, i32 2
  %t594 = load { i64, ptr }, ptr %t593, !tbaa !27
  store { i64, ptr } %t594, ptr %l312, !tbaa !27
  %t595 = load i64, ptr %l22, !tbaa !24
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t598 = getelementptr %"std/regex:machine", ptr %t596, i32 0, i32 2
  %t599 = load i64, ptr %t598, !tbaa !24
  %t602 = mul i64 %t595, %t599
  %t603 = load i64, ptr %l37, !tbaa !24
  %t606 = add i64 %t602, %t603
  %t608 = getelementptr { i64, ptr }, ptr %l312, i32 0, i32 1
  %t609 = load ptr, ptr %t608, !tbaa !27
  %t610 = getelementptr i64, ptr %t609, i64 %t606
  %t611 = load i64, ptr %t610, !tbaa !34
  %t614 = getelementptr { i64, ptr }, ptr %l308, i32 0, i32 1
  %t615 = load ptr, ptr %t614, !tbaa !27
  %t616 = getelementptr i64, ptr %t615, i64 %t587
  store i64 %t611, ptr %t616, !tbaa !34
  br label %bb126
bb126:
  %t617 = load i64, ptr %l36, !tbaa !24
  %t619 = add i64 %t617, 1
  store i64 %t619, ptr %l36, !tbaa !24
  br label %bb122
bb127:
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t622 = load ptr, ptr %l0, !tbaa !29
  %t624 = getelementptr %"std/regex:machine", ptr %t622, i32 0, i32 4
  %t625 = load ptr, ptr %t624, !tbaa !29
  %t626 = load i64, ptr %l23, !tbaa !24
  %t628 = add i64 %t626, 1
  %t629 = load i64, ptr %l6, !tbaa !24
  %t630 = load i64, ptr %l15, !tbaa !24
  %t633 = add i64 %t629, %t630
  call void @std_2fregex_2estd_2fregex_3amachine_2eadd(ptr %v0, ptr %v0, ptr %t621, ptr %t625, i64 %t628, i64 %t633)
  br label %bb128
bb128:
  br label %bb129
bb129:
  br label %bb130
bb130:
  %t638 = load i64, ptr %l21, !tbaa !24
  %t640 = add i64 %t638, 1
  store i64 %t640, ptr %l21, !tbaa !24
  br label %bb74
bb131:
  %t642 = load i64, ptr %l14, !tbaa !24
  %t644 = icmp slt i64 %t642, 0
  br i1 %t644, label %bb132, label %bb133
bb132:
  br label %bb140
bb133:
  br label %bb134
bb134:
  %t646 = load ptr, ptr %l0, !tbaa !29
  %t648 = getelementptr %"std/regex:machine", ptr %t646, i32 0, i32 3
  %t649 = load ptr, ptr %t648, !tbaa !29
  store ptr %t649, ptr %l38, !tbaa !29
  %t651 = load ptr, ptr %l0, !tbaa !29
  store ptr %t651, ptr %l336, !tbaa !29
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t654 = getelementptr %"std/regex:machine", ptr %t652, i32 0, i32 4
  %t655 = load ptr, ptr %t654, !tbaa !29
  %t656 = load ptr, ptr %l336, !tbaa !29
  %t657 = getelementptr %"std/regex:machine", ptr %t656, i32 0, i32 3
  %t658 = load ptr, ptr %t657, !tbaa !29
  store ptr %t658, ptr %l339, !tbaa !29
  %t660 = load ptr, ptr %l336, !tbaa !29
  %t661 = getelementptr %"std/regex:machine", ptr %t660, i32 0, i32 3
  store ptr %t655, ptr %t661, !tbaa !29
  %t662 = load i1, ptr @olang_2esole_2estd_2fregex_3amachine_2e3
  br i1 %t662, label %bb135, label %bb136
bb135:
  %t664 = load ptr, ptr %l339
  call void @__olang_region_release(ptr %t664)
  store ptr null, ptr %l339
  br label %bb136
bb136:
  %t665 = load ptr, ptr %l0, !tbaa !29
  store ptr %t665, ptr %l341, !tbaa !29
  %t666 = load ptr, ptr %l38, !tbaa !29
  %t667 = load ptr, ptr %l341, !tbaa !29
  %t668 = getelementptr %"std/regex:machine", ptr %t667, i32 0, i32 4
  %t669 = load ptr, ptr %t668, !tbaa !29
  store ptr %t669, ptr %l343, !tbaa !29
  %t671 = load ptr, ptr %l341, !tbaa !29
  %t672 = getelementptr %"std/regex:machine", ptr %t671, i32 0, i32 4
  store ptr %t666, ptr %t672, !tbaa !29
  %t673 = load i1, ptr @olang_2esole_2estd_2fregex_3amachine_2e4
  br i1 %t673, label %bb137, label %bb138
bb137:
  %t675 = load ptr, ptr %l343
  call void @__olang_region_release(ptr %t675)
  store ptr null, ptr %l343
  br label %bb138
bb138:
  %t676 = load i64, ptr %l6, !tbaa !24
  %t677 = load i64, ptr %l15, !tbaa !24
  %t680 = add i64 %t676, %t677
  store i64 %t680, ptr %l6, !tbaa !24
  br label %bb139
bb139:
  br label %bb1
bb140:
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t684 = getelementptr %"std/regex:machine", ptr %t682, i32 0, i32 7
  %t685 = load i1, ptr %t684, !tbaa !21
  store i1 %t685, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %a0, %"std/regex:node" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2ePush_3cstd_2fregex_3anode_3e(ptr %v0, ptr %t3, %"std/regex:node" %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/regex:parser", ptr %t7, i32 0, i32 3
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eLen_3cstd_2fregex_3anode_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = sub i64 %t12, 1
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t9 = call ptr @__olang_region_or(ptr %t8, ptr %v0)
  %t10 = ptrtoint ptr %t9 to i64
  store i64 %t10, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/regex:parser", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"std/regex:prog", ptr %t14, i32 0, i32 5
  %t19 = mul i64 2, 4
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 2, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l12, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i32, ptr %t25, i64 0
  store i32 %a1, ptr %t26, !tbaa !84
  %t28 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr i32, ptr %t29, i64 1
  store i32 %a2, ptr %t30, !tbaa !84
  %t31 = load i64, ptr %l5
  %t32 = inttoptr i64 %t31 to ptr
  %t34 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2ePushAll_3cU32_3e(ptr %t32, ptr %s0, ptr %t16, { i64, ptr } %t34)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2ealternation(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i8
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i1
  %l21 = alloca i1
  %l23 = alloca i8
  %l26 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i32
  %l38 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2esequence(ptr %v0, ptr %t1)
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l6
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l5
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t9 = load i32, ptr %l6, !tbaa !23
  %t10 = lshr i32 %t9, 16
  %t11 = and i32 %t9, 65535
  %t12 = icmp eq i32 %t10, 1
  %t13 = select i1 %t12, i32 1, i32 0
  %t14 = icmp eq i32 %t9, 0
  %t15 = shl i32 %t13, 16
  %t16 = or i32 %t15, %t11
  %t17 = select i1 %t14, i32 0, i32 %t16
  call void @__olang_scope_close(ptr %s0)
  %t19 = insertvalue { i32, i64 } zeroinitializer, i32 %t17, 0
  store { i32, i64 } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load i64, ptr %l3, !tbaa !24
  store i64 %t20, ptr %l1, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t21)
  store i1 %t23, ptr %l9
  br label %bb4
bb4:
  %t24 = load i1, ptr %l9, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t27)
  store i8 %t29, ptr %l13
  br label %bb7
bb7:
  %t30 = load i8, ptr %l13, !tbaa !22
  %t31 = icmp ne i8 %t30, 124
  store i1 %t31, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l11, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  %t36 = insertvalue { i32, i64 } zeroinitializer, i64 %t34, 1
  store { i32, i64 } %t36, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t37 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l16
  br label %bb12
bb12:
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l2
  %t39 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t39)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t42)
  store i1 %t44, ptr %l20
  br label %bb15
bb15:
  %t45 = load i1, ptr %l20, !tbaa !21
  br i1 %t45, label %bb16, label %bb17
bb16:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t46)
  store i8 %t48, ptr %l23
  br label %bb18
bb17:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb19
bb18:
  %t49 = load i8, ptr %l23, !tbaa !22
  %t50 = icmp eq i8 %t49, 124
  store i1 %t50, ptr %l21, !tbaa !21
  br label %bb19
bb19:
  %t52 = load i1, ptr %l21, !tbaa !21
  %t53 = xor i1 %t52, true
  br i1 %t53, label %bb20, label %bb21
bb20:
  br label %bb28
bb21:
  br label %bb22
bb22:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load ptr, ptr %l26, !tbaa !29
  %t57 = getelementptr %"std/regex:parser", ptr %t56, i32 0, i32 2
  %t58 = load i64, ptr %t57, !tbaa !24
  %t60 = add i64 %t58, 1
  %t62 = load ptr, ptr %l26, !tbaa !29
  %t63 = getelementptr %"std/regex:parser", ptr %t62, i32 0, i32 2
  store i64 %t60, ptr %t63, !tbaa !24
  store ptr %l2, ptr %l29, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2esequence(ptr %v0, ptr %t64)
  %t67 = extractvalue { i32, i64 } %t66, 1
  %t68 = extractvalue { i32, i64 } %t66, 0
  store i32 %t68, ptr %l33
  %t69 = icmp ne i32 %t68, 0
  br i1 %t69, label %bb24, label %ok.70, !prof !99
ok.70:
  store i64 %t67, ptr %l32
  br label %bb23
bb23:
  %t71 = load i64, ptr %l32, !tbaa !24
  store i64 %t71, ptr %l30, !tbaa !24
  br label %bb25
bb24:
  %t72 = load i32, ptr %l33, !tbaa !23
  %t73 = lshr i32 %t72, 16
  %t74 = and i32 %t72, 65535
  %t75 = icmp eq i32 %t73, 1
  %t76 = select i1 %t75, i32 1, i32 0
  %t77 = icmp eq i32 %t72, 0
  %t78 = shl i32 %t76, 16
  %t79 = or i32 %t78, %t74
  %t80 = select i1 %t77, i32 0, i32 %t79
  call void @__olang_scope_close(ptr %s0)
  %t82 = insertvalue { i32, i64 } zeroinitializer, i32 %t80, 0
  store { i32, i64 } %t82, ptr %rv
  br label %ret
bb25:
  %t83 = load ptr, ptr %l29, !tbaa !29
  %t84 = load i64, ptr %l30, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t83, i64 %t84)
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb14
bb28:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr @G_2estd_2fregex_2enAlt, !tbaa !24
  %t90 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eparent(ptr %v0, ptr %s0, ptr %t85, i64 %t86, ptr %l2)
  store i64 %t90, ptr %l38
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t91 = load i64, ptr %l38, !tbaa !24
  %t92 = insertvalue { i32, i64 } zeroinitializer, i64 %t91, 1
  store { i32, i64 } %t92, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2eatom(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca %"std/regex:node"
  %l3 = alloca %"std/regex:node"
  %l4 = alloca i8
  %l5 = alloca %"std/regex:node"
  %l6 = alloca i64
  %l9 = alloca i8
  %l12 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i32
  %l32 = alloca ptr
  %l36 = alloca %"std/regex:node"
  %l41 = alloca i64
  %l44 = alloca i1
  %l47 = alloca ptr
  %l51 = alloca %"std/regex:node"
  %l56 = alloca i64
  %l61 = alloca i64
  %l66 = alloca i64
  %l69 = alloca i1
  %l72 = alloca i1
  %l83 = alloca ptr
  %l87 = alloca i1
  %l96 = alloca i8
  %l97 = alloca ptr
  %l102 = alloca i1
  %l105 = alloca i1
  %l108 = alloca i1
  %l112 = alloca %"std/regex:node"
  %l115 = alloca i64
  %l119 = alloca i64
  %l123 = alloca i64
  %l128 = alloca i64
  %l130 = alloca ptr
  %l131 = alloca i64
  %l136 = alloca i64
  %l139 = alloca i1
  %l142 = alloca i64
  %l145 = alloca i1
  %l148 = alloca i1
  %l155 = alloca i64
  %l156 = alloca i32
  %l159 = alloca i32
  %l160 = alloca i32
  %l164 = alloca i64
  %l165 = alloca ptr
  %l167 = alloca i32
  %l168 = alloca i64
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  %t176 = alloca { i64, [1 x i64] }, align 8
  %t214 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t1)
  store i8 %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load i8, ptr %l9, !tbaa !22
  store i8 %t4, ptr %l1, !tbaa !22
  %t5 = load i8, ptr %l1, !tbaa !22
  %t7 = icmp eq i8 %t5, 40
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l12, !tbaa !29
  %t10 = load ptr, ptr %l12, !tbaa !29
  %t11 = getelementptr %"std/regex:parser", ptr %t10, i32 0, i32 2
  %t12 = load i64, ptr %t11, !tbaa !24
  %t14 = add i64 %t12, 1
  %t16 = load ptr, ptr %l12, !tbaa !29
  %t17 = getelementptr %"std/regex:parser", ptr %t16, i32 0, i32 2
  store i64 %t14, ptr %t17, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2egroup(ptr %v0, ptr %t18)
  %t21 = extractvalue { i32, i64 } %t20, 1
  %t22 = extractvalue { i32, i64 } %t20, 0
  store i32 %t22, ptr %l18
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb5, label %ok.24, !prof !99
ok.24:
  store i64 %t21, ptr %l17
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t25 = load i64, ptr %l17, !tbaa !24
  store i64 %t25, ptr %l15, !tbaa !24
  br label %bb6
bb5:
  %t26 = load i32, ptr %l18, !tbaa !23
  %t27 = lshr i32 %t26, 16
  %t28 = and i32 %t26, 65535
  %t29 = icmp eq i32 %t27, 1
  %t30 = select i1 %t29, i32 1, i32 0
  %t31 = icmp eq i32 %t26, 0
  %t32 = shl i32 %t30, 16
  %t33 = or i32 %t32, %t28
  %t34 = select i1 %t31, i32 0, i32 %t33
  %t36 = insertvalue { i32, i64 } zeroinitializer, i32 %t34, 0
  store { i32, i64 } %t36, ptr %rv
  br label %ret
bb6:
  %t37 = load i64, ptr %l15, !tbaa !24
  %t38 = insertvalue { i32, i64 } zeroinitializer, i64 %t37, 1
  store { i32, i64 } %t38, ptr %rv
  br label %ret
bb7:
  %t39 = load i8, ptr %l1, !tbaa !22
  %t41 = icmp eq i8 %t39, 91
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l22, !tbaa !29
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t45 = getelementptr %"std/regex:parser", ptr %t44, i32 0, i32 2
  %t46 = load i64, ptr %t45, !tbaa !24
  %t48 = add i64 %t46, 1
  %t50 = load ptr, ptr %l22, !tbaa !29
  %t51 = getelementptr %"std/regex:parser", ptr %t50, i32 0, i32 2
  store i64 %t48, ptr %t51, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = call { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2eclass(ptr %v0, ptr %t52)
  %t55 = extractvalue { i32, i64 } %t54, 1
  %t56 = extractvalue { i32, i64 } %t54, 0
  store i32 %t56, ptr %l28
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb11, label %ok.58, !prof !99
ok.58:
  store i64 %t55, ptr %l27
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t59 = load i64, ptr %l27, !tbaa !24
  store i64 %t59, ptr %l25, !tbaa !24
  br label %bb12
bb11:
  %t60 = load i32, ptr %l28, !tbaa !23
  %t61 = lshr i32 %t60, 16
  %t62 = and i32 %t60, 65535
  %t63 = icmp eq i32 %t61, 1
  %t64 = select i1 %t63, i32 1, i32 0
  %t65 = icmp eq i32 %t60, 0
  %t66 = shl i32 %t64, 16
  %t67 = or i32 %t66, %t62
  %t68 = select i1 %t65, i32 0, i32 %t67
  %t70 = insertvalue { i32, i64 } zeroinitializer, i32 %t68, 0
  store { i32, i64 } %t70, ptr %rv
  br label %ret
bb12:
  %t71 = load i64, ptr %l25, !tbaa !24
  %t72 = insertvalue { i32, i64 } zeroinitializer, i64 %t71, 1
  store { i32, i64 } %t72, ptr %rv
  br label %ret
bb13:
  %t73 = load i8, ptr %l1, !tbaa !22
  %t75 = icmp eq i8 %t73, 46
  br i1 %t75, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l32, !tbaa !29
  %t78 = load ptr, ptr %l32, !tbaa !29
  %t79 = getelementptr %"std/regex:parser", ptr %t78, i32 0, i32 2
  %t80 = load i64, ptr %t79, !tbaa !24
  %t82 = add i64 %t80, 1
  %t84 = load ptr, ptr %l32, !tbaa !29
  %t85 = getelementptr %"std/regex:parser", ptr %t84, i32 0, i32 2
  store i64 %t82, ptr %t85, !tbaa !24
  %t86 = load i64, ptr @G_2estd_2fregex_2enAny, !tbaa !24
  %t88 = call %"std/regex:node" @std_2fregex_3anode_2ector(ptr %s3, i64 %t86)
  store %"std/regex:node" %t88, ptr %l36
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t89 = load %"std/regex:node", ptr %l36
  store %"std/regex:node" %t89, ptr %l2
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"std/regex:parser", ptr %t90, i32 0, i32 7
  %t93 = load i1, ptr %t92, !tbaa !21
  %t95 = getelementptr %"std/regex:node", ptr %l2, i32 0, i32 6
  store i1 %t93, ptr %t95, !tbaa !21
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"std/regex:node", ptr %l2
  %t100 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %t96, %"std/regex:node" %t97)
  store i64 %t100, ptr %l41
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  %t101 = load i64, ptr %l41, !tbaa !24
  %t102 = insertvalue { i32, i64 } zeroinitializer, i64 %t101, 1
  store { i32, i64 } %t102, ptr %rv
  br label %ret
bb18:
  %t103 = load i8, ptr %l1, !tbaa !22
  %t105 = icmp eq i8 %t103, 94
  br i1 %t105, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb21
bb20:
  %t107 = load i8, ptr %l1, !tbaa !22
  %t109 = icmp eq i8 %t107, 36
  store i1 %t109, ptr %l44, !tbaa !21
  br label %bb21
bb21:
  %t111 = load i1, ptr %l44, !tbaa !21
  br i1 %t111, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l47, !tbaa !29
  %t113 = load ptr, ptr %l47, !tbaa !29
  %t114 = getelementptr %"std/regex:parser", ptr %t113, i32 0, i32 2
  %t115 = load i64, ptr %t114, !tbaa !24
  %t117 = add i64 %t115, 1
  %t119 = load ptr, ptr %l47, !tbaa !29
  %t120 = getelementptr %"std/regex:parser", ptr %t119, i32 0, i32 2
  store i64 %t117, ptr %t120, !tbaa !24
  %t121 = load i64, ptr @G_2estd_2fregex_2enAssert, !tbaa !24
  %t123 = call %"std/regex:node" @std_2fregex_3anode_2ector(ptr %s4, i64 %t121)
  store %"std/regex:node" %t123, ptr %l51
  br label %bb24
bb23:
  br label %bb35
bb24:
  %t124 = load %"std/regex:node", ptr %l51
  store %"std/regex:node" %t124, ptr %l3
  %t125 = load i8, ptr %l1, !tbaa !22
  %t127 = icmp eq i8 %t125, 94
  br i1 %t127, label %bb25, label %bb26
bb25:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"std/regex:parser", ptr %t129, i32 0, i32 6
  %t132 = load i1, ptr %t131, !tbaa !21
  br i1 %t132, label %bb27, label %bb28
bb26:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"std/regex:parser", ptr %t134, i32 0, i32 6
  %t137 = load i1, ptr %t136, !tbaa !21
  br i1 %t137, label %bb30, label %bb31
bb27:
  %t139 = load i64, ptr @G_2estd_2fregex_2eatLineStart, !tbaa !24
  store i64 %t139, ptr %l56, !tbaa !24
  br label %bb29
bb28:
  %t141 = load i64, ptr @G_2estd_2fregex_2eatTextStart, !tbaa !24
  store i64 %t141, ptr %l56, !tbaa !24
  br label %bb29
bb29:
  %t143 = load i64, ptr %l56, !tbaa !24
  %t144 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  store i64 %t143, ptr %t144, !tbaa !24
  br label %bb33
bb30:
  %t145 = load i64, ptr @G_2estd_2fregex_2eatLineEnd, !tbaa !24
  store i64 %t145, ptr %l61, !tbaa !24
  br label %bb32
bb31:
  %t147 = load i64, ptr @G_2estd_2fregex_2eatTextEnd, !tbaa !24
  store i64 %t147, ptr %l61, !tbaa !24
  br label %bb32
bb32:
  %t149 = load i64, ptr %l61, !tbaa !24
  %t150 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  store i64 %t149, ptr %t150, !tbaa !24
  br label %bb33
bb33:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load %"std/regex:node", ptr %l3
  %t155 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %t151, %"std/regex:node" %t152)
  store i64 %t155, ptr %l66
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  %t156 = load i64, ptr %l66, !tbaa !24
  %t157 = insertvalue { i32, i64 } zeroinitializer, i64 %t156, 1
  store { i32, i64 } %t157, ptr %rv
  br label %ret
bb35:
  %t158 = load i8, ptr %l1, !tbaa !22
  %t160 = icmp eq i8 %t158, 42
  br i1 %t160, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb38
bb37:
  %t162 = load i8, ptr %l1, !tbaa !22
  %t164 = icmp eq i8 %t162, 43
  store i1 %t164, ptr %l69, !tbaa !21
  br label %bb38
bb38:
  %t166 = load i1, ptr %l69, !tbaa !21
  br i1 %t166, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb41
bb40:
  %t167 = load i8, ptr %l1, !tbaa !22
  %t169 = icmp eq i8 %t167, 63
  store i1 %t169, ptr %l72, !tbaa !21
  br label %bb41
bb41:
  %t171 = load i1, ptr %l72, !tbaa !21
  br i1 %t171, label %bb42, label %bb43
bb42:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"std/regex:parser", ptr %t172, i32 0, i32 2
  %t175 = load i64, ptr %t174, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [1 x i64] }, ptr %t176, i32 0, i32 0
  store i64 4, ptr %t177
  %t179 = insertvalue { i64 } undef, i64 %t175, 0
  %t180 = getelementptr { i64, [1 x i64] }, ptr %t176, i32 0, i32 1
  store { i64 } %t179, ptr %t180
  %t181 = load { i64, [1 x i64] }, ptr %t176
  %t182 = call ptr @__olang_errpay_push()
  %t183 = ptrtoint ptr %t182 to i64
  %t186 = inttoptr i64 %t183 to ptr
  %t187 = call ptr @__olang_scope_alloc_a(ptr %t186, i64 16, i64 8)
  store { i64, [1 x i64] } %t181, ptr %t187
  call void @__olang_errpay_set(ptr %t187)
  %t190 = insertvalue { i32, i64 } zeroinitializer, i32 65540, 0
  store { i32, i64 } %t190, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t191 = load i8, ptr %l1, !tbaa !22
  %t193 = icmp eq i8 %t191, 92
  br i1 %t193, label %bb45, label %bb46
bb45:
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l83, !tbaa !29
  %t196 = load ptr, ptr %l83, !tbaa !29
  %t197 = getelementptr %"std/regex:parser", ptr %t196, i32 0, i32 2
  %t198 = load i64, ptr %t197, !tbaa !24
  %t200 = add i64 %t198, 1
  %t202 = load ptr, ptr %l83, !tbaa !29
  %t203 = getelementptr %"std/regex:parser", ptr %t202, i32 0, i32 2
  store i64 %t200, ptr %t203, !tbaa !24
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t204)
  store i1 %t206, ptr %l87
  br label %bb47
bb46:
  br label %bb98
bb47:
  %t207 = load i1, ptr %l87, !tbaa !21
  %t208 = xor i1 %t207, true
  br i1 %t208, label %bb48, label %bb49
bb48:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"std/regex:parser", ptr %t210, i32 0, i32 2
  %t213 = load i64, ptr %t212, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t214
  %t215 = getelementptr { i64, [1 x i64] }, ptr %t214, i32 0, i32 0
  store i64 3, ptr %t215
  %t217 = insertvalue { i64 } undef, i64 %t213, 0
  %t218 = getelementptr { i64, [1 x i64] }, ptr %t214, i32 0, i32 1
  store { i64 } %t217, ptr %t218
  %t219 = load { i64, [1 x i64] }, ptr %t214
  %t220 = call ptr @__olang_errpay_push()
  %t221 = ptrtoint ptr %t220 to i64
  %t224 = inttoptr i64 %t221 to ptr
  %t225 = call ptr @__olang_scope_alloc_a(ptr %t224, i64 16, i64 8)
  store { i64, [1 x i64] } %t219, ptr %t225
  call void @__olang_errpay_set(ptr %t225)
  %t228 = insertvalue { i32, i64 } zeroinitializer, i32 65539, 0
  store { i32, i64 } %t228, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t229)
  store i8 %t231, ptr %l96
  br label %bb51
bb51:
  %t232 = load i8, ptr %l96, !tbaa !22
  store i8 %t232, ptr %l4, !tbaa !22
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l97, !tbaa !29
  %t234 = load ptr, ptr %l97, !tbaa !29
  %t235 = getelementptr %"std/regex:parser", ptr %t234, i32 0, i32 2
  %t236 = load i64, ptr %t235, !tbaa !24
  %t238 = add i64 %t236, 1
  %t240 = load ptr, ptr %l97, !tbaa !29
  %t241 = getelementptr %"std/regex:parser", ptr %t240, i32 0, i32 2
  store i64 %t238, ptr %t241, !tbaa !24
  %t242 = load i8, ptr %l4, !tbaa !22
  %t244 = icmp eq i8 %t242, 98
  br i1 %t244, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb54
bb53:
  %t246 = load i8, ptr %l4, !tbaa !22
  %t248 = icmp eq i8 %t246, 66
  store i1 %t248, ptr %l102, !tbaa !21
  br label %bb54
bb54:
  %t250 = load i1, ptr %l102, !tbaa !21
  br i1 %t250, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb57
bb56:
  %t251 = load i8, ptr %l4, !tbaa !22
  %t253 = icmp eq i8 %t251, 65
  store i1 %t253, ptr %l105, !tbaa !21
  br label %bb57
bb57:
  %t255 = load i1, ptr %l105, !tbaa !21
  br i1 %t255, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb60
bb59:
  %t256 = load i8, ptr %l4, !tbaa !22
  %t258 = icmp eq i8 %t256, 122
  store i1 %t258, ptr %l108, !tbaa !21
  br label %bb60
bb60:
  %t260 = load i1, ptr %l108, !tbaa !21
  br i1 %t260, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s10
  %t261 = load i64, ptr @G_2estd_2fregex_2enAssert, !tbaa !24
  %t263 = call %"std/regex:node" @std_2fregex_3anode_2ector(ptr %s10, i64 %t261)
  store %"std/regex:node" %t263, ptr %l112
  br label %bb63
bb62:
  br label %bb74
bb63:
  %t264 = load %"std/regex:node", ptr %l112
  store %"std/regex:node" %t264, ptr %l5
  %t265 = load i8, ptr %l4, !tbaa !22
  %t267 = icmp eq i8 %t265, 98
  br i1 %t267, label %bb64, label %bb65
bb64:
  %t269 = load i64, ptr @G_2estd_2fregex_2eatWord, !tbaa !24
  store i64 %t269, ptr %l115, !tbaa !24
  br label %bb72
bb65:
  %t271 = load i8, ptr %l4, !tbaa !22
  %t273 = icmp eq i8 %t271, 66
  br i1 %t273, label %bb66, label %bb67
bb66:
  %t275 = load i64, ptr @G_2estd_2fregex_2eatNotWord, !tbaa !24
  store i64 %t275, ptr %l119, !tbaa !24
  br label %bb71
bb67:
  %t277 = load i8, ptr %l4, !tbaa !22
  %t279 = icmp eq i8 %t277, 65
  br i1 %t279, label %bb68, label %bb69
bb68:
  %t281 = load i64, ptr @G_2estd_2fregex_2eatTextStart, !tbaa !24
  store i64 %t281, ptr %l123, !tbaa !24
  br label %bb70
bb69:
  %t283 = load i64, ptr @G_2estd_2fregex_2eatTextEnd, !tbaa !24
  store i64 %t283, ptr %l123, !tbaa !24
  br label %bb70
bb70:
  %t285 = load i64, ptr %l123, !tbaa !24
  store i64 %t285, ptr %l119, !tbaa !24
  br label %bb71
bb71:
  %t286 = load i64, ptr %l119, !tbaa !24
  store i64 %t286, ptr %l115, !tbaa !24
  br label %bb72
bb72:
  %t287 = load i64, ptr %l115, !tbaa !24
  %t288 = getelementptr %"std/regex:node", ptr %l5, i32 0, i32 1
  store i64 %t287, ptr %t288, !tbaa !24
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load %"std/regex:node", ptr %l5
  %t293 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %t289, %"std/regex:node" %t290)
  store i64 %t293, ptr %l128
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s10)
  %t294 = load i64, ptr %l128, !tbaa !24
  %t295 = insertvalue { i32, i64 } zeroinitializer, i64 %t294, 1
  store { i32, i64 } %t295, ptr %rv
  br label %ret
bb74:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"std/regex:parser", ptr %t296, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !29
  store ptr %t299, ptr %l130, !tbaa !29
  %t300 = ptrtoint ptr %v0 to i64
  store i64 %t300, ptr %l131, !tbaa !24
  %t301 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t301, label %bb75, label %bb76
bb75:
  %t303 = load ptr, ptr %l130, !tbaa !29
  %t304 = call ptr @__olang_region_or(ptr %t303, ptr %v0)
  %t305 = ptrtoint ptr %t304 to i64
  store i64 %t305, ptr %l131, !tbaa !24
  br label %bb76
bb76:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"std/regex:parser", ptr %t306, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !29
  %t311 = getelementptr %"std/regex:prog", ptr %t309, i32 0, i32 5
  %t312 = load i64, ptr %l131
  %t313 = inttoptr i64 %t312 to ptr
  %t315 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eLen_3cU32_3e(ptr %t313, ptr %t311)
  store i64 %t315, ptr %l136
  br label %bb77
bb77:
  %t316 = load i64, ptr %l136, !tbaa !24
  store i64 %t316, ptr %l6, !tbaa !24
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load i8, ptr %l4, !tbaa !22
  %t321 = call i1 @std_2fregex_2estd_2fregex_3aparser_2eperlClass(ptr %v0, ptr %t317, i8 %t318)
  store i1 %t321, ptr %l139
  br label %bb78
bb78:
  %t322 = load i1, ptr %l139, !tbaa !21
  br i1 %t322, label %bb79, label %bb80
bb79:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load i64, ptr %l6, !tbaa !24
  %t327 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eclassNode(ptr %v0, ptr %t323, i64 %t324, i1 false)
  store i64 %t327, ptr %l142
  br label %bb81
bb80:
  br label %bb82
bb81:
  %t328 = load i64, ptr %l142, !tbaa !24
  %t329 = insertvalue { i32, i64 } zeroinitializer, i64 %t328, 1
  store { i32, i64 } %t329, ptr %rv
  br label %ret
bb82:
  %t330 = load i8, ptr %l4, !tbaa !22
  %t332 = icmp eq i8 %t330, 68
  br i1 %t332, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l145, !tbaa !21
  br label %bb85
bb84:
  %t334 = load i8, ptr %l4, !tbaa !22
  %t336 = icmp eq i8 %t334, 87
  store i1 %t336, ptr %l145, !tbaa !21
  br label %bb85
bb85:
  %t338 = load i1, ptr %l145, !tbaa !21
  br i1 %t338, label %bb86, label %bb87
bb86:
  store i1 true, ptr %l148, !tbaa !21
  br label %bb88
bb87:
  %t339 = load i8, ptr %l4, !tbaa !22
  %t341 = icmp eq i8 %t339, 83
  store i1 %t341, ptr %l148, !tbaa !21
  br label %bb88
bb88:
  %t343 = load i1, ptr %l148, !tbaa !21
  br i1 %t343, label %bb89, label %bb90
bb89:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load i8, ptr %l4, !tbaa !22
  call void @std_2fregex_2estd_2fregex_3aparser_2enegatedPerl(ptr %v0, ptr %t344, i8 %t345)
  br label %bb91
bb90:
  br label %bb93
bb91:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load i64, ptr %l6, !tbaa !24
  %t352 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eclassNode(ptr %v0, ptr %t348, i64 %t349, i1 false)
  store i64 %t352, ptr %l155
  br label %bb92
bb92:
  %t353 = load i64, ptr %l155, !tbaa !24
  %t354 = insertvalue { i32, i64 } zeroinitializer, i64 %t353, 1
  store { i32, i64 } %t354, ptr %rv
  br label %ret
bb93:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load i8, ptr %l4, !tbaa !22
  %t359 = call { i32, i32 } @std_2fregex_2estd_2fregex_3aparser_2eescapedRune(ptr %v0, ptr %t355, i8 %t356)
  %t360 = extractvalue { i32, i32 } %t359, 1
  %t361 = extractvalue { i32, i32 } %t359, 0
  store i32 %t361, ptr %l160
  %t362 = icmp ne i32 %t361, 0
  br i1 %t362, label %bb95, label %ok.363, !prof !99
ok.363:
  store i32 %t360, ptr %l159
  br label %bb94
bb94:
  %t364 = load i32, ptr %l159, !tbaa !64
  store i32 %t364, ptr %l156, !tbaa !64
  br label %bb96
bb95:
  %t365 = load i32, ptr %l160, !tbaa !23
  %t366 = lshr i32 %t365, 16
  %t367 = and i32 %t365, 65535
  %t368 = icmp eq i32 %t366, 1
  %t369 = select i1 %t368, i32 1, i32 0
  %t370 = icmp eq i32 %t365, 0
  %t371 = shl i32 %t369, 16
  %t372 = or i32 %t371, %t367
  %t373 = select i1 %t370, i32 0, i32 %t372
  %t375 = insertvalue { i32, i64 } zeroinitializer, i32 %t373, 0
  store { i32, i64 } %t375, ptr %rv
  br label %ret
bb96:
  %t376 = load i32, ptr %l156, !tbaa !64
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t381 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eliteral(ptr %v0, ptr %t377, i32 %t376)
  store i64 %t381, ptr %l164
  br label %bb97
bb97:
  %t382 = load i64, ptr %l164, !tbaa !24
  %t383 = insertvalue { i32, i64 } zeroinitializer, i64 %t382, 1
  store { i32, i64 } %t383, ptr %rv
  br label %ret
bb98:
  %t384 = load ptr, ptr %l0, !tbaa !29
  store ptr %t384, ptr %l165, !tbaa !29
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = call i32 @std_2fregex_2estd_2fregex_3aparser_2erune(ptr %v0, ptr %t385)
  store i32 %t387, ptr %l167
  br label %bb99
bb99:
  %t388 = load ptr, ptr %l165, !tbaa !29
  %t389 = load i32, ptr %l167, !tbaa !64
  %t390 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eliteral(ptr %v0, ptr %t388, i32 %t389)
  store i64 %t390, ptr %l168
  br label %bb100
bb100:
  %t391 = load i64, ptr %l168, !tbaa !24
  %t392 = insertvalue { i32, i64 } zeroinitializer, i64 %t391, 1
  store { i32, i64 } %t392, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2eclass(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i8
  %l5 = alloca i32
  %l6 = alloca i8
  %l7 = alloca i32
  %l10 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i8
  %l15 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i1
  %l36 = alloca i8
  %l39 = alloca i1
  %l42 = alloca ptr
  %l47 = alloca i1
  %l55 = alloca i1
  %l57 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l67 = alloca i32
  %l71 = alloca ptr
  %l75 = alloca i1
  %l84 = alloca i8
  %l85 = alloca ptr
  %l90 = alloca i1
  %l93 = alloca i1
  %l96 = alloca i1
  %l101 = alloca i32
  %l104 = alloca i32
  %l105 = alloca i32
  %l108 = alloca i32
  %l117 = alloca i1
  %l119 = alloca i8
  %l121 = alloca i1
  %l123 = alloca { i64, ptr }
  %l129 = alloca ptr
  %l133 = alloca i8
  %l135 = alloca ptr
  %l139 = alloca i1
  %l148 = alloca i8
  %l149 = alloca ptr
  %l152 = alloca i32
  %l155 = alloca i32
  %l156 = alloca i32
  %l159 = alloca i32
  %l179 = alloca i64
  %rv = alloca { i32, i64 }
  %t52 = alloca { i64, [1 x i64] }, align 8
  %t180 = alloca { i64, [1 x i64] }, align 8
  %t336 = alloca { i64, [1 x i64] }, align 8
  %t397 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %l1, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i1, ptr %l10, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t5)
  store i8 %t7, ptr %l13
  br label %bb4
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb4:
  %t8 = load i8, ptr %l13, !tbaa !22
  %t9 = icmp eq i8 %t8, 94
  store i1 %t9, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t11 = load i1, ptr %l11, !tbaa !21
  br i1 %t11, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l1, !tbaa !21
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l15, !tbaa !29
  %t13 = load ptr, ptr %l15, !tbaa !29
  %t14 = getelementptr %"std/regex:parser", ptr %t13, i32 0, i32 2
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = add i64 %t15, 1
  %t19 = load ptr, ptr %l15, !tbaa !29
  %t20 = getelementptr %"std/regex:parser", ptr %t19, i32 0, i32 2
  store i64 %t17, ptr %t20, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/regex:parser", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l19, !tbaa !29
  %t25 = ptrtoint ptr %v0 to i64
  store i64 %t25, ptr %l20, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l19, !tbaa !29
  %t29 = call ptr @__olang_region_or(ptr %t28, ptr %v0)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l20, !tbaa !24
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"std/regex:parser", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"std/regex:prog", ptr %t34, i32 0, i32 5
  %t37 = load i64, ptr %l20
  %t38 = inttoptr i64 %t37 to ptr
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eLen_3cU32_3e(ptr %t38, ptr %t36)
  store i64 %t40, ptr %l25
  br label %bb11
bb11:
  %t41 = load i64, ptr %l25, !tbaa !24
  store i64 %t41, ptr %l2, !tbaa !24
  store i1 true, ptr %l3, !tbaa !21
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t42)
  store i1 %t44, ptr %l27
  br label %bb13
bb13:
  %t45 = load i1, ptr %l27, !tbaa !21
  %t46 = xor i1 %t45, true
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/regex:parser", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t52
  %t53 = getelementptr { i64, [1 x i64] }, ptr %t52, i32 0, i32 0
  store i64 2, ptr %t53
  %t55 = insertvalue { i64 } undef, i64 %t51, 0
  %t56 = getelementptr { i64, [1 x i64] }, ptr %t52, i32 0, i32 1
  store { i64 } %t55, ptr %t56
  %t57 = load { i64, [1 x i64] }, ptr %t52
  %t58 = call ptr @__olang_errpay_push()
  %t59 = ptrtoint ptr %t58 to i64
  %t62 = inttoptr i64 %t59 to ptr
  %t63 = call ptr @__olang_scope_alloc_a(ptr %t62, i64 16, i64 8)
  store { i64, [1 x i64] } %t57, ptr %t63
  call void @__olang_errpay_set(ptr %t63)
  %t66 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t66, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t67)
  store i8 %t69, ptr %l36
  br label %bb17
bb17:
  %t70 = load i8, ptr %l36, !tbaa !22
  store i8 %t70, ptr %l4, !tbaa !22
  %t71 = load i8, ptr %l4, !tbaa !22
  %t73 = icmp eq i8 %t71, 93
  br i1 %t73, label %bb18, label %bb19
bb18:
  %t75 = load i1, ptr %l3, !tbaa !21
  %t77 = xor i1 %t75, true
  store i1 %t77, ptr %l39, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb20
bb20:
  %t79 = load i1, ptr %l39, !tbaa !21
  br i1 %t79, label %bb21, label %bb22
bb21:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l42, !tbaa !29
  %t81 = load ptr, ptr %l42, !tbaa !29
  %t82 = getelementptr %"std/regex:parser", ptr %t81, i32 0, i32 2
  %t83 = load i64, ptr %t82, !tbaa !24
  %t85 = add i64 %t83, 1
  %t87 = load ptr, ptr %l42, !tbaa !29
  %t88 = getelementptr %"std/regex:parser", ptr %t87, i32 0, i32 2
  store i64 %t85, ptr %t88, !tbaa !24
  br label %bb90
bb22:
  br label %bb23
bb23:
  store i1 false, ptr %l3, !tbaa !21
  %t89 = load i8, ptr %l4, !tbaa !22
  %t91 = icmp eq i8 %t89, 91
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"std/regex:parser", ptr %t93, i32 0, i32 2
  %t96 = load i64, ptr %t95, !tbaa !24
  %t98 = add i64 %t96, 1
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"std/regex:parser", ptr %t99, i32 0, i32 0
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t107 = icmp slt i64 %t98, %t104
  store i1 %t107, ptr %l47, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb26
bb26:
  %t109 = load i1, ptr %l47, !tbaa !21
  br i1 %t109, label %bb27, label %bb28
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"std/regex:parser", ptr %t110, i32 0, i32 0
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  store { i64, ptr } %t113, ptr %l57, !tbaa !27
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"std/regex:parser", ptr %t114, i32 0, i32 2
  %t117 = load i64, ptr %t116, !tbaa !24
  %t119 = add i64 %t117, 1
  %t121 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i8, ptr %t122, i64 %t119
  %t124 = load i8, ptr %t123, !tbaa !32
  %t126 = icmp eq i8 %t124, 58
  store i1 %t126, ptr %l55, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb29
bb29:
  %t128 = load i1, ptr %l55, !tbaa !21
  br i1 %t128, label %bb30, label %bb31
bb30:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l63, !tbaa !29
  %t130 = load ptr, ptr %l63, !tbaa !29
  %t131 = getelementptr %"std/regex:parser", ptr %t130, i32 0, i32 2
  %t132 = load i64, ptr %t131, !tbaa !24
  %t134 = add i64 %t132, 2
  %t136 = load ptr, ptr %l63, !tbaa !29
  %t137 = getelementptr %"std/regex:parser", ptr %t136, i32 0, i32 2
  store i64 %t134, ptr %t137, !tbaa !24
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eposixClass(ptr %v0, ptr %t138)
  store i32 %t140, ptr %l67
  %t141 = icmp ne i32 %t140, 0
  br i1 %t141, label %bb33, label %ok.142, !prof !99
ok.142:
  br label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb34
bb33:
  %t143 = load i32, ptr %l67, !tbaa !23
  %t144 = lshr i32 %t143, 16
  %t145 = and i32 %t143, 65535
  %t146 = icmp eq i32 %t144, 1
  %t147 = select i1 %t146, i32 1, i32 0
  %t148 = icmp eq i32 %t143, 0
  %t149 = shl i32 %t147, 16
  %t150 = or i32 %t149, %t145
  %t151 = select i1 %t148, i32 0, i32 %t150
  %t153 = insertvalue { i32, i64 } zeroinitializer, i32 %t151, 0
  store { i32, i64 } %t153, ptr %rv
  br label %ret
bb34:
  br label %bb89
bb35:
  store i32 0, ptr %l5, !tbaa !64
  %t154 = load i8, ptr %l4, !tbaa !22
  %t156 = icmp eq i8 %t154, 92
  br i1 %t156, label %bb36, label %bb37
bb36:
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l71, !tbaa !29
  %t159 = load ptr, ptr %l71, !tbaa !29
  %t160 = getelementptr %"std/regex:parser", ptr %t159, i32 0, i32 2
  %t161 = load i64, ptr %t160, !tbaa !24
  %t163 = add i64 %t161, 1
  %t165 = load ptr, ptr %l71, !tbaa !29
  %t166 = getelementptr %"std/regex:parser", ptr %t165, i32 0, i32 2
  store i64 %t163, ptr %t166, !tbaa !24
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t167)
  store i1 %t169, ptr %l75
  br label %bb38
bb37:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = call i32 @std_2fregex_2estd_2fregex_3aparser_2erune(ptr %v0, ptr %t170)
  store i32 %t172, ptr %l108
  br label %bb60
bb38:
  %t173 = load i1, ptr %l75, !tbaa !21
  %t174 = xor i1 %t173, true
  br i1 %t174, label %bb39, label %bb40
bb39:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"std/regex:parser", ptr %t176, i32 0, i32 2
  %t179 = load i64, ptr %t178, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t180
  %t181 = getelementptr { i64, [1 x i64] }, ptr %t180, i32 0, i32 0
  store i64 3, ptr %t181
  %t183 = insertvalue { i64 } undef, i64 %t179, 0
  %t184 = getelementptr { i64, [1 x i64] }, ptr %t180, i32 0, i32 1
  store { i64 } %t183, ptr %t184
  %t185 = load { i64, [1 x i64] }, ptr %t180
  %t186 = call ptr @__olang_errpay_push()
  %t187 = ptrtoint ptr %t186 to i64
  %t190 = inttoptr i64 %t187 to ptr
  %t191 = call ptr @__olang_scope_alloc_a(ptr %t190, i64 16, i64 8)
  store { i64, [1 x i64] } %t185, ptr %t191
  call void @__olang_errpay_set(ptr %t191)
  %t194 = insertvalue { i32, i64 } zeroinitializer, i32 65539, 0
  store { i32, i64 } %t194, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t195)
  store i8 %t197, ptr %l84
  br label %bb42
bb42:
  %t198 = load i8, ptr %l84, !tbaa !22
  store i8 %t198, ptr %l6, !tbaa !22
  %t199 = load ptr, ptr %l0, !tbaa !29
  store ptr %t199, ptr %l85, !tbaa !29
  %t200 = load ptr, ptr %l85, !tbaa !29
  %t201 = getelementptr %"std/regex:parser", ptr %t200, i32 0, i32 2
  %t202 = load i64, ptr %t201, !tbaa !24
  %t204 = add i64 %t202, 1
  %t206 = load ptr, ptr %l85, !tbaa !29
  %t207 = getelementptr %"std/regex:parser", ptr %t206, i32 0, i32 2
  store i64 %t204, ptr %t207, !tbaa !24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i8, ptr %l6, !tbaa !22
  %t212 = call i1 @std_2fregex_2estd_2fregex_3aparser_2eperlClass(ptr %v0, ptr %t208, i8 %t209)
  store i1 %t212, ptr %l90
  br label %bb43
bb43:
  %t213 = load i1, ptr %l90, !tbaa !21
  br i1 %t213, label %bb44, label %bb45
bb44:
  br label %bb89
bb45:
  br label %bb46
bb46:
  %t214 = load i8, ptr %l6, !tbaa !22
  %t216 = icmp eq i8 %t214, 68
  br i1 %t216, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb49
bb48:
  %t218 = load i8, ptr %l6, !tbaa !22
  %t220 = icmp eq i8 %t218, 87
  store i1 %t220, ptr %l93, !tbaa !21
  br label %bb49
bb49:
  %t222 = load i1, ptr %l93, !tbaa !21
  br i1 %t222, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb52
bb51:
  %t223 = load i8, ptr %l6, !tbaa !22
  %t225 = icmp eq i8 %t223, 83
  store i1 %t225, ptr %l96, !tbaa !21
  br label %bb52
bb52:
  %t227 = load i1, ptr %l96, !tbaa !21
  br i1 %t227, label %bb53, label %bb54
bb53:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load i8, ptr %l6, !tbaa !22
  call void @std_2fregex_2estd_2fregex_3aparser_2enegatedPerl(ptr %v0, ptr %t228, i8 %t229)
  br label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb89
bb56:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i8, ptr %l6, !tbaa !22
  %t236 = call { i32, i32 } @std_2fregex_2estd_2fregex_3aparser_2eescapedRune(ptr %v0, ptr %t232, i8 %t233)
  %t237 = extractvalue { i32, i32 } %t236, 1
  %t238 = extractvalue { i32, i32 } %t236, 0
  store i32 %t238, ptr %l105
  %t239 = icmp ne i32 %t238, 0
  br i1 %t239, label %bb58, label %ok.240, !prof !99
ok.240:
  store i32 %t237, ptr %l104
  br label %bb57
bb57:
  %t241 = load i32, ptr %l104, !tbaa !64
  store i32 %t241, ptr %l101, !tbaa !64
  br label %bb59
bb58:
  %t242 = load i32, ptr %l105, !tbaa !23
  %t243 = lshr i32 %t242, 16
  %t244 = and i32 %t242, 65535
  %t245 = icmp eq i32 %t243, 1
  %t246 = select i1 %t245, i32 1, i32 0
  %t247 = icmp eq i32 %t242, 0
  %t248 = shl i32 %t246, 16
  %t249 = or i32 %t248, %t244
  %t250 = select i1 %t247, i32 0, i32 %t249
  %t252 = insertvalue { i32, i64 } zeroinitializer, i32 %t250, 0
  store { i32, i64 } %t252, ptr %rv
  br label %ret
bb59:
  %t253 = load i32, ptr %l101, !tbaa !64
  store i32 %t253, ptr %l5, !tbaa !64
  br label %bb61
bb60:
  %t254 = load i32, ptr %l108, !tbaa !64
  store i32 %t254, ptr %l5, !tbaa !64
  br label %bb61
bb61:
  %t255 = load i32, ptr %l5, !tbaa !64
  store i32 %t255, ptr %l7, !tbaa !64
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"std/regex:parser", ptr %t257, i32 0, i32 2
  %t260 = load i64, ptr %t259, !tbaa !24
  %t262 = add i64 %t260, 1
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"std/regex:parser", ptr %t263, i32 0, i32 0
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t266, 0
  %t271 = icmp slt i64 %t262, %t268
  br i1 %t271, label %bb62, label %bb63
bb62:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t273)
  store i8 %t275, ptr %l119
  br label %bb64
bb63:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb65
bb64:
  %t276 = load i8, ptr %l119, !tbaa !22
  %t277 = icmp eq i8 %t276, 45
  store i1 %t277, ptr %l117, !tbaa !21
  br label %bb65
bb65:
  %t279 = load i1, ptr %l117, !tbaa !21
  br i1 %t279, label %bb66, label %bb67
bb66:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"std/regex:parser", ptr %t280, i32 0, i32 0
  %t283 = load { i64, ptr }, ptr %t282, !tbaa !27
  store { i64, ptr } %t283, ptr %l123, !tbaa !27
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"std/regex:parser", ptr %t284, i32 0, i32 2
  %t287 = load i64, ptr %t286, !tbaa !24
  %t289 = add i64 %t287, 1
  %t291 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr i8, ptr %t292, i64 %t289
  %t294 = load i8, ptr %t293, !tbaa !32
  %t296 = icmp ne i8 %t294, 93
  store i1 %t296, ptr %l121, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb68
bb68:
  %t298 = load i1, ptr %l121, !tbaa !21
  br i1 %t298, label %bb69, label %bb70
bb69:
  %t299 = load ptr, ptr %l0, !tbaa !29
  store ptr %t299, ptr %l129, !tbaa !29
  %t300 = load ptr, ptr %l129, !tbaa !29
  %t301 = getelementptr %"std/regex:parser", ptr %t300, i32 0, i32 2
  %t302 = load i64, ptr %t301, !tbaa !24
  %t304 = add i64 %t302, 1
  %t306 = load ptr, ptr %l129, !tbaa !29
  %t307 = getelementptr %"std/regex:parser", ptr %t306, i32 0, i32 2
  store i64 %t304, ptr %t307, !tbaa !24
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t308)
  store i8 %t310, ptr %l133
  br label %bb71
bb70:
  br label %bb87
bb71:
  %t311 = load i8, ptr %l133, !tbaa !22
  %t312 = icmp eq i8 %t311, 92
  br i1 %t312, label %bb72, label %bb73
bb72:
  %t314 = load ptr, ptr %l0, !tbaa !29
  store ptr %t314, ptr %l135, !tbaa !29
  %t315 = load ptr, ptr %l135, !tbaa !29
  %t316 = getelementptr %"std/regex:parser", ptr %t315, i32 0, i32 2
  %t317 = load i64, ptr %t316, !tbaa !24
  %t319 = add i64 %t317, 1
  %t321 = load ptr, ptr %l135, !tbaa !29
  %t322 = getelementptr %"std/regex:parser", ptr %t321, i32 0, i32 2
  store i64 %t319, ptr %t322, !tbaa !24
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t323)
  store i1 %t325, ptr %l139
  br label %bb74
bb73:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = call i32 @std_2fregex_2estd_2fregex_3aparser_2erune(ptr %v0, ptr %t326)
  store i32 %t328, ptr %l159
  br label %bb82
bb74:
  %t329 = load i1, ptr %l139, !tbaa !21
  %t330 = xor i1 %t329, true
  br i1 %t330, label %bb75, label %bb76
bb75:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"std/regex:parser", ptr %t332, i32 0, i32 2
  %t335 = load i64, ptr %t334, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t336
  %t337 = getelementptr { i64, [1 x i64] }, ptr %t336, i32 0, i32 0
  store i64 3, ptr %t337
  %t339 = insertvalue { i64 } undef, i64 %t335, 0
  %t340 = getelementptr { i64, [1 x i64] }, ptr %t336, i32 0, i32 1
  store { i64 } %t339, ptr %t340
  %t341 = load { i64, [1 x i64] }, ptr %t336
  %t342 = call ptr @__olang_errpay_push()
  %t343 = ptrtoint ptr %t342 to i64
  %t346 = inttoptr i64 %t343 to ptr
  %t347 = call ptr @__olang_scope_alloc_a(ptr %t346, i64 16, i64 8)
  store { i64, [1 x i64] } %t341, ptr %t347
  call void @__olang_errpay_set(ptr %t347)
  %t350 = insertvalue { i32, i64 } zeroinitializer, i32 65539, 0
  store { i32, i64 } %t350, ptr %rv
  br label %ret
bb76:
  br label %bb77
bb77:
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t353 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t351)
  store i8 %t353, ptr %l148
  br label %bb78
bb78:
  %t354 = load i8, ptr %l148, !tbaa !22
  %t355 = load ptr, ptr %l0, !tbaa !29
  store ptr %t355, ptr %l149, !tbaa !29
  %t356 = load ptr, ptr %l149, !tbaa !29
  %t357 = getelementptr %"std/regex:parser", ptr %t356, i32 0, i32 2
  %t358 = load i64, ptr %t357, !tbaa !24
  %t360 = add i64 %t358, 1
  %t362 = load ptr, ptr %l149, !tbaa !29
  %t363 = getelementptr %"std/regex:parser", ptr %t362, i32 0, i32 2
  store i64 %t360, ptr %t363, !tbaa !24
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t368 = call { i32, i32 } @std_2fregex_2estd_2fregex_3aparser_2eescapedRune(ptr %v0, ptr %t364, i8 %t354)
  %t369 = extractvalue { i32, i32 } %t368, 1
  %t370 = extractvalue { i32, i32 } %t368, 0
  store i32 %t370, ptr %l156
  %t371 = icmp ne i32 %t370, 0
  br i1 %t371, label %bb80, label %ok.372, !prof !99
ok.372:
  store i32 %t369, ptr %l155
  br label %bb79
bb79:
  %t373 = load i32, ptr %l155, !tbaa !64
  store i32 %t373, ptr %l152, !tbaa !64
  br label %bb81
bb80:
  %t374 = load i32, ptr %l156, !tbaa !23
  %t375 = lshr i32 %t374, 16
  %t376 = and i32 %t374, 65535
  %t377 = icmp eq i32 %t375, 1
  %t378 = select i1 %t377, i32 1, i32 0
  %t379 = icmp eq i32 %t374, 0
  %t380 = shl i32 %t378, 16
  %t381 = or i32 %t380, %t376
  %t382 = select i1 %t379, i32 0, i32 %t381
  %t384 = insertvalue { i32, i64 } zeroinitializer, i32 %t382, 0
  store { i32, i64 } %t384, ptr %rv
  br label %ret
bb81:
  %t385 = load i32, ptr %l152, !tbaa !64
  store i32 %t385, ptr %l7, !tbaa !64
  br label %bb83
bb82:
  %t386 = load i32, ptr %l159, !tbaa !64
  store i32 %t386, ptr %l7, !tbaa !64
  br label %bb83
bb83:
  %t387 = load i32, ptr %l7, !tbaa !64
  %t388 = load i32, ptr %l5, !tbaa !64
  %t391 = icmp ult i32 %t387, %t388
  br i1 %t391, label %bb84, label %bb85
bb84:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"std/regex:parser", ptr %t393, i32 0, i32 2
  %t396 = load i64, ptr %t395, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t397
  %t398 = getelementptr { i64, [1 x i64] }, ptr %t397, i32 0, i32 0
  store i64 5, ptr %t398
  %t400 = insertvalue { i64 } undef, i64 %t396, 0
  %t401 = getelementptr { i64, [1 x i64] }, ptr %t397, i32 0, i32 1
  store { i64 } %t400, ptr %t401
  %t402 = load { i64, [1 x i64] }, ptr %t397
  %t403 = call ptr @__olang_errpay_push()
  %t404 = ptrtoint ptr %t403 to i64
  %t407 = inttoptr i64 %t404 to ptr
  %t408 = call ptr @__olang_scope_alloc_a(ptr %t407, i64 16, i64 8)
  store { i64, [1 x i64] } %t402, ptr %t408
  call void @__olang_errpay_set(ptr %t408)
  %t411 = insertvalue { i32, i64 } zeroinitializer, i32 65541, 0
  store { i32, i64 } %t411, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t413 = load i32, ptr %l5, !tbaa !64
  %t414 = load i32, ptr %l7, !tbaa !64
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t412, i32 %t413, i32 %t414)
  br label %bb88
bb88:
  br label %bb89
bb89:
  br label %bb12
bb90:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t420 = getelementptr %"std/regex:parser", ptr %t418, i32 0, i32 5
  %t421 = load i1, ptr %t420, !tbaa !21
  br i1 %t421, label %bb91, label %bb92
bb91:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load i64, ptr %l2, !tbaa !24
  call void @std_2fregex_2estd_2fregex_3aparser_2efoldRanges(ptr %v0, ptr %t423, i64 %t424)
  br label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb94
bb94:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t428 = load i64, ptr %l2, !tbaa !24
  %t429 = load i1, ptr %l1, !tbaa !21
  %t433 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eclassNode(ptr %v0, ptr %t427, i64 %t428, i1 %t429)
  store i64 %t433, ptr %l179
  br label %bb95
bb95:
  %t434 = load i64, ptr %l179, !tbaa !24
  %t435 = insertvalue { i32, i64 } zeroinitializer, i64 %t434, 1
  store { i32, i64 } %t435, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3aparser_2eclassNode(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca %"std/regex:node"
  %l5 = alloca %"std/regex:node"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l14 = alloca i64
  %l21 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr @G_2estd_2fregex_2enClass, !tbaa !24
  %t3 = call %"std/regex:node" @std_2fregex_3anode_2ector(ptr %s0, i64 %t1)
  store %"std/regex:node" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"std/regex:node", ptr %l5
  store %"std/regex:node" %t4, ptr %l3
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  store i64 %t5, ptr %t7, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/regex:parser", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  %t12 = ptrtoint ptr %v0 to i64
  store i64 %t12, ptr %l9, !tbaa !24
  %t13 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l8, !tbaa !29
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr %v0)
  %t17 = ptrtoint ptr %t16 to i64
  store i64 %t17, ptr %l9, !tbaa !24
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/regex:parser", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"std/regex:prog", ptr %t21, i32 0, i32 5
  %t24 = load i64, ptr %l9
  %t25 = inttoptr i64 %t24 to ptr
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eLen_3cU32_3e(ptr %t25, ptr %t23)
  store i64 %t27, ptr %l14
  br label %bb4
bb4:
  %t28 = load i64, ptr %l1, !tbaa !24
  %t29 = load i64, ptr %l14, !tbaa !24
  %t31 = sub i64 %t29, %t28
  %t33 = sdiv i64 %t31, 2
  %t35 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  store i64 %t33, ptr %t35, !tbaa !24
  %t38 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 6
  store i1 %a2, ptr %t38, !tbaa !21
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"std/regex:node", ptr %l3
  %t43 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %t39, %"std/regex:node" %t40)
  store i64 %t43, ptr %l21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load i64, ptr %l21, !tbaa !24
  store i64 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3aparser_2ecount(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i1
  %l9 = alloca i8
  %l10 = alloca i1
  %l11 = alloca i1
  %l19 = alloca i64
  %l21 = alloca i8
  %l25 = alloca ptr
  %l32 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t6)
  store i1 %t8, ptr %l6
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t10)
  store i8 %t12, ptr %l9
  br label %bb5
bb4:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb7
bb5:
  %t13 = load i8, ptr %l9, !tbaa !22
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t13)
  store i1 %t14, ptr %l10
  br label %bb6
bb6:
  %t15 = load i1, ptr %l10, !tbaa !21
  store i1 %t15, ptr %l7, !tbaa !21
  br label %bb7
bb7:
  %t16 = load i1, ptr %l7, !tbaa !21
  br i1 %t16, label %bb8, label %bb9
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/regex:parser", ptr %t17, i32 0, i32 2
  %t20 = load i64, ptr %t19, !tbaa !24
  %t21 = load i64, ptr %l1, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t26 = icmp slt i64 %t24, 5
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb10
bb10:
  %t28 = load i1, ptr %l11, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = mul i64 %t31, 10
  store i64 %t33, ptr %l19, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t34)
  store i8 %t36, ptr %l21
  br label %bb14
bb14:
  %t37 = load i8, ptr %l21, !tbaa !22
  %t38 = sub i8 %t37, 48
  %t40 = zext i8 %t38 to i64
  %t41 = load i64, ptr %l19, !tbaa !24
  %t43 = add i64 %t41, %t40
  store i64 %t43, ptr %l2, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l25, !tbaa !29
  %t46 = load ptr, ptr %l25, !tbaa !29
  %t47 = getelementptr %"std/regex:parser", ptr %t46, i32 0, i32 2
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = add i64 %t48, 1
  %t52 = load ptr, ptr %l25, !tbaa !29
  %t53 = getelementptr %"std/regex:parser", ptr %t52, i32 0, i32 2
  store i64 %t50, ptr %t53, !tbaa !24
  br label %bb15
bb15:
  br label %bb1
bb16:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"std/regex:parser", ptr %t54, i32 0, i32 2
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load i64, ptr %l1, !tbaa !24
  %t61 = icmp eq i64 %t57, %t58
  br i1 %t61, label %bb17, label %bb18
bb17:
  store i64 -1, ptr %l32, !tbaa !24
  br label %bb19
bb18:
  %t63 = load i64, ptr %l2, !tbaa !24
  store i64 %t63, ptr %l32, !tbaa !24
  br label %bb19
bb19:
  %t65 = load i64, ptr %l32, !tbaa !24
  store i64 %t65, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/regex:node"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca i64
  %l55 = alloca i64
  %l65 = alloca %"std/regex:node"
  %l76 = alloca i64
  %l91 = alloca { i64, ptr }
  %l95 = alloca i64
  %l99 = alloca i64
  %l103 = alloca ptr
  %l104 = alloca i64
  %l105 = alloca i64
  %l106 = alloca i64
  %l108 = alloca i64
  %l109 = alloca i64
  %l113 = alloca ptr
  %l114 = alloca i64
  %l116 = alloca i64
  %l117 = alloca i64
  %l125 = alloca i64
  %l128 = alloca i64
  %l146 = alloca ptr
  %l148 = alloca ptr
  %l149 = alloca i64
  %l152 = alloca i64
  %l159 = alloca i64
  %l160 = alloca i32
  %l167 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l172 = alloca i64
  %l175 = alloca i64
  %l197 = alloca ptr
  %l198 = alloca i64
  %l201 = alloca i64
  %l203 = alloca i64
  %l204 = alloca ptr
  %l210 = alloca i64
  %l211 = alloca i32
  %l213 = alloca ptr
  %l216 = alloca i64
  %l218 = alloca ptr
  %l219 = alloca i64
  %l222 = alloca i64
  %l223 = alloca ptr
  %l229 = alloca i64
  %l230 = alloca i32
  %l235 = alloca { i64, ptr }
  %l242 = alloca { i64, ptr }
  %l246 = alloca ptr
  %l247 = alloca i64
  %l250 = alloca i64
  %l258 = alloca i1
  %l266 = alloca i64
  %l269 = alloca i32
  %l273 = alloca i1
  %l282 = alloca i64
  %l292 = alloca i64
  %l298 = alloca i1
  %l301 = alloca i64
  %l308 = alloca i64
  %l311 = alloca i64
  %l331 = alloca i32
  %l341 = alloca i64
  %l344 = alloca i32
  %l347 = alloca ptr
  %l348 = alloca i64
  %l349 = alloca i64
  %l352 = alloca i64
  %l354 = alloca i64
  %l355 = alloca ptr
  %l356 = alloca i64
  %l359 = alloca i64
  %l362 = alloca i64
  %l365 = alloca i64
  %l368 = alloca i32
  %l373 = alloca i64
  %l378 = alloca i64
  %l380 = alloca ptr
  %l381 = alloca i64
  %l383 = alloca i64
  %l387 = alloca ptr
  %l388 = alloca i64
  %l390 = alloca i64
  %l393 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l400 = alloca i64
  %l403 = alloca i64
  %l423 = alloca i64
  %l428 = alloca i32
  %l432 = alloca i64
  %l443 = alloca i64
  %l445 = alloca { i64, ptr }
  %l452 = alloca { i64, ptr }
  %l456 = alloca ptr
  %l457 = alloca i64
  %l459 = alloca i64
  %l464 = alloca ptr
  %l465 = alloca i64
  %l467 = alloca i64
  %s4 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %rv = alloca i32
  %t25 = alloca { i64, [1 x i64] }, align 8
  %t883 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l50, !tbaa !29
  %t7 = ptrtoint ptr %v0 to i64
  store i64 %t7, ptr %l51, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l50, !tbaa !29
  %t11 = call ptr @__olang_region_or(ptr %t10, ptr %v0)
  %t12 = ptrtoint ptr %t11 to i64
  store i64 %t12, ptr %l51, !tbaa !24
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"std/regex:prog", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %l51
  %t17 = inttoptr i64 %t16 to ptr
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t17, ptr %t15)
  store i64 %t19, ptr %l55
  br label %bb3
bb3:
  %t20 = load i64, ptr @G_2estd_2fregex_2emaxProgram, !tbaa !24
  %t21 = load i64, ptr %l55, !tbaa !24
  %t23 = icmp sgt i64 %t21, %t20
  br i1 %t23, label %bb4, label %bb5
bb4:
  store { i64, [1 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [1 x i64] }, ptr %t25, i32 0, i32 0
  store i64 8, ptr %t26
  %t27 = insertvalue { i64 } undef, i64 0, 0
  %t28 = getelementptr { i64, [1 x i64] }, ptr %t25, i32 0, i32 1
  store { i64 } %t27, ptr %t28
  %t29 = load { i64, [1 x i64] }, ptr %t25
  %t30 = call ptr @__olang_errpay_push()
  %t31 = ptrtoint ptr %t30 to i64
  %t34 = inttoptr i64 %t31 to ptr
  %t35 = call ptr @__olang_scope_alloc_a(ptr %t34, i64 16, i64 8)
  store { i64, [1 x i64] } %t29, ptr %t35
  call void @__olang_errpay_set(ptr %t35)
  store i32 65544, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"std/regex:parser", ptr %t38, i32 0, i32 3
  %t44 = call %"std/regex:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eAt_3cstd_2fregex_3anode_3e(ptr %v0, ptr %t40, i64 %a1)
  store %"std/regex:node" %t44, ptr %l65
  br label %bb7
bb7:
  %t45 = load %"std/regex:node", ptr %l65
  store %"std/regex:node" %t45, ptr %l3
  %t46 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 0
  %t47 = load i64, ptr %t46, !tbaa !24
  store i64 %t47, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr @G_2estd_2fregex_2enEmpty, !tbaa !24
  %t53 = icmp eq i64 %t49, %t50
  br i1 %t53, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb232
bb11:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t56 = load i64, ptr @G_2estd_2fregex_2enLit, !tbaa !24
  %t59 = icmp eq i64 %t55, %t56
  br i1 %t59, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb22
bb14:
  %t61 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 5
  %t62 = load i1, ptr %t61, !tbaa !21
  br i1 %t62, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr %"std/regex:prog", ptr %t64, i32 0, i32 5
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eLen_3cU32_3e(ptr %v0, ptr %t66)
  store i64 %t68, ptr %l76
  br label %bb17
bb16:
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t70 = load i64, ptr @G_2estd_2fregex_2eopChar, !tbaa !24
  %t71 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t76 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t69, i64 %t70, i64 %t72, i64 0, i64 0)
  store i64 %t76, ptr %l99
  br label %bb20
bb17:
  %t77 = load i64, ptr %l76, !tbaa !24
  store i64 %t77, ptr %l5, !tbaa !24
  %t78 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t79 = load i64, ptr %t78, !tbaa !24
  %t81 = or i64 %t79, 32
  store i64 %t81, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t85 = getelementptr %"std/regex:prog", ptr %t83, i32 0, i32 5
  %t86 = load i64, ptr %l6, !tbaa !24
  %t88 = sub i64 %t86, 32
  %t90 = trunc i64 %t88 to i32
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = sub i64 %t91, 32
  %t95 = trunc i64 %t93 to i32
  %t96 = load i64, ptr %l6, !tbaa !24
  %t98 = trunc i64 %t96 to i32
  %t99 = load i64, ptr %l6, !tbaa !24
  %t101 = trunc i64 %t99 to i32
  %t102 = mul i64 4, 4
  %t103 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t102)
  %t104 = insertvalue { i64, ptr } undef, i64 4, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  store { i64, ptr } %t105, ptr %l91, !tbaa !27
  %t107 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i32, ptr %t108, i64 0
  store i32 %t90, ptr %t109, !tbaa !84
  %t111 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i32, ptr %t112, i64 1
  store i32 %t95, ptr %t113, !tbaa !84
  %t115 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 2
  store i32 %t98, ptr %t117, !tbaa !84
  %t119 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i32, ptr %t120, i64 3
  store i32 %t101, ptr %t121, !tbaa !84
  %t123 = load { i64, ptr }, ptr %l91, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2ePushAll_3cU32_3e(ptr %v0, ptr %s4, ptr %t85, { i64, ptr } %t123)
  br label %bb18
bb18:
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t125 = load i64, ptr @G_2estd_2fregex_2eopClass, !tbaa !24
  %t126 = load i64, ptr %l5, !tbaa !24
  %t130 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t124, i64 %t125, i64 %t126, i64 2, i64 0)
  store i64 %t130, ptr %l95
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb232
bb22:
  %t131 = load i64, ptr %l4, !tbaa !24
  %t132 = load i64, ptr @G_2estd_2fregex_2enClass, !tbaa !24
  %t135 = icmp eq i64 %t131, %t132
  br i1 %t135, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb30
bb25:
  %t137 = load ptr, ptr %l2, !tbaa !29
  store ptr %t137, ptr %l103, !tbaa !29
  %t138 = load i64, ptr @G_2estd_2fregex_2eopClass, !tbaa !24
  store i64 %t138, ptr %l104, !tbaa !24
  %t139 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t140 = load i64, ptr %t139, !tbaa !24
  store i64 %t140, ptr %l105, !tbaa !24
  %t141 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  %t142 = load i64, ptr %t141, !tbaa !24
  store i64 %t142, ptr %l106, !tbaa !24
  %t143 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 6
  %t144 = load i1, ptr %t143, !tbaa !21
  br i1 %t144, label %bb26, label %bb27
bb26:
  store i64 1, ptr %l108, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb28
bb28:
  %t146 = load ptr, ptr %l103, !tbaa !29
  %t147 = load i64, ptr %l104, !tbaa !24
  %t148 = load i64, ptr %l105, !tbaa !24
  %t149 = load i64, ptr %l106, !tbaa !24
  %t150 = load i64, ptr %l108, !tbaa !24
  %t151 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t146, i64 %t147, i64 %t148, i64 %t149, i64 %t150)
  store i64 %t151, ptr %l109
  br label %bb29
bb29:
  br label %bb232
bb30:
  %t152 = load i64, ptr %l4, !tbaa !24
  %t153 = load i64, ptr @G_2estd_2fregex_2enAny, !tbaa !24
  %t156 = icmp eq i64 %t152, %t153
  br i1 %t156, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb38
bb33:
  %t158 = load ptr, ptr %l2, !tbaa !29
  store ptr %t158, ptr %l113, !tbaa !29
  %t159 = load i64, ptr @G_2estd_2fregex_2eopAny, !tbaa !24
  store i64 %t159, ptr %l114, !tbaa !24
  %t160 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 6
  %t161 = load i1, ptr %t160, !tbaa !21
  br i1 %t161, label %bb34, label %bb35
bb34:
  store i64 1, ptr %l116, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb36
bb36:
  %t163 = load ptr, ptr %l113, !tbaa !29
  %t164 = load i64, ptr %l114, !tbaa !24
  %t165 = load i64, ptr %l116, !tbaa !24
  %t166 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t163, i64 %t164, i64 0, i64 %t165, i64 0)
  store i64 %t166, ptr %l117
  br label %bb37
bb37:
  br label %bb232
bb38:
  %t167 = load i64, ptr %l4, !tbaa !24
  %t168 = load i64, ptr @G_2estd_2fregex_2enCat, !tbaa !24
  %t171 = icmp eq i64 %t167, %t168
  br i1 %t171, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb61
bb41:
  store i64 0, ptr %l7, !tbaa !24
  %t173 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  %t174 = load i64, ptr %t173, !tbaa !24
  store i64 %t174, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t176 = load i64, ptr %l8, !tbaa !24
  %t177 = load i64, ptr %l7, !tbaa !24
  %t180 = icmp sgt i64 %t176, %t177
  br i1 %t180, label %bb42, label %bb43
bb42:
  %t182 = load i64, ptr %l9, !tbaa !24
  %t184 = icmp sgt i64 %t182, 0
  br i1 %t184, label %bb44, label %bb45
bb43:
  store i64 0, ptr %l125, !tbaa !24
  br label %bb47
bb44:
  %t186 = load i64, ptr %l8, !tbaa !24
  %t187 = load i64, ptr %l7, !tbaa !24
  %t190 = sub i64 %t186, %t187
  %t191 = load i64, ptr %l9, !tbaa !24
  %t194 = add i64 %t190, %t191
  %t196 = sub i64 %t194, 1
  %t197 = load i64, ptr %l9, !tbaa !24
  %t200 = sdiv i64 %t196, %t197
  store i64 %t200, ptr %l128, !tbaa !24
  br label %bb46
bb45:
  store i64 0, ptr %l128, !tbaa !24
  br label %bb46
bb46:
  %t202 = load i64, ptr %l128, !tbaa !24
  store i64 %t202, ptr %l125, !tbaa !24
  br label %bb47
bb47:
  %t203 = load i64, ptr %l125, !tbaa !24
  store i64 %t203, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb48
bb48:
  %t204 = load i64, ptr %l11, !tbaa !24
  %t205 = load i64, ptr %l10, !tbaa !24
  %t208 = icmp slt i64 %t204, %t205
  %t210 = xor i1 %t208, true
  br i1 %t210, label %bb49, label %bb50
bb49:
  br label %bb60
bb50:
  br label %bb51
bb51:
  %t212 = load i64, ptr %l7, !tbaa !24
  %t213 = load i64, ptr %l11, !tbaa !24
  %t214 = load i64, ptr %l9, !tbaa !24
  %t217 = mul i64 %t213, %t214
  %t220 = add i64 %t212, %t217
  store i64 %t220, ptr %l12, !tbaa !24
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l146, !tbaa !29
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"std/regex:parser", ptr %t223, i32 0, i32 4
  store ptr %t225, ptr %l148, !tbaa !29
  %t226 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t227 = load i64, ptr %t226, !tbaa !24
  store i64 %t227, ptr %l149, !tbaa !24
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"std/regex:parser", ptr %t228, i32 0, i32 9
  %t231 = load i1, ptr %t230, !tbaa !21
  br i1 %t231, label %bb52, label %bb53
bb52:
  %t233 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  %t234 = load i64, ptr %t233, !tbaa !24
  %t236 = sub i64 %t234, 1
  %t237 = load i64, ptr %l12, !tbaa !24
  %t240 = sub i64 %t236, %t237
  store i64 %t240, ptr %l152, !tbaa !24
  br label %bb54
bb53:
  %t242 = load i64, ptr %l12, !tbaa !24
  store i64 %t242, ptr %l152, !tbaa !24
  br label %bb54
bb54:
  %t244 = load i64, ptr %l149, !tbaa !24
  %t245 = load i64, ptr %l152, !tbaa !24
  %t246 = add i64 %t244, %t245
  %t247 = load ptr, ptr %l148, !tbaa !29
  %t249 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t247, i64 %t246)
  store i64 %t249, ptr %l159
  br label %bb55
bb55:
  %t250 = load ptr, ptr %l146, !tbaa !29
  %t251 = load i64, ptr %l159, !tbaa !24
  %t252 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v0, ptr %t250, i64 %t251)
  store i32 %t252, ptr %l160
  %t253 = icmp ne i32 %t252, 0
  br i1 %t253, label %bb57, label %ok.254, !prof !99
ok.254:
  br label %bb56
bb56:
  br label %bb58
bb57:
  %t255 = load i32, ptr %l160, !tbaa !23
  %t256 = lshr i32 %t255, 16
  %t257 = and i32 %t255, 65535
  %t258 = icmp eq i32 %t256, 1
  %t259 = select i1 %t258, i32 1, i32 0
  %t260 = icmp eq i32 %t255, 0
  %t261 = shl i32 %t259, 16
  %t262 = or i32 %t261, %t257
  %t263 = select i1 %t260, i32 0, i32 %t262
  store i32 %t263, ptr %rv
  br label %ret
bb58:
  br label %bb59
bb59:
  %t265 = load i64, ptr %l11, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l11, !tbaa !24
  br label %bb48
bb60:
  br label %bb232
bb61:
  %t269 = load i64, ptr %l4, !tbaa !24
  %t270 = load i64, ptr @G_2estd_2fregex_2enAlt, !tbaa !24
  %t273 = icmp eq i64 %t269, %t270
  br i1 %t273, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb104
bb64:
  store %olang.scope zeroinitializer, ptr %s12
  %t275 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s12, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t275, ptr %l167
  br label %bb65
bb65:
  %t276 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l167
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t276, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  %t277 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  %t278 = load i64, ptr %t277, !tbaa !24
  store i64 %t278, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t280 = load i64, ptr %l15, !tbaa !24
  %t281 = load i64, ptr %l14, !tbaa !24
  %t284 = icmp sgt i64 %t280, %t281
  br i1 %t284, label %bb66, label %bb67
bb66:
  %t286 = load i64, ptr %l16, !tbaa !24
  %t288 = icmp sgt i64 %t286, 0
  br i1 %t288, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l172, !tbaa !24
  br label %bb71
bb68:
  %t290 = load i64, ptr %l15, !tbaa !24
  %t291 = load i64, ptr %l14, !tbaa !24
  %t294 = sub i64 %t290, %t291
  %t295 = load i64, ptr %l16, !tbaa !24
  %t298 = add i64 %t294, %t295
  %t300 = sub i64 %t298, 1
  %t301 = load i64, ptr %l16, !tbaa !24
  %t304 = sdiv i64 %t300, %t301
  store i64 %t304, ptr %l175, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l175, !tbaa !24
  br label %bb70
bb70:
  %t306 = load i64, ptr %l175, !tbaa !24
  store i64 %t306, ptr %l172, !tbaa !24
  br label %bb71
bb71:
  %t307 = load i64, ptr %l172, !tbaa !24
  store i64 %t307, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb72
bb72:
  %t308 = load i64, ptr %l18, !tbaa !24
  %t309 = load i64, ptr %l17, !tbaa !24
  %t312 = icmp slt i64 %t308, %t309
  %t314 = xor i1 %t312, true
  br i1 %t314, label %bb73, label %bb74
bb73:
  br label %bb94
bb74:
  br label %bb75
bb75:
  %t316 = load i64, ptr %l14, !tbaa !24
  %t317 = load i64, ptr %l18, !tbaa !24
  %t318 = load i64, ptr %l16, !tbaa !24
  %t321 = mul i64 %t317, %t318
  %t324 = add i64 %t316, %t321
  store i64 %t324, ptr %l19, !tbaa !24
  %t326 = load i64, ptr %l19, !tbaa !24
  %t327 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  %t328 = load i64, ptr %t327, !tbaa !24
  %t330 = sub i64 %t328, 1
  %t333 = icmp slt i64 %t326, %t330
  br i1 %t333, label %bb76, label %bb77
bb76:
  %t335 = load ptr, ptr %l2, !tbaa !29
  store ptr %t335, ptr %l197, !tbaa !29
  %t336 = load i64, ptr @G_2estd_2fregex_2eopSplit, !tbaa !24
  store i64 %t336, ptr %l198, !tbaa !24
  %t337 = load ptr, ptr %l2, !tbaa !29
  %t339 = getelementptr %"std/regex:prog", ptr %t337, i32 0, i32 1
  %t341 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t339)
  store i64 %t341, ptr %l201
  br label %bb78
bb77:
  %t342 = load ptr, ptr %l0, !tbaa !29
  store ptr %t342, ptr %l223, !tbaa !29
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"std/regex:parser", ptr %t343, i32 0, i32 4
  %t346 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t347 = load i64, ptr %t346, !tbaa !24
  %t348 = load i64, ptr %l19, !tbaa !24
  %t351 = add i64 %t347, %t348
  %t354 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t345, i64 %t351)
  store i64 %t354, ptr %l229
  br label %bb88
bb78:
  %t355 = load i64, ptr %l201, !tbaa !24
  %t356 = add i64 %t355, 1
  %t357 = load ptr, ptr %l197, !tbaa !29
  %t358 = load i64, ptr %l198, !tbaa !24
  %t360 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t357, i64 %t358, i64 %t356, i64 0, i64 0)
  store i64 %t360, ptr %l203
  br label %bb79
bb79:
  %t361 = load i64, ptr %l203, !tbaa !24
  store i64 %t361, ptr %l20, !tbaa !24
  %t362 = load ptr, ptr %l0, !tbaa !29
  store ptr %t362, ptr %l204, !tbaa !29
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"std/regex:parser", ptr %t363, i32 0, i32 4
  %t366 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t367 = load i64, ptr %t366, !tbaa !24
  %t368 = load i64, ptr %l19, !tbaa !24
  %t371 = add i64 %t367, %t368
  %t374 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t365, i64 %t371)
  store i64 %t374, ptr %l210
  br label %bb80
bb80:
  %t375 = load ptr, ptr %l204, !tbaa !29
  %t376 = load i64, ptr %l210, !tbaa !24
  %t377 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v0, ptr %t375, i64 %t376)
  store i32 %t377, ptr %l211
  %t378 = icmp ne i32 %t377, 0
  br i1 %t378, label %bb82, label %ok.379, !prof !99
ok.379:
  br label %bb81
bb81:
  br label %bb83
bb82:
  %t380 = load i32, ptr %l211, !tbaa !23
  %t381 = lshr i32 %t380, 16
  %t382 = and i32 %t380, 65535
  %t383 = icmp eq i32 %t381, 1
  %t384 = select i1 %t383, i32 1, i32 0
  %t385 = icmp eq i32 %t380, 0
  %t386 = shl i32 %t384, 16
  %t387 = or i32 %t386, %t382
  %t388 = select i1 %t385, i32 0, i32 %t387
  call void @__olang_scope_close(ptr %s12)
  store i32 %t388, ptr %rv
  br label %ret
bb83:
  store ptr %l13, ptr %l213, !tbaa !29
  %t390 = load ptr, ptr %l2, !tbaa !29
  %t391 = load i64, ptr @G_2estd_2fregex_2eopJmp, !tbaa !24
  %t394 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t390, i64 %t391, i64 0, i64 0, i64 0)
  store i64 %t394, ptr %l216
  br label %bb84
bb84:
  %t395 = load ptr, ptr %l213, !tbaa !29
  %t396 = load i64, ptr %l216, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s12, ptr %t395, i64 %t396)
  br label %bb85
bb85:
  %t397 = load ptr, ptr %l2, !tbaa !29
  %t399 = getelementptr %"std/regex:prog", ptr %t397, i32 0, i32 3
  store ptr %t399, ptr %l218, !tbaa !29
  %t400 = load i64, ptr %l20, !tbaa !24
  store i64 %t400, ptr %l219, !tbaa !24
  %t401 = load ptr, ptr %l2, !tbaa !29
  %t403 = getelementptr %"std/regex:prog", ptr %t401, i32 0, i32 1
  %t405 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t403)
  store i64 %t405, ptr %l222
  br label %bb86
bb86:
  %t406 = load ptr, ptr %l218, !tbaa !29
  %t407 = load i64, ptr %l219, !tbaa !24
  %t408 = load i64, ptr %l222, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t406, i64 %t407, i64 %t408)
  br label %bb87
bb87:
  br label %bb92
bb88:
  %t409 = load ptr, ptr %l223, !tbaa !29
  %t410 = load i64, ptr %l229, !tbaa !24
  %t411 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v0, ptr %t409, i64 %t410)
  store i32 %t411, ptr %l230
  %t412 = icmp ne i32 %t411, 0
  br i1 %t412, label %bb90, label %ok.413, !prof !99
ok.413:
  br label %bb89
bb89:
  br label %bb91
bb90:
  %t414 = load i32, ptr %l230, !tbaa !23
  %t415 = lshr i32 %t414, 16
  %t416 = and i32 %t414, 65535
  %t417 = icmp eq i32 %t415, 1
  %t418 = select i1 %t417, i32 1, i32 0
  %t419 = icmp eq i32 %t414, 0
  %t420 = shl i32 %t418, 16
  %t421 = or i32 %t420, %t416
  %t422 = select i1 %t419, i32 0, i32 %t421
  call void @__olang_scope_close(ptr %s12)
  store i32 %t422, ptr %rv
  br label %ret
bb91:
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t424 = load i64, ptr %l18, !tbaa !24
  %t426 = add i64 %t424, 1
  store i64 %t426, ptr %l18, !tbaa !24
  br label %bb72
bb94:
  %t429 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %s12, ptr %s12, ptr %l13)
  store { i64, ptr } %t429, ptr %l235
  br label %bb95
bb95:
  %t430 = load { i64, ptr }, ptr %l235, !tbaa !27
  store { i64, ptr } %t430, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t431 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t433 = extractvalue { i64, ptr } %t431, 0
  store i64 %t433, ptr %l23, !tbaa !24
  br label %bb96
bb96:
  %t435 = load i64, ptr %l22, !tbaa !24
  %t436 = load i64, ptr %l23, !tbaa !24
  %t439 = icmp slt i64 %t435, %t436
  %t441 = xor i1 %t439, true
  br i1 %t441, label %bb97, label %bb98
bb97:
  br label %bb103
bb98:
  br label %bb99
bb99:
  %t443 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t443, ptr %l242, !tbaa !27
  %t444 = load i64, ptr %l22, !tbaa !24
  %t446 = getelementptr { i64, ptr }, ptr %l242, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !27
  %t448 = getelementptr i64, ptr %t447, i64 %t444
  %t449 = load i64, ptr %t448, !tbaa !34
  %t451 = load ptr, ptr %l2, !tbaa !29
  %t453 = getelementptr %"std/regex:prog", ptr %t451, i32 0, i32 2
  store ptr %t453, ptr %l246, !tbaa !29
  store i64 %t449, ptr %l247, !tbaa !24
  %t455 = load ptr, ptr %l2, !tbaa !29
  %t457 = getelementptr %"std/regex:prog", ptr %t455, i32 0, i32 1
  %t459 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t457)
  store i64 %t459, ptr %l250
  br label %bb100
bb100:
  %t460 = load ptr, ptr %l246, !tbaa !29
  %t461 = load i64, ptr %l247, !tbaa !24
  %t462 = load i64, ptr %l250, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t460, i64 %t461, i64 %t462)
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t463 = load i64, ptr %l22, !tbaa !24
  %t465 = add i64 %t463, 1
  store i64 %t465, ptr %l22, !tbaa !24
  br label %bb96
bb103:
  call void @__olang_scope_close(ptr %s12)
  br label %bb232
bb104:
  %t467 = load i64, ptr %l4, !tbaa !24
  %t468 = load i64, ptr @G_2estd_2fregex_2enGroup, !tbaa !24
  %t471 = icmp eq i64 %t467, %t468
  br i1 %t471, label %bb105, label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb125
bb107:
  %t473 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  %t474 = load i64, ptr %t473, !tbaa !24
  %t476 = icmp sge i64 %t474, 0
  br i1 %t476, label %bb108, label %bb109
bb108:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = getelementptr %"std/regex:parser", ptr %t478, i32 0, i32 9
  %t481 = load i1, ptr %t480, !tbaa !21
  %t483 = xor i1 %t481, true
  store i1 %t483, ptr %l258, !tbaa !21
  br label %bb110
bb109:
  store i1 false, ptr %l258, !tbaa !21
  br label %bb110
bb110:
  %t485 = load i1, ptr %l258, !tbaa !21
  br i1 %t485, label %bb111, label %bb112
bb111:
  %t486 = load ptr, ptr %l2, !tbaa !29
  %t487 = load i64, ptr @G_2estd_2fregex_2eopSave, !tbaa !24
  %t488 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  %t489 = load i64, ptr %t488, !tbaa !24
  %t491 = mul i64 2, %t489
  %t495 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t486, i64 %t487, i64 %t491, i64 0, i64 0)
  store i64 %t495, ptr %l266
  br label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb114
bb114:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t498 = load i64, ptr %t497, !tbaa !24
  %t501 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v0, ptr %t496, i64 %t498)
  store i32 %t501, ptr %l269
  %t502 = icmp ne i32 %t501, 0
  br i1 %t502, label %bb116, label %ok.503, !prof !99
ok.503:
  br label %bb115
bb115:
  br label %bb117
bb116:
  %t504 = load i32, ptr %l269, !tbaa !23
  %t505 = lshr i32 %t504, 16
  %t506 = and i32 %t504, 65535
  %t507 = icmp eq i32 %t505, 1
  %t508 = select i1 %t507, i32 1, i32 0
  %t509 = icmp eq i32 %t504, 0
  %t510 = shl i32 %t508, 16
  %t511 = or i32 %t510, %t506
  %t512 = select i1 %t509, i32 0, i32 %t511
  store i32 %t512, ptr %rv
  br label %ret
bb117:
  %t514 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  %t515 = load i64, ptr %t514, !tbaa !24
  %t517 = icmp sge i64 %t515, 0
  br i1 %t517, label %bb118, label %bb119
bb118:
  %t519 = load ptr, ptr %l0, !tbaa !29
  %t521 = getelementptr %"std/regex:parser", ptr %t519, i32 0, i32 9
  %t522 = load i1, ptr %t521, !tbaa !21
  %t524 = xor i1 %t522, true
  store i1 %t524, ptr %l273, !tbaa !21
  br label %bb120
bb119:
  store i1 false, ptr %l273, !tbaa !21
  br label %bb120
bb120:
  %t526 = load i1, ptr %l273, !tbaa !21
  br i1 %t526, label %bb121, label %bb122
bb121:
  %t527 = load ptr, ptr %l2, !tbaa !29
  %t528 = load i64, ptr @G_2estd_2fregex_2eopSave, !tbaa !24
  %t529 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  %t530 = load i64, ptr %t529, !tbaa !24
  %t532 = mul i64 2, %t530
  %t534 = add i64 %t532, 1
  %t538 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t527, i64 %t528, i64 %t534, i64 0, i64 0)
  store i64 %t538, ptr %l282
  br label %bb123
bb122:
  br label %bb124
bb123:
  br label %bb124
bb124:
  br label %bb232
bb125:
  %t539 = load i64, ptr %l4, !tbaa !24
  %t540 = load i64, ptr @G_2estd_2fregex_2enAssert, !tbaa !24
  %t543 = icmp eq i64 %t539, %t540
  br i1 %t543, label %bb126, label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb133
bb128:
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t547 = getelementptr %"std/regex:parser", ptr %t545, i32 0, i32 9
  %t548 = load i1, ptr %t547, !tbaa !21
  %t550 = xor i1 %t548, true
  br i1 %t550, label %bb129, label %bb130
bb129:
  %t552 = load ptr, ptr %l2, !tbaa !29
  %t553 = load i64, ptr @G_2estd_2fregex_2eopAssert, !tbaa !24
  %t554 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t555 = load i64, ptr %t554, !tbaa !24
  %t559 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t552, i64 %t553, i64 %t555, i64 0, i64 0)
  store i64 %t559, ptr %l292
  br label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb132
bb132:
  br label %bb232
bb133:
  %t560 = load i64, ptr %l4, !tbaa !24
  %t561 = load i64, ptr @G_2estd_2fregex_2enRepeat, !tbaa !24
  %t564 = icmp eq i64 %t560, %t561
  br i1 %t564, label %bb134, label %bb135
bb134:
  br label %bb136
bb135:
  br label %bb227
bb136:
  store i64 0, ptr %l25, !tbaa !24
  %t566 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 4
  %t567 = load i64, ptr %t566, !tbaa !24
  %t569 = icmp slt i64 %t567, 0
  br i1 %t569, label %bb137, label %bb138
bb137:
  %t571 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 3
  %t572 = load i64, ptr %t571, !tbaa !24
  %t574 = icmp sgt i64 %t572, 0
  store i1 %t574, ptr %l298, !tbaa !21
  br label %bb139
bb138:
  store i1 false, ptr %l298, !tbaa !21
  br label %bb139
bb139:
  %t576 = load i1, ptr %l298, !tbaa !21
  br i1 %t576, label %bb140, label %bb141
bb140:
  %t577 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 3
  %t578 = load i64, ptr %t577, !tbaa !24
  %t580 = sub i64 %t578, 1
  store i64 %t580, ptr %l301, !tbaa !24
  br label %bb142
bb141:
  %t582 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 3
  %t583 = load i64, ptr %t582, !tbaa !24
  store i64 %t583, ptr %l301, !tbaa !24
  br label %bb142
bb142:
  %t585 = load i64, ptr %l301, !tbaa !24
  store i64 %t585, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t586 = load i64, ptr %l26, !tbaa !24
  %t587 = load i64, ptr %l25, !tbaa !24
  %t590 = icmp sgt i64 %t586, %t587
  br i1 %t590, label %bb143, label %bb144
bb143:
  %t592 = load i64, ptr %l27, !tbaa !24
  %t594 = icmp sgt i64 %t592, 0
  br i1 %t594, label %bb145, label %bb146
bb144:
  store i64 0, ptr %l308, !tbaa !24
  br label %bb148
bb145:
  %t596 = load i64, ptr %l26, !tbaa !24
  %t597 = load i64, ptr %l25, !tbaa !24
  %t600 = sub i64 %t596, %t597
  %t601 = load i64, ptr %l27, !tbaa !24
  %t604 = add i64 %t600, %t601
  %t606 = sub i64 %t604, 1
  %t607 = load i64, ptr %l27, !tbaa !24
  %t610 = sdiv i64 %t606, %t607
  store i64 %t610, ptr %l311, !tbaa !24
  br label %bb147
bb146:
  store i64 0, ptr %l311, !tbaa !24
  br label %bb147
bb147:
  %t612 = load i64, ptr %l311, !tbaa !24
  store i64 %t612, ptr %l308, !tbaa !24
  br label %bb148
bb148:
  %t613 = load i64, ptr %l308, !tbaa !24
  store i64 %t613, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb149
bb149:
  %t614 = load i64, ptr %l29, !tbaa !24
  %t615 = load i64, ptr %l28, !tbaa !24
  %t618 = icmp slt i64 %t614, %t615
  %t620 = xor i1 %t618, true
  br i1 %t620, label %bb150, label %bb151
bb150:
  br label %bb157
bb151:
  br label %bb152
bb152:
  %t622 = load i64, ptr %l25, !tbaa !24
  %t623 = load i64, ptr %l29, !tbaa !24
  %t624 = load i64, ptr %l27, !tbaa !24
  %t627 = mul i64 %t623, %t624
  %t630 = add i64 %t622, %t627
  store i64 %t630, ptr %l30, !tbaa !24
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t634 = load i64, ptr %t633, !tbaa !24
  %t637 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v0, ptr %t632, i64 %t634)
  store i32 %t637, ptr %l331
  %t638 = icmp ne i32 %t637, 0
  br i1 %t638, label %bb154, label %ok.639, !prof !99
ok.639:
  br label %bb153
bb153:
  br label %bb155
bb154:
  %t640 = load i32, ptr %l331, !tbaa !23
  %t641 = lshr i32 %t640, 16
  %t642 = and i32 %t640, 65535
  %t643 = icmp eq i32 %t641, 1
  %t644 = select i1 %t643, i32 1, i32 0
  %t645 = icmp eq i32 %t640, 0
  %t646 = shl i32 %t644, 16
  %t647 = or i32 %t646, %t642
  %t648 = select i1 %t645, i32 0, i32 %t647
  store i32 %t648, ptr %rv
  br label %ret
bb155:
  br label %bb156
bb156:
  %t650 = load i64, ptr %l29, !tbaa !24
  %t652 = add i64 %t650, 1
  store i64 %t652, ptr %l29, !tbaa !24
  br label %bb149
bb157:
  %t654 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 4
  %t655 = load i64, ptr %t654, !tbaa !24
  %t657 = icmp slt i64 %t655, 0
  br i1 %t657, label %bb158, label %bb159
bb158:
  %t659 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 3
  %t660 = load i64, ptr %t659, !tbaa !24
  %t662 = icmp sgt i64 %t660, 0
  br i1 %t662, label %bb160, label %bb161
bb159:
  store %olang.scope zeroinitializer, ptr %s35
  %t664 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s35, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t664, ptr %l393
  br label %bb188
bb160:
  %t665 = load ptr, ptr %l2, !tbaa !29
  %t667 = getelementptr %"std/regex:prog", ptr %t665, i32 0, i32 1
  %t669 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t667)
  store i64 %t669, ptr %l341
  br label %bb162
bb161:
  %t670 = load ptr, ptr %l2, !tbaa !29
  %t671 = load i64, ptr @G_2estd_2fregex_2eopSplit, !tbaa !24
  %t674 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t670, i64 %t671, i64 0, i64 0, i64 0)
  store i64 %t674, ptr %l365
  br label %bb173
bb162:
  %t675 = load i64, ptr %l341, !tbaa !24
  store i64 %t675, ptr %l31, !tbaa !24
  %t676 = load ptr, ptr %l0, !tbaa !29
  %t677 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t678 = load i64, ptr %t677, !tbaa !24
  %t681 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v0, ptr %t676, i64 %t678)
  store i32 %t681, ptr %l344
  %t682 = icmp ne i32 %t681, 0
  br i1 %t682, label %bb164, label %ok.683, !prof !99
ok.683:
  br label %bb163
bb163:
  br label %bb165
bb164:
  %t684 = load i32, ptr %l344, !tbaa !23
  %t685 = lshr i32 %t684, 16
  %t686 = and i32 %t684, 65535
  %t687 = icmp eq i32 %t685, 1
  %t688 = select i1 %t687, i32 1, i32 0
  %t689 = icmp eq i32 %t684, 0
  %t690 = shl i32 %t688, 16
  %t691 = or i32 %t690, %t686
  %t692 = select i1 %t689, i32 0, i32 %t691
  store i32 %t692, ptr %rv
  br label %ret
bb165:
  %t694 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 7
  %t695 = load i1, ptr %t694, !tbaa !21
  br i1 %t695, label %bb166, label %bb167
bb166:
  %t697 = load ptr, ptr %l2, !tbaa !29
  store ptr %t697, ptr %l347, !tbaa !29
  %t698 = load i64, ptr @G_2estd_2fregex_2eopSplit, !tbaa !24
  store i64 %t698, ptr %l348, !tbaa !24
  %t699 = load i64, ptr %l31, !tbaa !24
  store i64 %t699, ptr %l349, !tbaa !24
  %t700 = load ptr, ptr %l2, !tbaa !29
  %t702 = getelementptr %"std/regex:prog", ptr %t700, i32 0, i32 1
  %t704 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t702)
  store i64 %t704, ptr %l352
  br label %bb168
bb167:
  %t705 = load ptr, ptr %l2, !tbaa !29
  store ptr %t705, ptr %l355, !tbaa !29
  %t706 = load i64, ptr @G_2estd_2fregex_2eopSplit, !tbaa !24
  store i64 %t706, ptr %l356, !tbaa !24
  %t707 = load ptr, ptr %l2, !tbaa !29
  %t709 = getelementptr %"std/regex:prog", ptr %t707, i32 0, i32 1
  %t711 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t709)
  store i64 %t711, ptr %l359
  br label %bb170
bb168:
  %t712 = load i64, ptr %l352, !tbaa !24
  %t713 = add i64 %t712, 1
  %t714 = load ptr, ptr %l347, !tbaa !29
  %t715 = load i64, ptr %l348, !tbaa !24
  %t716 = load i64, ptr %l349, !tbaa !24
  %t718 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t714, i64 %t715, i64 %t716, i64 %t713, i64 0)
  store i64 %t718, ptr %l354
  br label %bb169
bb169:
  br label %bb172
bb170:
  %t719 = load i64, ptr %l359, !tbaa !24
  %t720 = add i64 %t719, 1
  %t721 = load i64, ptr %l31, !tbaa !24
  %t722 = load ptr, ptr %l355, !tbaa !29
  %t723 = load i64, ptr %l356, !tbaa !24
  %t726 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t722, i64 %t723, i64 %t720, i64 %t721, i64 0)
  store i64 %t726, ptr %l362
  br label %bb171
bb171:
  br label %bb172
bb172:
  br label %bb187
bb173:
  %t727 = load i64, ptr %l365, !tbaa !24
  store i64 %t727, ptr %l32, !tbaa !24
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t729 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t730 = load i64, ptr %t729, !tbaa !24
  %t733 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v0, ptr %t728, i64 %t730)
  store i32 %t733, ptr %l368
  %t734 = icmp ne i32 %t733, 0
  br i1 %t734, label %bb175, label %ok.735, !prof !99
ok.735:
  br label %bb174
bb174:
  br label %bb176
bb175:
  %t736 = load i32, ptr %l368, !tbaa !23
  %t737 = lshr i32 %t736, 16
  %t738 = and i32 %t736, 65535
  %t739 = icmp eq i32 %t737, 1
  %t740 = select i1 %t739, i32 1, i32 0
  %t741 = icmp eq i32 %t736, 0
  %t742 = shl i32 %t740, 16
  %t743 = or i32 %t742, %t738
  %t744 = select i1 %t741, i32 0, i32 %t743
  store i32 %t744, ptr %rv
  br label %ret
bb176:
  %t746 = load ptr, ptr %l2, !tbaa !29
  %t747 = load i64, ptr @G_2estd_2fregex_2eopJmp, !tbaa !24
  %t748 = load i64, ptr %l32, !tbaa !24
  %t752 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t746, i64 %t747, i64 %t748, i64 0, i64 0)
  store i64 %t752, ptr %l373
  br label %bb177
bb177:
  %t753 = load i64, ptr %l32, !tbaa !24
  %t755 = add i64 %t753, 1
  store i64 %t755, ptr %l33, !tbaa !24
  %t757 = load ptr, ptr %l2, !tbaa !29
  %t759 = getelementptr %"std/regex:prog", ptr %t757, i32 0, i32 1
  %t761 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t759)
  store i64 %t761, ptr %l378
  br label %bb178
bb178:
  %t762 = load i64, ptr %l378, !tbaa !24
  store i64 %t762, ptr %l34, !tbaa !24
  %t763 = load ptr, ptr %l2, !tbaa !29
  %t765 = getelementptr %"std/regex:prog", ptr %t763, i32 0, i32 2
  store ptr %t765, ptr %l380, !tbaa !29
  %t766 = load i64, ptr %l32, !tbaa !24
  store i64 %t766, ptr %l381, !tbaa !24
  %t767 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 7
  %t768 = load i1, ptr %t767, !tbaa !21
  br i1 %t768, label %bb179, label %bb180
bb179:
  %t770 = load i64, ptr %l33, !tbaa !24
  store i64 %t770, ptr %l383, !tbaa !24
  br label %bb181
bb180:
  %t772 = load i64, ptr %l34, !tbaa !24
  store i64 %t772, ptr %l383, !tbaa !24
  br label %bb181
bb181:
  %t774 = load ptr, ptr %l380, !tbaa !29
  %t775 = load i64, ptr %l381, !tbaa !24
  %t776 = load i64, ptr %l383, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t774, i64 %t775, i64 %t776)
  br label %bb182
bb182:
  %t777 = load ptr, ptr %l2, !tbaa !29
  %t779 = getelementptr %"std/regex:prog", ptr %t777, i32 0, i32 3
  store ptr %t779, ptr %l387, !tbaa !29
  %t780 = load i64, ptr %l32, !tbaa !24
  store i64 %t780, ptr %l388, !tbaa !24
  %t781 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 7
  %t782 = load i1, ptr %t781, !tbaa !21
  br i1 %t782, label %bb183, label %bb184
bb183:
  %t784 = load i64, ptr %l34, !tbaa !24
  store i64 %t784, ptr %l390, !tbaa !24
  br label %bb185
bb184:
  %t786 = load i64, ptr %l33, !tbaa !24
  store i64 %t786, ptr %l390, !tbaa !24
  br label %bb185
bb185:
  %t788 = load ptr, ptr %l387, !tbaa !29
  %t789 = load i64, ptr %l388, !tbaa !24
  %t790 = load i64, ptr %l390, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t788, i64 %t789, i64 %t790)
  br label %bb186
bb186:
  br label %bb187
bb187:
  br label %bb226
bb188:
  %t791 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l393
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t791, ptr %l35
  store i64 0, ptr %l36, !tbaa !24
  %t792 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 4
  %t793 = load i64, ptr %t792, !tbaa !24
  %t794 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 3
  %t795 = load i64, ptr %t794, !tbaa !24
  %t798 = sub i64 %t793, %t795
  store i64 %t798, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t800 = load i64, ptr %l37, !tbaa !24
  %t801 = load i64, ptr %l36, !tbaa !24
  %t804 = icmp sgt i64 %t800, %t801
  br i1 %t804, label %bb189, label %bb190
bb189:
  %t806 = load i64, ptr %l38, !tbaa !24
  %t808 = icmp sgt i64 %t806, 0
  br i1 %t808, label %bb191, label %bb192
bb190:
  store i64 0, ptr %l400, !tbaa !24
  br label %bb194
bb191:
  %t810 = load i64, ptr %l37, !tbaa !24
  %t811 = load i64, ptr %l36, !tbaa !24
  %t814 = sub i64 %t810, %t811
  %t815 = load i64, ptr %l38, !tbaa !24
  %t818 = add i64 %t814, %t815
  %t820 = sub i64 %t818, 1
  %t821 = load i64, ptr %l38, !tbaa !24
  %t824 = sdiv i64 %t820, %t821
  store i64 %t824, ptr %l403, !tbaa !24
  br label %bb193
bb192:
  store i64 0, ptr %l403, !tbaa !24
  br label %bb193
bb193:
  %t826 = load i64, ptr %l403, !tbaa !24
  store i64 %t826, ptr %l400, !tbaa !24
  br label %bb194
bb194:
  %t827 = load i64, ptr %l400, !tbaa !24
  store i64 %t827, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb195
bb195:
  %t828 = load i64, ptr %l40, !tbaa !24
  %t829 = load i64, ptr %l39, !tbaa !24
  %t832 = icmp slt i64 %t828, %t829
  %t834 = xor i1 %t832, true
  br i1 %t834, label %bb196, label %bb197
bb196:
  br label %bb209
bb197:
  br label %bb198
bb198:
  %t836 = load i64, ptr %l36, !tbaa !24
  %t837 = load i64, ptr %l40, !tbaa !24
  %t838 = load i64, ptr %l38, !tbaa !24
  %t841 = mul i64 %t837, %t838
  %t844 = add i64 %t836, %t841
  store i64 %t844, ptr %l41, !tbaa !24
  %t846 = load ptr, ptr %l2, !tbaa !29
  %t847 = load i64, ptr @G_2estd_2fregex_2eopSplit, !tbaa !24
  %t850 = call i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %t846, i64 %t847, i64 0, i64 0, i64 0)
  store i64 %t850, ptr %l423
  br label %bb199
bb199:
  %t851 = load i64, ptr %l423, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s35, ptr %l35, i64 %t851)
  br label %bb200
bb200:
  %t855 = load ptr, ptr %l0, !tbaa !29
  %t856 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  %t857 = load i64, ptr %t856, !tbaa !24
  %t860 = call i32 @std_2fregex_2estd_2fregex_3aparser_2eemitNode(ptr %v0, ptr %t855, i64 %t857)
  store i32 %t860, ptr %l428
  %t861 = icmp ne i32 %t860, 0
  br i1 %t861, label %bb202, label %ok.862, !prof !99
ok.862:
  br label %bb201
bb201:
  br label %bb203
bb202:
  %t863 = load i32, ptr %l428, !tbaa !23
  %t864 = lshr i32 %t863, 16
  %t865 = and i32 %t863, 65535
  %t866 = icmp eq i32 %t864, 1
  %t867 = select i1 %t866, i32 1, i32 0
  %t868 = icmp eq i32 %t863, 0
  %t869 = shl i32 %t867, 16
  %t870 = or i32 %t869, %t865
  %t871 = select i1 %t868, i32 0, i32 %t870
  call void @__olang_scope_close(ptr %s35)
  store i32 %t871, ptr %rv
  br label %ret
bb203:
  %t873 = load ptr, ptr %l2, !tbaa !29
  %t875 = getelementptr %"std/regex:prog", ptr %t873, i32 0, i32 1
  %t877 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t875)
  store i64 %t877, ptr %l432
  br label %bb204
bb204:
  %t878 = load i64, ptr @G_2estd_2fregex_2emaxProgram, !tbaa !24
  %t879 = load i64, ptr %l432, !tbaa !24
  %t881 = icmp sgt i64 %t879, %t878
  br i1 %t881, label %bb205, label %bb206
bb205:
  store { i64, [1 x i64] } zeroinitializer, ptr %t883
  %t884 = getelementptr { i64, [1 x i64] }, ptr %t883, i32 0, i32 0
  store i64 8, ptr %t884
  %t885 = insertvalue { i64 } undef, i64 0, 0
  %t886 = getelementptr { i64, [1 x i64] }, ptr %t883, i32 0, i32 1
  store { i64 } %t885, ptr %t886
  %t887 = load { i64, [1 x i64] }, ptr %t883
  %t888 = call ptr @__olang_errpay_push()
  %t889 = ptrtoint ptr %t888 to i64
  %t892 = inttoptr i64 %t889 to ptr
  %t893 = call ptr @__olang_scope_alloc_a(ptr %t892, i64 16, i64 8)
  store { i64, [1 x i64] } %t887, ptr %t893
  call void @__olang_errpay_set(ptr %t893)
  call void @__olang_scope_close(ptr %s35)
  store i32 65544, ptr %rv
  br label %ret
bb206:
  br label %bb207
bb207:
  br label %bb208
bb208:
  %t896 = load i64, ptr %l40, !tbaa !24
  %t898 = add i64 %t896, 1
  store i64 %t898, ptr %l40, !tbaa !24
  br label %bb195
bb209:
  %t900 = load ptr, ptr %l2, !tbaa !29
  %t902 = getelementptr %"std/regex:prog", ptr %t900, i32 0, i32 1
  %t904 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t902)
  store i64 %t904, ptr %l443
  br label %bb210
bb210:
  %t905 = load i64, ptr %l443, !tbaa !24
  store i64 %t905, ptr %l43, !tbaa !24
  %t907 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %s35, ptr %s35, ptr %l35)
  store { i64, ptr } %t907, ptr %l445
  br label %bb211
bb211:
  %t908 = load { i64, ptr }, ptr %l445, !tbaa !27
  store { i64, ptr } %t908, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t909 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t911 = extractvalue { i64, ptr } %t909, 0
  store i64 %t911, ptr %l46, !tbaa !24
  br label %bb212
bb212:
  %t913 = load i64, ptr %l45, !tbaa !24
  %t914 = load i64, ptr %l46, !tbaa !24
  %t917 = icmp slt i64 %t913, %t914
  %t919 = xor i1 %t917, true
  br i1 %t919, label %bb213, label %bb214
bb213:
  br label %bb225
bb214:
  br label %bb215
bb215:
  %t921 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t921, ptr %l452, !tbaa !27
  %t922 = load i64, ptr %l45, !tbaa !24
  %t924 = getelementptr { i64, ptr }, ptr %l452, i32 0, i32 1
  %t925 = load ptr, ptr %t924, !tbaa !27
  %t926 = getelementptr i64, ptr %t925, i64 %t922
  %t927 = load i64, ptr %t926, !tbaa !34
  store i64 %t927, ptr %l47, !tbaa !24
  %t929 = load ptr, ptr %l2, !tbaa !29
  %t931 = getelementptr %"std/regex:prog", ptr %t929, i32 0, i32 2
  store ptr %t931, ptr %l456, !tbaa !29
  %t932 = load i64, ptr %l47, !tbaa !24
  store i64 %t932, ptr %l457, !tbaa !24
  %t933 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 7
  %t934 = load i1, ptr %t933, !tbaa !21
  br i1 %t934, label %bb216, label %bb217
bb216:
  %t936 = load i64, ptr %l47, !tbaa !24
  %t938 = add i64 %t936, 1
  store i64 %t938, ptr %l459, !tbaa !24
  br label %bb218
bb217:
  %t940 = load i64, ptr %l43, !tbaa !24
  store i64 %t940, ptr %l459, !tbaa !24
  br label %bb218
bb218:
  %t942 = load ptr, ptr %l456, !tbaa !29
  %t943 = load i64, ptr %l457, !tbaa !24
  %t944 = load i64, ptr %l459, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t942, i64 %t943, i64 %t944)
  br label %bb219
bb219:
  %t945 = load ptr, ptr %l2, !tbaa !29
  %t947 = getelementptr %"std/regex:prog", ptr %t945, i32 0, i32 3
  store ptr %t947, ptr %l464, !tbaa !29
  %t948 = load i64, ptr %l47, !tbaa !24
  store i64 %t948, ptr %l465, !tbaa !24
  %t949 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 7
  %t950 = load i1, ptr %t949, !tbaa !21
  br i1 %t950, label %bb220, label %bb221
bb220:
  %t952 = load i64, ptr %l43, !tbaa !24
  store i64 %t952, ptr %l467, !tbaa !24
  br label %bb222
bb221:
  %t954 = load i64, ptr %l47, !tbaa !24
  %t956 = add i64 %t954, 1
  store i64 %t956, ptr %l467, !tbaa !24
  br label %bb222
bb222:
  %t958 = load ptr, ptr %l464, !tbaa !29
  %t959 = load i64, ptr %l465, !tbaa !24
  %t960 = load i64, ptr %l467, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t958, i64 %t959, i64 %t960)
  br label %bb223
bb223:
  br label %bb224
bb224:
  %t961 = load i64, ptr %l45, !tbaa !24
  %t963 = add i64 %t961, 1
  store i64 %t963, ptr %l45, !tbaa !24
  br label %bb212
bb225:
  call void @__olang_scope_close(ptr %s35)
  br label %bb226
bb226:
  br label %bb232
bb227:
  br i1 true, label %bb228, label %bb229
bb228:
  br label %bb230
bb229:
  br label %bb231
bb230:
  br label %bb232
bb231:
  call void @__olang_check_failed(ptr @olang_loc_675b85940ddce45a_720e94ce1698584e)
  unreachable
bb232:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i32 } @std_2fregex_2estd_2fregex_3aparser_2eescapedRune(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l31 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i8
  %l36 = alloca ptr
  %l42 = alloca i1
  %l43 = alloca i1
  %l45 = alloca i8
  %l46 = alloca i64
  %l48 = alloca i1
  %l56 = alloca i64
  %l58 = alloca i8
  %l59 = alloca i64
  %l61 = alloca ptr
  %l68 = alloca i1
  %l70 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i8
  %l76 = alloca i1
  %l85 = alloca ptr
  %l93 = alloca i64
  %l96 = alloca i64
  %l115 = alloca i1
  %l117 = alloca i1
  %l119 = alloca i8
  %l120 = alloca i64
  %l129 = alloca i64
  %l131 = alloca i8
  %l132 = alloca i64
  %l134 = alloca ptr
  %l142 = alloca i1
  %l143 = alloca i1
  %l145 = alloca i1
  %l146 = alloca i1
  %rv = alloca { i32, i32 }
  %t149 = alloca { i64, [1 x i64] }, align 8
  %t243 = alloca { i64, [1 x i64] }, align 8
  %t306 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l1, !tbaa !22
  %t3 = icmp eq i8 %t1, 110
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t5 = zext i8 10 to i32
  %t7 = insertvalue { i32, i32 } zeroinitializer, i32 %t5, 1
  store { i32, i32 } %t7, ptr %rv
  br label %ret
bb4:
  %t8 = load i8, ptr %l1, !tbaa !22
  %t10 = icmp eq i8 %t8, 116
  br i1 %t10, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t12 = zext i8 9 to i32
  %t14 = insertvalue { i32, i32 } zeroinitializer, i32 %t12, 1
  store { i32, i32 } %t14, ptr %rv
  br label %ret
bb8:
  %t15 = load i8, ptr %l1, !tbaa !22
  %t17 = icmp eq i8 %t15, 114
  br i1 %t17, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t19 = zext i8 13 to i32
  %t21 = insertvalue { i32, i32 } zeroinitializer, i32 %t19, 1
  store { i32, i32 } %t21, ptr %rv
  br label %ret
bb12:
  %t22 = load i8, ptr %l1, !tbaa !22
  %t24 = icmp eq i8 %t22, 102
  br i1 %t24, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t27 = insertvalue { i32, i32 } zeroinitializer, i32 12, 1
  store { i32, i32 } %t27, ptr %rv
  br label %ret
bb16:
  %t28 = load i8, ptr %l1, !tbaa !22
  %t30 = icmp eq i8 %t28, 118
  br i1 %t30, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t33 = insertvalue { i32, i32 } zeroinitializer, i32 11, 1
  store { i32, i32 } %t33, ptr %rv
  br label %ret
bb20:
  %t34 = load i8, ptr %l1, !tbaa !22
  %t36 = icmp eq i8 %t34, 48
  br i1 %t36, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t39 = insertvalue { i32, i32 } zeroinitializer, i32 0, 1
  store { i32, i32 } %t39, ptr %rv
  br label %ret
bb24:
  %t40 = load i8, ptr %l1, !tbaa !22
  %t42 = icmp eq i8 %t40, 120
  br i1 %t42, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb90
bb27:
  store i64 0, ptr %l2, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t44)
  store i1 %t46, ptr %l31
  br label %bb28
bb28:
  %t47 = load i1, ptr %l31, !tbaa !21
  br i1 %t47, label %bb29, label %bb30
bb29:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t48)
  store i8 %t50, ptr %l34
  br label %bb31
bb30:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb32
bb31:
  %t51 = load i8, ptr %l34, !tbaa !22
  %t52 = icmp eq i8 %t51, 123
  store i1 %t52, ptr %l32, !tbaa !21
  br label %bb32
bb32:
  %t54 = load i1, ptr %l32, !tbaa !21
  br i1 %t54, label %bb33, label %bb34
bb33:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l36, !tbaa !29
  %t56 = load ptr, ptr %l36, !tbaa !29
  %t57 = getelementptr %"std/regex:parser", ptr %t56, i32 0, i32 2
  %t58 = load i64, ptr %t57, !tbaa !24
  %t60 = add i64 %t58, 1
  %t62 = load ptr, ptr %l36, !tbaa !29
  %t63 = getelementptr %"std/regex:parser", ptr %t62, i32 0, i32 2
  store i64 %t60, ptr %t63, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"std/regex:parser", ptr %t64, i32 0, i32 2
  %t67 = load i64, ptr %t66, !tbaa !24
  store i64 %t67, ptr %l3, !tbaa !24
  br label %bb35
bb34:
  br label %bb66
bb35:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t69)
  store i1 %t71, ptr %l42
  br label %bb36
bb36:
  %t72 = load i1, ptr %l42, !tbaa !21
  br i1 %t72, label %bb37, label %bb38
bb37:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t73)
  store i8 %t75, ptr %l45
  br label %bb39
bb38:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb41
bb39:
  %t76 = load i8, ptr %l45, !tbaa !22
  %t77 = call i64 @std_2fregex_2ehexValue(i8 %t76)
  store i64 %t77, ptr %l46
  br label %bb40
bb40:
  %t78 = load i64, ptr %l46, !tbaa !24
  %t79 = icmp sge i64 %t78, 0
  store i1 %t79, ptr %l43, !tbaa !21
  br label %bb41
bb41:
  %t81 = load i1, ptr %l43, !tbaa !21
  br i1 %t81, label %bb42, label %bb43
bb42:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"std/regex:parser", ptr %t82, i32 0, i32 2
  %t85 = load i64, ptr %t84, !tbaa !24
  %t86 = load i64, ptr %l3, !tbaa !24
  %t89 = sub i64 %t85, %t86
  %t91 = icmp slt i64 %t89, 6
  store i1 %t91, ptr %l48, !tbaa !21
  br label %bb44
bb43:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb44
bb44:
  %t93 = load i1, ptr %l48, !tbaa !21
  %t94 = xor i1 %t93, true
  br i1 %t94, label %bb45, label %bb46
bb45:
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t96 = load i64, ptr %l2, !tbaa !24
  %t98 = mul i64 %t96, 16
  store i64 %t98, ptr %l56, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t99)
  store i8 %t101, ptr %l58
  br label %bb48
bb48:
  %t102 = load i8, ptr %l58, !tbaa !22
  %t103 = call i64 @std_2fregex_2ehexValue(i8 %t102)
  store i64 %t103, ptr %l59
  br label %bb49
bb49:
  %t104 = load i64, ptr %l56, !tbaa !24
  %t105 = load i64, ptr %l59, !tbaa !24
  %t106 = add i64 %t104, %t105
  store i64 %t106, ptr %l2, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l61, !tbaa !29
  %t109 = load ptr, ptr %l61, !tbaa !29
  %t110 = getelementptr %"std/regex:parser", ptr %t109, i32 0, i32 2
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = add i64 %t111, 1
  %t115 = load ptr, ptr %l61, !tbaa !29
  %t116 = getelementptr %"std/regex:parser", ptr %t115, i32 0, i32 2
  store i64 %t113, ptr %t116, !tbaa !24
  br label %bb50
bb50:
  br label %bb35
bb51:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"std/regex:parser", ptr %t117, i32 0, i32 2
  %t120 = load i64, ptr %t119, !tbaa !24
  %t121 = load i64, ptr %l3, !tbaa !24
  %t124 = icmp eq i64 %t120, %t121
  br i1 %t124, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb55
bb53:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t126)
  store i1 %t128, ptr %l70
  br label %bb54
bb54:
  %t129 = load i1, ptr %l70, !tbaa !21
  %t130 = xor i1 %t129, true
  store i1 %t130, ptr %l68, !tbaa !21
  br label %bb55
bb55:
  %t132 = load i1, ptr %l68, !tbaa !21
  br i1 %t132, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb59
bb57:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t133)
  store i8 %t135, ptr %l74
  br label %bb58
bb58:
  %t136 = load i8, ptr %l74, !tbaa !22
  %t137 = icmp ne i8 %t136, 125
  store i1 %t137, ptr %l72, !tbaa !21
  br label %bb59
bb59:
  %t139 = load i1, ptr %l72, !tbaa !21
  br i1 %t139, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb62
bb61:
  %t140 = load i64, ptr %l2, !tbaa !24
  %t142 = icmp sgt i64 %t140, 1114111
  store i1 %t142, ptr %l76, !tbaa !21
  br label %bb62
bb62:
  %t144 = load i1, ptr %l76, !tbaa !21
  br i1 %t144, label %bb63, label %bb64
bb63:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"std/regex:parser", ptr %t145, i32 0, i32 2
  %t148 = load i64, ptr %t147, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [1 x i64] }, ptr %t149, i32 0, i32 0
  store i64 3, ptr %t150
  %t152 = insertvalue { i64 } undef, i64 %t148, 0
  %t153 = getelementptr { i64, [1 x i64] }, ptr %t149, i32 0, i32 1
  store { i64 } %t152, ptr %t153
  %t154 = load { i64, [1 x i64] }, ptr %t149
  %t155 = call ptr @__olang_errpay_push()
  %t156 = ptrtoint ptr %t155 to i64
  %t159 = inttoptr i64 %t156 to ptr
  %t160 = call ptr @__olang_scope_alloc_a(ptr %t159, i64 16, i64 8)
  store { i64, [1 x i64] } %t154, ptr %t160
  call void @__olang_errpay_set(ptr %t160)
  %t163 = insertvalue { i32, i32 } zeroinitializer, i32 65539, 0
  store { i32, i32 } %t163, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l85, !tbaa !29
  %t165 = load ptr, ptr %l85, !tbaa !29
  %t166 = getelementptr %"std/regex:parser", ptr %t165, i32 0, i32 2
  %t167 = load i64, ptr %t166, !tbaa !24
  %t169 = add i64 %t167, 1
  %t171 = load ptr, ptr %l85, !tbaa !29
  %t172 = getelementptr %"std/regex:parser", ptr %t171, i32 0, i32 2
  store i64 %t169, ptr %t172, !tbaa !24
  %t173 = load i64, ptr %l2, !tbaa !24
  %t175 = trunc i64 %t173 to i32
  %t177 = insertvalue { i32, i32 } zeroinitializer, i32 %t175, 1
  store { i32, i32 } %t177, ptr %rv
  br label %ret
bb66:
  store i64 0, ptr %l4, !tbaa !24
  store i64 2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t178 = load i64, ptr %l5, !tbaa !24
  %t179 = load i64, ptr %l4, !tbaa !24
  %t182 = icmp sgt i64 %t178, %t179
  br i1 %t182, label %bb67, label %bb68
bb67:
  %t184 = load i64, ptr %l6, !tbaa !24
  %t186 = icmp sgt i64 %t184, 0
  br i1 %t186, label %bb69, label %bb70
bb68:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb72
bb69:
  %t188 = load i64, ptr %l5, !tbaa !24
  %t189 = load i64, ptr %l4, !tbaa !24
  %t192 = sub i64 %t188, %t189
  %t193 = load i64, ptr %l6, !tbaa !24
  %t196 = add i64 %t192, %t193
  %t198 = sub i64 %t196, 1
  %t199 = load i64, ptr %l6, !tbaa !24
  %t202 = sdiv i64 %t198, %t199
  store i64 %t202, ptr %l96, !tbaa !24
  br label %bb71
bb70:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb71
bb71:
  %t204 = load i64, ptr %l96, !tbaa !24
  store i64 %t204, ptr %l93, !tbaa !24
  br label %bb72
bb72:
  %t205 = load i64, ptr %l93, !tbaa !24
  store i64 %t205, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb73
bb73:
  %t206 = load i64, ptr %l8, !tbaa !24
  %t207 = load i64, ptr %l7, !tbaa !24
  %t210 = icmp slt i64 %t206, %t207
  %t212 = xor i1 %t210, true
  br i1 %t212, label %bb74, label %bb75
bb74:
  br label %bb89
bb75:
  br label %bb76
bb76:
  %t214 = load i64, ptr %l4, !tbaa !24
  %t215 = load i64, ptr %l8, !tbaa !24
  %t216 = load i64, ptr %l6, !tbaa !24
  %t219 = mul i64 %t215, %t216
  %t222 = add i64 %t214, %t219
  store i64 %t222, ptr %l9, !tbaa !24
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t224)
  store i1 %t226, ptr %l115
  br label %bb77
bb77:
  %t227 = load i1, ptr %l115, !tbaa !21
  %t228 = xor i1 %t227, true
  br i1 %t228, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb82
bb79:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t230)
  store i8 %t232, ptr %l119
  br label %bb80
bb80:
  %t233 = load i8, ptr %l119, !tbaa !22
  %t234 = call i64 @std_2fregex_2ehexValue(i8 %t233)
  store i64 %t234, ptr %l120
  br label %bb81
bb81:
  %t235 = load i64, ptr %l120, !tbaa !24
  %t236 = icmp slt i64 %t235, 0
  store i1 %t236, ptr %l117, !tbaa !21
  br label %bb82
bb82:
  %t238 = load i1, ptr %l117, !tbaa !21
  br i1 %t238, label %bb83, label %bb84
bb83:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"std/regex:parser", ptr %t239, i32 0, i32 2
  %t242 = load i64, ptr %t241, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t243
  %t244 = getelementptr { i64, [1 x i64] }, ptr %t243, i32 0, i32 0
  store i64 3, ptr %t244
  %t246 = insertvalue { i64 } undef, i64 %t242, 0
  %t247 = getelementptr { i64, [1 x i64] }, ptr %t243, i32 0, i32 1
  store { i64 } %t246, ptr %t247
  %t248 = load { i64, [1 x i64] }, ptr %t243
  %t249 = call ptr @__olang_errpay_push()
  %t250 = ptrtoint ptr %t249 to i64
  %t253 = inttoptr i64 %t250 to ptr
  %t254 = call ptr @__olang_scope_alloc_a(ptr %t253, i64 16, i64 8)
  store { i64, [1 x i64] } %t248, ptr %t254
  call void @__olang_errpay_set(ptr %t254)
  %t257 = insertvalue { i32, i32 } zeroinitializer, i32 65539, 0
  store { i32, i32 } %t257, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  %t258 = load i64, ptr %l2, !tbaa !24
  %t260 = mul i64 %t258, 16
  store i64 %t260, ptr %l129, !tbaa !24
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t261)
  store i8 %t263, ptr %l131
  br label %bb86
bb86:
  %t264 = load i8, ptr %l131, !tbaa !22
  %t265 = call i64 @std_2fregex_2ehexValue(i8 %t264)
  store i64 %t265, ptr %l132
  br label %bb87
bb87:
  %t266 = load i64, ptr %l129, !tbaa !24
  %t267 = load i64, ptr %l132, !tbaa !24
  %t268 = add i64 %t266, %t267
  store i64 %t268, ptr %l2, !tbaa !24
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l134, !tbaa !29
  %t271 = load ptr, ptr %l134, !tbaa !29
  %t272 = getelementptr %"std/regex:parser", ptr %t271, i32 0, i32 2
  %t273 = load i64, ptr %t272, !tbaa !24
  %t275 = add i64 %t273, 1
  %t277 = load ptr, ptr %l134, !tbaa !29
  %t278 = getelementptr %"std/regex:parser", ptr %t277, i32 0, i32 2
  store i64 %t275, ptr %t278, !tbaa !24
  br label %bb88
bb88:
  %t279 = load i64, ptr %l8, !tbaa !24
  %t281 = add i64 %t279, 1
  store i64 %t281, ptr %l8, !tbaa !24
  br label %bb73
bb89:
  %t283 = load i64, ptr %l2, !tbaa !24
  %t285 = trunc i64 %t283 to i32
  %t287 = insertvalue { i32, i32 } zeroinitializer, i32 %t285, 1
  store { i32, i32 } %t287, ptr %rv
  br label %ret
bb90:
  br i1 true, label %bb91, label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb105
bb93:
  %t288 = load i8, ptr %l1, !tbaa !22
  %t290 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t288)
  store i1 %t290, ptr %l142
  br label %bb94
bb94:
  %t291 = load i1, ptr %l142, !tbaa !21
  br i1 %t291, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l143, !tbaa !21
  br label %bb98
bb96:
  %t292 = load i8, ptr %l1, !tbaa !22
  %t294 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t292)
  store i1 %t294, ptr %l145
  br label %bb97
bb97:
  %t295 = load i1, ptr %l145, !tbaa !21
  store i1 %t295, ptr %l143, !tbaa !21
  br label %bb98
bb98:
  %t296 = load i1, ptr %l143, !tbaa !21
  br i1 %t296, label %bb99, label %bb100
bb99:
  store i1 true, ptr %l146, !tbaa !21
  br label %bb101
bb100:
  %t297 = load i8, ptr %l1, !tbaa !22
  %t299 = icmp uge i8 %t297, -128
  store i1 %t299, ptr %l146, !tbaa !21
  br label %bb101
bb101:
  %t301 = load i1, ptr %l146, !tbaa !21
  br i1 %t301, label %bb102, label %bb103
bb102:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"std/regex:parser", ptr %t302, i32 0, i32 2
  %t305 = load i64, ptr %t304, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t306
  %t307 = getelementptr { i64, [1 x i64] }, ptr %t306, i32 0, i32 0
  store i64 3, ptr %t307
  %t309 = insertvalue { i64 } undef, i64 %t305, 0
  %t310 = getelementptr { i64, [1 x i64] }, ptr %t306, i32 0, i32 1
  store { i64 } %t309, ptr %t310
  %t311 = load { i64, [1 x i64] }, ptr %t306
  %t312 = call ptr @__olang_errpay_push()
  %t313 = ptrtoint ptr %t312 to i64
  %t316 = inttoptr i64 %t313 to ptr
  %t317 = call ptr @__olang_scope_alloc_a(ptr %t316, i64 16, i64 8)
  store { i64, [1 x i64] } %t311, ptr %t317
  call void @__olang_errpay_set(ptr %t317)
  %t320 = insertvalue { i32, i32 } zeroinitializer, i32 65539, 0
  store { i32, i32 } %t320, ptr %rv
  br label %ret
bb103:
  br label %bb104
bb104:
  %t321 = load i8, ptr %l1, !tbaa !22
  %t323 = zext i8 %t321 to i32
  %t325 = insertvalue { i32, i32 } zeroinitializer, i32 %t323, 1
  store { i32, i32 } %t325, ptr %rv
  br label %ret
bb105:
  call void @__olang_check_failed(ptr @olang_loc_514d10a167efc972_51a5085ca00b74c6)
  unreachable
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i32, i1 } @std_2fregex_2estd_2fregex_3aparser_2eflags(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i8
  %l9 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca i8
  %l25 = alloca ptr
  %l55 = alloca i1
  %l65 = alloca ptr
  %rv = alloca { i32, i1 }
  %t123 = alloca { i64, [1 x i64] }, align 8
  %t151 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = getelementptr %"std/regex:parser", ptr %t7, i32 0, i32 2
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = add i64 %t9, 2
  %t13 = load ptr, ptr %l9, !tbaa !29
  %t14 = getelementptr %"std/regex:parser", ptr %t13, i32 0, i32 2
  store i64 %t11, ptr %t14, !tbaa !24
  store i1 true, ptr %l2, !tbaa !21
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"std/regex:parser", ptr %t15, i32 0, i32 5
  %t18 = load i1, ptr %t17, !tbaa !21
  store i1 %t18, ptr %l3, !tbaa !21
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/regex:parser", ptr %t20, i32 0, i32 6
  %t23 = load i1, ptr %t22, !tbaa !21
  store i1 %t23, ptr %l4, !tbaa !21
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/regex:parser", ptr %t25, i32 0, i32 7
  %t28 = load i1, ptr %t27, !tbaa !21
  store i1 %t28, ptr %l5, !tbaa !21
  br label %bb1
bb1:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t30)
  store i1 %t32, ptr %l19
  br label %bb2
bb2:
  %t33 = load i1, ptr %l19, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb3, label %bb4
bb3:
  br label %bb32
bb4:
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t36)
  store i8 %t38, ptr %l22
  br label %bb6
bb6:
  %t39 = load i8, ptr %l22, !tbaa !22
  store i8 %t39, ptr %l6, !tbaa !22
  %t40 = load i8, ptr %l6, !tbaa !22
  %t42 = icmp eq i8 %t40, 41
  br i1 %t42, label %bb7, label %bb8
bb7:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l25, !tbaa !29
  %t45 = load ptr, ptr %l25, !tbaa !29
  %t46 = getelementptr %"std/regex:parser", ptr %t45, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = load ptr, ptr %l25, !tbaa !29
  %t52 = getelementptr %"std/regex:parser", ptr %t51, i32 0, i32 2
  store i64 %t49, ptr %t52, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i1, ptr %l3, !tbaa !21
  %t57 = getelementptr %"std/regex:parser", ptr %t53, i32 0, i32 5
  store i1 %t54, ptr %t57, !tbaa !21
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i1, ptr %l4, !tbaa !21
  %t62 = getelementptr %"std/regex:parser", ptr %t58, i32 0, i32 6
  store i1 %t59, ptr %t62, !tbaa !21
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i1, ptr %l5, !tbaa !21
  %t67 = getelementptr %"std/regex:parser", ptr %t63, i32 0, i32 7
  store i1 %t64, ptr %t67, !tbaa !21
  %t69 = insertvalue { i32, i1 } zeroinitializer, i1 true, 1
  store { i32, i1 } %t69, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t70 = load i8, ptr %l6, !tbaa !22
  %t72 = icmp eq i8 %t70, 58
  br i1 %t72, label %bb10, label %bb11
bb10:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i64, ptr %l1, !tbaa !24
  %t78 = getelementptr %"std/regex:parser", ptr %t74, i32 0, i32 2
  store i64 %t75, ptr %t78, !tbaa !24
  %t80 = insertvalue { i32, i1 } zeroinitializer, i1 false, 1
  store { i32, i1 } %t80, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t81 = load i8, ptr %l6, !tbaa !22
  %t83 = icmp eq i8 %t81, 45
  br i1 %t83, label %bb13, label %bb14
bb13:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb30
bb14:
  %t85 = load i8, ptr %l6, !tbaa !22
  %t87 = icmp eq i8 %t85, 105
  br i1 %t87, label %bb15, label %bb16
bb15:
  %t89 = load i1, ptr %l2, !tbaa !21
  store i1 %t89, ptr %l3, !tbaa !21
  br label %bb29
bb16:
  %t91 = load i8, ptr %l6, !tbaa !22
  %t93 = icmp eq i8 %t91, 109
  br i1 %t93, label %bb17, label %bb18
bb17:
  %t95 = load i1, ptr %l2, !tbaa !21
  store i1 %t95, ptr %l4, !tbaa !21
  br label %bb28
bb18:
  %t97 = load i8, ptr %l6, !tbaa !22
  %t99 = icmp eq i8 %t97, 115
  br i1 %t99, label %bb19, label %bb20
bb19:
  %t101 = load i1, ptr %l2, !tbaa !21
  store i1 %t101, ptr %l5, !tbaa !21
  br label %bb27
bb20:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i64, ptr %l1, !tbaa !24
  %t107 = getelementptr %"std/regex:parser", ptr %t103, i32 0, i32 2
  store i64 %t104, ptr %t107, !tbaa !24
  %t108 = load i8, ptr %l6, !tbaa !22
  %t110 = icmp eq i8 %t108, 80
  br i1 %t110, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb23
bb22:
  %t112 = load i8, ptr %l6, !tbaa !22
  %t114 = icmp eq i8 %t112, 60
  store i1 %t114, ptr %l55, !tbaa !21
  br label %bb23
bb23:
  %t116 = load i1, ptr %l55, !tbaa !21
  br i1 %t116, label %bb24, label %bb25
bb24:
  %t118 = insertvalue { i32, i1 } zeroinitializer, i1 false, 1
  store { i32, i1 } %t118, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"std/regex:parser", ptr %t119, i32 0, i32 2
  %t122 = load i64, ptr %t121, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [1 x i64] }, ptr %t123, i32 0, i32 0
  store i64 7, ptr %t124
  %t126 = insertvalue { i64 } undef, i64 %t122, 0
  %t127 = getelementptr { i64, [1 x i64] }, ptr %t123, i32 0, i32 1
  store { i64 } %t126, ptr %t127
  %t128 = load { i64, [1 x i64] }, ptr %t123
  %t129 = call ptr @__olang_errpay_push()
  %t130 = ptrtoint ptr %t129 to i64
  %t133 = inttoptr i64 %t130 to ptr
  %t134 = call ptr @__olang_scope_alloc_a(ptr %t133, i64 16, i64 8)
  store { i64, [1 x i64] } %t128, ptr %t134
  call void @__olang_errpay_set(ptr %t134)
  %t137 = insertvalue { i32, i1 } zeroinitializer, i32 65543, 0
  store { i32, i1 } %t137, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l65, !tbaa !29
  %t139 = load ptr, ptr %l65, !tbaa !29
  %t140 = getelementptr %"std/regex:parser", ptr %t139, i32 0, i32 2
  %t141 = load i64, ptr %t140, !tbaa !24
  %t143 = add i64 %t141, 1
  %t145 = load ptr, ptr %l65, !tbaa !29
  %t146 = getelementptr %"std/regex:parser", ptr %t145, i32 0, i32 2
  store i64 %t143, ptr %t146, !tbaa !24
  br label %bb31
bb31:
  br label %bb1
bb32:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"std/regex:parser", ptr %t147, i32 0, i32 2
  %t150 = load i64, ptr %t149, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [1 x i64] }, ptr %t151, i32 0, i32 0
  store i64 7, ptr %t152
  %t154 = insertvalue { i64 } undef, i64 %t150, 0
  %t155 = getelementptr { i64, [1 x i64] }, ptr %t151, i32 0, i32 1
  store { i64 } %t154, ptr %t155
  %t156 = load { i64, [1 x i64] }, ptr %t151
  %t157 = call ptr @__olang_errpay_push()
  %t158 = ptrtoint ptr %t157 to i64
  %t161 = inttoptr i64 %t158 to ptr
  %t162 = call ptr @__olang_scope_alloc_a(ptr %t161, i64 16, i64 8)
  store { i64, [1 x i64] } %t156, ptr %t162
  call void @__olang_errpay_set(ptr %t162)
  %t165 = insertvalue { i32, i1 } zeroinitializer, i32 65543, 0
  store { i32, i1 } %t165, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i1 }, ptr %rv
  ret { i32, i1 } %rr
}

define dso_local void @std_2fregex_2estd_2fregex_3aparser_2efoldRanges(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l15 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l29 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca i64
  %l39 = alloca i32
  %l43 = alloca i32
  %l49 = alloca i32
  %l63 = alloca i32
  %l69 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l9, !tbaa !29
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l10, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l9, !tbaa !29
  %t9 = call ptr @__olang_region_or(ptr %t8, ptr %v0)
  %t10 = ptrtoint ptr %t9 to i64
  store i64 %t10, ptr %l10, !tbaa !24
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/regex:parser", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"std/regex:prog", ptr %t14, i32 0, i32 5
  %t17 = load i64, ptr %l10
  %t18 = inttoptr i64 %t17 to ptr
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eLen_3cU32_3e(ptr %t18, ptr %t16)
  store i64 %t20, ptr %l15
  br label %bb3
bb3:
  %t21 = load i64, ptr %l15, !tbaa !24
  store i64 %t21, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = icmp slt i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb5, label %bb6
bb5:
  br label %bb35
bb6:
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/regex:parser", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  %t36 = ptrtoint ptr %v0 to i64
  store i64 %t36, ptr %l23, !tbaa !24
  %t37 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr %v0)
  %t41 = ptrtoint ptr %t40 to i64
  store i64 %t41, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"std/regex:parser", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"std/regex:prog", ptr %t45, i32 0, i32 5
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = load i64, ptr %l23
  %t50 = inttoptr i64 %t49 to ptr
  %t53 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eAt_3cU32_3e(ptr %t50, ptr %t47, i64 %t48)
  store i32 %t53, ptr %l29
  br label %bb10
bb10:
  %t54 = load i32, ptr %l29, !tbaa !64
  store i32 %t54, ptr %l4, !tbaa !64
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"std/regex:parser", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  store ptr %t58, ptr %l31, !tbaa !29
  %t59 = ptrtoint ptr %v0 to i64
  store i64 %t59, ptr %l32, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t60, label %bb11, label %bb12
bb11:
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = call ptr @__olang_region_or(ptr %t62, ptr %v0)
  %t64 = ptrtoint ptr %t63 to i64
  store i64 %t64, ptr %l32, !tbaa !24
  br label %bb12
bb12:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"std/regex:parser", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"std/regex:prog", ptr %t68, i32 0, i32 5
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = add i64 %t71, 1
  %t74 = load i64, ptr %l32
  %t75 = inttoptr i64 %t74 to ptr
  %t78 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eAt_3cU32_3e(ptr %t75, ptr %t70, i64 %t73)
  store i32 %t78, ptr %l39
  br label %bb13
bb13:
  %t79 = load i32, ptr %l39, !tbaa !64
  store i32 %t79, ptr %l5, !tbaa !64
  %t80 = load i32, ptr %l4, !tbaa !64
  %t81 = zext i8 97 to i32
  %t84 = icmp ugt i32 %t80, %t81
  br i1 %t84, label %bb14, label %bb15
bb14:
  %t86 = load i32, ptr %l4, !tbaa !64
  store i32 %t86, ptr %l43, !tbaa !64
  br label %bb16
bb15:
  %t88 = zext i8 97 to i32
  store i32 %t88, ptr %l43, !tbaa !64
  br label %bb16
bb16:
  %t90 = load i32, ptr %l43, !tbaa !64
  store i32 %t90, ptr %l6, !tbaa !64
  %t91 = load i32, ptr %l5, !tbaa !64
  %t92 = zext i8 122 to i32
  %t95 = icmp ult i32 %t91, %t92
  br i1 %t95, label %bb17, label %bb18
bb17:
  %t97 = load i32, ptr %l5, !tbaa !64
  store i32 %t97, ptr %l49, !tbaa !64
  br label %bb19
bb18:
  %t99 = zext i8 122 to i32
  store i32 %t99, ptr %l49, !tbaa !64
  br label %bb19
bb19:
  %t101 = load i32, ptr %l49, !tbaa !64
  store i32 %t101, ptr %l7, !tbaa !64
  %t102 = load i32, ptr %l6, !tbaa !64
  %t103 = load i32, ptr %l7, !tbaa !64
  %t106 = icmp ule i32 %t102, %t103
  br i1 %t106, label %bb20, label %bb21
bb20:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i32, ptr %l6, !tbaa !64
  %t111 = sub i32 %t109, 32
  %t112 = load i32, ptr %l7, !tbaa !64
  %t114 = sub i32 %t112, 32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t108, i32 %t111, i32 %t114)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t118 = load i32, ptr %l4, !tbaa !64
  %t119 = zext i8 65 to i32
  %t122 = icmp ugt i32 %t118, %t119
  br i1 %t122, label %bb24, label %bb25
bb24:
  %t124 = load i32, ptr %l4, !tbaa !64
  store i32 %t124, ptr %l63, !tbaa !64
  br label %bb26
bb25:
  %t126 = zext i8 65 to i32
  store i32 %t126, ptr %l63, !tbaa !64
  br label %bb26
bb26:
  %t128 = load i32, ptr %l63, !tbaa !64
  store i32 %t128, ptr %l6, !tbaa !64
  %t129 = load i32, ptr %l5, !tbaa !64
  %t130 = zext i8 90 to i32
  %t133 = icmp ult i32 %t129, %t130
  br i1 %t133, label %bb27, label %bb28
bb27:
  %t135 = load i32, ptr %l5, !tbaa !64
  store i32 %t135, ptr %l69, !tbaa !64
  br label %bb29
bb28:
  %t137 = zext i8 90 to i32
  store i32 %t137, ptr %l69, !tbaa !64
  br label %bb29
bb29:
  %t139 = load i32, ptr %l69, !tbaa !64
  store i32 %t139, ptr %l7, !tbaa !64
  %t140 = load i32, ptr %l6, !tbaa !64
  %t141 = load i32, ptr %l7, !tbaa !64
  %t144 = icmp ule i32 %t140, %t141
  br i1 %t144, label %bb30, label %bb31
bb30:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l6, !tbaa !64
  %t149 = add i32 %t147, 32
  %t150 = load i32, ptr %l7, !tbaa !64
  %t152 = add i32 %t150, 32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t146, i32 %t149, i32 %t152)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t156 = load i64, ptr %l3, !tbaa !24
  %t158 = add i64 %t156, 2
  store i64 %t158, ptr %l3, !tbaa !24
  br label %bb4
bb35:
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2egroup(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i8
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i1
  %l16 = alloca i8
  %l17 = alloca i64
  %l18 = alloca %"std/regex:node"
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i8
  %l31 = alloca ptr
  %l35 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i8
  %l40 = alloca i1
  %l42 = alloca i8
  %l45 = alloca i8
  %l47 = alloca ptr
  %l51 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i8
  %l63 = alloca ptr
  %l66 = alloca i64
  %l68 = alloca { i64, ptr }
  %l70 = alloca i64
  %l74 = alloca i64
  %l75 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i32
  %l84 = alloca i1
  %l92 = alloca { i64, ptr }
  %l94 = alloca i64
  %l98 = alloca i64
  %l99 = alloca i64
  %l104 = alloca ptr
  %l112 = alloca i1
  %l113 = alloca { i64, ptr }
  %l115 = alloca i1
  %l129 = alloca { i64, ptr }
  %l133 = alloca i1
  %l134 = alloca i1
  %l136 = alloca i1
  %l137 = alloca i1
  %l152 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l164 = alloca i1
  %l175 = alloca ptr
  %l179 = alloca ptr
  %l180 = alloca i64
  %l184 = alloca ptr
  %l185 = alloca i64
  %l191 = alloca i1
  %l200 = alloca i8
  %l201 = alloca ptr
  %l228 = alloca ptr
  %l232 = alloca ptr
  %l233 = alloca i64
  %l238 = alloca i64
  %l240 = alloca i64
  %l241 = alloca i32
  %l244 = alloca i1
  %l246 = alloca i1
  %l248 = alloca i8
  %l256 = alloca ptr
  %l266 = alloca %"std/regex:node"
  %l271 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  %t107 = alloca { i64, [1 x i64] }, align 8
  %t183 = alloca { i64, [1 x i64] }, align 8
  %t269 = alloca { i64, [1 x i64] }, align 8
  %t326 = alloca { i64, [1 x i64] }, align 8
  %t384 = alloca { i64, [1 x i64] }, align 8
  %t476 = alloca { i64, [1 x i64] }, align 8
  %t543 = alloca { i64, [1 x i64] }, align 8
  %t607 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 5
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l1, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/regex:parser", ptr %t6, i32 0, i32 6
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l2, !tbaa !21
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/regex:parser", ptr %t11, i32 0, i32 7
  %t14 = load i1, ptr %t13, !tbaa !21
  store i1 %t14, ptr %l3, !tbaa !21
  store i64 -1, ptr %l4, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t16)
  store i1 %t18, ptr %l26
  br label %bb1
bb1:
  %t19 = load i1, ptr %l26, !tbaa !21
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t20)
  store i8 %t22, ptr %l29
  br label %bb4
bb3:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb5
bb4:
  %t23 = load i8, ptr %l29, !tbaa !22
  %t24 = icmp eq i8 %t23, 63
  store i1 %t24, ptr %l27, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l27, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l31, !tbaa !29
  %t28 = load ptr, ptr %l31, !tbaa !29
  %t29 = getelementptr %"std/regex:parser", ptr %t28, i32 0, i32 2
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = add i64 %t30, 1
  %t34 = load ptr, ptr %l31, !tbaa !29
  %t35 = getelementptr %"std/regex:parser", ptr %t34, i32 0, i32 2
  store i64 %t32, ptr %t35, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t36)
  store i1 %t38, ptr %l35
  br label %bb8
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"std/regex:parser", ptr %t39, i32 0, i32 8
  %t42 = load i64, ptr %t41, !tbaa !24
  store i64 %t42, ptr %l4, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l228, !tbaa !29
  %t45 = load ptr, ptr %l228, !tbaa !29
  %t46 = getelementptr %"std/regex:parser", ptr %t45, i32 0, i32 8
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = load ptr, ptr %l228, !tbaa !29
  %t52 = getelementptr %"std/regex:parser", ptr %t51, i32 0, i32 8
  store i64 %t49, ptr %t52, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/regex:parser", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  store ptr %t56, ptr %l232, !tbaa !29
  %t57 = ptrtoint ptr %v0 to i64
  store i64 %t57, ptr %l233, !tbaa !24
  %t58 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t58, label %bb111, label %bb112
bb8:
  %t60 = load i1, ptr %l35, !tbaa !21
  br i1 %t60, label %bb9, label %bb10
bb9:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t61)
  store i8 %t63, ptr %l38
  br label %bb11
bb10:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb16
bb11:
  %t64 = load i8, ptr %l38, !tbaa !22
  %t65 = icmp eq i8 %t64, 80
  br i1 %t65, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb15
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t67)
  store i8 %t69, ptr %l42
  br label %bb14
bb14:
  %t70 = load i8, ptr %l42, !tbaa !22
  %t71 = icmp eq i8 %t70, 60
  store i1 %t71, ptr %l40, !tbaa !21
  br label %bb15
bb15:
  %t73 = load i1, ptr %l40, !tbaa !21
  store i1 %t73, ptr %l36, !tbaa !21
  br label %bb16
bb16:
  %t74 = load i1, ptr %l36, !tbaa !21
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t75)
  store i8 %t77, ptr %l45
  br label %bb19
bb18:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb87
bb19:
  %t78 = load i8, ptr %l45, !tbaa !22
  %t79 = icmp eq i8 %t78, 80
  br i1 %t79, label %bb20, label %bb21
bb20:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l47, !tbaa !29
  %t82 = load ptr, ptr %l47, !tbaa !29
  %t83 = getelementptr %"std/regex:parser", ptr %t82, i32 0, i32 2
  %t84 = load i64, ptr %t83, !tbaa !24
  %t86 = add i64 %t84, 1
  %t88 = load ptr, ptr %l47, !tbaa !29
  %t89 = getelementptr %"std/regex:parser", ptr %t88, i32 0, i32 2
  store i64 %t86, ptr %t89, !tbaa !24
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t90)
  store i1 %t92, ptr %l51
  br label %bb23
bb23:
  %t93 = load i1, ptr %l51, !tbaa !21
  %t94 = xor i1 %t93, true
  br i1 %t94, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb27
bb25:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t96)
  store i8 %t98, ptr %l55
  br label %bb26
bb26:
  %t99 = load i8, ptr %l55, !tbaa !22
  %t100 = icmp ne i8 %t99, 60
  store i1 %t100, ptr %l53, !tbaa !21
  br label %bb27
bb27:
  %t102 = load i1, ptr %l53, !tbaa !21
  br i1 %t102, label %bb28, label %bb29
bb28:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"std/regex:parser", ptr %t103, i32 0, i32 2
  %t106 = load i64, ptr %t105, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t107
  %t108 = getelementptr { i64, [1 x i64] }, ptr %t107, i32 0, i32 0
  store i64 6, ptr %t108
  %t110 = insertvalue { i64 } undef, i64 %t106, 0
  %t111 = getelementptr { i64, [1 x i64] }, ptr %t107, i32 0, i32 1
  store { i64 } %t110, ptr %t111
  %t112 = load { i64, [1 x i64] }, ptr %t107
  %t113 = call ptr @__olang_errpay_push()
  %t114 = ptrtoint ptr %t113 to i64
  %t117 = inttoptr i64 %t114 to ptr
  %t118 = call ptr @__olang_scope_alloc_a(ptr %t117, i64 16, i64 8)
  store { i64, [1 x i64] } %t112, ptr %t118
  call void @__olang_errpay_set(ptr %t118)
  call void @__olang_scope_close(ptr %s0)
  %t121 = insertvalue { i32, i64 } zeroinitializer, i32 65542, 0
  store { i32, i64 } %t121, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l63, !tbaa !29
  %t123 = load ptr, ptr %l63, !tbaa !29
  %t124 = getelementptr %"std/regex:parser", ptr %t123, i32 0, i32 2
  %t125 = load i64, ptr %t124, !tbaa !24
  %t127 = add i64 %t125, 1
  %t129 = load ptr, ptr %l63, !tbaa !29
  %t130 = getelementptr %"std/regex:parser", ptr %t129, i32 0, i32 2
  store i64 %t127, ptr %t130, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"std/regex:parser", ptr %t131, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  store { i64, ptr } %t134, ptr %l68, !tbaa !27
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"std/regex:parser", ptr %t135, i32 0, i32 2
  %t138 = load i64, ptr %t137, !tbaa !24
  store i64 %t138, ptr %l70, !tbaa !24
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"std/regex:parser", ptr %t139, i32 0, i32 0
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t142, 0
  store i64 %t145, ptr %l74, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  store i64 %t147, ptr %l75, !tbaa !24
  %t148 = load i64, ptr %l70, !tbaa !24
  %t149 = icmp sge i64 %t148, 0
  br i1 %t149, label %bb31, label %bb32
bb31:
  %t151 = load i64, ptr %l70, !tbaa !24
  %t152 = load i64, ptr %l74, !tbaa !24
  %t153 = icmp sle i64 %t151, %t152
  br i1 %t153, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_a538d4e6b0f915ab_96accfb9e2ff8a47)
  unreachable
bb33:
  %t155 = load i64, ptr %l74, !tbaa !24
  %t156 = load i64, ptr %l75, !tbaa !24
  %t157 = icmp sle i64 %t155, %t156
  br i1 %t157, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_a538d4e6b0f915ab_96accfb9e2ff8a47)
  unreachable
bb35:
  %t159 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = load i64, ptr %l70, !tbaa !24
  %t162 = load i64, ptr %l74, !tbaa !24
  %t163 = getelementptr i8, ptr %t160, i64 %t161
  %t164 = sub i64 %t162, %t161
  %t165 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t163, 1
  %t169 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t166, i8 62)
  %t170 = extractvalue { i32, i64 } %t169, 1
  %t171 = extractvalue { i32, i64 } %t169, 0
  store i32 %t171, ptr %l82
  %t172 = icmp ne i32 %t171, 0
  br i1 %t172, label %bb38, label %ok.173, !prof !99
ok.173:
  store i64 %t170, ptr %l81
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_a538d4e6b0f915ab_96accfb9e2ff8a47)
  unreachable
bb37:
  %t174 = load i64, ptr %l81, !tbaa !24
  store i64 %t174, ptr %l66, !tbaa !24
  br label %bb40
bb38:
  %t175 = load i32, ptr %l82, !tbaa !23
  %t176 = ashr i32 %t175, 16
  %t178 = icmp eq i32 %t176, 1
  store i1 %t178, ptr %l84, !tbaa !21
  br label %bb39
bb39:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"std/regex:parser", ptr %t179, i32 0, i32 2
  %t182 = load i64, ptr %t181, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [1 x i64] }, ptr %t183, i32 0, i32 0
  store i64 6, ptr %t184
  %t186 = insertvalue { i64 } undef, i64 %t182, 0
  %t187 = getelementptr { i64, [1 x i64] }, ptr %t183, i32 0, i32 1
  store { i64 } %t186, ptr %t187
  %t188 = load { i64, [1 x i64] }, ptr %t183
  %t189 = call ptr @__olang_errpay_push()
  %t190 = ptrtoint ptr %t189 to i64
  %t193 = inttoptr i64 %t190 to ptr
  %t194 = call ptr @__olang_scope_alloc_a(ptr %t193, i64 16, i64 8)
  store { i64, [1 x i64] } %t188, ptr %t194
  call void @__olang_errpay_set(ptr %t194)
  call void @__olang_scope_close(ptr %s0)
  %t197 = insertvalue { i32, i64 } zeroinitializer, i32 65542, 0
  store { i32, i64 } %t197, ptr %rv
  br label %ret
bb40:
  %t198 = load i64, ptr %l66, !tbaa !24
  store i64 %t198, ptr %l5, !tbaa !24
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"std/regex:parser", ptr %t199, i32 0, i32 0
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  store { i64, ptr } %t202, ptr %l92, !tbaa !27
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"std/regex:parser", ptr %t203, i32 0, i32 2
  %t206 = load i64, ptr %t205, !tbaa !24
  store i64 %t206, ptr %l94, !tbaa !24
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"std/regex:parser", ptr %t207, i32 0, i32 2
  %t210 = load i64, ptr %t209, !tbaa !24
  %t211 = load i64, ptr %l5, !tbaa !24
  %t214 = add i64 %t210, %t211
  store i64 %t214, ptr %l98, !tbaa !24
  %t215 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 0
  store i64 %t216, ptr %l99, !tbaa !24
  %t217 = load i64, ptr %l94, !tbaa !24
  %t218 = icmp sge i64 %t217, 0
  br i1 %t218, label %bb41, label %bb42
bb41:
  %t220 = load i64, ptr %l94, !tbaa !24
  %t221 = load i64, ptr %l98, !tbaa !24
  %t222 = icmp sle i64 %t220, %t221
  br i1 %t222, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_8b6e2a1a9abc2cae_dc881001cbcf466a)
  unreachable
bb43:
  %t224 = load i64, ptr %l98, !tbaa !24
  %t225 = load i64, ptr %l99, !tbaa !24
  %t226 = icmp sle i64 %t224, %t225
  br i1 %t226, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_8b6e2a1a9abc2cae_dc881001cbcf466a)
  unreachable
bb45:
  %t228 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = load i64, ptr %l94, !tbaa !24
  %t231 = load i64, ptr %l98, !tbaa !24
  %t232 = getelementptr i8, ptr %t229, i64 %t230
  %t233 = sub i64 %t231, %t230
  %t234 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t232, 1
  store { i64, ptr } %t235, ptr %l6, !tbaa !27
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l104, !tbaa !29
  %t238 = load ptr, ptr %l104, !tbaa !29
  %t239 = getelementptr %"std/regex:parser", ptr %t238, i32 0, i32 2
  %t240 = load i64, ptr %t239, !tbaa !24
  %t241 = load i64, ptr %l5, !tbaa !24
  %t243 = add i64 %t241, 1
  %t246 = add i64 %t240, %t243
  %t248 = load ptr, ptr %l104, !tbaa !29
  %t249 = getelementptr %"std/regex:parser", ptr %t248, i32 0, i32 2
  store i64 %t246, ptr %t249, !tbaa !24
  %t250 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t254 = icmp eq i64 %t252, 0
  br i1 %t254, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_8b6e2a1a9abc2cae_dc881001cbcf466a)
  unreachable
bb47:
  store i1 true, ptr %l112, !tbaa !21
  br label %bb50
bb48:
  %t256 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t256, ptr %l113, !tbaa !27
  %t257 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = getelementptr i8, ptr %t258, i64 0
  %t260 = load i8, ptr %t259, !tbaa !32
  %t262 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t260)
  store i1 %t262, ptr %l115
  br label %bb49
bb49:
  %t263 = load i1, ptr %l115, !tbaa !21
  store i1 %t263, ptr %l112, !tbaa !21
  br label %bb50
bb50:
  %t264 = load i1, ptr %l112, !tbaa !21
  br i1 %t264, label %bb51, label %bb52
bb51:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"std/regex:parser", ptr %t265, i32 0, i32 2
  %t268 = load i64, ptr %t267, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t269
  %t270 = getelementptr { i64, [1 x i64] }, ptr %t269, i32 0, i32 0
  store i64 6, ptr %t270
  %t272 = insertvalue { i64 } undef, i64 %t268, 0
  %t273 = getelementptr { i64, [1 x i64] }, ptr %t269, i32 0, i32 1
  store { i64 } %t272, ptr %t273
  %t274 = load { i64, [1 x i64] }, ptr %t269
  %t275 = call ptr @__olang_errpay_push()
  %t276 = ptrtoint ptr %t275 to i64
  %t279 = inttoptr i64 %t276 to ptr
  %t280 = call ptr @__olang_scope_alloc_a(ptr %t279, i64 16, i64 8)
  store { i64, [1 x i64] } %t274, ptr %t280
  call void @__olang_errpay_set(ptr %t280)
  call void @__olang_scope_close(ptr %s0)
  %t283 = insertvalue { i32, i64 } zeroinitializer, i32 65542, 0
  store { i32, i64 } %t283, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t284 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t284, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t286 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t288 = extractvalue { i64, ptr } %t286, 0
  store i64 %t288, ptr %l9, !tbaa !24
  br label %bb54
bb54:
  %t290 = load i64, ptr %l8, !tbaa !24
  %t291 = load i64, ptr %l9, !tbaa !24
  %t294 = icmp slt i64 %t290, %t291
  %t296 = xor i1 %t294, true
  br i1 %t296, label %bb55, label %bb56
bb55:
  br label %bb70
bb56:
  br label %bb57
bb57:
  %t298 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t298, ptr %l129, !tbaa !27
  %t299 = load i64, ptr %l8, !tbaa !24
  %t301 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr i8, ptr %t302, i64 %t299
  %t304 = load i8, ptr %t303, !tbaa !32
  store i8 %t304, ptr %l10, !tbaa !22
  %t306 = load i8, ptr %l10, !tbaa !22
  %t308 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t306)
  store i1 %t308, ptr %l133
  br label %bb58
bb58:
  %t309 = load i1, ptr %l133, !tbaa !21
  br i1 %t309, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb62
bb60:
  %t310 = load i8, ptr %l10, !tbaa !22
  %t312 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t310)
  store i1 %t312, ptr %l136
  br label %bb61
bb61:
  %t313 = load i1, ptr %l136, !tbaa !21
  store i1 %t313, ptr %l134, !tbaa !21
  br label %bb62
bb62:
  %t314 = load i1, ptr %l134, !tbaa !21
  br i1 %t314, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb65
bb64:
  %t315 = load i8, ptr %l10, !tbaa !22
  %t317 = icmp eq i8 %t315, 95
  store i1 %t317, ptr %l137, !tbaa !21
  br label %bb65
bb65:
  %t319 = load i1, ptr %l137, !tbaa !21
  %t320 = xor i1 %t319, true
  br i1 %t320, label %bb66, label %bb67
bb66:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"std/regex:parser", ptr %t322, i32 0, i32 2
  %t325 = load i64, ptr %t324, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t326
  %t327 = getelementptr { i64, [1 x i64] }, ptr %t326, i32 0, i32 0
  store i64 6, ptr %t327
  %t329 = insertvalue { i64 } undef, i64 %t325, 0
  %t330 = getelementptr { i64, [1 x i64] }, ptr %t326, i32 0, i32 1
  store { i64 } %t329, ptr %t330
  %t331 = load { i64, [1 x i64] }, ptr %t326
  %t332 = call ptr @__olang_errpay_push()
  %t333 = ptrtoint ptr %t332 to i64
  %t336 = inttoptr i64 %t333 to ptr
  %t337 = call ptr @__olang_scope_alloc_a(ptr %t336, i64 16, i64 8)
  store { i64, [1 x i64] } %t331, ptr %t337
  call void @__olang_errpay_set(ptr %t337)
  call void @__olang_scope_close(ptr %s0)
  %t340 = insertvalue { i32, i64 } zeroinitializer, i32 65542, 0
  store { i32, i64 } %t340, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t341 = load i64, ptr %l8, !tbaa !24
  %t343 = add i64 %t341, 1
  store i64 %t343, ptr %l8, !tbaa !24
  br label %bb54
bb70:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"std/regex:parser", ptr %t345, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t350 = getelementptr %"std/regex:prog", ptr %t348, i32 0, i32 6
  %t352 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H563b551a62b57e684177c5454e33a204(ptr %v0, ptr %v0, ptr %t350)
  store { i64, ptr } %t352, ptr %l152
  br label %bb71
bb71:
  %t353 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t353, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t354 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t356 = extractvalue { i64, ptr } %t354, 0
  store i64 %t356, ptr %l13, !tbaa !24
  br label %bb72
bb72:
  %t358 = load i64, ptr %l12, !tbaa !24
  %t359 = load i64, ptr %l13, !tbaa !24
  %t362 = icmp slt i64 %t358, %t359
  %t364 = xor i1 %t362, true
  br i1 %t364, label %bb73, label %bb74
bb73:
  br label %bb81
bb74:
  br label %bb75
bb75:
  %t366 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t366, ptr %l159, !tbaa !27
  %t367 = load i64, ptr %l12, !tbaa !24
  %t369 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr { i64, ptr }, ptr %t370, i64 %t367
  %t372 = load { i64, ptr }, ptr %t371, !tbaa !37
  %t375 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t378 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t372, { i64, ptr } %t375)
  store i1 %t378, ptr %l164
  br label %bb76
bb76:
  %t379 = load i1, ptr %l164, !tbaa !21
  br i1 %t379, label %bb77, label %bb78
bb77:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"std/regex:parser", ptr %t380, i32 0, i32 2
  %t383 = load i64, ptr %t382, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t384
  %t385 = getelementptr { i64, [1 x i64] }, ptr %t384, i32 0, i32 0
  store i64 6, ptr %t385
  %t387 = insertvalue { i64 } undef, i64 %t383, 0
  %t388 = getelementptr { i64, [1 x i64] }, ptr %t384, i32 0, i32 1
  store { i64 } %t387, ptr %t388
  %t389 = load { i64, [1 x i64] }, ptr %t384
  %t390 = call ptr @__olang_errpay_push()
  %t391 = ptrtoint ptr %t390 to i64
  %t394 = inttoptr i64 %t391 to ptr
  %t395 = call ptr @__olang_scope_alloc_a(ptr %t394, i64 16, i64 8)
  store { i64, [1 x i64] } %t389, ptr %t395
  call void @__olang_errpay_set(ptr %t395)
  call void @__olang_scope_close(ptr %s0)
  %t398 = insertvalue { i32, i64 } zeroinitializer, i32 65542, 0
  store { i32, i64 } %t398, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t399 = load i64, ptr %l12, !tbaa !24
  %t401 = add i64 %t399, 1
  store i64 %t401, ptr %l12, !tbaa !24
  br label %bb72
bb81:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"std/regex:parser", ptr %t403, i32 0, i32 8
  %t406 = load i64, ptr %t405, !tbaa !24
  store i64 %t406, ptr %l4, !tbaa !24
  %t408 = load ptr, ptr %l0, !tbaa !29
  store ptr %t408, ptr %l175, !tbaa !29
  %t409 = load ptr, ptr %l175, !tbaa !29
  %t410 = getelementptr %"std/regex:parser", ptr %t409, i32 0, i32 8
  %t411 = load i64, ptr %t410, !tbaa !24
  %t413 = add i64 %t411, 1
  %t415 = load ptr, ptr %l175, !tbaa !29
  %t416 = getelementptr %"std/regex:parser", ptr %t415, i32 0, i32 8
  store i64 %t413, ptr %t416, !tbaa !24
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"std/regex:parser", ptr %t417, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !29
  store ptr %t420, ptr %l179, !tbaa !29
  %t421 = ptrtoint ptr %v0 to i64
  store i64 %t421, ptr %l180, !tbaa !24
  %t422 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t422, label %bb82, label %bb83
bb82:
  %t424 = load ptr, ptr %l179, !tbaa !29
  %t425 = call ptr @__olang_region_or(ptr %t424, ptr %v0)
  %t426 = ptrtoint ptr %t425 to i64
  store i64 %t426, ptr %l180, !tbaa !24
  br label %bb83
bb83:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"std/regex:parser", ptr %t427, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !29
  %t432 = getelementptr %"std/regex:prog", ptr %t430, i32 0, i32 6
  store ptr %t432, ptr %l184, !tbaa !29
  %t433 = load i64, ptr %l180
  %t434 = inttoptr i64 %t433 to ptr
  %t435 = ptrtoint ptr %t434 to i64
  store i64 %t435, ptr %l185, !tbaa !24
  %t436 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t436, label %bb84, label %bb85
bb84:
  %t438 = load i64, ptr %l180
  %t439 = inttoptr i64 %t438 to ptr
  %t440 = call ptr @__olang_region_make(ptr %t439)
  %t441 = ptrtoint ptr %t440 to i64
  store i64 %t441, ptr %l185, !tbaa !24
  br label %bb85
bb85:
  %t442 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t444 = extractvalue { i64, ptr } %t442, 1
  %t445 = extractvalue { i64, ptr } %t442, 0
  %t446 = load i64, ptr %l185
  %t447 = inttoptr i64 %t446 to ptr
  %t448 = call ptr @__olang_scope_alloc(ptr %t447, i64 %t445)
  call void @olang_textcopy(ptr %t448, ptr %t444, i64 %t445)
  %t449 = insertvalue { i64, ptr } undef, i64 %t445, 0
  %t450 = insertvalue { i64, ptr } %t449, ptr %t448, 1
  %t452 = load i64, ptr %l185
  %t453 = inttoptr i64 %t452 to ptr
  %t454 = extractvalue { i64, ptr } %t450, 0
  %t455 = extractvalue { i64, ptr } %t450, 1
  %t456 = mul i64 %t454, 1
  %t457 = call ptr @__olang_scope_alloc(ptr %t453, i64 %t456)
  call void @llvm.memcpy.p0.p0.i64(ptr %t457, ptr %t455, i64 %t456, i1 false)
  %t458 = insertvalue { i64, ptr } undef, i64 %t454, 0
  %t459 = insertvalue { i64, ptr } %t458, ptr %t457, 1
  %t460 = load i64, ptr %l180
  %t461 = inttoptr i64 %t460 to ptr
  %t462 = load i64, ptr %l180
  %t463 = inttoptr i64 %t462 to ptr
  %t464 = load ptr, ptr %l184, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %t461, ptr %t463, ptr %t464, { i64, ptr } %t459)
  br label %bb86
bb86:
  br label %bb110
bb87:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t468 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t466)
  store i1 %t468, ptr %l191
  br label %bb88
bb88:
  %t469 = load i1, ptr %l191, !tbaa !21
  %t470 = xor i1 %t469, true
  br i1 %t470, label %bb89, label %bb90
bb89:
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t474 = getelementptr %"std/regex:parser", ptr %t472, i32 0, i32 2
  %t475 = load i64, ptr %t474, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t476
  %t477 = getelementptr { i64, [1 x i64] }, ptr %t476, i32 0, i32 0
  store i64 0, ptr %t477
  %t479 = insertvalue { i64 } undef, i64 %t475, 0
  %t480 = getelementptr { i64, [1 x i64] }, ptr %t476, i32 0, i32 1
  store { i64 } %t479, ptr %t480
  %t481 = load { i64, [1 x i64] }, ptr %t476
  %t482 = call ptr @__olang_errpay_push()
  %t483 = ptrtoint ptr %t482 to i64
  %t486 = inttoptr i64 %t483 to ptr
  %t487 = call ptr @__olang_scope_alloc_a(ptr %t486, i64 16, i64 8)
  store { i64, [1 x i64] } %t481, ptr %t487
  call void @__olang_errpay_set(ptr %t487)
  call void @__olang_scope_close(ptr %s0)
  %t490 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t490, ptr %rv
  br label %ret
bb90:
  br label %bb91
bb91:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t493 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t491)
  store i8 %t493, ptr %l200
  br label %bb92
bb92:
  %t494 = load i8, ptr %l200, !tbaa !22
  store i8 %t494, ptr %l16, !tbaa !22
  %t495 = load ptr, ptr %l0, !tbaa !29
  store ptr %t495, ptr %l201, !tbaa !29
  %t496 = load ptr, ptr %l201, !tbaa !29
  %t497 = getelementptr %"std/regex:parser", ptr %t496, i32 0, i32 2
  %t498 = load i64, ptr %t497, !tbaa !24
  %t500 = add i64 %t498, 1
  %t502 = load ptr, ptr %l201, !tbaa !29
  %t503 = getelementptr %"std/regex:parser", ptr %t502, i32 0, i32 2
  store i64 %t500, ptr %t503, !tbaa !24
  %t504 = load i8, ptr %l16, !tbaa !22
  %t506 = icmp eq i8 %t504, 58
  br i1 %t506, label %bb93, label %bb94
bb93:
  br label %bb109
bb94:
  br label %bb95
bb95:
  %t508 = load i8, ptr %l16, !tbaa !22
  %t510 = icmp eq i8 %t508, 45
  br i1 %t510, label %bb96, label %bb97
bb96:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb107
bb97:
  %t512 = load i8, ptr %l16, !tbaa !22
  %t514 = icmp eq i8 %t512, 105
  br i1 %t514, label %bb98, label %bb99
bb98:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load i1, ptr %l15, !tbaa !21
  %t520 = getelementptr %"std/regex:parser", ptr %t516, i32 0, i32 5
  store i1 %t517, ptr %t520, !tbaa !21
  br label %bb106
bb99:
  %t521 = load i8, ptr %l16, !tbaa !22
  %t523 = icmp eq i8 %t521, 109
  br i1 %t523, label %bb100, label %bb101
bb100:
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t526 = load i1, ptr %l15, !tbaa !21
  %t529 = getelementptr %"std/regex:parser", ptr %t525, i32 0, i32 6
  store i1 %t526, ptr %t529, !tbaa !21
  br label %bb105
bb101:
  %t530 = load i8, ptr %l16, !tbaa !22
  %t532 = icmp eq i8 %t530, 115
  br i1 %t532, label %bb102, label %bb103
bb102:
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t535 = load i1, ptr %l15, !tbaa !21
  %t538 = getelementptr %"std/regex:parser", ptr %t534, i32 0, i32 7
  store i1 %t535, ptr %t538, !tbaa !21
  br label %bb104
bb103:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t541 = getelementptr %"std/regex:parser", ptr %t539, i32 0, i32 2
  %t542 = load i64, ptr %t541, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t543
  %t544 = getelementptr { i64, [1 x i64] }, ptr %t543, i32 0, i32 0
  store i64 7, ptr %t544
  %t546 = insertvalue { i64 } undef, i64 %t542, 0
  %t547 = getelementptr { i64, [1 x i64] }, ptr %t543, i32 0, i32 1
  store { i64 } %t546, ptr %t547
  %t548 = load { i64, [1 x i64] }, ptr %t543
  %t549 = call ptr @__olang_errpay_push()
  %t550 = ptrtoint ptr %t549 to i64
  %t553 = inttoptr i64 %t550 to ptr
  %t554 = call ptr @__olang_scope_alloc_a(ptr %t553, i64 16, i64 8)
  store { i64, [1 x i64] } %t548, ptr %t554
  call void @__olang_errpay_set(ptr %t554)
  call void @__olang_scope_close(ptr %s0)
  %t557 = insertvalue { i32, i64 } zeroinitializer, i32 65543, 0
  store { i32, i64 } %t557, ptr %rv
  br label %ret
bb104:
  br label %bb105
bb105:
  br label %bb106
bb106:
  br label %bb107
bb107:
  br label %bb108
bb108:
  br label %bb87
bb109:
  br label %bb110
bb110:
  br label %bb114
bb111:
  %t558 = load ptr, ptr %l232, !tbaa !29
  %t559 = call ptr @__olang_region_or(ptr %t558, ptr %v0)
  %t560 = ptrtoint ptr %t559 to i64
  store i64 %t560, ptr %l233, !tbaa !24
  br label %bb112
bb112:
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t563 = getelementptr %"std/regex:parser", ptr %t561, i32 0, i32 1
  %t564 = load ptr, ptr %t563, !tbaa !29
  %t566 = getelementptr %"std/regex:prog", ptr %t564, i32 0, i32 6
  %t567 = load i64, ptr %l233
  %t568 = inttoptr i64 %t567 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %t568, ptr %v0, ptr %t566, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb113
bb113:
  br label %bb114
bb114:
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = call { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2ealternation(ptr %v0, ptr %t570)
  %t573 = extractvalue { i32, i64 } %t572, 1
  %t574 = extractvalue { i32, i64 } %t572, 0
  store i32 %t574, ptr %l241
  %t575 = icmp ne i32 %t574, 0
  br i1 %t575, label %bb116, label %ok.576, !prof !99
ok.576:
  store i64 %t573, ptr %l240
  br label %bb115
bb115:
  %t577 = load i64, ptr %l240, !tbaa !24
  store i64 %t577, ptr %l238, !tbaa !24
  br label %bb117
bb116:
  %t578 = load i32, ptr %l241, !tbaa !23
  %t579 = lshr i32 %t578, 16
  %t580 = and i32 %t578, 65535
  %t581 = icmp eq i32 %t579, 1
  %t582 = select i1 %t581, i32 1, i32 0
  %t583 = icmp eq i32 %t578, 0
  %t584 = shl i32 %t582, 16
  %t585 = or i32 %t584, %t580
  %t586 = select i1 %t583, i32 0, i32 %t585
  call void @__olang_scope_close(ptr %s0)
  %t588 = insertvalue { i32, i64 } zeroinitializer, i32 %t586, 0
  store { i32, i64 } %t588, ptr %rv
  br label %ret
bb117:
  %t589 = load i64, ptr %l238, !tbaa !24
  store i64 %t589, ptr %l17, !tbaa !24
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t592 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t590)
  store i1 %t592, ptr %l244
  br label %bb118
bb118:
  %t593 = load i1, ptr %l244, !tbaa !21
  %t594 = xor i1 %t593, true
  br i1 %t594, label %bb119, label %bb120
bb119:
  store i1 true, ptr %l246, !tbaa !21
  br label %bb122
bb120:
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t598 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t596)
  store i8 %t598, ptr %l248
  br label %bb121
bb121:
  %t599 = load i8, ptr %l248, !tbaa !22
  %t600 = icmp ne i8 %t599, 41
  store i1 %t600, ptr %l246, !tbaa !21
  br label %bb122
bb122:
  %t602 = load i1, ptr %l246, !tbaa !21
  br i1 %t602, label %bb123, label %bb124
bb123:
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t605 = getelementptr %"std/regex:parser", ptr %t603, i32 0, i32 2
  %t606 = load i64, ptr %t605, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t607
  %t608 = getelementptr { i64, [1 x i64] }, ptr %t607, i32 0, i32 0
  store i64 0, ptr %t608
  %t610 = insertvalue { i64 } undef, i64 %t606, 0
  %t611 = getelementptr { i64, [1 x i64] }, ptr %t607, i32 0, i32 1
  store { i64 } %t610, ptr %t611
  %t612 = load { i64, [1 x i64] }, ptr %t607
  %t613 = call ptr @__olang_errpay_push()
  %t614 = ptrtoint ptr %t613 to i64
  %t617 = inttoptr i64 %t614 to ptr
  %t618 = call ptr @__olang_scope_alloc_a(ptr %t617, i64 16, i64 8)
  store { i64, [1 x i64] } %t612, ptr %t618
  call void @__olang_errpay_set(ptr %t618)
  call void @__olang_scope_close(ptr %s0)
  %t621 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t621, ptr %rv
  br label %ret
bb124:
  br label %bb125
bb125:
  %t622 = load ptr, ptr %l0, !tbaa !29
  store ptr %t622, ptr %l256, !tbaa !29
  %t623 = load ptr, ptr %l256, !tbaa !29
  %t624 = getelementptr %"std/regex:parser", ptr %t623, i32 0, i32 2
  %t625 = load i64, ptr %t624, !tbaa !24
  %t627 = add i64 %t625, 1
  %t629 = load ptr, ptr %l256, !tbaa !29
  %t630 = getelementptr %"std/regex:parser", ptr %t629, i32 0, i32 2
  store i64 %t627, ptr %t630, !tbaa !24
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t632 = load i1, ptr %l1, !tbaa !21
  %t635 = getelementptr %"std/regex:parser", ptr %t631, i32 0, i32 5
  store i1 %t632, ptr %t635, !tbaa !21
  %t636 = load ptr, ptr %l0, !tbaa !29
  %t637 = load i1, ptr %l2, !tbaa !21
  %t640 = getelementptr %"std/regex:parser", ptr %t636, i32 0, i32 6
  store i1 %t637, ptr %t640, !tbaa !21
  %t641 = load ptr, ptr %l0, !tbaa !29
  %t642 = load i1, ptr %l3, !tbaa !21
  %t645 = getelementptr %"std/regex:parser", ptr %t641, i32 0, i32 7
  store i1 %t642, ptr %t645, !tbaa !21
  %t646 = load i64, ptr @G_2estd_2fregex_2enGroup, !tbaa !24
  %t648 = call %"std/regex:node" @std_2fregex_3anode_2ector(ptr %s0, i64 %t646)
  store %"std/regex:node" %t648, ptr %l266
  br label %bb126
bb126:
  %t649 = load %"std/regex:node", ptr %l266
  store %"std/regex:node" %t649, ptr %l18
  %t650 = load i64, ptr %l17, !tbaa !24
  %t652 = getelementptr %"std/regex:node", ptr %l18, i32 0, i32 1
  store i64 %t650, ptr %t652, !tbaa !24
  %t653 = load i64, ptr %l4, !tbaa !24
  %t655 = getelementptr %"std/regex:node", ptr %l18, i32 0, i32 2
  store i64 %t653, ptr %t655, !tbaa !24
  %t656 = load ptr, ptr %l0, !tbaa !29
  %t657 = load %"std/regex:node", ptr %l18
  %t660 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %t656, %"std/regex:node" %t657)
  store i64 %t660, ptr %l271
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s0)
  %t661 = load i64, ptr %l271, !tbaa !24
  %t662 = insertvalue { i32, i64 } zeroinitializer, i64 %t661, 1
  store { i32, i64 } %t662, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3aparser_2eliteral(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/regex:node"
  %l4 = alloca %"std/regex:node"
  %l9 = alloca i1
  %l13 = alloca i1
  %l17 = alloca i1
  %l21 = alloca i1
  %l27 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr @G_2estd_2fregex_2enLit, !tbaa !24
  %t3 = call %"std/regex:node" @std_2fregex_3anode_2ector(ptr %s0, i64 %t1)
  store %"std/regex:node" %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load %"std/regex:node", ptr %l4
  store %"std/regex:node" %t4, ptr %l2
  %t5 = load i32, ptr %l1, !tbaa !64
  %t7 = zext i32 %t5 to i64
  %t9 = getelementptr %"std/regex:node", ptr %l2, i32 0, i32 1
  store i64 %t7, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/regex:parser", ptr %t10, i32 0, i32 5
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i32, ptr %l1, !tbaa !64
  %t16 = zext i8 97 to i32
  %t19 = icmp uge i32 %t15, %t16
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb13
bb4:
  %t21 = load i32, ptr %l1, !tbaa !64
  %t22 = zext i8 122 to i32
  %t25 = icmp ule i32 %t21, %t22
  store i1 %t25, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l13, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb12
bb8:
  %t28 = load i32, ptr %l1, !tbaa !64
  %t29 = zext i8 65 to i32
  %t32 = icmp uge i32 %t28, %t29
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load i32, ptr %l1, !tbaa !64
  %t35 = zext i8 90 to i32
  %t38 = icmp ule i32 %t34, %t35
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l21, !tbaa !21
  store i1 %t40, ptr %l17, !tbaa !21
  br label %bb12
bb12:
  %t41 = load i1, ptr %l17, !tbaa !21
  store i1 %t41, ptr %l9, !tbaa !21
  br label %bb13
bb13:
  %t42 = load i1, ptr %l9, !tbaa !21
  %t43 = getelementptr %"std/regex:node", ptr %l2, i32 0, i32 5
  store i1 %t42, ptr %t43, !tbaa !21
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load %"std/regex:node", ptr %l2
  %t48 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %t44, %"std/regex:node" %t45)
  store i64 %t48, ptr %l27
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t49 = load i64, ptr %l27, !tbaa !24
  store i64 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/regex:parser", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp slt i64 %t4, %t10
  store i1 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fregex_2estd_2fregex_3aparser_2enegatedPerl(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l16 = alloca i8
  %l17 = alloca i1
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l28 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l39 = alloca i32
  %l42 = alloca ptr
  %l43 = alloca i32
  %l45 = alloca ptr
  %l46 = alloca i64
  %l52 = alloca i32
  %l54 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca i64
  %l64 = alloca i32
  %l70 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca i64
  %l80 = alloca ptr
  %l81 = alloca i64
  %l85 = alloca ptr
  %l87 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t9 = call ptr @__olang_region_or(ptr %t8, ptr %v0)
  %t10 = ptrtoint ptr %t9 to i64
  store i64 %t10, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/regex:parser", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"std/regex:prog", ptr %t14, i32 0, i32 5
  %t17 = load i64, ptr %l8
  %t18 = inttoptr i64 %t17 to ptr
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eLen_3cU32_3e(ptr %t18, ptr %t16)
  store i64 %t20, ptr %l13
  br label %bb3
bb3:
  %t21 = load i64, ptr %l13, !tbaa !24
  store i64 %t21, ptr %l2, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  %t25 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %a1)
  store i8 %t25, ptr %l16
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t27 = load i8, ptr %l16, !tbaa !22
  %t28 = call i1 @std_2fregex_2estd_2fregex_3aparser_2eperlClass(ptr %v0, ptr %t26, i8 %t27)
  store i1 %t28, ptr %l17
  br label %bb5
bb5:
  store i32 0, ptr %l3, !tbaa !64
  %t29 = load i64, ptr %l2, !tbaa !24
  store i64 %t29, ptr %l4, !tbaa !24
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU32_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l19
  br label %bb6
bb6:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l5
  br label %bb7
bb7:
  %t33 = load i64, ptr %l4, !tbaa !24
  store i64 %t33, ptr %l20, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"std/regex:parser", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l22, !tbaa !29
  %t38 = ptrtoint ptr %v0 to i64
  store i64 %t38, ptr %l23, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr %v0)
  %t43 = ptrtoint ptr %t42 to i64
  store i64 %t43, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"std/regex:parser", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"std/regex:prog", ptr %t47, i32 0, i32 5
  %t50 = load i64, ptr %l23
  %t51 = inttoptr i64 %t50 to ptr
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eLen_3cU32_3e(ptr %t51, ptr %t49)
  store i64 %t53, ptr %l28
  br label %bb10
bb10:
  %t54 = load i64, ptr %l20, !tbaa !24
  %t55 = load i64, ptr %l28, !tbaa !24
  %t56 = icmp slt i64 %t54, %t55
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb11, label %bb12
bb11:
  br label %bb28
bb12:
  br label %bb13
bb13:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/regex:parser", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l32, !tbaa !29
  %t64 = ptrtoint ptr %v0 to i64
  store i64 %t64, ptr %l33, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load ptr, ptr %l32, !tbaa !29
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr %v0)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l33, !tbaa !24
  br label %bb15
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"std/regex:parser", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"std/regex:prog", ptr %t73, i32 0, i32 5
  %t76 = load i64, ptr %l4, !tbaa !24
  %t77 = load i64, ptr %l33
  %t78 = inttoptr i64 %t77 to ptr
  %t81 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eAt_3cU32_3e(ptr %t78, ptr %t75, i64 %t76)
  store i32 %t81, ptr %l39
  br label %bb16
bb16:
  %t82 = load i32, ptr %l3, !tbaa !64
  %t83 = load i32, ptr %l39, !tbaa !64
  %t85 = icmp ugt i32 %t83, %t82
  br i1 %t85, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  store ptr %l5, ptr %l42, !tbaa !29
  %t87 = load i32, ptr %l3, !tbaa !64
  store i32 %t87, ptr %l43, !tbaa !64
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"std/regex:parser", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  store ptr %t91, ptr %l45, !tbaa !29
  %t92 = ptrtoint ptr %v0 to i64
  store i64 %t92, ptr %l46, !tbaa !24
  %t93 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t93, label %bb19, label %bb20
bb18:
  br label %bb23
bb19:
  %t95 = load ptr, ptr %l45, !tbaa !29
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr %v0)
  %t97 = ptrtoint ptr %t96 to i64
  store i64 %t97, ptr %l46, !tbaa !24
  br label %bb20
bb20:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"std/regex:parser", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"std/regex:prog", ptr %t101, i32 0, i32 5
  %t104 = load i64, ptr %l4, !tbaa !24
  %t105 = load i64, ptr %l46
  %t106 = inttoptr i64 %t105 to ptr
  %t109 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eAt_3cU32_3e(ptr %t106, ptr %t103, i64 %t104)
  store i32 %t109, ptr %l52
  br label %bb21
bb21:
  %t110 = load i32, ptr %l52, !tbaa !64
  %t111 = sub i32 %t110, 1
  %t112 = mul i64 2, 4
  %t113 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 2, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  store { i64, ptr } %t115, ptr %l54, !tbaa !27
  %t116 = load i32, ptr %l43, !tbaa !64
  %t117 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr i32, ptr %t118, i64 0
  store i32 %t116, ptr %t119, !tbaa !84
  %t121 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i32, ptr %t122, i64 1
  store i32 %t111, ptr %t123, !tbaa !84
  %t124 = load ptr, ptr %l42, !tbaa !29
  %t125 = load { i64, ptr }, ptr %l54, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2ePushAll_3cU32_3e(ptr %s0, ptr %s2, ptr %t124, { i64, ptr } %t125)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb23:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"std/regex:parser", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  store ptr %t129, ptr %l56, !tbaa !29
  %t130 = ptrtoint ptr %v0 to i64
  store i64 %t130, ptr %l57, !tbaa !24
  %t131 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t131, label %bb24, label %bb25
bb24:
  %t133 = load ptr, ptr %l56, !tbaa !29
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr %v0)
  %t135 = ptrtoint ptr %t134 to i64
  store i64 %t135, ptr %l57, !tbaa !24
  br label %bb25
bb25:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"std/regex:parser", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"std/regex:prog", ptr %t139, i32 0, i32 5
  %t142 = load i64, ptr %l4, !tbaa !24
  %t144 = add i64 %t142, 1
  %t145 = load i64, ptr %l57
  %t146 = inttoptr i64 %t145 to ptr
  %t149 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eAt_3cU32_3e(ptr %t146, ptr %t141, i64 %t144)
  store i32 %t149, ptr %l64
  br label %bb26
bb26:
  %t150 = load i32, ptr %l64, !tbaa !64
  %t151 = add i32 %t150, 1
  store i32 %t151, ptr %l3, !tbaa !64
  %t153 = load i64, ptr %l4, !tbaa !24
  %t155 = add i64 %t153, 2
  store i64 %t155, ptr %l4, !tbaa !24
  br label %bb27
bb27:
  br label %bb7
bb28:
  %t157 = load i32, ptr %l3, !tbaa !64
  %t158 = mul i64 2, 4
  %t159 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t158)
  %t160 = insertvalue { i64, ptr } undef, i64 2, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  store { i64, ptr } %t161, ptr %l70, !tbaa !27
  %t163 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i32, ptr %t164, i64 0
  store i32 %t157, ptr %t165, !tbaa !84
  %t166 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 1
  store i32 1114111, ptr %t168, !tbaa !84
  %t170 = load { i64, ptr }, ptr %l70, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2ePushAll_3cU32_3e(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } %t170)
  br label %bb29
bb29:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"std/regex:parser", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  store ptr %t174, ptr %l72, !tbaa !29
  %t175 = ptrtoint ptr %v0 to i64
  store i64 %t175, ptr %l73, !tbaa !24
  %t176 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t176, label %bb30, label %bb31
bb30:
  %t178 = load ptr, ptr %l72, !tbaa !29
  %t179 = call ptr @__olang_region_or(ptr %t178, ptr %v0)
  %t180 = ptrtoint ptr %t179 to i64
  store i64 %t180, ptr %l73, !tbaa !24
  br label %bb31
bb31:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"std/regex:parser", ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = getelementptr %"std/regex:prog", ptr %t184, i32 0, i32 5
  %t187 = load i64, ptr %l2, !tbaa !24
  %t188 = load i64, ptr %l73
  %t189 = inttoptr i64 %t188 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eTruncate_3cU32_3e(ptr %t189, ptr %t186, i64 %t187)
  br label %bb32
bb32:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"std/regex:parser", ptr %t192, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !29
  store ptr %t195, ptr %l80, !tbaa !29
  %t196 = ptrtoint ptr %v0 to i64
  store i64 %t196, ptr %l81, !tbaa !24
  %t197 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t197, label %bb33, label %bb34
bb33:
  %t199 = load ptr, ptr %l80, !tbaa !29
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr %v0)
  %t201 = ptrtoint ptr %t200 to i64
  store i64 %t201, ptr %l81, !tbaa !24
  br label %bb34
bb34:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"std/regex:parser", ptr %t202, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"std/regex:prog", ptr %t205, i32 0, i32 5
  store ptr %t207, ptr %l85, !tbaa !29
  %t209 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eView_3cU32_3e(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t209, ptr %l87
  br label %bb35
bb35:
  %t210 = load i64, ptr %l81
  %t211 = inttoptr i64 %t210 to ptr
  %t212 = load ptr, ptr %l85, !tbaa !29
  %t213 = load { i64, ptr }, ptr %l87, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2ePushAll_3cU32_3e(ptr %t211, ptr %s0, ptr %t212, { i64, ptr } %t213)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fregex_2estd_2fregex_3aparser_2eparent(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/regex:node"
  %l5 = alloca %"std/regex:node"
  %l8 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l17 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"std/regex:node" @std_2fregex_3anode_2ector(ptr %s0, i64 %a1)
  store %"std/regex:node" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"std/regex:node", ptr %l5
  store %"std/regex:node" %t4, ptr %l3
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/regex:parser", ptr %t5, i32 0, i32 4
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 1
  store i64 %t10, ptr %t11, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t12)
  store i64 %t14, ptr %l10
  br label %bb3
bb3:
  %t15 = load i64, ptr %l10, !tbaa !24
  %t16 = getelementptr %"std/regex:node", ptr %l3, i32 0, i32 2
  store i64 %t15, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/regex:parser", ptr %t17, i32 0, i32 4
  store ptr %t19, ptr %l12, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v1, ptr %v1, ptr %t20)
  store { i64, ptr } %t22, ptr %l14
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePushAll_3cI64_3e(ptr %v0, ptr %v1, ptr %t23, { i64, ptr } %t24)
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load %"std/regex:node", ptr %l3
  %t29 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %t25, %"std/regex:node" %t26)
  store i64 %t29, ptr %l17
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t30 = load i64, ptr %l17, !tbaa !24
  store i64 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %rv = alloca i8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/regex:parser", ptr %t5, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr i8, ptr %t11, i64 %t8
  %t13 = load i8, ptr %t12, !tbaa !32
  store i8 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local i1 @std_2fregex_2estd_2fregex_3aparser_2eperlClass(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l1, !tbaa !22
  %t3 = icmp eq i8 %t1, 100
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = zext i8 48 to i32
  %t7 = zext i8 57 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t5, i32 %t6, i32 %t7)
  br label %bb4
bb4:
  br label %bb25
bb5:
  %t11 = load i8, ptr %l1, !tbaa !22
  %t13 = icmp eq i8 %t11, 119
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = zext i8 48 to i32
  %t17 = zext i8 57 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t15, i32 %t16, i32 %t17)
  br label %bb9
bb9:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = zext i8 65 to i32
  %t23 = zext i8 90 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t21, i32 %t22, i32 %t23)
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = zext i8 95 to i32
  %t29 = zext i8 95 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t27, i32 %t28, i32 %t29)
  br label %bb11
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = zext i8 97 to i32
  %t35 = zext i8 122 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t33, i32 %t34, i32 %t35)
  br label %bb12
bb12:
  br label %bb25
bb13:
  %t39 = load i8, ptr %l1, !tbaa !22
  %t41 = icmp eq i8 %t39, 115
  br i1 %t41, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = zext i8 9 to i32
  %t45 = zext i8 10 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t43, i32 %t44, i32 %t45)
  br label %bb17
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = zext i8 13 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t49, i32 11, i32 %t50)
  br label %bb18
bb18:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = zext i8 32 to i32
  %t55 = zext i8 32 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t53, i32 %t54, i32 %t55)
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
  store i1 false, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_1a77a20372c02910_eb5bc8fae9074f0c)
  unreachable
bb25:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @std_2fregex_2estd_2fregex_3aparser_2eposixClass(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l20 = alloca i1
  %l28 = alloca { i64, ptr }
  %l30 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l40 = alloca ptr
  %l46 = alloca i1
  %l57 = alloca i1
  %l65 = alloca i1
  %l68 = alloca i1
  %l76 = alloca i1
  %l80 = alloca i1
  %l85 = alloca i1
  %l90 = alloca i1
  %l95 = alloca i1
  %l100 = alloca i1
  %l114 = alloca i1
  %l122 = alloca i1
  %l127 = alloca i1
  %l129 = alloca i1
  %l131 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t52 = alloca { i64, [1 x i64] }, align 8
  %t313 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/regex:parser", ptr %t5, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l7, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/regex:parser", ptr %t9, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t12, 0
  store i64 %t15, ptr %l11, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l12, !tbaa !24
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp sge i64 %t18, 0
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load i64, ptr %l7, !tbaa !24
  %t22 = load i64, ptr %l11, !tbaa !24
  %t23 = icmp sle i64 %t21, %t22
  br i1 %t23, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_2a6ed654bb5586d7_a70cae4876dec023)
  unreachable
bb3:
  %t25 = load i64, ptr %l11, !tbaa !24
  %t26 = load i64, ptr %l12, !tbaa !24
  %t27 = icmp sle i64 %t25, %t26
  br i1 %t27, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_2a6ed654bb5586d7_a70cae4876dec023)
  unreachable
bb5:
  %t29 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l11, !tbaa !24
  %t33 = getelementptr i8, ptr %t30, i64 %t31
  %t34 = sub i64 %t32, %t31
  %t35 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t33, 1
  %t38 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) })
  %t39 = extractvalue { i32, i64 } %t38, 1
  %t40 = extractvalue { i32, i64 } %t38, 0
  store i32 %t40, ptr %l18
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb8, label %ok.42, !prof !99
ok.42:
  store i64 %t39, ptr %l17
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_2a6ed654bb5586d7_a70cae4876dec023)
  unreachable
bb7:
  %t43 = load i64, ptr %l17, !tbaa !24
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb10
bb8:
  %t44 = load i32, ptr %l18, !tbaa !23
  %t45 = ashr i32 %t44, 16
  %t47 = icmp eq i32 %t45, 1
  store i1 %t47, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/regex:parser", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t52
  %t53 = getelementptr { i64, [1 x i64] }, ptr %t52, i32 0, i32 0
  store i64 2, ptr %t53
  %t55 = insertvalue { i64 } undef, i64 %t51, 0
  %t56 = getelementptr { i64, [1 x i64] }, ptr %t52, i32 0, i32 1
  store { i64 } %t55, ptr %t56
  %t57 = load { i64, [1 x i64] }, ptr %t52
  %t58 = call ptr @__olang_errpay_push()
  %t59 = ptrtoint ptr %t58 to i64
  %t62 = inttoptr i64 %t59 to ptr
  %t63 = call ptr @__olang_scope_alloc_a(ptr %t62, i64 16, i64 8)
  store { i64, [1 x i64] } %t57, ptr %t63
  call void @__olang_errpay_set(ptr %t63)
  call void @__olang_scope_close(ptr %s0)
  store i32 65538, ptr %rv
  br label %ret
bb10:
  %t66 = load i64, ptr %l3, !tbaa !24
  store i64 %t66, ptr %l1, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"std/regex:parser", ptr %t67, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l28, !tbaa !27
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"std/regex:parser", ptr %t71, i32 0, i32 2
  %t74 = load i64, ptr %t73, !tbaa !24
  store i64 %t74, ptr %l30, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"std/regex:parser", ptr %t75, i32 0, i32 2
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = load i64, ptr %l1, !tbaa !24
  %t82 = add i64 %t78, %t79
  store i64 %t82, ptr %l34, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l35, !tbaa !24
  %t85 = load i64, ptr %l30, !tbaa !24
  %t86 = icmp sge i64 %t85, 0
  br i1 %t86, label %bb11, label %bb12
bb11:
  %t88 = load i64, ptr %l30, !tbaa !24
  %t89 = load i64, ptr %l34, !tbaa !24
  %t90 = icmp sle i64 %t88, %t89
  br i1 %t90, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_d5e28ad5caab0fa_47620fac91cb4846)
  unreachable
bb13:
  %t92 = load i64, ptr %l34, !tbaa !24
  %t93 = load i64, ptr %l35, !tbaa !24
  %t94 = icmp sle i64 %t92, %t93
  br i1 %t94, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_d5e28ad5caab0fa_47620fac91cb4846)
  unreachable
bb15:
  %t96 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = load i64, ptr %l30, !tbaa !24
  %t99 = load i64, ptr %l34, !tbaa !24
  %t100 = getelementptr i8, ptr %t97, i64 %t98
  %t101 = sub i64 %t99, %t98
  %t102 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t100, 1
  store { i64, ptr } %t103, ptr %l2, !tbaa !27
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l40, !tbaa !29
  %t106 = load ptr, ptr %l40, !tbaa !29
  %t107 = getelementptr %"std/regex:parser", ptr %t106, i32 0, i32 2
  %t108 = load i64, ptr %t107, !tbaa !24
  %t109 = load i64, ptr %l1, !tbaa !24
  %t111 = add i64 %t109, 2
  %t114 = add i64 %t108, %t111
  %t116 = load ptr, ptr %l40, !tbaa !29
  %t117 = getelementptr %"std/regex:parser", ptr %t116, i32 0, i32 2
  store i64 %t114, ptr %t117, !tbaa !24
  %t118 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t120 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t118, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t120, ptr %l46
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_d5e28ad5caab0fa_47620fac91cb4846)
  unreachable
bb17:
  %t121 = load i1, ptr %l46, !tbaa !21
  br i1 %t121, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb24
bb20:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = zext i8 48 to i32
  %t124 = zext i8 57 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t122, i32 %t123, i32 %t124)
  br label %bb21
bb21:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = zext i8 65 to i32
  %t130 = zext i8 90 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t128, i32 %t129, i32 %t130)
  br label %bb22
bb22:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = zext i8 97 to i32
  %t136 = zext i8 122 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t134, i32 %t135, i32 %t136)
  br label %bb23
bb23:
  br label %bb116
bb24:
  %t140 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t142 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t140, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t142, ptr %l57
  br label %bb25
bb25:
  %t143 = load i1, ptr %l57, !tbaa !21
  br i1 %t143, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = zext i8 65 to i32
  %t146 = zext i8 90 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t144, i32 %t145, i32 %t146)
  br label %bb29
bb29:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = zext i8 97 to i32
  %t152 = zext i8 122 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t150, i32 %t151, i32 %t152)
  br label %bb30
bb30:
  br label %bb116
bb31:
  %t156 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t158 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t156, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t158, ptr %l65
  br label %bb32
bb32:
  %t159 = load i1, ptr %l65, !tbaa !21
  br i1 %t159, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t160 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t160, i32 0, i32 127)
  br label %bb36
bb36:
  br label %bb116
bb37:
  %t162 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t164 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t162, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t164, ptr %l68
  br label %bb38
bb38:
  %t165 = load i1, ptr %l68, !tbaa !21
  br i1 %t165, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = zext i8 9 to i32
  %t168 = zext i8 9 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t166, i32 %t167, i32 %t168)
  br label %bb42
bb42:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = zext i8 32 to i32
  %t174 = zext i8 32 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t172, i32 %t173, i32 %t174)
  br label %bb43
bb43:
  br label %bb116
bb44:
  %t178 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t180 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t178, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t180, ptr %l76
  br label %bb45
bb45:
  %t181 = load i1, ptr %l76, !tbaa !21
  br i1 %t181, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb51
bb48:
  %t182 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t182, i32 0, i32 31)
  br label %bb49
bb49:
  %t184 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t184, i32 127, i32 127)
  br label %bb50
bb50:
  br label %bb116
bb51:
  %t186 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t186, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t188, ptr %l80
  br label %bb52
bb52:
  %t189 = load i1, ptr %l80, !tbaa !21
  br i1 %t189, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = zext i8 48 to i32
  %t192 = zext i8 57 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t190, i32 %t191, i32 %t192)
  br label %bb56
bb56:
  br label %bb116
bb57:
  %t196 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t198 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t196, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t198, ptr %l85
  br label %bb58
bb58:
  %t199 = load i1, ptr %l85, !tbaa !21
  br i1 %t199, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = zext i8 33 to i32
  %t202 = zext i8 126 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t200, i32 %t201, i32 %t202)
  br label %bb62
bb62:
  br label %bb116
bb63:
  %t206 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t208 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t206, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t208, ptr %l90
  br label %bb64
bb64:
  %t209 = load i1, ptr %l90, !tbaa !21
  br i1 %t209, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = zext i8 97 to i32
  %t212 = zext i8 122 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t210, i32 %t211, i32 %t212)
  br label %bb68
bb68:
  br label %bb116
bb69:
  %t216 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t218 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t216, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t218, ptr %l95
  br label %bb70
bb70:
  %t219 = load i1, ptr %l95, !tbaa !21
  br i1 %t219, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = zext i8 32 to i32
  %t222 = zext i8 126 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t220, i32 %t221, i32 %t222)
  br label %bb74
bb74:
  br label %bb116
bb75:
  %t226 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t228 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t226, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t228, ptr %l100
  br label %bb76
bb76:
  %t229 = load i1, ptr %l100, !tbaa !21
  br i1 %t229, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb84
bb79:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = zext i8 33 to i32
  %t232 = zext i8 47 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t230, i32 %t231, i32 %t232)
  br label %bb80
bb80:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = zext i8 58 to i32
  %t238 = zext i8 64 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t236, i32 %t237, i32 %t238)
  br label %bb81
bb81:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = zext i8 91 to i32
  %t244 = zext i8 96 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t242, i32 %t243, i32 %t244)
  br label %bb82
bb82:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = zext i8 123 to i32
  %t250 = zext i8 126 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t248, i32 %t249, i32 %t250)
  br label %bb83
bb83:
  br label %bb116
bb84:
  %t254 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t256 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t254, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t256, ptr %l114
  br label %bb85
bb85:
  %t257 = load i1, ptr %l114, !tbaa !21
  br i1 %t257, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb91
bb88:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = zext i8 9 to i32
  %t260 = zext i8 13 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t258, i32 %t259, i32 %t260)
  br label %bb89
bb89:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = zext i8 32 to i32
  %t266 = zext i8 32 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t264, i32 %t265, i32 %t266)
  br label %bb90
bb90:
  br label %bb116
bb91:
  %t270 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t272 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t270, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t272, ptr %l122
  br label %bb92
bb92:
  %t273 = load i1, ptr %l122, !tbaa !21
  br i1 %t273, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb97
bb95:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = zext i8 65 to i32
  %t276 = zext i8 90 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t274, i32 %t275, i32 %t276)
  br label %bb96
bb96:
  br label %bb116
bb97:
  %t280 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t282 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t280, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t282, ptr %l127
  br label %bb98
bb98:
  %t283 = load i1, ptr %l127, !tbaa !21
  br i1 %t283, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb103
bb101:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = call i1 @std_2fregex_2estd_2fregex_3aparser_2eperlClass(ptr %v0, ptr %t284, i8 119)
  store i1 %t286, ptr %l129
  br label %bb102
bb102:
  br label %bb116
bb103:
  %t287 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t289 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t287, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t289, ptr %l131
  br label %bb104
bb104:
  %t290 = load i1, ptr %l131, !tbaa !21
  br i1 %t290, label %bb105, label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb111
bb107:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = zext i8 48 to i32
  %t293 = zext i8 57 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t291, i32 %t292, i32 %t293)
  br label %bb108
bb108:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = zext i8 65 to i32
  %t299 = zext i8 70 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t297, i32 %t298, i32 %t299)
  br label %bb109
bb109:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = zext i8 97 to i32
  %t305 = zext i8 102 to i32
  call void @std_2fregex_2estd_2fregex_3aparser_2eaddRange(ptr %v0, ptr %t303, i32 %t304, i32 %t305)
  br label %bb110
bb110:
  br label %bb116
bb111:
  br i1 true, label %bb112, label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb115
bb114:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"std/regex:parser", ptr %t309, i32 0, i32 2
  %t312 = load i64, ptr %t311, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t313
  %t314 = getelementptr { i64, [1 x i64] }, ptr %t313, i32 0, i32 0
  store i64 5, ptr %t314
  %t316 = insertvalue { i64 } undef, i64 %t312, 0
  %t317 = getelementptr { i64, [1 x i64] }, ptr %t313, i32 0, i32 1
  store { i64 } %t316, ptr %t317
  %t318 = load { i64, [1 x i64] }, ptr %t313
  %t319 = call ptr @__olang_errpay_push()
  %t320 = ptrtoint ptr %t319 to i64
  %t323 = inttoptr i64 %t320 to ptr
  %t324 = call ptr @__olang_scope_alloc_a(ptr %t323, i64 16, i64 8)
  store { i64, [1 x i64] } %t318, ptr %t324
  call void @__olang_errpay_set(ptr %t324)
  call void @__olang_scope_close(ptr %s0)
  store i32 65541, ptr %rv
  br label %ret
bb115:
  call void @__olang_check_failed(ptr @olang_loc_a7fc8cec6c1747da_adad6facbabedf66)
  unreachable
bb116:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2erepeated(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i8
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"std/regex:node"
  %l9 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l15 = alloca i1
  %l18 = alloca i8
  %l21 = alloca ptr
  %l26 = alloca ptr
  %l31 = alloca ptr
  %l38 = alloca ptr
  %l42 = alloca i64
  %l50 = alloca i1
  %l51 = alloca i1
  %l53 = alloca i8
  %l55 = alloca ptr
  %l59 = alloca i64
  %l62 = alloca i1
  %l64 = alloca i1
  %l66 = alloca i8
  %l70 = alloca ptr
  %l76 = alloca i1
  %l80 = alloca i1
  %l83 = alloca i1
  %l94 = alloca %"std/regex:node"
  %l99 = alloca i1
  %l100 = alloca i1
  %l102 = alloca i8
  %l104 = alloca ptr
  %l110 = alloca %"std/regex:node"
  %l114 = alloca i1
  %l118 = alloca %"std/regex:node"
  %l130 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  %t187 = alloca { i64, [1 x i64] }, align 8
  %t269 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2eatom(ptr %v0, ptr %t1)
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l12
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l11
  br label %bb1
bb1:
  %t8 = load i64, ptr %l11, !tbaa !24
  store i64 %t8, ptr %l9, !tbaa !24
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
  %t19 = insertvalue { i32, i64 } zeroinitializer, i32 %t17, 0
  store { i32, i64 } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load i64, ptr %l9, !tbaa !24
  store i64 %t20, ptr %l1, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t21)
  store i1 %t23, ptr %l15
  br label %bb5
bb5:
  %t24 = load i1, ptr %l15, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb74
bb7:
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t27)
  store i8 %t29, ptr %l18
  br label %bb9
bb9:
  %t30 = load i8, ptr %l18, !tbaa !22
  store i8 %t30, ptr %l2, !tbaa !22
  store i64 0, ptr %l3, !tbaa !24
  store i64 -1, ptr %l4, !tbaa !24
  %t31 = load i8, ptr %l2, !tbaa !22
  %t33 = icmp eq i8 %t31, 42
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = getelementptr %"std/regex:parser", ptr %t36, i32 0, i32 2
  %t38 = load i64, ptr %t37, !tbaa !24
  %t40 = add i64 %t38, 1
  %t42 = load ptr, ptr %l21, !tbaa !29
  %t43 = getelementptr %"std/regex:parser", ptr %t42, i32 0, i32 2
  store i64 %t40, ptr %t43, !tbaa !24
  br label %bb54
bb11:
  %t44 = load i8, ptr %l2, !tbaa !22
  %t46 = icmp eq i8 %t44, 43
  br i1 %t46, label %bb12, label %bb13
bb12:
  store i64 1, ptr %l3, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l26, !tbaa !29
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t50 = getelementptr %"std/regex:parser", ptr %t49, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  %t53 = add i64 %t51, 1
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = getelementptr %"std/regex:parser", ptr %t55, i32 0, i32 2
  store i64 %t53, ptr %t56, !tbaa !24
  br label %bb53
bb13:
  %t57 = load i8, ptr %l2, !tbaa !22
  %t59 = icmp eq i8 %t57, 63
  br i1 %t59, label %bb14, label %bb15
bb14:
  store i64 1, ptr %l4, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l31, !tbaa !29
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = getelementptr %"std/regex:parser", ptr %t62, i32 0, i32 2
  %t64 = load i64, ptr %t63, !tbaa !24
  %t66 = add i64 %t64, 1
  %t68 = load ptr, ptr %l31, !tbaa !29
  %t69 = getelementptr %"std/regex:parser", ptr %t68, i32 0, i32 2
  store i64 %t66, ptr %t69, !tbaa !24
  br label %bb52
bb15:
  %t70 = load i8, ptr %l2, !tbaa !22
  %t72 = icmp eq i8 %t70, 123
  br i1 %t72, label %bb16, label %bb17
bb16:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"std/regex:parser", ptr %t74, i32 0, i32 2
  %t77 = load i64, ptr %t76, !tbaa !24
  store i64 %t77, ptr %l5, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l38, !tbaa !29
  %t80 = load ptr, ptr %l38, !tbaa !29
  %t81 = getelementptr %"std/regex:parser", ptr %t80, i32 0, i32 2
  %t82 = load i64, ptr %t81, !tbaa !24
  %t84 = add i64 %t82, 1
  %t86 = load ptr, ptr %l38, !tbaa !29
  %t87 = getelementptr %"std/regex:parser", ptr %t86, i32 0, i32 2
  store i64 %t84, ptr %t87, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = call i64 @std_2fregex_2estd_2fregex_3aparser_2ecount(ptr %v0, ptr %t88)
  store i64 %t90, ptr %l42
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s1)
  br label %bb74
bb18:
  %t91 = load i64, ptr %l42, !tbaa !24
  store i64 %t91, ptr %l6, !tbaa !24
  %t92 = load i64, ptr %l6, !tbaa !24
  %t94 = icmp slt i64 %t92, 0
  br i1 %t94, label %bb19, label %bb20
bb19:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i64, ptr %l5, !tbaa !24
  %t100 = getelementptr %"std/regex:parser", ptr %t96, i32 0, i32 2
  store i64 %t97, ptr %t100, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb74
bb20:
  br label %bb21
bb21:
  %t101 = load i64, ptr %l6, !tbaa !24
  store i64 %t101, ptr %l3, !tbaa !24
  %t103 = load i64, ptr %l6, !tbaa !24
  store i64 %t103, ptr %l4, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t105)
  store i1 %t107, ptr %l50
  br label %bb22
bb22:
  %t108 = load i1, ptr %l50, !tbaa !21
  br i1 %t108, label %bb23, label %bb24
bb23:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t109)
  store i8 %t111, ptr %l53
  br label %bb25
bb24:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb26
bb25:
  %t112 = load i8, ptr %l53, !tbaa !22
  %t113 = icmp eq i8 %t112, 44
  store i1 %t113, ptr %l51, !tbaa !21
  br label %bb26
bb26:
  %t115 = load i1, ptr %l51, !tbaa !21
  br i1 %t115, label %bb27, label %bb28
bb27:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l55, !tbaa !29
  %t117 = load ptr, ptr %l55, !tbaa !29
  %t118 = getelementptr %"std/regex:parser", ptr %t117, i32 0, i32 2
  %t119 = load i64, ptr %t118, !tbaa !24
  %t121 = add i64 %t119, 1
  %t123 = load ptr, ptr %l55, !tbaa !29
  %t124 = getelementptr %"std/regex:parser", ptr %t123, i32 0, i32 2
  store i64 %t121, ptr %t124, !tbaa !24
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = call i64 @std_2fregex_2estd_2fregex_3aparser_2ecount(ptr %v0, ptr %t125)
  store i64 %t127, ptr %l59
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t128 = load i64, ptr %l59, !tbaa !24
  store i64 %t128, ptr %l4, !tbaa !24
  br label %bb30
bb30:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t131)
  store i1 %t133, ptr %l62
  br label %bb31
bb31:
  %t134 = load i1, ptr %l62, !tbaa !21
  %t135 = xor i1 %t134, true
  br i1 %t135, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb35
bb33:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t137)
  store i8 %t139, ptr %l66
  br label %bb34
bb34:
  %t140 = load i8, ptr %l66, !tbaa !22
  %t141 = icmp ne i8 %t140, 125
  store i1 %t141, ptr %l64, !tbaa !21
  br label %bb35
bb35:
  %t143 = load i1, ptr %l64, !tbaa !21
  br i1 %t143, label %bb36, label %bb37
bb36:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i64, ptr %l5, !tbaa !24
  %t148 = getelementptr %"std/regex:parser", ptr %t144, i32 0, i32 2
  store i64 %t145, ptr %t148, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb74
bb37:
  br label %bb38
bb38:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l70, !tbaa !29
  %t150 = load ptr, ptr %l70, !tbaa !29
  %t151 = getelementptr %"std/regex:parser", ptr %t150, i32 0, i32 2
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = add i64 %t152, 1
  %t156 = load ptr, ptr %l70, !tbaa !29
  %t157 = getelementptr %"std/regex:parser", ptr %t156, i32 0, i32 2
  store i64 %t154, ptr %t157, !tbaa !24
  %t158 = load i64, ptr %l3, !tbaa !24
  %t159 = load i64, ptr @G_2estd_2fregex_2emaxRepeat, !tbaa !24
  %t162 = icmp sgt i64 %t158, %t159
  br i1 %t162, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb41
bb40:
  %t164 = load i64, ptr %l4, !tbaa !24
  %t165 = load i64, ptr @G_2estd_2fregex_2emaxRepeat, !tbaa !24
  %t168 = icmp sgt i64 %t164, %t165
  store i1 %t168, ptr %l76, !tbaa !21
  br label %bb41
bb41:
  %t170 = load i1, ptr %l76, !tbaa !21
  br i1 %t170, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb47
bb43:
  %t171 = load i64, ptr %l4, !tbaa !24
  %t173 = icmp sge i64 %t171, 0
  br i1 %t173, label %bb44, label %bb45
bb44:
  %t175 = load i64, ptr %l4, !tbaa !24
  %t176 = load i64, ptr %l3, !tbaa !24
  %t179 = icmp slt i64 %t175, %t176
  store i1 %t179, ptr %l83, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb46
bb46:
  %t181 = load i1, ptr %l83, !tbaa !21
  store i1 %t181, ptr %l80, !tbaa !21
  br label %bb47
bb47:
  %t182 = load i1, ptr %l80, !tbaa !21
  br i1 %t182, label %bb48, label %bb49
bb48:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"std/regex:parser", ptr %t183, i32 0, i32 2
  %t186 = load i64, ptr %t185, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t187
  %t188 = getelementptr { i64, [1 x i64] }, ptr %t187, i32 0, i32 0
  store i64 4, ptr %t188
  %t190 = insertvalue { i64 } undef, i64 %t186, 0
  %t191 = getelementptr { i64, [1 x i64] }, ptr %t187, i32 0, i32 1
  store { i64 } %t190, ptr %t191
  %t192 = load { i64, [1 x i64] }, ptr %t187
  %t193 = call ptr @__olang_errpay_push()
  %t194 = ptrtoint ptr %t193 to i64
  %t197 = inttoptr i64 %t194 to ptr
  %t198 = call ptr @__olang_scope_alloc_a(ptr %t197, i64 16, i64 8)
  store { i64, [1 x i64] } %t192, ptr %t198
  call void @__olang_errpay_set(ptr %t198)
  call void @__olang_scope_close(ptr %s1)
  %t201 = insertvalue { i32, i64 } zeroinitializer, i32 65540, 0
  store { i32, i64 } %t201, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t202 = load i64, ptr @G_2estd_2fregex_2enRepeat, !tbaa !24
  %t204 = call %"std/regex:node" @std_2fregex_3anode_2ector(ptr %s1, i64 %t202)
  store %"std/regex:node" %t204, ptr %l94
  br label %bb55
bb55:
  %t205 = load %"std/regex:node", ptr %l94
  store %"std/regex:node" %t205, ptr %l8
  %t206 = load i64, ptr %l1, !tbaa !24
  %t208 = getelementptr %"std/regex:node", ptr %l8, i32 0, i32 1
  store i64 %t206, ptr %t208, !tbaa !24
  %t209 = load i64, ptr %l3, !tbaa !24
  %t211 = getelementptr %"std/regex:node", ptr %l8, i32 0, i32 3
  store i64 %t209, ptr %t211, !tbaa !24
  %t212 = load i64, ptr %l4, !tbaa !24
  %t214 = getelementptr %"std/regex:node", ptr %l8, i32 0, i32 4
  store i64 %t212, ptr %t214, !tbaa !24
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t215)
  store i1 %t217, ptr %l99
  br label %bb56
bb56:
  %t218 = load i1, ptr %l99, !tbaa !21
  br i1 %t218, label %bb57, label %bb58
bb57:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t219)
  store i8 %t221, ptr %l102
  br label %bb59
bb58:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb60
bb59:
  %t222 = load i8, ptr %l102, !tbaa !22
  %t223 = icmp eq i8 %t222, 63
  store i1 %t223, ptr %l100, !tbaa !21
  br label %bb60
bb60:
  %t225 = load i1, ptr %l100, !tbaa !21
  br i1 %t225, label %bb61, label %bb62
bb61:
  %t226 = getelementptr %"std/regex:node", ptr %l8, i32 0, i32 7
  store i1 false, ptr %t226, !tbaa !21
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l104, !tbaa !29
  %t228 = load ptr, ptr %l104, !tbaa !29
  %t229 = getelementptr %"std/regex:parser", ptr %t228, i32 0, i32 2
  %t230 = load i64, ptr %t229, !tbaa !24
  %t232 = add i64 %t230, 1
  %t234 = load ptr, ptr %l104, !tbaa !29
  %t235 = getelementptr %"std/regex:parser", ptr %t234, i32 0, i32 2
  store i64 %t232, ptr %t235, !tbaa !24
  br label %bb63
bb62:
  br label %bb63
bb63:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"std/regex:parser", ptr %t236, i32 0, i32 3
  %t239 = load i64, ptr %l1, !tbaa !24
  %t242 = call %"std/regex:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eAt_3cstd_2fregex_3anode_3e(ptr %v0, ptr %t238, i64 %t239)
  store %"std/regex:node" %t242, ptr %l110
  br label %bb64
bb64:
  %t243 = getelementptr %"std/regex:node", ptr %l110, i32 0, i32 0
  %t244 = load i64, ptr %t243, !tbaa !24
  %t245 = load i64, ptr @G_2estd_2fregex_2enRepeat, !tbaa !24
  %t248 = icmp eq i64 %t244, %t245
  br i1 %t248, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb68
bb66:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"std/regex:parser", ptr %t250, i32 0, i32 3
  %t253 = load i64, ptr %l1, !tbaa !24
  %t256 = call %"std/regex:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eAt_3cstd_2fregex_3anode_3e(ptr %v0, ptr %t252, i64 %t253)
  store %"std/regex:node" %t256, ptr %l118
  br label %bb67
bb67:
  %t257 = getelementptr %"std/regex:node", ptr %l118, i32 0, i32 0
  %t258 = load i64, ptr %t257, !tbaa !24
  %t259 = load i64, ptr @G_2estd_2fregex_2enEmpty, !tbaa !24
  %t262 = icmp eq i64 %t258, %t259
  store i1 %t262, ptr %l114, !tbaa !21
  br label %bb68
bb68:
  %t264 = load i1, ptr %l114, !tbaa !21
  br i1 %t264, label %bb69, label %bb70
bb69:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"std/regex:parser", ptr %t265, i32 0, i32 2
  %t268 = load i64, ptr %t267, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t269
  %t270 = getelementptr { i64, [1 x i64] }, ptr %t269, i32 0, i32 0
  store i64 4, ptr %t270
  %t272 = insertvalue { i64 } undef, i64 %t268, 0
  %t273 = getelementptr { i64, [1 x i64] }, ptr %t269, i32 0, i32 1
  store { i64 } %t272, ptr %t273
  %t274 = load { i64, [1 x i64] }, ptr %t269
  %t275 = call ptr @__olang_errpay_push()
  %t276 = ptrtoint ptr %t275 to i64
  %t279 = inttoptr i64 %t276 to ptr
  %t280 = call ptr @__olang_scope_alloc_a(ptr %t279, i64 16, i64 8)
  store { i64, [1 x i64] } %t274, ptr %t280
  call void @__olang_errpay_set(ptr %t280)
  call void @__olang_scope_close(ptr %s1)
  %t283 = insertvalue { i32, i64 } zeroinitializer, i32 65540, 0
  store { i32, i64 } %t283, ptr %rv
  br label %ret
bb70:
  br label %bb71
bb71:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load %"std/regex:node", ptr %l8
  %t288 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %t284, %"std/regex:node" %t285)
  store i64 %t288, ptr %l130
  br label %bb72
bb72:
  %t289 = load i64, ptr %l130, !tbaa !24
  store i64 %t289, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb73
bb73:
  br label %bb4
bb74:
  %t290 = load i64, ptr %l1, !tbaa !24
  %t292 = insertvalue { i32, i64 } zeroinitializer, i64 %t290, 1
  store { i32, i64 } %t292, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i32 @std_2fregex_2estd_2fregex_3aparser_2erune(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i32, i64 }
  %l5 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l20 = alloca { i32, i64 }
  %l25 = alloca { i32, i64 }
  %l26 = alloca i32
  %l28 = alloca i1
  %l29 = alloca ptr
  %l35 = alloca ptr
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:parser", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/regex:parser", ptr %t5, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr i8, ptr %t11, i64 %t8
  %t13 = load i8, ptr %t12, !tbaa !32
  %t15 = icmp ult i8 %t13, -128
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l10, !tbaa !29
  %t18 = load ptr, ptr %l10, !tbaa !29
  %t19 = getelementptr %"std/regex:parser", ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = add i64 %t20, 1
  %t24 = load ptr, ptr %l10, !tbaa !29
  %t25 = getelementptr %"std/regex:parser", ptr %t24, i32 0, i32 2
  store i64 %t22, ptr %t25, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/regex:parser", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l14, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"std/regex:parser", ptr %t30, i32 0, i32 2
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = sub i64 %t33, 1
  %t37 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 %t35
  %t40 = load i8, ptr %t39, !tbaa !32
  %t42 = zext i8 %t40 to i32
  store i32 %t42, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"std/regex:parser", ptr %t44, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/regex:parser", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  %t54 = call { i32, { i32, i64 } } @std_2futf8_2eDecode(ptr %v0, { i64, ptr } %t47, i64 %t51)
  %t55 = extractvalue { i32, { i32, i64 } } %t54, 1
  %t56 = extractvalue { i32, { i32, i64 } } %t54, 0
  store i32 %t56, ptr %l26
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb5, label %ok.58, !prof !99
ok.58:
  store { i32, i64 } %t55, ptr %l25
  br label %bb4
bb4:
  %t59 = load { i32, i64 }, ptr %l25
  store { i32, i64 } %t59, ptr %l20
  br label %bb7
bb5:
  %t60 = load i32, ptr %l26, !tbaa !23
  %t61 = ashr i32 %t60, 16
  %t63 = icmp eq i32 %t61, 1
  store i1 %t63, ptr %l28, !tbaa !21
  br label %bb6
bb6:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l29, !tbaa !29
  %t65 = load ptr, ptr %l29, !tbaa !29
  %t66 = getelementptr %"std/regex:parser", ptr %t65, i32 0, i32 2
  %t67 = load i64, ptr %t66, !tbaa !24
  %t69 = add i64 %t67, 1
  %t71 = load ptr, ptr %l29, !tbaa !29
  %t72 = getelementptr %"std/regex:parser", ptr %t71, i32 0, i32 2
  store i64 %t69, ptr %t72, !tbaa !24
  store i32 65533, ptr %rv
  br label %ret
bb7:
  %t74 = load { i32, i64 }, ptr %l20
  store { i32, i64 } %t74, ptr %l1
  %t75 = getelementptr { i32, i64 }, ptr %l1, i32 0, i32 0
  %t76 = load i32, ptr %t75, !tbaa !64
  %t78 = getelementptr { i32, i64 }, ptr %l1, i32 0, i32 1
  %t79 = load i64, ptr %t78, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l35, !tbaa !29
  %t82 = load ptr, ptr %l35, !tbaa !29
  %t83 = getelementptr %"std/regex:parser", ptr %t82, i32 0, i32 2
  %t84 = load i64, ptr %t83, !tbaa !24
  %t88 = add i64 %t84, %t79
  %t90 = load ptr, ptr %l35, !tbaa !29
  %t91 = getelementptr %"std/regex:parser", ptr %t90, i32 0, i32 2
  store i64 %t88, ptr %t91, !tbaa !24
  store i32 %t76, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2esequence(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i8
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i1
  %l8 = alloca i8
  %l11 = alloca i1
  %l16 = alloca i1
  %l24 = alloca i1
  %l26 = alloca { i64, ptr }
  %l32 = alloca i1
  %l34 = alloca i1
  %l35 = alloca i32
  %l37 = alloca ptr
  %l38 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i32
  %l44 = alloca i64
  %l46 = alloca ptr
  %l48 = alloca %"std/regex:node"
  %l49 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i64
  %l58 = alloca i64
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  br label %bb2
bb2:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i1 @std_2fregex_2estd_2fregex_3aparser_2emore(ptr %v0, ptr %t3)
  store i1 %t5, ptr %l5
  br label %bb3
bb3:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb4, label %bb5
bb4:
  br label %bb34
bb5:
  br label %bb6
bb6:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i8 @std_2fregex_2estd_2fregex_3aparser_2epeek(ptr %v0, ptr %t9)
  store i8 %t11, ptr %l8
  br label %bb7
bb7:
  %t12 = load i8, ptr %l8, !tbaa !22
  store i8 %t12, ptr %l2, !tbaa !22
  %t13 = load i8, ptr %l2, !tbaa !22
  %t15 = icmp eq i8 %t13, 124
  br i1 %t15, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb10
bb9:
  %t17 = load i8, ptr %l2, !tbaa !22
  %t19 = icmp eq i8 %t17, 41
  store i1 %t19, ptr %l11, !tbaa !21
  br label %bb10
bb10:
  %t21 = load i1, ptr %l11, !tbaa !21
  br i1 %t21, label %bb11, label %bb12
bb11:
  br label %bb34
bb12:
  br label %bb13
bb13:
  %t22 = load i8, ptr %l2, !tbaa !22
  %t24 = icmp eq i8 %t22, 40
  br i1 %t24, label %bb14, label %bb15
bb14:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/regex:parser", ptr %t26, i32 0, i32 2
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = add i64 %t29, 2
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/regex:parser", ptr %t32, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = icmp slt i64 %t31, %t37
  store i1 %t40, ptr %l16, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb16
bb16:
  %t42 = load i1, ptr %l16, !tbaa !21
  br i1 %t42, label %bb17, label %bb18
bb17:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"std/regex:parser", ptr %t43, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l26, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"std/regex:parser", ptr %t47, i32 0, i32 2
  %t50 = load i64, ptr %t49, !tbaa !24
  %t52 = add i64 %t50, 1
  %t54 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = icmp eq i8 %t57, 63
  store i1 %t59, ptr %l24, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb19
bb19:
  %t61 = load i1, ptr %l24, !tbaa !21
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call { i32, i1 } @std_2fregex_2estd_2fregex_3aparser_2eflags(ptr %v0, ptr %t62)
  %t65 = extractvalue { i32, i1 } %t64, 1
  %t66 = extractvalue { i32, i1 } %t64, 0
  store i32 %t66, ptr %l35
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb23, label %ok.68, !prof !99
ok.68:
  store i1 %t65, ptr %l34
  br label %bb22
bb21:
  br label %bb28
bb22:
  %t69 = load i1, ptr %l34, !tbaa !21
  store i1 %t69, ptr %l32, !tbaa !21
  br label %bb24
bb23:
  %t70 = load i32, ptr %l35, !tbaa !23
  %t71 = lshr i32 %t70, 16
  %t72 = and i32 %t70, 65535
  %t73 = icmp eq i32 %t71, 1
  %t74 = select i1 %t73, i32 1, i32 0
  %t75 = icmp eq i32 %t70, 0
  %t76 = shl i32 %t74, 16
  %t77 = or i32 %t76, %t72
  %t78 = select i1 %t75, i32 0, i32 %t77
  call void @__olang_scope_close(ptr %s0)
  %t80 = insertvalue { i32, i64 } zeroinitializer, i32 %t78, 0
  store { i32, i64 } %t80, ptr %rv
  br label %ret
bb24:
  %t81 = load i1, ptr %l32, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  br label %bb33
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  store ptr %l1, ptr %l37, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = call { i32, i64 } @std_2fregex_2estd_2fregex_3aparser_2erepeated(ptr %v0, ptr %t82)
  %t85 = extractvalue { i32, i64 } %t84, 1
  %t86 = extractvalue { i32, i64 } %t84, 0
  store i32 %t86, ptr %l41
  %t87 = icmp ne i32 %t86, 0
  br i1 %t87, label %bb30, label %ok.88, !prof !99
ok.88:
  store i64 %t85, ptr %l40
  br label %bb29
bb29:
  %t89 = load i64, ptr %l40, !tbaa !24
  store i64 %t89, ptr %l38, !tbaa !24
  br label %bb31
bb30:
  %t90 = load i32, ptr %l41, !tbaa !23
  %t91 = lshr i32 %t90, 16
  %t92 = and i32 %t90, 65535
  %t93 = icmp eq i32 %t91, 1
  %t94 = select i1 %t93, i32 1, i32 0
  %t95 = icmp eq i32 %t90, 0
  %t96 = shl i32 %t94, 16
  %t97 = or i32 %t96, %t92
  %t98 = select i1 %t95, i32 0, i32 %t97
  call void @__olang_scope_close(ptr %s0)
  %t100 = insertvalue { i32, i64 } zeroinitializer, i32 %t98, 0
  store { i32, i64 } %t100, ptr %rv
  br label %ret
bb31:
  %t101 = load ptr, ptr %l37, !tbaa !29
  %t102 = load i64, ptr %l38, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t101, i64 %t102)
  br label %bb32
bb32:
  br label %bb33
bb33:
  br label %bb2
bb34:
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l1)
  store i64 %t104, ptr %l44
  br label %bb35
bb35:
  %t105 = load i64, ptr %l44, !tbaa !24
  %t106 = icmp eq i64 %t105, 0
  br i1 %t106, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s5
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l46, !tbaa !29
  %t109 = load i64, ptr @G_2estd_2fregex_2enEmpty, !tbaa !24
  %t111 = call %"std/regex:node" @std_2fregex_3anode_2ector(ptr %s5, i64 %t109)
  store %"std/regex:node" %t111, ptr %l48
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t112 = load ptr, ptr %l46, !tbaa !29
  %t113 = load %"std/regex:node", ptr %l48
  %t114 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eadd(ptr %v0, ptr %t112, %"std/regex:node" %t113)
  store i64 %t114, ptr %l49
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t115 = load i64, ptr %l49, !tbaa !24
  %t116 = insertvalue { i32, i64 } zeroinitializer, i64 %t115, 1
  store { i32, i64 } %t116, ptr %rv
  br label %ret
bb40:
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l1)
  store i64 %t118, ptr %l51
  br label %bb41
bb41:
  %t119 = load i64, ptr %l51, !tbaa !24
  %t120 = icmp eq i64 %t119, 1
  br i1 %t120, label %bb42, label %bb43
bb42:
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l1, i64 0)
  store i64 %t123, ptr %l54
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t124 = load i64, ptr %l54, !tbaa !24
  %t125 = insertvalue { i32, i64 } zeroinitializer, i64 %t124, 1
  store { i32, i64 } %t125, ptr %rv
  br label %ret
bb45:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i64, ptr @G_2estd_2fregex_2enCat, !tbaa !24
  %t131 = call i64 @std_2fregex_2estd_2fregex_3aparser_2eparent(ptr %v0, ptr %s0, ptr %t126, i64 %t127, ptr %l1)
  store i64 %t131, ptr %l58
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s0)
  %t132 = load i64, ptr %l58, !tbaa !24
  %t133 = insertvalue { i32, i64 } zeroinitializer, i64 %t132, 1
  store { i32, i64 } %t133, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @std_2fregex_2estd_2fregex_3aprog_2eemit(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l19 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:prog", ptr %t1, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t3, i64 %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/regex:prog", ptr %t7, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t9, i64 %a2)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"std/regex:prog", ptr %t13, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t15, i64 %a3)
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"std/regex:prog", ptr %t19, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t21, i64 %a4)
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/regex:prog", ptr %t25, i32 0, i32 1
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l19
  br label %bb5
bb5:
  %t30 = load i64, ptr %l19, !tbaa !24
  %t31 = sub i64 %t30, 1
  store i64 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2fregex_2estd_2fregex_3aprog_2efindPrefix(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i1
  %l13 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l22 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca i32
  %l28 = alloca i1
  %l29 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i64
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l43 = alloca i64
  %l46 = alloca i64
  %l48 = alloca i1
  %l52 = alloca i64
  %l55 = alloca i1
  %l59 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store i64 1, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = load i64, ptr %l2, !tbaa !24
  store i64 %t3, ptr %l4, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"std/regex:prog", ptr %t4, i32 0, i32 1
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l7
  br label %bb3
bb3:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"std/regex:prog", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l13
  br label %bb6
bb5:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb7
bb6:
  %t20 = load i64, ptr @G_2estd_2fregex_2eopChar, !tbaa !24
  %t21 = load i64, ptr %l13, !tbaa !24
  %t23 = icmp eq i64 %t21, %t20
  store i1 %t23, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l9, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb18
bb9:
  br label %bb10
bb10:
  store ptr %l1, ptr %l17, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"std/regex:prog", ptr %t28, i32 0, i32 2
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l22
  br label %bb11
bb11:
  %t35 = load i64, ptr %l22, !tbaa !24
  %t36 = trunc i64 %t35 to i32
  %t39 = call { i32, { i64, ptr } } @std_2futf8_2eEncode(ptr %s1, i32 %t36)
  %t40 = extractvalue { i32, { i64, ptr } } %t39, 1
  %t41 = extractvalue { i32, { i64, ptr } } %t39, 0
  store i32 %t41, ptr %l26
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb13, label %ok.43, !prof !99
ok.43:
  store { i64, ptr } %t40, ptr %l25
  br label %bb12
bb12:
  %t44 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t44, ptr %l18, !tbaa !27
  br label %bb15
bb13:
  %t45 = load i32, ptr %l26, !tbaa !23
  %t46 = ashr i32 %t45, 16
  %t48 = icmp eq i32 %t46, 1
  store i1 %t48, ptr %l28, !tbaa !21
  br label %bb14
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t49, ptr %l18, !tbaa !27
  br label %bb15
bb15:
  %t51 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %t58, { i64, ptr } %t57)
  br label %bb16
bb16:
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb17
bb17:
  br label %bb2
bb18:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l34, !tbaa !29
  %t65 = ptrtoint ptr %v0 to i64
  store i64 %t65, ptr %l35, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e7
  br i1 %t66, label %bb19, label %bb20
bb19:
  %t68 = call ptr @__olang_region_make(ptr %v0)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l35, !tbaa !24
  br label %bb20
bb20:
  %t70 = load i64, ptr %l35
  %t71 = inttoptr i64 %t70 to ptr
  %t73 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t71, ptr %l1)
  store { i64, ptr } %t73, ptr %l38
  br label %bb21
bb21:
  %t74 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t75 = load i64, ptr %l35
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = extractvalue { i64, ptr } %t74, 0
  %t78 = extractvalue { i64, ptr } %t74, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %t76, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t83 = load ptr, ptr %l34, !tbaa !29
  %t84 = getelementptr %"std/regex:prog", ptr %t83, i32 0, i32 7
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  store { i64, ptr } %t85, ptr %l40, !tbaa !27
  %t87 = load ptr, ptr %l34, !tbaa !29
  %t88 = getelementptr %"std/regex:prog", ptr %t87, i32 0, i32 7
  store { i64, ptr } %t82, ptr %t88, !tbaa !27
  %t89 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e7
  br i1 %t89, label %bb22, label %bb23
bb22:
  %t91 = load { i64, ptr }, ptr %l40
  %t92 = extractvalue { i64, ptr } %t91, 1
  call void @__olang_region_release(ptr %t92)
  store { i64, ptr } zeroinitializer, ptr %l40
  br label %bb23
bb23:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l42, !tbaa !29
  %t94 = load i64, ptr %l2, !tbaa !24
  store i64 %t94, ptr %l43, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"std/regex:prog", ptr %t95, i32 0, i32 1
  %t99 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t97)
  store i64 %t99, ptr %l46
  br label %bb24
bb24:
  %t100 = load i64, ptr %l43, !tbaa !24
  %t101 = load i64, ptr %l46, !tbaa !24
  %t102 = icmp slt i64 %t100, %t101
  br i1 %t102, label %bb25, label %bb26
bb25:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"std/regex:prog", ptr %t104, i32 0, i32 1
  %t107 = load i64, ptr %l2, !tbaa !24
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t106, i64 %t107)
  store i64 %t110, ptr %l52
  br label %bb27
bb26:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb28
bb27:
  %t111 = load i64, ptr @G_2estd_2fregex_2eopAssert, !tbaa !24
  %t112 = load i64, ptr %l52, !tbaa !24
  %t114 = icmp eq i64 %t112, %t111
  store i1 %t114, ptr %l48, !tbaa !21
  br label %bb28
bb28:
  %t116 = load i1, ptr %l48, !tbaa !21
  br i1 %t116, label %bb29, label %bb30
bb29:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"std/regex:prog", ptr %t117, i32 0, i32 2
  %t120 = load i64, ptr %l2, !tbaa !24
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t119, i64 %t120)
  store i64 %t123, ptr %l59
  br label %bb31
bb30:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb32
bb31:
  %t124 = load i64, ptr @G_2estd_2fregex_2eatTextStart, !tbaa !24
  %t125 = load i64, ptr %l59, !tbaa !24
  %t127 = icmp eq i64 %t125, %t124
  store i1 %t127, ptr %l55, !tbaa !21
  br label %bb32
bb32:
  %t129 = load i1, ptr %l55, !tbaa !21
  %t130 = load ptr, ptr %l42, !tbaa !29
  %t131 = getelementptr %"std/regex:prog", ptr %t130, i32 0, i32 8
  store i1 %t129, ptr %t131, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fregex_2estd_2fregex_3aprog_2einClass(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l17 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l30 = alloca i64
  %l33 = alloca i64
  %l51 = alloca { i64, ptr }
  %l60 = alloca i1
  %l62 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:prog", ptr %t1, i32 0, i32 9
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/regex:prog", ptr %t6, i32 0, i32 11
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l4, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t11, ptr %l17, !tbaa !27
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = mul i64 4, %t12
  %t16 = add i64 %t14, 1
  %t18 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l5, !tbaa !24
  store i1 false, ptr %l6, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l22, !tbaa !27
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = mul i64 4, %t24
  %t28 = add i64 %t26, 2
  %t30 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i64, ptr %t31, i64 %t28
  %t33 = load i64, ptr %t32, !tbaa !34
  store i64 %t33, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp sgt i64 %t35, %t36
  br i1 %t39, label %bb1, label %bb2
bb1:
  %t41 = load i64, ptr %l9, !tbaa !24
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb6
bb3:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = sub i64 %t45, %t46
  %t50 = load i64, ptr %l9, !tbaa !24
  %t53 = add i64 %t49, %t50
  %t55 = sub i64 %t53, 1
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = sdiv i64 %t55, %t56
  store i64 %t59, ptr %l33, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb5
bb5:
  %t61 = load i64, ptr %l33, !tbaa !24
  store i64 %t61, ptr %l30, !tbaa !24
  br label %bb6
bb6:
  %t62 = load i64, ptr %l30, !tbaa !24
  store i64 %t62, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t63 = load i64, ptr %l11, !tbaa !24
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = icmp slt i64 %t63, %t64
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb8, label %bb9
bb8:
  br label %bb18
bb9:
  br label %bb10
bb10:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l11, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t76 = mul i64 %t72, %t73
  %t79 = add i64 %t71, %t76
  store i64 %t79, ptr %l12, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t81, ptr %l51, !tbaa !27
  %t82 = load i64, ptr %l5, !tbaa !24
  %t83 = load i64, ptr %l12, !tbaa !24
  %t85 = mul i64 2, %t83
  %t88 = add i64 %t82, %t85
  %t90 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i32, ptr %t91, i64 %t88
  %t93 = load i32, ptr %t92, !tbaa !84
  %t95 = zext i32 %t93 to i64
  %t96 = load i64, ptr %l2, !tbaa !24
  %t99 = icmp sle i64 %t95, %t96
  br i1 %t99, label %bb11, label %bb12
bb11:
  %t101 = load i64, ptr %l2, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t102, ptr %l62, !tbaa !27
  %t103 = load i64, ptr %l5, !tbaa !24
  %t104 = load i64, ptr %l12, !tbaa !24
  %t106 = mul i64 2, %t104
  %t109 = add i64 %t103, %t106
  %t111 = add i64 %t109, 1
  %t113 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i32, ptr %t114, i64 %t111
  %t116 = load i32, ptr %t115, !tbaa !84
  %t118 = zext i32 %t116 to i64
  %t121 = icmp sle i64 %t101, %t118
  store i1 %t121, ptr %l60, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb13
bb13:
  %t123 = load i1, ptr %l60, !tbaa !21
  br i1 %t123, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb18
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l11, !tbaa !24
  br label %bb7
bb18:
  %t128 = load i1, ptr %l6, !tbaa !21
  %t129 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t129, ptr %l74, !tbaa !27
  %t130 = load i64, ptr %l1, !tbaa !24
  %t132 = mul i64 4, %t130
  %t134 = add i64 %t132, 3
  %t136 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i64, ptr %t137, i64 %t134
  %t139 = load i64, ptr %t138, !tbaa !34
  %t141 = icmp eq i64 %t139, 1
  %t144 = icmp ne i1 %t128, %t141
  store i1 %t144, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @std_2fregex_2estd_2fregex_3aprog_2epack(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l42 = alloca { i64, ptr }
  %l44 = alloca i64
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l52 = alloca i64
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %l60 = alloca i64
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %l68 = alloca i64
  %l72 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:prog", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  %t7 = mul i64 4, %t6
  store i64 %t7, ptr %l11, !tbaa !24
  %t8 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = icmp sle i64 %t11, 1152921504606846975
  br i1 %t12, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_6f2b67eb6d33c6ec_131b1693c3e68d08)
  unreachable
bb4:
  %t14 = load i64, ptr %l11, !tbaa !24
  %t15 = mul i64 %t14, 8
  %t16 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/regex:prog", ptr %t20, i32 0, i32 1
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l17
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_6f2b67eb6d33c6ec_131b1693c3e68d08)
  unreachable
bb6:
  %t25 = load i64, ptr %l17, !tbaa !24
  store i64 %t25, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb12
bb9:
  %t36 = load i64, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l24, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb11
bb11:
  %t52 = load i64, ptr %l24, !tbaa !24
  store i64 %t52, ptr %l21, !tbaa !24
  br label %bb12
bb12:
  %t53 = load i64, ptr %l21, !tbaa !24
  store i64 %t53, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  br label %bb16
bb16:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l7, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t72, ptr %l42, !tbaa !27
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = mul i64 4, %t73
  store i64 %t75, ptr %l44, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"std/regex:prog", ptr %t76, i32 0, i32 1
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t78, i64 %t79)
  store i64 %t82, ptr %l48
  br label %bb17
bb17:
  %t83 = load i64, ptr %l48, !tbaa !24
  %t84 = load i64, ptr %l44, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i64, ptr %t86, i64 %t84
  store i64 %t83, ptr %t87, !tbaa !34
  %t88 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t88, ptr %l49, !tbaa !27
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = mul i64 4, %t89
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l52, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"std/regex:prog", ptr %t94, i32 0, i32 2
  %t97 = load i64, ptr %l7, !tbaa !24
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t96, i64 %t97)
  store i64 %t100, ptr %l56
  br label %bb18
bb18:
  %t101 = load i64, ptr %l56, !tbaa !24
  %t102 = load i64, ptr %l52, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr i64, ptr %t104, i64 %t102
  store i64 %t101, ptr %t105, !tbaa !34
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t106, ptr %l57, !tbaa !27
  %t107 = load i64, ptr %l7, !tbaa !24
  %t109 = mul i64 4, %t107
  %t111 = add i64 %t109, 2
  store i64 %t111, ptr %l60, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/regex:prog", ptr %t112, i32 0, i32 3
  %t115 = load i64, ptr %l7, !tbaa !24
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t114, i64 %t115)
  store i64 %t118, ptr %l64
  br label %bb19
bb19:
  %t119 = load i64, ptr %l64, !tbaa !24
  %t120 = load i64, ptr %l60, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i64, ptr %t122, i64 %t120
  store i64 %t119, ptr %t123, !tbaa !34
  %t124 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t124, ptr %l65, !tbaa !27
  %t125 = load i64, ptr %l7, !tbaa !24
  %t127 = mul i64 4, %t125
  %t129 = add i64 %t127, 3
  store i64 %t129, ptr %l68, !tbaa !24
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"std/regex:prog", ptr %t130, i32 0, i32 4
  %t133 = load i64, ptr %l7, !tbaa !24
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t132, i64 %t133)
  store i64 %t136, ptr %l72
  br label %bb20
bb20:
  %t137 = load i64, ptr %l72, !tbaa !24
  %t138 = load i64, ptr %l68, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i64, ptr %t140, i64 %t138
  store i64 %t137, ptr %t141, !tbaa !34
  br label %bb21
bb21:
  %t142 = load i64, ptr %l6, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l6, !tbaa !24
  br label %bb13
bb22:
  %t146 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t146, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @std_2fregex_2estd_2fregex_3asearcher_2enext(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, i64 }
  %l4 = alloca i64
  %l5 = alloca i64
  %l19 = alloca { i64, i64 }
  %l31 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l40 = alloca i64
  %l44 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i64
  %l51 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:searcher", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"std/regex:machine", ptr %t6, i32 0, i32 7
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"std/regex:machine", ptr %t9, i32 0, i32 9
  store i64 -1, ptr %t11, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/regex:searcher", ptr %t12, i32 0, i32 4
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/regex:searcher", ptr %t17, i32 0, i32 2
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/regex:searcher", ptr %t21, i32 0, i32 3
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/regex:searcher", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l1, !tbaa !24
  %t34 = call { i64, i64 } @std_2fregex_2elocate(ptr %v0, ptr %v0, ptr %v0, ptr %t20, ptr %t24, { i64, ptr } %t28, i64 %t29)
  store { i64, i64 } %t34, ptr %l19
  br label %bb3
bb2:
  br label %bb16
bb3:
  %t35 = load { i64, i64 }, ptr %l19
  store { i64, i64 } %t35, ptr %l3
  %t36 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 0
  %t37 = load i64, ptr %t36, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  %t39 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = icmp eq i64 %t42, -1
  br i1 %t44, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = icmp sge i64 %t47, 0
  br i1 %t49, label %bb7, label %bb8
bb7:
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr %"std/regex:machine", ptr %t51, i32 0, i32 2
  %t54 = load i64, ptr %t53, !tbaa !24
  %t56 = icmp eq i64 %t54, 2
  br i1 %t56, label %bb9, label %bb10
bb8:
  br label %bb15
bb9:
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t60 = getelementptr %"std/regex:machine", ptr %t58, i32 0, i32 8
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  store { i64, ptr } %t61, ptr %l31, !tbaa !27
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 0
  store i64 %t62, ptr %t66, !tbaa !34
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr %"std/regex:machine", ptr %t67, i32 0, i32 8
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l34, !tbaa !27
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i64, ptr %t74, i64 1
  store i64 %t71, ptr %t75, !tbaa !34
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t78 = load i64, ptr %l4, !tbaa !24
  %t81 = getelementptr %"std/regex:machine", ptr %t77, i32 0, i32 9
  store i64 %t78, ptr %t81, !tbaa !24
  %t82 = load ptr, ptr %l2, !tbaa !29
  store ptr %t82, ptr %l39, !tbaa !29
  %t83 = ptrtoint ptr %v0 to i64
  store i64 %t83, ptr %l40, !tbaa !24
  %t84 = load i1, ptr @olang_2esole_2estd_2fregex_3asearcher_2e1
  br i1 %t84, label %bb12, label %bb13
bb12:
  %t86 = load ptr, ptr %l39, !tbaa !29
  %t87 = call ptr @__olang_region_or(ptr %t86, ptr %v0)
  %t88 = ptrtoint ptr %t87 to i64
  store i64 %t88, ptr %l40, !tbaa !24
  br label %bb13
bb13:
  %t89 = load ptr, ptr %l2, !tbaa !29
  %t90 = load i64, ptr %l4, !tbaa !24
  %t91 = load i64, ptr %l40
  %t92 = inttoptr i64 %t91 to ptr
  %t95 = call i1 @std_2fregex_2estd_2fregex_3amachine_2erun(ptr %t92, ptr %t89, i64 %t90, i1 false)
  store i1 %t95, ptr %l44
  br label %bb14
bb14:
  %t96 = load i1, ptr %l44, !tbaa !21
  store i1 %t96, ptr %rv
  br label %ret
bb15:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"std/regex:searcher", ptr %t97, i32 0, i32 4
  store i1 false, ptr %t99, !tbaa !21
  br label %bb16
bb16:
  %t100 = load ptr, ptr %l2, !tbaa !29
  store ptr %t100, ptr %l46, !tbaa !29
  %t101 = ptrtoint ptr %v0 to i64
  store i64 %t101, ptr %l47, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2estd_2fregex_3asearcher_2e1
  br i1 %t102, label %bb17, label %bb18
bb17:
  %t104 = load ptr, ptr %l46, !tbaa !29
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr %v0)
  %t106 = ptrtoint ptr %t105 to i64
  store i64 %t106, ptr %l47, !tbaa !24
  br label %bb18
bb18:
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t108 = load i64, ptr %l1, !tbaa !24
  %t109 = load i64, ptr %l47
  %t110 = inttoptr i64 %t109 to ptr
  %t113 = call i1 @std_2fregex_2estd_2fregex_3amachine_2erun(ptr %t110, ptr %t107, i64 %t108, i1 false)
  store i1 %t113, ptr %l51
  br label %bb19
bb19:
  %t114 = load i1, ptr %l51, !tbaa !21
  store i1 %t114, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @std_2fregex_2estd_2fregex_3athreads_2ehas(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/regex:threads", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr i64, ptr %t8, i64 %t5
  %t10 = load i64, ptr %t9, !tbaa !34
  store i64 %t10, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"std/regex:threads", ptr %t13, i32 0, i32 3
  %t16 = load i64, ptr %t15, !tbaa !24
  %t19 = icmp slt i64 %t12, %t16
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/regex:threads", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l13, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i64, ptr %t28, i64 %t25
  %t30 = load i64, ptr %t29, !tbaa !34
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = icmp eq i64 %t30, %t31
  store i1 %t34, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t36 = load i1, ptr %l11, !tbaa !21
  store i1 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/regex:Match" @std_2fregex_3aMatch_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l7 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %rv = alloca %"std/regex:Match"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  %t3 = ptrtoint ptr %v2 to i64
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2estd_2fregex_3aMatch_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v2)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = load i64, ptr %l7
  %t10 = inttoptr i64 %t9 to ptr
  %t12 = call { i64, ptr } @std_2fregex_2ecopyOf(ptr %v1, ptr %t10, { i64, ptr } %t8)
  store { i64, ptr } %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t14, ptr %l11, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i64, ptr %t16, i64 0
  %t18 = load i64, ptr %t17, !tbaa !34
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t20, ptr %l13, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i64, ptr %t22, i64 1
  %t24 = load i64, ptr %t23, !tbaa !34
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t27 = insertvalue %"std/regex:Match" undef, { i64, ptr } %t26, 0
  %t29 = insertvalue %"std/regex:Match" %t27, { i64, ptr } %t13, 1
  %t31 = insertvalue %"std/regex:Match" %t29, i64 %t18, 2
  %t33 = insertvalue %"std/regex:Match" %t31, i64 %t24, 3
  store %"std/regex:Match" %t33, ptr %rv
  br label %ret
ret:
  %rr = load %"std/regex:Match", ptr %rv
  ret %"std/regex:Match" %rr
}

define dso_local %"std/regex:Regex" @std_2fregex_3aRegex_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %rv = alloca %"std/regex:Regex"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/regex:Regex" undef, ptr %a0, 0
  store %"std/regex:Regex" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/regex:Regex", ptr %rv
  ret %"std/regex:Regex" %rr
}

define dso_local void @std_2fregex_3adfa_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca i64
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i64
  %l48 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l50 = alloca i64
  %l52 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l54 = alloca i64
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca i64
  %l62 = alloca i64
  %l66 = alloca i64
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca i64
  %l74 = alloca i64
  %l78 = alloca %"std/regex:dfa"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t3, ptr %l4, !tbaa !27
  store i1 %a2, ptr %l5, !tbaa !21
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = sdiv i64 %t9, 4
  store i64 %t11, ptr %l6, !tbaa !24
  %t13 = ptrtoint ptr %v2 to i64
  store i64 %t13, ptr %l26, !tbaa !24
  %t14 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e4
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = call ptr @__olang_region_make(ptr %v2)
  %t17 = ptrtoint ptr %t16 to i64
  store i64 %t17, ptr %l26, !tbaa !24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l26
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t19, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l28
  br label %bb3
bb3:
  %t21 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e4
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load i64, ptr %l26
  %t24 = inttoptr i64 %t23 to ptr
  %t25 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr null
  %t31 = icmp eq ptr %t30, %t24
  call void @__olang_region_settle(ptr %t24, i1 %t31)
  br label %bb5
bb5:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l7
  %t33 = ptrtoint ptr %v2 to i64
  store i64 %t33, ptr %l30, !tbaa !24
  %t34 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e5
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = call ptr @__olang_region_make(ptr %v2)
  %t37 = ptrtoint ptr %t36 to i64
  store i64 %t37, ptr %l30, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l30
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t39, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l32
  br label %bb8
bb8:
  %t41 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e5
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load i64, ptr %l30
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr null
  %t51 = icmp eq ptr %t50, %t44
  call void @__olang_region_settle(ptr %t44, i1 %t51)
  br label %bb10
bb10:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l8
  %t53 = ptrtoint ptr %v2 to i64
  store i64 %t53, ptr %l34, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e6
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = call ptr @__olang_region_make(ptr %v2)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l34
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t59, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l36
  br label %bb13
bb13:
  %t61 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e6
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = load i64, ptr %l34
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr null
  %t71 = icmp eq ptr %t70, %t64
  call void @__olang_region_settle(ptr %t64, i1 %t71)
  br label %bb15
bb15:
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l9
  %t73 = ptrtoint ptr %v2 to i64
  store i64 %t73, ptr %l38, !tbaa !24
  %t74 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e7
  br i1 %t74, label %bb16, label %bb17
bb16:
  %t76 = call ptr @__olang_region_make(ptr %v2)
  %t77 = ptrtoint ptr %t76 to i64
  store i64 %t77, ptr %l38, !tbaa !24
  br label %bb17
bb17:
  %t78 = load i64, ptr %l38
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t79, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %l40
  br label %bb18
bb18:
  %t81 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e7
  br i1 %t81, label %bb19, label %bb20
bb19:
  %t83 = load i64, ptr %l38
  %t84 = inttoptr i64 %t83 to ptr
  %t85 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40, i32 0, i32 0
  %t86 = load { i64, ptr }, ptr %t85
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = call ptr @__olang_region_or(ptr %t87, ptr null)
  %t89 = icmp ne ptr %t88, null
  %t90 = select i1 %t89, ptr %t88, ptr null
  %t91 = icmp eq ptr %t90, %t84
  call void @__olang_region_settle(ptr %t84, i1 %t91)
  br label %bb20
bb20:
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l10
  %t93 = ptrtoint ptr %v2 to i64
  store i64 %t93, ptr %l42, !tbaa !24
  %t94 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e8
  br i1 %t94, label %bb21, label %bb22
bb21:
  %t96 = call ptr @__olang_region_make(ptr %v2)
  %t97 = ptrtoint ptr %t96 to i64
  store i64 %t97, ptr %l42, !tbaa !24
  br label %bb22
bb22:
  %t98 = load i64, ptr %l42
  %t99 = inttoptr i64 %t98 to ptr
  %t100 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t99, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l44
  br label %bb23
bb23:
  %t101 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e8
  br i1 %t101, label %bb24, label %bb25
bb24:
  %t103 = load i64, ptr %l42
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %t105
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = call ptr @__olang_region_or(ptr %t107, ptr null)
  %t109 = icmp ne ptr %t108, null
  %t110 = select i1 %t109, ptr %t108, ptr null
  %t111 = icmp eq ptr %t110, %t104
  call void @__olang_region_settle(ptr %t104, i1 %t111)
  br label %bb25
bb25:
  %t112 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %l11
  %t113 = ptrtoint ptr %v2 to i64
  store i64 %t113, ptr %l46, !tbaa !24
  %t114 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e9
  br i1 %t114, label %bb26, label %bb27
bb26:
  %t116 = call ptr @__olang_region_make(ptr %v2)
  %t117 = ptrtoint ptr %t116 to i64
  store i64 %t117, ptr %l46, !tbaa !24
  br label %bb27
bb27:
  %t118 = load i64, ptr %l46
  %t119 = inttoptr i64 %t118 to ptr
  %t120 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %t119)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t120, ptr %l48
  br label %bb28
bb28:
  %t121 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e9
  br i1 %t121, label %bb29, label %bb30
bb29:
  %t123 = load i64, ptr %l46
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l48, i32 0, i32 2
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = icmp ne ptr %t128, null
  %t130 = select i1 %t129, ptr %t128, ptr null
  %t131 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l48, i32 0, i32 1
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr %t130
  %t137 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l48, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = call ptr @__olang_region_or(ptr %t139, ptr null)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr %t136
  %t143 = icmp eq ptr %t142, %t124
  call void @__olang_region_settle(ptr %t124, i1 %t143)
  br label %bb30
bb30:
  %t144 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l48
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t144, ptr %l12
  %t145 = ptrtoint ptr %v2 to i64
  store i64 %t145, ptr %l50, !tbaa !24
  %t146 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e10
  br i1 %t146, label %bb31, label %bb32
bb31:
  %t148 = call ptr @__olang_region_make(ptr %v2)
  %t149 = ptrtoint ptr %t148 to i64
  store i64 %t149, ptr %l50, !tbaa !24
  br label %bb32
bb32:
  %t150 = load i64, ptr %l50
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %t151)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t152, ptr %l52
  br label %bb33
bb33:
  %t153 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e10
  br i1 %t153, label %bb34, label %bb35
bb34:
  %t155 = load i64, ptr %l50
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l52, i32 0, i32 2
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr null
  %t163 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l52, i32 0, i32 1
  %t164 = load { i64, ptr }, ptr %t163
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = call ptr @__olang_region_or(ptr %t165, ptr null)
  %t167 = icmp ne ptr %t166, null
  %t168 = select i1 %t167, ptr %t166, ptr %t162
  %t169 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l52, i32 0, i32 0
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_region_or(ptr %t171, ptr null)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr %t168
  %t175 = icmp eq ptr %t174, %t156
  call void @__olang_region_settle(ptr %t156, i1 %t175)
  br label %bb35
bb35:
  %t176 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l52
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t176, ptr %l13
  %t177 = ptrtoint ptr %v2 to i64
  store i64 %t177, ptr %l54, !tbaa !24
  %t178 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e11
  br i1 %t178, label %bb36, label %bb37
bb36:
  %t180 = call ptr @__olang_region_make(ptr %v2)
  %t181 = ptrtoint ptr %t180 to i64
  store i64 %t181, ptr %l54, !tbaa !24
  br label %bb37
bb37:
  %t182 = load i64, ptr %l54
  %t183 = inttoptr i64 %t182 to ptr
  %t184 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t183, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %l56
  br label %bb38
bb38:
  %t185 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e11
  br i1 %t185, label %bb39, label %bb40
bb39:
  %t187 = load i64, ptr %l54
  %t188 = inttoptr i64 %t187 to ptr
  %t189 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = call ptr @__olang_region_or(ptr %t191, ptr null)
  %t193 = icmp ne ptr %t192, null
  %t194 = select i1 %t193, ptr %t192, ptr null
  %t195 = icmp eq ptr %t194, %t188
  call void @__olang_region_settle(ptr %t188, i1 %t195)
  br label %bb40
bb40:
  %t196 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l14
  %t197 = ptrtoint ptr %v2 to i64
  store i64 %t197, ptr %l58, !tbaa !24
  %t198 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e12
  br i1 %t198, label %bb41, label %bb42
bb41:
  %t200 = call ptr @__olang_region_make(ptr %v2)
  %t201 = ptrtoint ptr %t200 to i64
  store i64 %t201, ptr %l58, !tbaa !24
  br label %bb42
bb42:
  %t202 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t206 = sdiv i64 %t204, 4
  store i64 %t206, ptr %l62, !tbaa !24
  %t207 = load i64, ptr %l62, !tbaa !24
  %t208 = icmp sge i64 %t207, 0
  br i1 %t208, label %bb43, label %bb44
bb43:
  %t210 = load i64, ptr %l62, !tbaa !24
  %t211 = icmp sle i64 %t210, 1152921504606846975
  br i1 %t211, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_ae31deb80d1dd0d9_33aac4bd953c95e5)
  unreachable
bb45:
  %t213 = load i64, ptr %l62, !tbaa !24
  %t214 = mul i64 %t213, 8
  %t215 = load i64, ptr %l58
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = call ptr @__olang_scope_alloc_zeroed(ptr %t216, i64 %t214)
  %t218 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  store { i64, ptr } %t219, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t221 = ptrtoint ptr %v2 to i64
  store i64 %t221, ptr %l66, !tbaa !24
  %t222 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e14
  br i1 %t222, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_ae31deb80d1dd0d9_33aac4bd953c95e5)
  unreachable
bb47:
  %t224 = call ptr @__olang_region_make(ptr %v2)
  %t225 = ptrtoint ptr %t224 to i64
  store i64 %t225, ptr %l66, !tbaa !24
  br label %bb48
bb48:
  %t226 = load i64, ptr %l66
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t227, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l68
  br label %bb49
bb49:
  %t229 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e14
  br i1 %t229, label %bb50, label %bb51
bb50:
  %t231 = load i64, ptr %l66
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68, i32 0, i32 0
  %t234 = load { i64, ptr }, ptr %t233
  %t235 = extractvalue { i64, ptr } %t234, 1
  %t236 = call ptr @__olang_region_or(ptr %t235, ptr null)
  %t237 = icmp ne ptr %t236, null
  %t238 = select i1 %t237, ptr %t236, ptr null
  %t239 = icmp eq ptr %t238, %t232
  call void @__olang_region_settle(ptr %t232, i1 %t239)
  br label %bb51
bb51:
  %t240 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %l17
  %t241 = ptrtoint ptr %v2 to i64
  store i64 %t241, ptr %l70, !tbaa !24
  %t242 = load i1, ptr @olang_2esole_2estd_2fregex_3adfa_2e15
  br i1 %t242, label %bb52, label %bb53
bb52:
  %t244 = call ptr @__olang_region_make(ptr %v2)
  %t245 = ptrtoint ptr %t244 to i64
  store i64 %t245, ptr %l70, !tbaa !24
  br label %bb53
bb53:
  %t246 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t246, 0
  %t250 = add i64 %t248, 4
  store i64 %t250, ptr %l74, !tbaa !24
  %t251 = load i64, ptr %l74, !tbaa !24
  %t252 = icmp sge i64 %t251, 0
  br i1 %t252, label %bb54, label %bb55
bb54:
  %t254 = load i64, ptr %l74, !tbaa !24
  %t255 = icmp sle i64 %t254, 1152921504606846975
  br i1 %t255, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_944bcd7781441dcc_7ffc346910ea1578)
  unreachable
bb56:
  %t257 = load i64, ptr %l74, !tbaa !24
  %t258 = mul i64 %t257, 8
  %t259 = load i64, ptr %l70
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = call ptr @__olang_scope_alloc_zeroed(ptr %t260, i64 %t258)
  %t262 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t261, 1
  %t265 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 0
  %t266 = load ptr, ptr %l3, !tbaa !29
  store ptr %t266, ptr %t265, !tbaa !29
  %t267 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 1
  %t268 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t268, ptr %t267, !tbaa !27
  %t269 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 2
  %t270 = load i1, ptr %l5, !tbaa !21
  store i1 %t270, ptr %t269, !tbaa !21
  %t271 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 3
  %t272 = load i64, ptr %l6, !tbaa !24
  store i64 %t272, ptr %t271, !tbaa !24
  %t273 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 4
  %t274 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t274, ptr %t273
  %t275 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 5
  %t276 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t276, ptr %t275
  %t277 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 6
  %t278 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t278, ptr %t277
  %t279 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 7
  %t280 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %t279
  %t281 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 8
  %t282 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %t281
  %t283 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 9
  %t284 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t284, ptr %t283
  %t285 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 10
  %t286 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t286, ptr %t285
  %t287 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 11
  %t288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %t287
  %t289 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 12
  %t290 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t290, ptr %t289, !tbaa !27
  %t291 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 13
  %t292 = load i64, ptr %l16, !tbaa !24
  store i64 %t292, ptr %t291, !tbaa !24
  %t293 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 14
  %t294 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %t293
  %t295 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 15
  store { i64, ptr } %t263, ptr %t295, !tbaa !27
  %t297 = getelementptr %"std/regex:dfa", ptr %l78, i32 0, i32 16
  store i1 false, ptr %t297, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l78, i64 456, i1 false)
  br label %ret
bb57:
  call void @__olang_check_failed(ptr @olang_loc_944bcd7781441dcc_7ffc346910ea1578)
  unreachable
ret:
  ret void
}

define dso_local %"std/regex:machine" @std_2fregex_3amachine_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i1
  %l16 = alloca i64
  %l23 = alloca %"std/regex:threads"
  %l25 = alloca i64
  %l32 = alloca %"std/regex:threads"
  %l34 = alloca i64
  %l36 = alloca i64
  %l40 = alloca i64
  %l47 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i64
  %rv = alloca %"std/regex:machine"
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t7 = ptrtoint ptr %v2 to i64
  store i64 %t7, ptr %l16, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2estd_2fregex_3amachine_2e3
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v2)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l16, !tbaa !24
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/regex:prog", ptr %t12, i32 0, i32 9
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = sdiv i64 %t17, 4
  %t20 = load i64, ptr %l2, !tbaa !24
  %t21 = load i64, ptr %l16
  %t22 = inttoptr i64 %t21 to ptr
  %t25 = call %"std/regex:threads" @std_2fregex_3athreads_2ector(ptr %t22, i64 %t19, i64 %t20)
  store %"std/regex:threads" %t25, ptr %l23
  br label %bb3
bb3:
  %t26 = load %"std/regex:threads", ptr %l23
  %t27 = load i64, ptr %l16
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call ptr @__olang_scope_alloc_a(ptr %t28, i64 56, i64 8)
  store %"std/regex:threads" %t26, ptr %t29
  store ptr %t29, ptr %l6, !tbaa !29
  %t31 = ptrtoint ptr %v2 to i64
  store i64 %t31, ptr %l25, !tbaa !24
  %t32 = load i1, ptr @olang_2esole_2estd_2fregex_3amachine_2e4
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t34 = call ptr @__olang_region_make(ptr %v2)
  %t35 = ptrtoint ptr %t34 to i64
  store i64 %t35, ptr %l25, !tbaa !24
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"std/regex:prog", ptr %t36, i32 0, i32 9
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t43 = sdiv i64 %t41, 4
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load i64, ptr %l25
  %t46 = inttoptr i64 %t45 to ptr
  %t49 = call %"std/regex:threads" @std_2fregex_3athreads_2ector(ptr %t46, i64 %t43, i64 %t44)
  store %"std/regex:threads" %t49, ptr %l32
  br label %bb6
bb6:
  %t50 = load %"std/regex:threads", ptr %l32
  %t51 = load i64, ptr %l25
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call ptr @__olang_scope_alloc_a(ptr %t52, i64 56, i64 8)
  store %"std/regex:threads" %t50, ptr %t53
  store ptr %t53, ptr %l7, !tbaa !29
  %t55 = ptrtoint ptr %v2 to i64
  store i64 %t55, ptr %l34, !tbaa !24
  %t56 = load i1, ptr @olang_2esole_2estd_2fregex_3amachine_2e5
  br i1 %t56, label %bb7, label %bb8
bb7:
  %t58 = call ptr @__olang_region_make(ptr %v2)
  %t59 = ptrtoint ptr %t58 to i64
  store i64 %t59, ptr %l34, !tbaa !24
  br label %bb8
bb8:
  %t60 = load i64, ptr %l2, !tbaa !24
  store i64 %t60, ptr %l36, !tbaa !24
  %t61 = load i64, ptr %l36, !tbaa !24
  %t62 = icmp sge i64 %t61, 0
  br i1 %t62, label %bb9, label %bb10
bb9:
  %t64 = load i64, ptr %l36, !tbaa !24
  %t65 = icmp sle i64 %t64, 1152921504606846975
  br i1 %t65, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e4d8684b2ef4eeb9_1ab5f798c93530d)
  unreachable
bb11:
  %t67 = load i64, ptr %l36, !tbaa !24
  %t68 = mul i64 %t67, 8
  %t69 = load i64, ptr %l34
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call ptr @__olang_scope_alloc_zeroed(ptr %t70, i64 %t68)
  %t72 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l8, !tbaa !27
  %t75 = ptrtoint ptr %v2 to i64
  store i64 %t75, ptr %l40, !tbaa !24
  %t76 = load i1, ptr @olang_2esole_2estd_2fregex_3amachine_2e6
  br i1 %t76, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_e4d8684b2ef4eeb9_1ab5f798c93530d)
  unreachable
bb13:
  %t78 = call ptr @__olang_region_make(ptr %v2)
  %t79 = ptrtoint ptr %t78 to i64
  store i64 %t79, ptr %l40, !tbaa !24
  br label %bb14
bb14:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"std/regex:prog", ptr %t80, i32 0, i32 9
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t87 = mul i64 3, %t85
  %t89 = sdiv i64 %t87, 4
  %t91 = add i64 %t89, 4
  store i64 %t91, ptr %l47, !tbaa !24
  %t92 = load i64, ptr %l47, !tbaa !24
  %t93 = icmp sge i64 %t92, 0
  br i1 %t93, label %bb15, label %bb16
bb15:
  %t95 = load i64, ptr %l47, !tbaa !24
  %t96 = icmp sle i64 %t95, 1152921504606846975
  br i1 %t96, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_e25e4c34d6a1752c_1e4144eeb5cec8e0)
  unreachable
bb17:
  %t98 = load i64, ptr %l47, !tbaa !24
  %t99 = mul i64 %t98, 8
  %t100 = load i64, ptr %l40
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = call ptr @__olang_scope_alloc_zeroed(ptr %t101, i64 %t99)
  %t103 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l9, !tbaa !27
  store i1 false, ptr %l10, !tbaa !21
  %t106 = ptrtoint ptr %v2 to i64
  store i64 %t106, ptr %l51, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2estd_2fregex_3amachine_2e8
  br i1 %t107, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_e25e4c34d6a1752c_1e4144eeb5cec8e0)
  unreachable
bb19:
  %t109 = call ptr @__olang_region_make(ptr %v2)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l51, !tbaa !24
  br label %bb20
bb20:
  %t111 = load i64, ptr %l2, !tbaa !24
  store i64 %t111, ptr %l53, !tbaa !24
  %t112 = load i64, ptr %l53, !tbaa !24
  %t113 = icmp sge i64 %t112, 0
  br i1 %t113, label %bb21, label %bb22
bb21:
  %t115 = load i64, ptr %l53, !tbaa !24
  %t116 = icmp sle i64 %t115, 1152921504606846975
  br i1 %t116, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_33923f22aaea5f8f_d8790d86fee1f203)
  unreachable
bb23:
  %t118 = load i64, ptr %l53, !tbaa !24
  %t119 = mul i64 %t118, 8
  %t120 = load i64, ptr %l51
  %t121 = inttoptr i64 %t120 to ptr
  %t122 = call ptr @__olang_scope_alloc_zeroed(ptr %t121, i64 %t119)
  %t123 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t126 = load ptr, ptr %l3, !tbaa !29
  %t127 = insertvalue %"std/regex:machine" undef, ptr %t126, 0
  %t128 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t129 = insertvalue %"std/regex:machine" %t127, { i64, ptr } %t128, 1
  %t130 = load i64, ptr %l5, !tbaa !24
  %t131 = insertvalue %"std/regex:machine" %t129, i64 %t130, 2
  %t132 = load ptr, ptr %l6, !tbaa !29
  %t133 = insertvalue %"std/regex:machine" %t131, ptr %t132, 3
  %t134 = load ptr, ptr %l7, !tbaa !29
  %t135 = insertvalue %"std/regex:machine" %t133, ptr %t134, 4
  %t136 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t137 = insertvalue %"std/regex:machine" %t135, { i64, ptr } %t136, 5
  %t138 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t139 = insertvalue %"std/regex:machine" %t137, { i64, ptr } %t138, 6
  %t140 = load i1, ptr %l10, !tbaa !21
  %t141 = insertvalue %"std/regex:machine" %t139, i1 %t140, 7
  %t143 = insertvalue %"std/regex:machine" %t141, { i64, ptr } %t124, 8
  %t145 = insertvalue %"std/regex:machine" %t143, i64 -1, 9
  store %"std/regex:machine" %t145, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_33923f22aaea5f8f_d8790d86fee1f203)
  unreachable
ret:
  %rr = load %"std/regex:machine", ptr %rv
  ret %"std/regex:machine" %rr
}

define dso_local %"std/regex:node" @std_2fregex_3anode_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca %"std/regex:node"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/regex:node" undef, i64 %a0, 0
  %t6 = insertvalue %"std/regex:node" %t4, i64 0, 1
  %t8 = insertvalue %"std/regex:node" %t6, i64 0, 2
  %t10 = insertvalue %"std/regex:node" %t8, i64 0, 3
  %t12 = insertvalue %"std/regex:node" %t10, i64 0, 4
  %t14 = insertvalue %"std/regex:node" %t12, i1 false, 5
  %t16 = insertvalue %"std/regex:node" %t14, i1 false, 6
  %t18 = insertvalue %"std/regex:node" %t16, i1 true, 7
  store %"std/regex:node" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"std/regex:node", ptr %rv
  ret %"std/regex:node" %rr
}

define dso_local %"std/regex:parser" @std_2fregex_3aparser_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l15 = alloca %"std/regex:prog"
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/regex:parser"
  %t9 = alloca %"std/regex:prog", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l12, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l12, !tbaa !24
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = load i64, ptr %l12
  %t11 = inttoptr i64 %t10 to ptr
  call void @std_2fregex_3aprog_2ector(ptr %t9, ptr %v0, ptr %t11, { i64, ptr } %t8)
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %t9, i64 288, i1 false)
  br label %bb3
bb3:
  %t13 = load i64, ptr %l12
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc_a(ptr %t14, i64 288, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %l15, i64 288, i1 false)
  store ptr %t15, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t17 = ptrtoint ptr %v1 to i64
  store i64 %t17, ptr %l17, !tbaa !24
  %t18 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e3
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t20 = call ptr @__olang_region_make(ptr %v1)
  %t21 = ptrtoint ptr %t20 to i64
  store i64 %t21, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t22 = load i64, ptr %l17
  %t23 = inttoptr i64 %t22 to ptr
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2ector(ptr %t23, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l19
  br label %bb6
bb6:
  %t25 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e3
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load i64, ptr %l17
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = call ptr @__olang_region_or(ptr %t31, ptr null)
  %t33 = icmp ne ptr %t32, null
  %t34 = select i1 %t33, ptr %t32, ptr null
  %t35 = icmp eq ptr %t34, %t28
  call void @__olang_region_settle(ptr %t28, i1 %t35)
  br label %bb8
bb8:
  %t36 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l4
  %t37 = ptrtoint ptr %v1 to i64
  store i64 %t37, ptr %l21, !tbaa !24
  %t38 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e4
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = call ptr @__olang_region_make(ptr %v1)
  %t41 = ptrtoint ptr %t40 to i64
  store i64 %t41, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t42 = load i64, ptr %l21
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t43, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l23
  br label %bb11
bb11:
  %t45 = load i1, ptr @olang_2esole_2estd_2fregex_3aparser_2e4
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t47 = load i64, ptr %l21
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t50 = load { i64, ptr }, ptr %t49
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = call ptr @__olang_region_or(ptr %t51, ptr null)
  %t53 = icmp ne ptr %t52, null
  %t54 = select i1 %t53, ptr %t52, ptr null
  %t55 = icmp eq ptr %t54, %t48
  call void @__olang_region_settle(ptr %t48, i1 %t55)
  br label %bb13
bb13:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t57 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t58 = insertvalue %"std/regex:parser" undef, { i64, ptr } %t57, 0
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t60 = insertvalue %"std/regex:parser" %t58, ptr %t59, 1
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = insertvalue %"std/regex:parser" %t60, i64 %t61, 2
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  %t64 = insertvalue %"std/regex:parser" %t62, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, 3
  %t66 = insertvalue %"std/regex:parser" %t64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, 4
  %t68 = insertvalue %"std/regex:parser" %t66, i1 false, 5
  %t70 = insertvalue %"std/regex:parser" %t68, i1 false, 6
  %t72 = insertvalue %"std/regex:parser" %t70, i1 false, 7
  %t74 = insertvalue %"std/regex:parser" %t72, i64 1, 8
  %t76 = insertvalue %"std/regex:parser" %t74, i1 false, 9
  store %"std/regex:parser" %t76, ptr %rv
  br label %ret
ret:
  %rr = load %"std/regex:parser", ptr %rv
  ret %"std/regex:parser" %rr
}

define dso_local void @std_2fregex_3aprog_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca i64
  %l44 = alloca i64
  %l49 = alloca i64
  %l54 = alloca %"std/regex:prog"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l15, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l15, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l15
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l17
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l15
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb5
bb5:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l2
  %t23 = ptrtoint ptr %v1 to i64
  store i64 %t23, ptr %l19, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e2
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = call ptr @__olang_region_make(ptr %v1)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l19
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l21
  br label %bb8
bb8:
  %t31 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e2
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load i64, ptr %l19
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l3
  %t43 = ptrtoint ptr %v1 to i64
  store i64 %t43, ptr %l23, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e3
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v1)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l23, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l23
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l25
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e3
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l23
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = icmp eq ptr %t60, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t61)
  br label %bb15
bb15:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l4
  %t63 = ptrtoint ptr %v1 to i64
  store i64 %t63, ptr %l27, !tbaa !24
  %t64 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e4
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = call ptr @__olang_region_make(ptr %v1)
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l27, !tbaa !24
  br label %bb17
bb17:
  %t68 = load i64, ptr %l27
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t69, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l29
  br label %bb18
bb18:
  %t71 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e4
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t73 = load i64, ptr %l27
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = icmp ne ptr %t78, null
  %t80 = select i1 %t79, ptr %t78, ptr null
  %t81 = icmp eq ptr %t80, %t74
  call void @__olang_region_settle(ptr %t74, i1 %t81)
  br label %bb20
bb20:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l5
  %t83 = ptrtoint ptr %v1 to i64
  store i64 %t83, ptr %l31, !tbaa !24
  %t84 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e5
  br i1 %t84, label %bb21, label %bb22
bb21:
  %t86 = call ptr @__olang_region_make(ptr %v1)
  %t87 = ptrtoint ptr %t86 to i64
  store i64 %t87, ptr %l31, !tbaa !24
  br label %bb22
bb22:
  %t88 = load i64, ptr %l31
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU32_3e_2ector(ptr %t89, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l33
  br label %bb23
bb23:
  %t91 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e5
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = load i64, ptr %l31
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr null
  %t101 = icmp eq ptr %t100, %t94
  call void @__olang_region_settle(ptr %t94, i1 %t101)
  br label %bb25
bb25:
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l6
  %t103 = ptrtoint ptr %v1 to i64
  store i64 %t103, ptr %l35, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e6
  br i1 %t104, label %bb26, label %bb27
bb26:
  %t106 = call ptr @__olang_region_make(ptr %v1)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l35, !tbaa !24
  br label %bb27
bb27:
  %t108 = load i64, ptr %l35
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t109, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l37
  br label %bb28
bb28:
  %t111 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e6
  br i1 %t111, label %bb29, label %bb30
bb29:
  %t113 = load i64, ptr %l35
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr null
  %t121 = icmp eq ptr %t120, %t114
  call void @__olang_region_settle(ptr %t114, i1 %t121)
  br label %bb30
bb30:
  %t122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %l7
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l8, !tbaa !27
  store i1 false, ptr %l9, !tbaa !21
  %t123 = ptrtoint ptr %v1 to i64
  store i64 %t123, ptr %l39, !tbaa !24
  %t124 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e9
  br i1 %t124, label %bb31, label %bb32
bb31:
  %t126 = call ptr @__olang_region_make(ptr %v1)
  %t127 = ptrtoint ptr %t126 to i64
  store i64 %t127, ptr %l39, !tbaa !24
  br label %bb32
bb32:
  %t128 = icmp sge i64 0, 0
  br i1 %t128, label %bb33, label %bb34
bb33:
  %t130 = icmp sle i64 0, 1152921504606846975
  br i1 %t130, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_d26e97dee43c1922_da8c7178d29d4246)
  unreachable
bb35:
  %t132 = mul i64 0, 8
  %t133 = load i64, ptr %l39
  %t134 = inttoptr i64 %t133 to ptr
  %t135 = insertvalue { i64, ptr } undef, i64 0, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t136, ptr %l10, !tbaa !27
  %t138 = ptrtoint ptr %v1 to i64
  store i64 %t138, ptr %l44, !tbaa !24
  %t139 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e10
  br i1 %t139, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_d26e97dee43c1922_da8c7178d29d4246)
  unreachable
bb37:
  %t141 = call ptr @__olang_region_make(ptr %v1)
  %t142 = ptrtoint ptr %t141 to i64
  store i64 %t142, ptr %l44, !tbaa !24
  br label %bb38
bb38:
  %t143 = icmp sge i64 0, 0
  br i1 %t143, label %bb39, label %bb40
bb39:
  %t145 = icmp sle i64 0, 1152921504606846975
  br i1 %t145, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_f1c7ddb1781ca5d7_ea74bd3b53d9c5db)
  unreachable
bb41:
  %t147 = mul i64 0, 8
  %t148 = load i64, ptr %l44
  %t149 = inttoptr i64 %t148 to ptr
  %t150 = insertvalue { i64, ptr } undef, i64 0, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t151, ptr %l11, !tbaa !27
  %t153 = ptrtoint ptr %v1 to i64
  store i64 %t153, ptr %l49, !tbaa !24
  %t154 = load i1, ptr @olang_2esole_2estd_2fregex_3aprog_2e11
  br i1 %t154, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_f1c7ddb1781ca5d7_ea74bd3b53d9c5db)
  unreachable
bb43:
  %t156 = call ptr @__olang_region_make(ptr %v1)
  %t157 = ptrtoint ptr %t156 to i64
  store i64 %t157, ptr %l49, !tbaa !24
  br label %bb44
bb44:
  %t158 = icmp sge i64 0, 0
  br i1 %t158, label %bb45, label %bb46
bb45:
  %t160 = icmp sle i64 0, 2305843009213693951
  br i1 %t160, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_7aee5d094a774434_74ecd7591151c1f8)
  unreachable
bb47:
  %t162 = mul i64 0, 4
  %t163 = load i64, ptr %l49
  %t164 = inttoptr i64 %t163 to ptr
  %t165 = insertvalue { i64, ptr } undef, i64 0, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t168 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 0
  %t169 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t169, ptr %t168, !tbaa !27
  %t170 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 1
  %t171 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t171, ptr %t170
  %t172 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 2
  %t173 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t173, ptr %t172
  %t174 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 3
  %t175 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t175, ptr %t174
  %t176 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 4
  %t177 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t177, ptr %t176
  %t178 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 5
  %t179 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %t178
  %t180 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 6
  %t181 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %t180
  %t182 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 7
  %t183 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t183, ptr %t182, !tbaa !27
  %t184 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 8
  %t185 = load i1, ptr %l9, !tbaa !21
  store i1 %t185, ptr %t184, !tbaa !21
  %t186 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 9
  %t187 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t187, ptr %t186, !tbaa !27
  %t188 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 10
  %t189 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t189, ptr %t188, !tbaa !27
  %t190 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 11
  store { i64, ptr } %t166, ptr %t190, !tbaa !27
  %t192 = getelementptr %"std/regex:prog", ptr %l54, i32 0, i32 12
  store i1 false, ptr %t192, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l54, i64 288, i1 false)
  br label %ret
bb48:
  call void @__olang_check_failed(ptr @olang_loc_7aee5d094a774434_74ecd7591151c1f8)
  unreachable
ret:
  ret void
}

define dso_local %"std/regex:searcher" @std_2fregex_3asearcher_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca i64
  %l14 = alloca %"std/regex:machine"
  %l16 = alloca i64
  %l21 = alloca %"std/regex:dfa"
  %l23 = alloca i64
  %l28 = alloca %"std/regex:dfa"
  %l32 = alloca i1
  %rv = alloca %"std/regex:searcher"
  %t32 = alloca %"std/regex:dfa", align 8
  %t51 = alloca %"std/regex:dfa", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  %t3 = ptrtoint ptr %v2 to i64
  store i64 %t3, ptr %l9, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2estd_2fregex_3asearcher_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v2)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l9, !tbaa !24
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = load i64, ptr %l9
  %t12 = inttoptr i64 %t11 to ptr
  %t16 = call %"std/regex:machine" @std_2fregex_3amachine_2ector(ptr %v0, ptr %v1, ptr %t12, ptr %t8, { i64, ptr } %t9, i64 %a2)
  store %"std/regex:machine" %t16, ptr %l14
  br label %bb3
bb3:
  %t17 = load %"std/regex:machine", ptr %l14
  %t18 = load i64, ptr %l9
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc_a(ptr %t19, i64 112, i64 8)
  store %"std/regex:machine" %t17, ptr %t20
  store ptr %t20, ptr %l4, !tbaa !29
  %t22 = ptrtoint ptr %v2 to i64
  store i64 %t22, ptr %l16, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2estd_2fregex_3asearcher_2e2
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = call ptr @__olang_region_make(ptr %v2)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"std/regex:prog", ptr %t28, i32 0, i32 9
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t33 = load i64, ptr %l16
  %t34 = inttoptr i64 %t33 to ptr
  call void @std_2fregex_3adfa_2ector(ptr %t32, ptr %v0, ptr %v0, ptr %t34, ptr %t27, { i64, ptr } %t31, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t32, i64 456, i1 false)
  br label %bb6
bb6:
  %t37 = load i64, ptr %l16
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = call ptr @__olang_scope_alloc_a(ptr %t38, i64 456, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %l21, i64 456, i1 false)
  store ptr %t39, ptr %l5, !tbaa !29
  %t41 = ptrtoint ptr %v2 to i64
  store i64 %t41, ptr %l23, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2estd_2fregex_3asearcher_2e3
  br i1 %t42, label %bb7, label %bb8
bb7:
  %t44 = call ptr @__olang_region_make(ptr %v2)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"std/regex:prog", ptr %t47, i32 0, i32 10
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = load i64, ptr %l23
  %t53 = inttoptr i64 %t52 to ptr
  call void @std_2fregex_3adfa_2ector(ptr %t51, ptr %v0, ptr %v0, ptr %t53, ptr %t46, { i64, ptr } %t50, i1 true)
  call void @llvm.memmove.p0.p0.i64(ptr %l28, ptr %t51, i64 456, i1 false)
  br label %bb9
bb9:
  %t56 = load i64, ptr %l23
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = call ptr @__olang_scope_alloc_a(ptr %t57, i64 456, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t58, ptr %l28, i64 456, i1 false)
  store ptr %t58, ptr %l6, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/regex:prog", ptr %t60, i32 0, i32 12
  %t63 = load i1, ptr %t62, !tbaa !21
  br i1 %t63, label %bb10, label %bb11
bb10:
  %t65 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = load i64, ptr @G_2estd_2fregex_2edfaMinText, !tbaa !24
  %t71 = icmp sge i64 %t67, %t68
  store i1 %t71, ptr %l32, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb12
bb12:
  %t73 = load i1, ptr %l32, !tbaa !21
  %t74 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t75 = insertvalue %"std/regex:searcher" undef, { i64, ptr } %t74, 0
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t77 = insertvalue %"std/regex:searcher" %t75, ptr %t76, 1
  %t78 = load ptr, ptr %l5, !tbaa !29
  %t79 = insertvalue %"std/regex:searcher" %t77, ptr %t78, 2
  %t80 = load ptr, ptr %l6, !tbaa !29
  %t81 = insertvalue %"std/regex:searcher" %t79, ptr %t80, 3
  %t83 = insertvalue %"std/regex:searcher" %t81, i1 %t73, 4
  store %"std/regex:searcher" %t83, ptr %rv
  br label %ret
ret:
  %rr = load %"std/regex:searcher", ptr %rv
  ret %"std/regex:searcher" %rr
}

define dso_local %"std/regex:threads" @std_2fregex_3athreads_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i64
  %rv = alloca %"std/regex:threads"
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l6, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2estd_2fregex_3athreads_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l0, !tbaa !24
  store i64 %t6, ptr %l8, !tbaa !24
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = icmp sge i64 %t7, 0
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = icmp sle i64 %t10, 1152921504606846975
  br i1 %t11, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_d1f9c2d4f9b52d1_13d95a7fe73cda15)
  unreachable
bb5:
  %t13 = load i64, ptr %l8, !tbaa !24
  %t14 = mul i64 %t13, 8
  %t15 = load i64, ptr %l6
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = call ptr @__olang_scope_alloc_zeroed(ptr %t16, i64 %t14)
  %t18 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l2, !tbaa !27
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l12, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2estd_2fregex_3athreads_2e1
  br i1 %t22, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d1f9c2d4f9b52d1_13d95a7fe73cda15)
  unreachable
bb7:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l12, !tbaa !24
  br label %bb8
bb8:
  %t26 = load i64, ptr %l0, !tbaa !24
  store i64 %t26, ptr %l14, !tbaa !24
  %t27 = load i64, ptr %l14, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load i64, ptr %l14, !tbaa !24
  %t31 = icmp sle i64 %t30, 1152921504606846975
  br i1 %t31, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_4ffee884c43224c4_80e2779c150ce28)
  unreachable
bb11:
  %t33 = load i64, ptr %l14, !tbaa !24
  %t34 = mul i64 %t33, 8
  %t35 = load i64, ptr %l12
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = call ptr @__olang_scope_alloc_zeroed(ptr %t36, i64 %t34)
  %t38 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  %t41 = ptrtoint ptr %v0 to i64
  store i64 %t41, ptr %l18, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2estd_2fregex_3athreads_2e2
  br i1 %t42, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_4ffee884c43224c4_80e2779c150ce28)
  unreachable
bb13:
  %t44 = call ptr @__olang_region_make(ptr %v0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l18, !tbaa !24
  br label %bb14
bb14:
  %t46 = load i64, ptr %l0, !tbaa !24
  %t50 = mul i64 %t46, %a1
  store i64 %t50, ptr %l22, !tbaa !24
  %t51 = load i64, ptr %l22, !tbaa !24
  %t52 = icmp sge i64 %t51, 0
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load i64, ptr %l22, !tbaa !24
  %t55 = icmp sle i64 %t54, 1152921504606846975
  br i1 %t55, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_f81c70a6337701a7_f22a474db3838b8b)
  unreachable
bb17:
  %t57 = load i64, ptr %l22, !tbaa !24
  %t58 = mul i64 %t57, 8
  %t59 = load i64, ptr %l18
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = call ptr @__olang_scope_alloc_zeroed(ptr %t60, i64 %t58)
  %t62 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t66 = insertvalue %"std/regex:threads" undef, { i64, ptr } %t65, 0
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = insertvalue %"std/regex:threads" %t66, { i64, ptr } %t67, 1
  %t70 = insertvalue %"std/regex:threads" %t68, { i64, ptr } %t63, 2
  %t72 = insertvalue %"std/regex:threads" %t70, i64 0, 3
  store %"std/regex:threads" %t72, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_f81c70a6337701a7_f22a474db3838b8b)
  unreachable
ret:
  %rr = load %"std/regex:threads", ptr %rv
  ret %"std/regex:threads" %rr
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
@olang_2esole_2estd_2fregex_3aparser_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_errpay_push() cold
declare void @__olang_errpay_set(ptr) cold
@olang_2esole_2estd_2fregex_3aprog_2e9 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2estd_2fregex_3aprog_2e10 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aprog_2e11 = weak hidden constant i1 false
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fregex_3aRegex_2e0 = weak hidden constant i1 false
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
@olang_2esole_2estd_2fregex_3amachine_2e0 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3amachine_2e3 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3amachine_2e4 = weak hidden constant i1 false
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":]" }>, align 8
@.d6 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"alnum" }>, align 8
@.d7 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"alpha" }>, align 8
@.d8 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ascii" }>, align 8
@.d9 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"blank" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"cntrl" }>, align 8
@.d11 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"digit" }>, align 8
@.d12 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"graph" }>, align 8
@.d13 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"lower" }>, align 8
@.d14 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"print" }>, align 8
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"punct" }>, align 8
@.d16 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"space" }>, align 8
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"upper" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"word" }>, align 8
@.d19 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"xdigit" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fregex_3aprog_2e7 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3asearcher_2e1 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aMatch_2e1 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e4 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2estd_2fregex_3adfa_2e5 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e6 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e7 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e8 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e9 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e10 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e11 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e12 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e14 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3adfa_2e15 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3amachine_2e5 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3amachine_2e6 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3amachine_2e8 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aparser_2e3 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aparser_2e4 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aprog_2e1 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aprog_2e2 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aprog_2e3 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aprog_2e4 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aprog_2e5 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3aprog_2e6 = weak hidden constant i1 false
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2estd_2fregex_3asearcher_2e2 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3asearcher_2e3 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3athreads_2e0 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3athreads_2e1 = weak hidden constant i1 false
@olang_2esole_2estd_2fregex_3athreads_2e2 = weak hidden constant i1 false
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
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eToArray_3cU32_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_d1d956f37e45fa5d_12a1d1438663f649 = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_d7ce2e5cb630a489_c1ddac025820271d = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_4cb5475c85a0a71c_30e84b8abf0e5bc0 = external constant [0 x i8]
@olang_loc_8442faa205becbc7_64113088887f38bb = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_1dd3c36670b3541_58deb7f3d7eb4ae5 = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i32, i64 } } @std_2futf8_2eDecode(ptr %v0, { i64, ptr } %a0, i64 %a1)
@G_2estd_2futf8_2eReplacement = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FD\FF\00\00" }>, align 8
@olang_loc_fad6be9f9a8bc235_afbd0997a4255a21 = external constant [0 x i8]
@olang_loc_628ce399e2e64a43_8112419940ee25d7 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2ePush_3cstd_2fregex_3aMatch_3e(ptr %v0, ptr %v1, ptr %a0, %"std/regex:Match" %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eLen_3cstd_2fregex_3aMatch_3e(ptr %v0, ptr %a0)
declare %"std/regex:Match" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eAt_3cstd_2fregex_3aMatch_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_474656555b17887a_ac2d9832f46fc0e = external constant [0 x i8]
@olang_loc_645703fcb9c25e57_963319b49941480b = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_80ee03e65c5d9164_c0738b5671b6f6a0 = external constant [0 x i8]
@olang_loc_30cf43fa63ed7451_c58d81c59eb0d0fd = external constant [0 x i8]
@olang_loc_b478556e76be53ca_8296c7ef827c5ebe = external constant [0 x i8]
@olang_loc_27f4c120f59fa35f_833012e64c44eadb = external constant [0 x i8]
@olang_loc_b7d4b418f286e474_d03bd50a2deebe0 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_4ff02c66b403d1ab_e592f7aadf729b77 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePushAll_3cI64_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_ba53ab31381ca0c5_2e1dc8549570eb59 = external constant [0 x i8]
@olang_loc_e0007b4d7c2df66f_e279725bd041d3cb = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2ePush_3cstd_2fregex_3anode_3e(ptr %v0, ptr %a0, %"std/regex:node" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eLen_3cstd_2fregex_3anode_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2ePushAll_3cU32_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eLen_3cU32_3e(ptr %v0, ptr %a0)
declare %"std/regex:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eAt_3cstd_2fregex_3anode_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_675b85940ddce45a_720e94ce1698584e = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
@olang_loc_514d10a167efc972_51a5085ca00b74c6 = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eAt_3cU32_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a538d4e6b0f915ab_96accfb9e2ff8a47 = external constant [0 x i8]
@olang_loc_8b6e2a1a9abc2cae_dc881001cbcf466a = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H563b551a62b57e684177c5454e33a204(ptr %v0, ptr %v1, ptr %a0)
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU32_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eTruncate_3cU32_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eView_3cU32_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1a77a20372c02910_eb5bc8fae9074f0c = external constant [0 x i8]
@olang_loc_2a6ed654bb5586d7_a70cae4876dec023 = external constant [0 x i8]
@olang_loc_d5e28ad5caab0fa_47620fac91cb4846 = external constant [0 x i8]
@olang_loc_a7fc8cec6c1747da_adad6facbabedf66 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2futf8_2eEncode(ptr %v0, i32 %a0)
@olang_loc_6f2b67eb6d33c6ec_131b1693c3e68d08 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
@olang_loc_ae31deb80d1dd0d9_33aac4bd953c95e5 = external constant [0 x i8]
@olang_loc_944bcd7781441dcc_7ffc346910ea1578 = external constant [0 x i8]
@olang_loc_e4d8684b2ef4eeb9_1ab5f798c93530d = external constant [0 x i8]
@olang_loc_e25e4c34d6a1752c_1e4144eeb5cec8e0 = external constant [0 x i8]
@olang_loc_33923f22aaea5f8f_d8790d86fee1f203 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_d26e97dee43c1922_da8c7178d29d4246 = external constant [0 x i8]
@olang_loc_f1c7ddb1781ca5d7_ea74bd3b53d9c5db = external constant [0 x i8]
@olang_loc_7aee5d094a774434_74ecd7591151c1f8 = external constant [0 x i8]
@olang_loc_d1f9c2d4f9b52d1_13d95a7fe73cda15 = external constant [0 x i8]
@olang_loc_4ffee884c43224c4_80e2779c150ce28 = external constant [0 x i8]
@olang_loc_f81c70a6337701a7_f22a474db3838b8b = external constant [0 x i8]

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
