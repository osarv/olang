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
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:LastUses" = type { i64, { i64, ptr }, { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:ViewWalk" = type { ptr, ptr, i64, { ptr, ptr }, { ptr, ptr } }
%"compiler/typed:dropWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:holdWalk" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:printer" = type { ptr, %"std/prelude/text:StringBuilder" }
%"compiler/typed:Item" = type { i32, i64 }
define dso_local i1 @compiler_2ftyped_2eAlwaysReached(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftyped_2ereached(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp eq i64 %t6, 1
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l50 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l60 = alloca i1
  %l61 = alloca i1
  %l66 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  %l85 = alloca { i64, ptr }
  %l92 = alloca i1
  %l96 = alloca i1
  %l104 = alloca i1
  %l113 = alloca i1
  %l114 = alloca ptr
  %l122 = alloca i1
  %l123 = alloca ptr
  %l124 = alloca i1
  %l137 = alloca { i64, ptr }
  %l148 = alloca { i64, ptr }
  %l154 = alloca i1
  %l164 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca i1
  %l174 = alloca i1
  %l175 = alloca ptr
  %l176 = alloca i1
  %l184 = alloca i1
  %l185 = alloca ptr
  %l186 = alloca i1
  %l194 = alloca i1
  %l195 = alloca i1
  %l199 = alloca i1
  %l201 = alloca { i64, ptr }
  %l204 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t7 = load ptr, ptr %l25, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l25, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 7
  store i1 %t13, ptr %l26, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l26, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb20
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t16 = load ptr, ptr %l29, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l29, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 5
  store i1 %t22, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l30, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t25 = load ptr, ptr %l33, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l33, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 8
  store i1 %t31, ptr %l34, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l34, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t34 = load ptr, ptr %l37, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb16, label %bb17
bb16:
  %t37 = load ptr, ptr %l37, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 18}
  %t40 = icmp eq i64 %t38, 16
  store i1 %t40, ptr %l38, !tbaa !21
  br label %bb17
bb17:
  %t41 = load i1, ptr %l38, !tbaa !21
  br i1 %t41, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t44 = load ptr, ptr %l42, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb22, label %bb23
bb22:
  %t47 = load ptr, ptr %l42, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 18}
  %t50 = icmp eq i64 %t48, 6
  store i1 %t50, ptr %l43, !tbaa !21
  br label %bb23
bb23:
  %t51 = load i1, ptr %l43, !tbaa !21
  br i1 %t51, label %bb24, label %bb25
bb24:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr { i64, [5 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t54, i32 0, i32 1
  %t56 = load i32, ptr %t55
  store i32 %t56, ptr %l2, !tbaa !23
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l2, !tbaa !23
  %t62 = call i1 @compiler_2ftyped_2earenaArray(ptr %v0, ptr %t58, i32 %t59)
  store i1 %t62, ptr %l50
  br label %bb27
bb27:
  %t63 = load i1, ptr %l50, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
bb28:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t65 = load ptr, ptr %l51, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb29, label %bb30
bb29:
  %t68 = load ptr, ptr %l51, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 18}
  %t71 = icmp eq i64 %t69, 11
  store i1 %t71, ptr %l52, !tbaa !21
  br label %bb30
bb30:
  %t72 = load i1, ptr %l52, !tbaa !21
  br i1 %t72, label %bb31, label %bb32
bb31:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l3, !tbaa !29
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Cond", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t86 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t79, ptr %t83)
  store i1 %t86, ptr %l60
  br label %bb34
bb34:
  %t87 = load i1, ptr %l60, !tbaa !21
  br i1 %t87, label %bb35, label %bb36
bb35:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l3, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Cond", ptr %t89, i32 0, i32 2
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t96 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t88, ptr %t92)
  store i1 %t96, ptr %l66
  br label %bb37
bb36:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb38
bb37:
  %t97 = load i1, ptr %l66, !tbaa !21
  store i1 %t97, ptr %l61, !tbaa !21
  br label %bb38
bb38:
  %t98 = load i1, ptr %l61, !tbaa !21
  store i1 %t98, ptr %rv
  br label %ret
bb39:
  %t99 = load ptr, ptr %l1, !tbaa !29
  store ptr %t99, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t100 = load ptr, ptr %l67, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb40, label %bb41
bb40:
  %t103 = load ptr, ptr %l67, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 18}
  %t106 = icmp eq i64 %t104, 13
  store i1 %t106, ptr %l68, !tbaa !21
  br label %bb41
bb41:
  %t107 = load i1, ptr %l68, !tbaa !21
  br i1 %t107, label %bb42, label %bb43
bb42:
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [5 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l4, !tbaa !29
  br label %bb44
bb43:
  br label %bb74
bb44:
  %t114 = load ptr, ptr %l4, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Match", ptr %t114, i32 0, i32 3
  %t117 = load i1, ptr %t116, !tbaa !21
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb45, label %bb46
bb45:
  store i1 false, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t122 = load ptr, ptr %l4, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Match", ptr %t122, i32 0, i32 1
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  store { i64, ptr } %t125, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 0
  store i64 %t129, ptr %l7, !tbaa !24
  br label %bb48
bb48:
  %t131 = load i64, ptr %l6, !tbaa !24
  %t132 = load i64, ptr %l7, !tbaa !24
  %t135 = icmp slt i64 %t131, %t132
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb49, label %bb50
bb49:
  br label %bb60
bb50:
  br label %bb51
bb51:
  %t139 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t139, ptr %l85, !tbaa !27
  %t140 = load i64, ptr %l6, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr ptr, ptr %t143, i64 %t140
  %t145 = load ptr, ptr %t144, !tbaa !39
  store ptr %t145, ptr %l8, !tbaa !29
  %t147 = load ptr, ptr %l8, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Arm", ptr %t147, i32 0, i32 4
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = icmp eq ptr %t150, null
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb52, label %bb53
bb52:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l8, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Arm", ptr %t157, i32 0, i32 4
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t163 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t156, ptr %t160)
  store i1 %t163, ptr %l96
  br label %bb54
bb53:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb55
bb54:
  %t164 = load i1, ptr %l96, !tbaa !21
  %t165 = xor i1 %t164, true
  store i1 %t165, ptr %l92, !tbaa !21
  br label %bb55
bb55:
  %t167 = load i1, ptr %l92, !tbaa !21
  br i1 %t167, label %bb56, label %bb57
bb56:
  store i1 false, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t169 = load i64, ptr %l6, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l6, !tbaa !24
  br label %bb48
bb60:
  %t173 = load ptr, ptr %l4, !tbaa !29
  %t175 = getelementptr %"compiler/typed:Match", ptr %t173, i32 0, i32 2
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t178 = icmp eq ptr %t176, null
  br i1 %t178, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb66
bb62:
  %t180 = load ptr, ptr %l4, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Match", ptr %t180, i32 0, i32 2
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = icmp eq ptr %t183, null
  br i1 %t185, label %bb63, label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_9640b30413567955_c65a1e6fb20cf981)
  unreachable
bb64:
  br label %bb65
bb65:
  %t187 = load ptr, ptr %l4, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Match", ptr %t187, i32 0, i32 2
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Arm", ptr %t190, i32 0, i32 4
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = icmp eq ptr %t194, null
  store i1 %t196, ptr %l104, !tbaa !21
  br label %bb66
bb66:
  %t198 = load i1, ptr %l104, !tbaa !21
  br i1 %t198, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb73
bb68:
  %t199 = load ptr, ptr %l0, !tbaa !29
  store ptr %t199, ptr %l114, !tbaa !29
  %t200 = load ptr, ptr %l4, !tbaa !29
  %t202 = getelementptr %"compiler/typed:Match", ptr %t200, i32 0, i32 2
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t205 = icmp eq ptr %t203, null
  br i1 %t205, label %bb69, label %bb70
bb69:
  call void @__olang_check_failed(ptr @olang_loc_9640b30413567955_c65a1e6fb20cf981)
  unreachable
bb70:
  br label %bb71
bb71:
  %t207 = load ptr, ptr %l4, !tbaa !29
  %t209 = getelementptr %"compiler/typed:Match", ptr %t207, i32 0, i32 2
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Arm", ptr %t210, i32 0, i32 4
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t215 = load ptr, ptr %l114, !tbaa !29
  %t217 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t215, ptr %t214)
  store i1 %t217, ptr %l122
  br label %bb72
bb72:
  %t218 = load i1, ptr %l122, !tbaa !21
  store i1 %t218, ptr %l113, !tbaa !21
  br label %bb73
bb73:
  %t219 = load i1, ptr %l113, !tbaa !21
  store i1 %t219, ptr %rv
  br label %ret
bb74:
  %t220 = load ptr, ptr %l1, !tbaa !29
  store ptr %t220, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t221 = load ptr, ptr %l123, !tbaa !29
  %t222 = icmp ne ptr %t221, null
  br i1 %t222, label %bb75, label %bb76
bb75:
  %t224 = load ptr, ptr %l123, !tbaa !29
  %t225 = load i64, ptr %t224, !range !{i64 0, i64 18}
  %t227 = icmp eq i64 %t225, 14
  store i1 %t227, ptr %l124, !tbaa !21
  br label %bb76
bb76:
  %t228 = load i1, ptr %l124, !tbaa !21
  br i1 %t228, label %bb77, label %bb78
bb77:
  %t229 = load ptr, ptr %l1, !tbaa !29
  %t231 = getelementptr { i64, [5 x i64] }, ptr %t229, i32 0, i32 1
  %t232 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t231, i32 0, i32 2
  %t233 = load ptr, ptr %t232
  store ptr %t233, ptr %l9, !tbaa !29
  br label %bb79
bb78:
  br label %bb97
bb79:
  %t235 = load ptr, ptr %l9, !tbaa !29
  %t237 = getelementptr %"compiler/typed:Try", ptr %t235, i32 0, i32 1
  %t238 = load { i64, ptr }, ptr %t237, !tbaa !27
  store { i64, ptr } %t238, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t240 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t240, 0
  store i64 %t242, ptr %l12, !tbaa !24
  br label %bb80
bb80:
  %t244 = load i64, ptr %l11, !tbaa !24
  %t245 = load i64, ptr %l12, !tbaa !24
  %t248 = icmp slt i64 %t244, %t245
  %t250 = xor i1 %t248, true
  br i1 %t250, label %bb81, label %bb82
bb81:
  br label %bb95
bb82:
  br label %bb83
bb83:
  %t252 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t252, ptr %l137, !tbaa !27
  %t253 = load i64, ptr %l11, !tbaa !24
  %t255 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !27
  %t257 = getelementptr ptr, ptr %t256, i64 %t253
  %t258 = load ptr, ptr %t257, !tbaa !39
  %t262 = getelementptr %"compiler/typed:Clause", ptr %t258, i32 0, i32 4
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  store { i64, ptr } %t263, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t265 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t265, 0
  store i64 %t267, ptr %l16, !tbaa !24
  br label %bb84
bb84:
  %t269 = load i64, ptr %l15, !tbaa !24
  %t270 = load i64, ptr %l16, !tbaa !24
  %t273 = icmp slt i64 %t269, %t270
  %t275 = xor i1 %t273, true
  br i1 %t275, label %bb85, label %bb86
bb85:
  br label %bb93
bb86:
  br label %bb87
bb87:
  %t277 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t277, ptr %l148, !tbaa !27
  %t278 = load i64, ptr %l15, !tbaa !24
  %t280 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr ptr, ptr %t281, i64 %t278
  %t283 = load ptr, ptr %t282, !tbaa !39
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t290 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t285, ptr %t283)
  store i1 %t290, ptr %l154
  br label %bb88
bb88:
  %t291 = load i1, ptr %l154, !tbaa !21
  %t292 = xor i1 %t291, true
  br i1 %t292, label %bb89, label %bb90
bb89:
  store i1 false, ptr %rv
  br label %ret
bb90:
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t295 = load i64, ptr %l15, !tbaa !24
  %t297 = add i64 %t295, 1
  store i64 %t297, ptr %l15, !tbaa !24
  br label %bb84
bb93:
  br label %bb94
bb94:
  %t299 = load i64, ptr %l11, !tbaa !24
  %t301 = add i64 %t299, 1
  store i64 %t301, ptr %l11, !tbaa !24
  br label %bb80
bb95:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load ptr, ptr %l9, !tbaa !29
  %t306 = getelementptr %"compiler/typed:Try", ptr %t304, i32 0, i32 0
  %t307 = load ptr, ptr %t306, !tbaa !29
  %t310 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t303, ptr %t307)
  store i1 %t310, ptr %l164
  br label %bb96
bb96:
  %t311 = load i1, ptr %l164, !tbaa !21
  store i1 %t311, ptr %rv
  br label %ret
bb97:
  %t312 = load ptr, ptr %l1, !tbaa !29
  store ptr %t312, ptr %l165, !tbaa !29
  store i1 false, ptr %l166, !tbaa !21
  %t313 = load ptr, ptr %l165, !tbaa !29
  %t314 = icmp ne ptr %t313, null
  br i1 %t314, label %bb98, label %bb99
bb98:
  %t316 = load ptr, ptr %l165, !tbaa !29
  %t317 = load i64, ptr %t316, !range !{i64 0, i64 18}
  %t319 = icmp eq i64 %t317, 12
  store i1 %t319, ptr %l166, !tbaa !21
  br label %bb99
bb99:
  %t320 = load i1, ptr %l166, !tbaa !21
  br i1 %t320, label %bb100, label %bb101
bb100:
  %t321 = load ptr, ptr %l1, !tbaa !29
  %t323 = getelementptr { i64, [5 x i64] }, ptr %t321, i32 0, i32 1
  %t324 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t323, i32 0, i32 2
  %t325 = load ptr, ptr %t324
  store ptr %t325, ptr %l18, !tbaa !29
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load ptr, ptr %l18, !tbaa !29
  %t330 = getelementptr %"compiler/typed:Seq", ptr %t328, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t334 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t327, ptr %t331)
  store i1 %t334, ptr %l174
  br label %bb103
bb103:
  %t335 = load i1, ptr %l174, !tbaa !21
  store i1 %t335, ptr %rv
  br label %ret
bb104:
  %t336 = load ptr, ptr %l1, !tbaa !29
  store ptr %t336, ptr %l175, !tbaa !29
  store i1 false, ptr %l176, !tbaa !21
  %t337 = load ptr, ptr %l175, !tbaa !29
  %t338 = icmp ne ptr %t337, null
  br i1 %t338, label %bb105, label %bb106
bb105:
  %t340 = load ptr, ptr %l175, !tbaa !29
  %t341 = load i64, ptr %t340, !range !{i64 0, i64 18}
  %t343 = icmp eq i64 %t341, 17
  store i1 %t343, ptr %l176, !tbaa !21
  br label %bb106
bb106:
  %t344 = load i1, ptr %l176, !tbaa !21
  br i1 %t344, label %bb107, label %bb108
bb107:
  %t345 = load ptr, ptr %l1, !tbaa !29
  %t347 = getelementptr { i64, [5 x i64] }, ptr %t345, i32 0, i32 1
  %t348 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t347, i32 0, i32 2
  %t349 = load ptr, ptr %t348
  store ptr %t349, ptr %l19, !tbaa !29
  br label %bb109
bb108:
  br label %bb111
bb109:
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load ptr, ptr %l19, !tbaa !29
  %t356 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t351, ptr %t352)
  store i1 %t356, ptr %l184
  br label %bb110
bb110:
  %t357 = load i1, ptr %l184, !tbaa !21
  store i1 %t357, ptr %rv
  br label %ret
bb111:
  %t358 = load ptr, ptr %l1, !tbaa !29
  store ptr %t358, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t359 = load ptr, ptr %l185, !tbaa !29
  %t360 = icmp ne ptr %t359, null
  br i1 %t360, label %bb112, label %bb113
bb112:
  %t362 = load ptr, ptr %l185, !tbaa !29
  %t363 = load i64, ptr %t362, !range !{i64 0, i64 18}
  %t365 = icmp eq i64 %t363, 9
  store i1 %t365, ptr %l186, !tbaa !21
  br label %bb113
bb113:
  %t366 = load i1, ptr %l186, !tbaa !21
  br i1 %t366, label %bb114, label %bb115
bb114:
  %t367 = load ptr, ptr %l1, !tbaa !29
  %t369 = getelementptr { i64, [5 x i64] }, ptr %t367, i32 0, i32 1
  %t370 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t369, i32 0, i32 2
  %t371 = load i32, ptr %t370, !range !{i32 0, i32 52}
  store i32 %t371, ptr %l20
  %t373 = load ptr, ptr %l1, !tbaa !29
  %t375 = getelementptr { i64, [5 x i64] }, ptr %t373, i32 0, i32 1
  %t376 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t375, i32 0, i32 4
  %t377 = load { i64, ptr }, ptr %t376
  store { i64, ptr } %t377, ptr %l21, !tbaa !27
  br label %bb116
bb115:
  br label %bb125
bb116:
  %t379 = load i32, ptr %l20, !range !{i32 0, i32 52}
  %t381 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t379)
  store i1 %t381, ptr %l194
  br label %bb117
bb117:
  %t382 = load i1, ptr %l194, !tbaa !21
  br i1 %t382, label %bb118, label %bb119
bb118:
  %t383 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t385 = extractvalue { i64, ptr } %t383, 0
  %t387 = icmp sgt i64 %t385, 0
  store i1 %t387, ptr %l195, !tbaa !21
  br label %bb120
bb119:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb120
bb120:
  %t389 = load i1, ptr %l195, !tbaa !21
  br i1 %t389, label %bb121, label %bb122
bb121:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t391, ptr %l201, !tbaa !27
  %t392 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t393 = load ptr, ptr %t392, !tbaa !27
  %t394 = getelementptr ptr, ptr %t393, i64 0
  %t395 = load ptr, ptr %t394, !tbaa !39
  %t399 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t390, ptr %t395)
  store i1 %t399, ptr %l204
  br label %bb123
bb122:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb124
bb123:
  %t400 = load i1, ptr %l204, !tbaa !21
  store i1 %t400, ptr %l199, !tbaa !21
  br label %bb124
bb124:
  %t401 = load i1, ptr %l199, !tbaa !21
  store i1 %t401, ptr %rv
  br label %ret
bb125:
  br i1 true, label %bb126, label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb129
bb128:
  store i1 false, ptr %rv
  br label %ret
bb129:
  call void @__olang_check_failed(ptr @olang_loc_c8cee6ec101913bd_743c2b1d0ab2dad9)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2ftyped_2eCall_2efresh(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i1
  %l37 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sgt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 6
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l8, !tbaa !29
  br label %bb28
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t25 = load ptr, ptr %l17, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 5
  store i1 %t31, ptr %l18, !tbaa !21
  br label %bb11
bb11:
  %t32 = load i1, ptr %l18, !tbaa !21
  br i1 %t32, label %bb12, label %bb13
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [5 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l3, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Promote", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load i64, ptr %l1, !tbaa !24
  %t45 = add i64 %t43, 1
  %t48 = call ptr @compiler_2ftyped_2eCall_2efresh(ptr %v0, ptr %v1, ptr %t42, i64 %t45)
  store ptr %t48, ptr %l27
  br label %bb15
bb15:
  %t49 = load ptr, ptr %l27, !tbaa !29
  store ptr %t49, ptr %l8, !tbaa !29
  br label %bb28
bb16:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t51 = load ptr, ptr %l28, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t54 = load ptr, ptr %l28, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 18}
  %t57 = icmp eq i64 %t55, 17
  store i1 %t57, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l29, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l4, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t66 = load i64, ptr %l1, !tbaa !24
  %t68 = add i64 %t66, 1
  %t71 = call ptr @compiler_2ftyped_2eCall_2efresh(ptr %v0, ptr %v1, ptr %t65, i64 %t68)
  store ptr %t71, ptr %l37
  br label %bb22
bb22:
  %t72 = load ptr, ptr %l37, !tbaa !29
  store ptr %t72, ptr %l8, !tbaa !29
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store ptr null, ptr %l8, !tbaa !29
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_22aea6a044f95e17_c10e152cae22b18b)
  unreachable
bb28:
  %t73 = load ptr, ptr %l8, !tbaa !29
  store ptr %t73, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2ftyped_2eLastCopies(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca %"compiler/typed:LastUses"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca i1
  %l21 = alloca i64
  %l22 = alloca %"compiler/typed:LastUses"
  %l23 = alloca ptr
  %l31 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l63 = alloca i1
  %l64 = alloca { i64, ptr }
  %l66 = alloca i64
  %l69 = alloca i64
  %l71 = alloca i1
  %l73 = alloca i1
  %l74 = alloca ptr
  %l77 = alloca i64
  %l78 = alloca i1
  %l80 = alloca ptr
  %l83 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %t26 = alloca %"compiler/typed:LastUses", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Body", ptr %t5, i32 0, i32 11
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb4
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 14
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l15, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l15, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %lp2
  %t19 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t18
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t19, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 7
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l21
  br label %bb8
bb8:
  %t27 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2ftyped_3aLastUses_2ector(ptr %t26, ptr %s0, i64 %t27)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t26, i64 264, i1 false)
  br label %bb9
bb9:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l22, i64 264, i1 false)
  store ptr %l3, ptr %l23, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 11
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  br i1 %t33, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_160fc62cca54a9e9_1017e7cee7f3c75d)
  unreachable
bb11:
  br label %bb12
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Body", ptr %t35, i32 0, i32 11
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %s0, ptr %v0, ptr %t40, ptr %t38)
  br label %bb13
bb13:
  store i64 0, ptr %l4, !tbaa !24
  %t42 = getelementptr %"compiler/typed:LastUses", ptr %l3, i32 0, i32 6
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t42)
  store i64 %t44, ptr %l31
  br label %bb14
bb14:
  %t45 = load i64, ptr %l31, !tbaa !24
  store i64 %t45, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb20
bb17:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l38, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb19
bb19:
  %t72 = load i64, ptr %l38, !tbaa !24
  store i64 %t72, ptr %l35, !tbaa !24
  br label %bb20
bb20:
  %t73 = load i64, ptr %l35, !tbaa !24
  store i64 %t73, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb21
bb21:
  %t74 = load i64, ptr %l8, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb22, label %bb23
bb22:
  br label %bb45
bb23:
  br label %bb24
bb24:
  %t82 = load i64, ptr %l4, !tbaa !24
  %t83 = load i64, ptr %l8, !tbaa !24
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  store i64 %t90, ptr %l9, !tbaa !24
  %t92 = getelementptr %"compiler/typed:LastUses", ptr %l3, i32 0, i32 7
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t92, i64 %t93)
  store i64 %t96, ptr %l58
  br label %bb25
bb25:
  %t97 = load i64, ptr %l58, !tbaa !24
  store i64 %t97, ptr %l10, !tbaa !24
  %t98 = getelementptr %"compiler/typed:LastUses", ptr %l3, i32 0, i32 8
  %t99 = load i64, ptr %l9, !tbaa !24
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t98, i64 %t99)
  store i64 %t102, ptr %l61
  br label %bb26
bb26:
  %t103 = load i64, ptr %l61, !tbaa !24
  %t104 = icmp sge i64 %t103, 0
  br i1 %t104, label %bb27, label %bb28
bb27:
  %t106 = getelementptr %"compiler/typed:LastUses", ptr %l3, i32 0, i32 1
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %l64, !tbaa !27
  %t108 = load i64, ptr %l10, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i64, ptr %t111, i64 %t108
  %t113 = load i64, ptr %t112, !tbaa !34
  store i64 %t113, ptr %l66, !tbaa !24
  %t114 = getelementptr %"compiler/typed:LastUses", ptr %l3, i32 0, i32 8
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t114, i64 %t115)
  store i64 %t118, ptr %l69
  br label %bb29
bb28:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb30
bb29:
  %t119 = load i64, ptr %l66, !tbaa !24
  %t120 = load i64, ptr %l69, !tbaa !24
  %t121 = icmp eq i64 %t119, %t120
  store i1 %t121, ptr %l63, !tbaa !21
  br label %bb30
bb30:
  %t123 = load i1, ptr %l63, !tbaa !21
  br i1 %t123, label %bb31, label %bb32
bb31:
  br i1 %a1, label %bb33, label %bb34
bb32:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb38
bb33:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb37
bb34:
  %t126 = getelementptr %"compiler/typed:LastUses", ptr %l3, i32 0, i32 10
  store ptr %t126, ptr %l74, !tbaa !29
  %t127 = getelementptr %"compiler/typed:LastUses", ptr %l3, i32 0, i32 6
  %t128 = load i64, ptr %l9, !tbaa !24
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t127, i64 %t128)
  store i64 %t131, ptr %l77
  br label %bb35
bb35:
  %t132 = load ptr, ptr %l74, !tbaa !29
  %t133 = load i64, ptr %l77, !tbaa !24
  %t134 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %t132, i64 %t133)
  store i1 %t134, ptr %l78
  br label %bb36
bb36:
  %t135 = load i1, ptr %l78, !tbaa !21
  %t136 = xor i1 %t135, true
  store i1 %t136, ptr %l73, !tbaa !21
  br label %bb37
bb37:
  %t138 = load i1, ptr %l73, !tbaa !21
  store i1 %t138, ptr %l71, !tbaa !21
  br label %bb38
bb38:
  %t139 = load i1, ptr %l71, !tbaa !21
  br i1 %t139, label %bb39, label %bb40
bb39:
  %t140 = load ptr, ptr %lp2
  store ptr %t140, ptr %l80, !tbaa !29
  %t141 = getelementptr %"compiler/typed:LastUses", ptr %l3, i32 0, i32 6
  %t142 = load i64, ptr %l9, !tbaa !24
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t141, i64 %t142)
  store i64 %t145, ptr %l83
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t146 = load i64, ptr %l10, !tbaa !24
  %t147 = load ptr, ptr %l80, !tbaa !29
  %t148 = load i64, ptr %l83, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v1, ptr %t147, i64 %t148, i64 %t146)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t150 = load i64, ptr %l8, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l8, !tbaa !24
  br label %bb21
bb45:
  %t154 = load ptr, ptr %lp2
  %t155 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t154
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t155, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define dso_local void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l14 = alloca %"compiler/typed:LocalUses"
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l56 = alloca ptr
  %l65 = alloca i64
  %l67 = alloca i64
  %l72 = alloca i32
  %l79 = alloca %"compiler/typed:LocalUses"
  %t3 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_3aLocalUses_2ector(ptr %t3, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t3, i64 704, i1 false)
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 704, i64 8)
  store ptr %t6, ptr %lp2
  %t7 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t7, ptr %l14, i64 704, i1 false)
  store i64 0, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 7
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t10)
  store i64 %t12, ptr %l17
  br label %bb2
bb2:
  %t13 = load i64, ptr %l17, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb3, label %bb4
bb3:
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb8
bb5:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l24, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l24, !tbaa !24
  store i64 %t40, ptr %l21, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l21, !tbaa !24
  store i64 %t41, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  br label %bb22
bb11:
  br label %bb12
bb12:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l8, !tbaa !24
  %t60 = load ptr, ptr %lp2
  %t61 = getelementptr %"compiler/typed:LocalUses", ptr %t60, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t61, i1 false)
  br label %bb13
bb13:
  %t63 = load ptr, ptr %lp2
  %t64 = getelementptr %"compiler/typed:LocalUses", ptr %t63, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t64, i1 false)
  br label %bb14
bb14:
  %t66 = load ptr, ptr %lp2
  %t67 = getelementptr %"compiler/typed:LocalUses", ptr %t66, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t67, i1 false)
  br label %bb15
bb15:
  %t69 = load ptr, ptr %lp2
  %t70 = getelementptr %"compiler/typed:LocalUses", ptr %t69, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t70, i1 false)
  br label %bb16
bb16:
  %t72 = load ptr, ptr %lp2
  %t73 = getelementptr %"compiler/typed:LocalUses", ptr %t72, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t73, i1 false)
  br label %bb17
bb17:
  %t75 = load ptr, ptr %lp2
  %t76 = getelementptr %"compiler/typed:LocalUses", ptr %t75, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t76, i1 false)
  br label %bb18
bb18:
  %t78 = load ptr, ptr %lp2
  %t79 = getelementptr %"compiler/typed:LocalUses", ptr %t78, i32 0, i32 8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t79, i64 -1)
  br label %bb19
bb19:
  %t81 = load ptr, ptr %lp2
  %t82 = getelementptr %"compiler/typed:LocalUses", ptr %t81, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ePus_H0c70e9e86794aea54789ff5f3987086b(ptr %v2, ptr %v2, ptr %t82, ptr null)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t84 = load i64, ptr %l7, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l7, !tbaa !24
  br label %bb9
bb22:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Body", ptr %t88, i32 0, i32 11
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t97 = load ptr, ptr %lp2
  store ptr %t97, ptr %l56, !tbaa !29
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Body", ptr %t98, i32 0, i32 11
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  br i1 %t103, label %bb25, label %bb26
bb24:
  br label %bb29
bb25:
  call void @__olang_check_failed(ptr @olang_loc_5a8d28bd3acbc65d_f5c7f83d77176e09)
  unreachable
bb26:
  br label %bb27
bb27:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Body", ptr %t105, i32 0, i32 11
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = load ptr, ptr %l56, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v2, ptr %v1, ptr %v1, ptr %v0, ptr %t110, ptr %t108)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr %"compiler/typed:Body", ptr %t112, i32 0, i32 10
  store ptr %t114, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb30
bb30:
  %t116 = load i64, ptr %l10, !tbaa !24
  store i64 %t116, ptr %l65, !tbaa !24
  %t117 = load ptr, ptr %l9, !tbaa !29
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t117)
  store i64 %t119, ptr %l67
  br label %bb31
bb31:
  %t120 = load i64, ptr %l65, !tbaa !24
  %t121 = load i64, ptr %l67, !tbaa !24
  %t122 = icmp slt i64 %t120, %t121
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb32, label %bb33
bb32:
  br label %bb38
bb33:
  br label %bb34
bb34:
  %t126 = load ptr, ptr %l9, !tbaa !29
  %t127 = load i64, ptr %l10, !tbaa !24
  %t130 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t126, i64 %t127)
  store i32 %t130, ptr %l72
  br label %bb35
bb35:
  %t131 = load i32, ptr %l72, !tbaa !23
  %t132 = load ptr, ptr %lp2
  %t133 = getelementptr %"compiler/typed:LocalUses", ptr %t132, i32 0, i32 7
  %t136 = sext i32 %t131 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v2, ptr %t133, i64 %t136, i1 true)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t139 = load i64, ptr %l10, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l10, !tbaa !24
  br label %bb30
bb38:
  %t143 = load ptr, ptr %lp2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ecloseAliases(ptr %v2, ptr %t143)
  br label %bb39
bb39:
  %t145 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %t145, i64 704, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l79, i64 704, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2eMovedArg(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l31 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l51 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb22
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Seq", ptr %t16, i32 0, i32 2
  %t19 = load i1, ptr %t18, !tbaa !21
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Seq", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  store i1 %t28, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Seq", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_c21a1343bdb3d01_d6f77a8ccb597545)
  unreachable
bb13:
  br label %bb14
bb14:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Seq", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l2, !tbaa !29
  %t44 = load ptr, ptr %l2, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l27, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 2
  store i1 %t51, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t52 = load i1, ptr %l28, !tbaa !21
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t55, i32 0, i32 0
  %t57 = load %"compiler/source:Span", ptr %t56
  store %"compiler/source:Span" %t57, ptr %l3
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t61, i32 0, i32 1
  %t63 = load i32, ptr %t62
  store i32 %t63, ptr %l4, !tbaa !23
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t73, i32 0, i32 3
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l6, !tbaa !23
  store ptr %t69, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb19, label %bb20
bb18:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb21
bb19:
  %t81 = load ptr, ptr %l40, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 8}
  %t84 = icmp eq i64 %t82, 0
  store i1 %t84, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t85 = load i1, ptr %l41, !tbaa !21
  store i1 %t85, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t86 = load i1, ptr %l31, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
bb22:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t88 = load ptr, ptr %l44, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb23, label %bb24
bb23:
  %t91 = load ptr, ptr %l44, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 18}
  %t94 = icmp eq i64 %t92, 17
  store i1 %t94, ptr %l45, !tbaa !21
  br label %bb24
bb24:
  %t95 = load i1, ptr %l45, !tbaa !21
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr { i64, [5 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t98, i32 0, i32 2
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l7, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t102 = load ptr, ptr %l7, !tbaa !29
  %t104 = call i1 @compiler_2ftyped_2eMovedArg(ptr %v0, ptr %t102)
  store i1 %t104, ptr %l51
  br label %bb28
bb28:
  %t105 = load i1, ptr %l51, !tbaa !21
  store i1 %t105, ptr %rv
  br label %ret
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i1 false, ptr %rv
  br label %ret
bb33:
  call void @__olang_check_failed(ptr @olang_loc_4964fda744059959_ea5b63edb7fb932d)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2earmsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
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
  br label %bb13
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
  %t34 = call i1 @compiler_2ftyped_2earmBreaks(ptr %v0, ptr %t28, i32 %a1)
  store i1 %t34, ptr %l22
  br label %bb8
bb8:
  %t35 = load i1, ptr %l22, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2eclausesBreak(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
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
  br label %bb17
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
  %t32 = getelementptr %"compiler/typed:Clause", ptr %t30, i32 0, i32 3
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l23
  br label %bb8
bb8:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb12
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Clause", ptr %t39, i32 0, i32 4
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i1 @compiler_2ftyped_2eexprsBreak(ptr %v0, { i64, ptr } %t42, i32 %t43)
  store i1 %t46, ptr %l28
  br label %bb11
bb11:
  %t47 = load i1, ptr %l28, !tbaa !21
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t48 = load i1, ptr %l24, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb4
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2eclausesTakeAll(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l16 = alloca { i64, ptr }
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb12
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l2, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t32 = getelementptr %"compiler/typed:Clause", ptr %t28, i32 0, i32 2
  %t33 = load i1, ptr %t32, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l2, !tbaa !24
  br label %bb4
bb12:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca %"compiler/typed:BlockInfo"
  %l12 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 8
  store ptr %t3, ptr %l5, !tbaa !29
  %t10 = call %"compiler/typed:BlockInfo" @compiler_2ftyped_3aBlockInfo_2ector(ptr %s0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
  store %"compiler/typed:BlockInfo" %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = load %"compiler/typed:BlockInfo", ptr %l9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2ePush_H85e1838377aa8e6b322d82e3edbac596(ptr %v0, ptr %t11, %"compiler/typed:BlockInfo" %t12)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 8
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l12
  br label %bb3
bb3:
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = sub i64 %t18, 1
  %t21 = trunc i64 %t19 to i32
  call void @__olang_scope_close(ptr %s0)
  store i32 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, [1 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eParamMark(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca { i64, [1 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [1 x i64] }
  %t23 = alloca { i64, [1 x i64] }, align 8
  %t54 = alloca { i64, [1 x i64] }, align 8
  %t58 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Body", ptr %t2, i32 0, i32 2
  %t5 = load i32, ptr %t4, !tbaa !23
  %t6 = load i64, ptr %l2, !tbaa !24
  %t10 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v1, ptr %t1, i32 %t5, i64 %t6)
  store i64 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i64, ptr %l8, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 5
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t18, i64 %t19)
  store i32 %t22, ptr %l14
  br label %bb4
bb3:
  br label %bb5
bb4:
  store { i64, [1 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [1 x i64] }, ptr %t23, i32 0, i32 0
  store i64 2, ptr %t24
  %t25 = load i32, ptr %l14, !tbaa !23
  %t26 = insertvalue { i32 } undef, i32 %t25, 0
  %t27 = getelementptr { i64, [1 x i64] }, ptr %t23, i32 0, i32 1
  store { i32 } %t26, ptr %t27
  %t28 = load { i64, [1 x i64] }, ptr %t23
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t28, ptr %rv
  br label %ret
bb5:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l16, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l17, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %t35, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v1, ptr %t32, i32 %t36)
  store i32 %t39, ptr %l21
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l17, !tbaa !29
  %t41 = load i32, ptr %l21, !tbaa !23
  %t42 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %s0, ptr %t40, i32 %t41)
  store { i64, ptr } %t42, ptr %l22
  br label %bb7
bb7:
  %t43 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t43, ptr %l23, !tbaa !27
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i32, ptr %t47, i64 %t44
  %t49 = load i32, ptr %t48, !tbaa !33
  %t50 = load ptr, ptr %l16, !tbaa !29
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v1, ptr %t50, i32 %t49)
  store i1 %t52, ptr %l26
  br label %bb8
bb8:
  %t53 = load i1, ptr %l26, !tbaa !21
  br i1 %t53, label %bb9, label %bb10
bb9:
  store { i64, [1 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [1 x i64] }, ptr %t54, i32 0, i32 0
  store i64 1, ptr %t55
  %t56 = load { i64, [1 x i64] }, ptr %t54
  store { i64, [1 x i64] } %t56, ptr %l27
  br label %bb11
bb10:
  store { i64, [1 x i64] } zeroinitializer, ptr %t58
  %t59 = getelementptr { i64, [1 x i64] }, ptr %t58, i32 0, i32 0
  store i64 0, ptr %t59
  %t60 = load { i64, [1 x i64] }, ptr %t58
  store { i64, [1 x i64] } %t60, ptr %l27
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t62 = load { i64, [1 x i64] }, ptr %l27
  store { i64, [1 x i64] } %t62, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eResultMark(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca i64
  %l18 = alloca i32
  %rv = alloca { i64, [1 x i64] }
  %t18 = alloca { i64, [1 x i64] }, align 8
  %t33 = alloca { i64, [1 x i64] }, align 8
  %t40 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Body", ptr %t2, i32 0, i32 2
  %t5 = load i32, ptr %t4, !tbaa !23
  %t10 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v1, ptr %a1, i32 %t5, i64 %a2)
  store i64 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i64, ptr %l8, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t16 = icmp eq i64 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  store { i64, [1 x i64] } zeroinitializer, ptr %t18
  %t19 = getelementptr { i64, [1 x i64] }, ptr %t18, i32 0, i32 0
  store i64 5, ptr %t19
  %t20 = load { i64, [1 x i64] }, ptr %t18
  store { i64, [1 x i64] } %t20, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Body", ptr %t26, i32 0, i32 5
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t28, i64 %t29)
  store i32 %t32, ptr %l18
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, [1 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [1 x i64] }, ptr %t33, i32 0, i32 0
  store i64 2, ptr %t34
  %t35 = load i32, ptr %l18, !tbaa !23
  %t36 = insertvalue { i32 } undef, i32 %t35, 0
  %t37 = getelementptr { i64, [1 x i64] }, ptr %t33, i32 0, i32 1
  store { i32 } %t36, ptr %t37
  %t38 = load { i64, [1 x i64] }, ptr %t33
  store { i64, [1 x i64] } %t38, ptr %rv
  br label %ret
bb8:
  store { i64, [1 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [1 x i64] }, ptr %t40, i32 0, i32 0
  store i64 1, ptr %t41
  %t42 = load { i64, [1 x i64] }, ptr %t40
  store { i64, [1 x i64] } %t42, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %l15 = alloca { i64, ptr }
  %l29 = alloca i1
  %l35 = alloca ptr
  %l37 = alloca { i64, [1 x i64] }
  %l41 = alloca ptr
  %l45 = alloca i32
  %t32 = alloca { i64, [1 x i64] }, align 8
  %t74 = alloca { i64, [1 x i64] }, align 8
  %t78 = alloca { i64, [1 x i64] }, align 8
  %t84 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
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
  br label %bb30
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l15, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load i64, ptr @G_2ecompiler_2ftypes_2eClosingVar, !tbaa !24
  %t27 = icmp eq i64 %t23, %t24
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 6
  store { i64, [1 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [1 x i64] }, ptr %t32, i32 0, i32 0
  store i64 3, ptr %t33
  %t34 = load { i64, [1 x i64] }, ptr %t32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t31, { i64, [1 x i64] } %t34)
  br label %bb7
bb6:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t38 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t41 = icmp eq i64 %t37, %t38
  br i1 %t41, label %bb8, label %bb9
bb7:
  br label %bb28
bb8:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Body", ptr %t43, i32 0, i32 1
  %t46 = load { i64, [2 x i64] }, ptr %t45
  store { i64, [2 x i64] } %t46, ptr %l6
  %t48 = load { i64, [2 x i64] }, ptr %l6
  %t50 = extractvalue { i64, [2 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 1
  br i1 %t51, label %bb10, label %bb11
bb9:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Body", ptr %t53, i32 0, i32 6
  store ptr %t55, ptr %l41, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Body", ptr %t56, i32 0, i32 5
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t58, i64 %t59)
  store i32 %t62, ptr %l45
  br label %bb25
bb10:
  br label %bb14
bb11:
  %t63 = load { i64, [2 x i64] }, ptr %l6
  %t65 = extractvalue { i64, [2 x i64] } %t63, 0
  %t66 = icmp eq i64 %t65, 2
  br i1 %t66, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_49a7b0a2550beed6_c54fa6caa81e807a)
  unreachable
bb20:
  %t68 = load i1, ptr %l29, !tbaa !21
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 6
  store ptr %t71, ptr %l35, !tbaa !29
  br i1 %t68, label %bb21, label %bb22
bb21:
  store { i64, [1 x i64] } zeroinitializer, ptr %t74
  %t75 = getelementptr { i64, [1 x i64] }, ptr %t74, i32 0, i32 0
  store i64 2, ptr %t75
  %t76 = load { i64, [1 x i64] }, ptr %t74
  store { i64, [1 x i64] } %t76, ptr %l37
  br label %bb23
bb22:
  store { i64, [1 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [1 x i64] }, ptr %t78, i32 0, i32 0
  store i64 1, ptr %t79
  %t80 = load { i64, [1 x i64] }, ptr %t78
  store { i64, [1 x i64] } %t80, ptr %l37
  br label %bb23
bb23:
  %t82 = load ptr, ptr %l35, !tbaa !29
  %t83 = load { i64, [1 x i64] }, ptr %l37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t82, { i64, [1 x i64] } %t83)
  br label %bb24
bb24:
  br label %bb27
bb25:
  store { i64, [1 x i64] } zeroinitializer, ptr %t84
  %t85 = getelementptr { i64, [1 x i64] }, ptr %t84, i32 0, i32 0
  store i64 0, ptr %t85
  %t86 = load i32, ptr %l45, !tbaa !23
  %t87 = insertvalue { i32 } undef, i32 %t86, 0
  %t88 = getelementptr { i64, [1 x i64] }, ptr %t84, i32 0, i32 1
  store { i32 } %t87, ptr %t88
  %t89 = load { i64, [1 x i64] }, ptr %t84
  %t90 = load ptr, ptr %l41, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t90, { i64, [1 x i64] } %t89)
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t92 = load i64, ptr %l3, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l3, !tbaa !24
  br label %bb1
bb30:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
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

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Block", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
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
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l22 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/typed:LocalUses", ptr %t5, i32 0, i32 24
  %t8 = load i32, ptr %t7, !tbaa !23
  store i32 %t8, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Block", ptr %t11, i32 0, i32 0
  %t14 = load i32, ptr %t13, !tbaa !23
  %t17 = getelementptr %"compiler/typed:LocalUses", ptr %t10, i32 0, i32 24
  store i32 %t14, ptr %t17, !tbaa !23
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Block", ptr %t18, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  store i64 %t25, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = icmp slt i64 %t27, %t28
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t35, ptr %l22, !tbaa !27
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 %t36
  %t41 = load ptr, ptr %t40, !tbaa !39
  %t43 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t43, ptr %t41)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l4, !tbaa !24
  br label %bb4
bb10:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = getelementptr %"compiler/typed:LocalUses", ptr %t51, i32 0, i32 24
  store i32 %t52, ptr %t55, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2efieldsOnly(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l32 = alloca i1
  %l43 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb30
bb6:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l13, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l14, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t29 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2efieldsOnly(ptr %v0, ptr %v1, ptr %t25, ptr %t26)
  store i1 %t29, ptr %l21
  br label %bb12
bb12:
  %t30 = load i1, ptr %l21, !tbaa !21
  store i1 %t30, ptr %l8, !tbaa !21
  br label %bb30
bb13:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t32 = load ptr, ptr %l22, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb14, label %bb15
bb14:
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb15
bb15:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb16, label %bb17
bb16:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb25
bb18:
  %t46 = load ptr, ptr %l3, !tbaa !29
  store ptr %t46, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb19, label %bb20
bb19:
  %t50 = load ptr, ptr %l28, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 18}
  %t53 = icmp eq i64 %t51, 2
  store i1 %t53, ptr %l29, !tbaa !21
  br label %bb20
bb20:
  %t54 = load i1, ptr %l29, !tbaa !21
  br i1 %t54, label %bb21, label %bb22
bb21:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l4
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr { i64, [5 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t63, i32 0, i32 1
  %t65 = load i32, ptr %t64
  store i32 %t65, ptr %l5, !tbaa !23
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t69, i32 0, i32 2
  %t71 = load ptr, ptr %t70
  store ptr %t71, ptr %l6, !tbaa !29
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t75, i32 0, i32 3
  %t77 = load i32, ptr %t76
  store i32 %t77, ptr %l7, !tbaa !23
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t83 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefLocal(ptr %v0, ptr %v1, ptr %t79, ptr %t80)
  store i64 %t83, ptr %l43
  br label %bb23
bb22:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb24
bb23:
  %t84 = load i64, ptr %l43, !tbaa !24
  %t85 = icmp sge i64 %t84, 0
  store i1 %t85, ptr %l32, !tbaa !21
  br label %bb24
bb24:
  %t87 = load i1, ptr %l32, !tbaa !21
  store i1 %t87, ptr %l8, !tbaa !21
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_b3e084de49f7dfe2_9d51886cee01545e)
  unreachable
bb30:
  %t88 = load i1, ptr %l8, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l12 = alloca ptr
  %l15 = alloca %"compiler/typed:Local"
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l23 = alloca %"compiler/typed:Local"
  %l26 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l33 = alloca ptr
  %l35 = alloca ptr
  %l37 = alloca { i64, [1 x i64] }
  %t74 = alloca { i64, [1 x i64] }, align 8
  %t81 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %t1, i32 0, i32 9
  %t4 = load i32, ptr %l1, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t7 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eSet_H54ebfdc15a9c097858a2e264494e7d5a(ptr %v0, ptr %v1, ptr %t3, i64 %t6, ptr %t7)
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/typed:LocalUses", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  store ptr %t15, ptr %l12, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = call ptr @__olang_scope_or(ptr %v2, ptr %t17)
  %t19 = ptrtoint ptr %t18 to i64
  %t21 = inttoptr i64 %t19 to ptr
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t24 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %t21, ptr %t22, i32 %t16)
  store %"compiler/typed:Local" %t24, ptr %l15
  br label %bb2
bb2:
  %t25 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 4
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 7}
  store i32 %t26, ptr %l3
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/typed:LocalUses", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  store ptr %t31, ptr %l18, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/typed:LocalUses", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l20, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t37 = load ptr, ptr %l20, !tbaa !29
  %t38 = call ptr @__olang_scope_or(ptr %v2, ptr %t37)
  %t39 = ptrtoint ptr %t38 to i64
  %t41 = inttoptr i64 %t39 to ptr
  %t42 = load ptr, ptr %l20, !tbaa !29
  %t44 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %t41, ptr %t42, i32 %t36)
  store %"compiler/typed:Local" %t44, ptr %l23
  br label %bb3
bb3:
  %t45 = getelementptr %"compiler/typed:Local", ptr %l23, i32 0, i32 2
  %t46 = load i32, ptr %t45, !tbaa !23
  %t47 = load ptr, ptr %l18, !tbaa !29
  %t48 = call ptr @__olang_scope_or(ptr %v3, ptr %t47)
  %t49 = ptrtoint ptr %t48 to i64
  %t51 = inttoptr i64 %t49 to ptr
  %t52 = load ptr, ptr %l18, !tbaa !29
  %t54 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t51, ptr %t52, i32 %t46)
  store i1 %t54, ptr %l26
  br label %bb4
bb4:
  %t55 = load i1, ptr %l26, !tbaa !21
  br i1 %t55, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb7
bb6:
  %t56 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t58 = trunc i64 2 to i32
  %t59 = icmp eq i32 %t56, %t58
  store i1 %t59, ptr %l27, !tbaa !21
  br label %bb7
bb7:
  %t61 = load i1, ptr %l27, !tbaa !21
  br i1 %t61, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb10
bb9:
  %t62 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t64 = trunc i64 4 to i32
  %t65 = icmp eq i32 %t62, %t64
  store i1 %t65, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t67 = load i1, ptr %l30, !tbaa !21
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l33, !tbaa !29
  %t69 = load ptr, ptr %l2, !tbaa !29
  store ptr %t69, ptr %l35, !tbaa !29
  br i1 %t67, label %bb11, label %bb12
bb11:
  %t73 = load i32, ptr %l1, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t74
  %t75 = getelementptr { i64, [1 x i64] }, ptr %t74, i32 0, i32 0
  store i64 4, ptr %t75
  %t77 = insertvalue { i32 } undef, i32 %t73, 0
  %t78 = getelementptr { i64, [1 x i64] }, ptr %t74, i32 0, i32 1
  store { i32 } %t77, ptr %t78
  %t79 = load { i64, [1 x i64] }, ptr %t74
  store { i64, [1 x i64] } %t79, ptr %l37
  br label %bb13
bb12:
  store { i64, [1 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [1 x i64] }, ptr %t81, i32 0, i32 0
  store i64 2, ptr %t82
  %t83 = load { i64, [1 x i64] }, ptr %t81
  store { i64, [1 x i64] } %t83, ptr %l37
  br label %bb13
bb13:
  %t85 = load ptr, ptr %l33, !tbaa !29
  %t86 = load ptr, ptr %l35, !tbaa !29
  %t87 = load { i64, [1 x i64] }, ptr %l37
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t85, ptr %t86, { i64, [1 x i64] } %t87)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l42 = alloca i1
  %l46 = alloca i64
  %l48 = alloca { i64, ptr }
  %l50 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t17 = load ptr, ptr %l15, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l16, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l3, !tbaa !23
  %t33 = sext i32 %t31 to i64
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 -1, ptr %l14, !tbaa !24
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4d8a06dfe39d8193_a27ec756202836f)
  unreachable
bb16:
  %t35 = load i64, ptr %l14, !tbaa !24
  store i64 %t35, ptr %l7, !tbaa !24
  br label %bb42
bb17:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t37 = load ptr, ptr %l23, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb18, label %bb19
bb18:
  %t40 = load ptr, ptr %l23, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 18}
  %t43 = icmp eq i64 %t41, 17
  store i1 %t43, ptr %l24, !tbaa !21
  br label %bb19
bb19:
  %t44 = load i1, ptr %l24, !tbaa !21
  br i1 %t44, label %bb20, label %bb21
bb20:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t55 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefLocal(ptr %v0, ptr %v1, ptr %t51, ptr %t52)
  store i64 %t55, ptr %l31
  br label %bb23
bb23:
  %t56 = load i64, ptr %l31, !tbaa !24
  store i64 %t56, ptr %l7, !tbaa !24
  br label %bb42
bb24:
  %t57 = load ptr, ptr %l1, !tbaa !29
  store ptr %t57, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t58 = load ptr, ptr %l32, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb25, label %bb26
bb25:
  %t61 = load ptr, ptr %l32, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 18}
  %t64 = icmp eq i64 %t62, 9
  store i1 %t64, ptr %l33, !tbaa !21
  br label %bb26
bb26:
  %t65 = load i1, ptr %l33, !tbaa !21
  br i1 %t65, label %bb27, label %bb28
bb27:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t68, i32 0, i32 2
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 52}
  store i32 %t70, ptr %l5
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t74, i32 0, i32 4
  %t76 = load { i64, ptr }, ptr %t75
  store { i64, ptr } %t76, ptr %l6, !tbaa !27
  br label %bb29
bb28:
  br label %bb37
bb29:
  %t78 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t80 = trunc i64 20 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb30, label %bb31
bb30:
  %t83 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t87 = icmp eq i64 %t85, 1
  store i1 %t87, ptr %l42, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb32
bb32:
  %t89 = load i1, ptr %l42, !tbaa !21
  br i1 %t89, label %bb33, label %bb34
bb33:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t91, ptr %l48, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr ptr, ptr %t93, i64 0
  %t95 = load ptr, ptr %t94, !tbaa !39
  %t98 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefLocal(ptr %v0, ptr %v1, ptr %t90, ptr %t95)
  store i64 %t98, ptr %l50
  br label %bb35
bb34:
  store i64 -1, ptr %l46, !tbaa !24
  br label %bb36
bb35:
  %t99 = load i64, ptr %l50, !tbaa !24
  store i64 %t99, ptr %l46, !tbaa !24
  br label %bb36
bb36:
  %t100 = load i64, ptr %l46, !tbaa !24
  store i64 %t100, ptr %l7, !tbaa !24
  br label %bb42
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_104aca9b23d55792_b4686871930206ae)
  unreachable
bb42:
  %t101 = load i64, ptr %l7, !tbaa !24
  store i64 %t101, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i1
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i1
  %l53 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l7, !tbaa !24
  br label %bb39
bb6:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t21 = load ptr, ptr %l16, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l17, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t39 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  store i64 %t39, ptr %l24
  br label %bb12
bb12:
  %t40 = load i64, ptr %l24, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  br label %bb39
bb13:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t42 = load ptr, ptr %l25, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l25, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 8}
  %t48 = icmp eq i64 %t46, 4
  store i1 %t48, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l26, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t52, i32 0, i32 2
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Elem", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t63 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %t56, ptr %t60)
  store i64 %t63, ptr %l34
  br label %bb19
bb19:
  %t64 = load i64, ptr %l34, !tbaa !24
  store i64 %t64, ptr %l7, !tbaa !24
  br label %bb39
bb20:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t66 = load ptr, ptr %l35, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t69 = load ptr, ptr %l35, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 8}
  %t72 = icmp eq i64 %t70, 5
  store i1 %t72, ptr %l36, !tbaa !21
  br label %bb22
bb22:
  %t73 = load i1, ptr %l36, !tbaa !21
  br i1 %t73, label %bb23, label %bb24
bb23:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l5, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Payload", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t87 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %t80, ptr %t84)
  store i64 %t87, ptr %l44
  br label %bb26
bb26:
  %t88 = load i64, ptr %l44, !tbaa !24
  store i64 %t88, ptr %l7, !tbaa !24
  br label %bb39
bb27:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t90 = load ptr, ptr %l45, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb28, label %bb29
bb28:
  %t93 = load ptr, ptr %l45, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 8}
  %t96 = icmp eq i64 %t94, 2
  store i1 %t96, ptr %l46, !tbaa !21
  br label %bb29
bb29:
  %t97 = load i1, ptr %l46, !tbaa !21
  br i1 %t97, label %bb30, label %bb31
bb30:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t100, i32 0, i32 2
  %t102 = load ptr, ptr %t101
  store ptr %t102, ptr %l6, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l6, !tbaa !29
  %t108 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefLocal(ptr %v0, ptr %v1, ptr %t104, ptr %t105)
  store i64 %t108, ptr %l53
  br label %bb33
bb33:
  %t109 = load i64, ptr %l53, !tbaa !24
  store i64 %t109, ptr %l7, !tbaa !24
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_6333e3fa20d2f5d8_bcafed7a04540454)
  unreachable
bb39:
  %t110 = load i64, ptr %l7, !tbaa !24
  store i64 %t110, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l45 = alloca ptr
  %l47 = alloca ptr
  %l49 = alloca ptr
  %l51 = alloca i32
  %l53 = alloca i1
  %l54 = alloca { i64, [1 x i64] }
  %l57 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l125 = alloca ptr
  %l126 = alloca i1
  %l138 = alloca ptr
  %l139 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i1
  %l168 = alloca ptr
  %l169 = alloca i1
  %l177 = alloca ptr
  %l178 = alloca i1
  %l191 = alloca ptr
  %l192 = alloca i1
  %l200 = alloca ptr
  %l216 = alloca { i64, ptr }
  %l225 = alloca ptr
  %l228 = alloca ptr
  %l229 = alloca i1
  %l232 = alloca ptr
  %l233 = alloca i1
  %t74 = alloca { i64, [1 x i64] }, align 8
  %t78 = alloca { i64, [1 x i64] }, align 8
  %t118 = alloca { i64, [1 x i64] }, align 8
  %t153 = alloca { i64, [1 x i64] }, align 8
  %t177 = alloca { i64, [1 x i64] }, align 8
  %t200 = alloca { i64, [1 x i64] }, align 8
  %t227 = alloca { i64, [1 x i64] }, align 8
  %t295 = alloca { i64, [1 x i64] }, align 8
  %t325 = alloca { i64, [1 x i64] }, align 8
  %t333 = alloca { i64, [1 x i64] }, align 8
  %t402 = alloca { i64, [1 x i64] }, align 8
  %t445 = alloca { i64, [1 x i64] }, align 8
  %t481 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t2 = load ptr, ptr %l23, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l23, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l24, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l24, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  %t24 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t22, i32 %t23, ptr %t24)
  br label %bb6
bb6:
  br label %bb133
bb7:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t29 = load ptr, ptr %l34, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l34, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 17}
  %t35 = icmp eq i64 %t33, 1
  store i1 %t35, ptr %l35, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l35, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [3 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t39, i32 0, i32 1
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb20
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t51 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eassign(ptr %v0, ptr %v1, ptr %v1, ptr %v3, ptr %v2, ptr %t49, ptr %t50, ptr %t51)
  br label %bb13
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l45, !tbaa !29
  %t56 = load ptr, ptr %l5, !tbaa !29
  store ptr %t56, ptr %l47, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/typed:LocalUses", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  store ptr %t61, ptr %l49, !tbaa !29
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t62)
  store i32 %t64, ptr %l51
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l49, !tbaa !29
  %t66 = call ptr @__olang_scope_or(ptr %v3, ptr %t65)
  %t67 = ptrtoint ptr %t66 to i64
  %t69 = inttoptr i64 %t67 to ptr
  %t70 = load ptr, ptr %l49, !tbaa !29
  %t71 = load i32, ptr %l51, !tbaa !23
  %t72 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t69, ptr %t70, i32 %t71)
  store i1 %t72, ptr %l53
  br label %bb15
bb15:
  %t73 = load i1, ptr %l53, !tbaa !21
  br i1 %t73, label %bb16, label %bb17
bb16:
  store { i64, [1 x i64] } zeroinitializer, ptr %t74
  %t75 = getelementptr { i64, [1 x i64] }, ptr %t74, i32 0, i32 0
  store i64 5, ptr %t75
  %t76 = load { i64, [1 x i64] }, ptr %t74
  store { i64, [1 x i64] } %t76, ptr %l54
  br label %bb18
bb17:
  store { i64, [1 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [1 x i64] }, ptr %t78, i32 0, i32 0
  store i64 2, ptr %t79
  %t80 = load { i64, [1 x i64] }, ptr %t78
  store { i64, [1 x i64] } %t80, ptr %l54
  br label %bb18
bb18:
  %t82 = load ptr, ptr %l45, !tbaa !29
  %t83 = load ptr, ptr %l47, !tbaa !29
  %t84 = load { i64, [1 x i64] }, ptr %l54
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t82, ptr %t83, { i64, [1 x i64] } %t84)
  br label %bb19
bb19:
  br label %bb133
bb20:
  %t85 = load ptr, ptr %l1, !tbaa !29
  store ptr %t85, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t86 = load ptr, ptr %l57, !tbaa !29
  %t87 = icmp ne ptr %t86, null
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t89 = load ptr, ptr %l57, !tbaa !29
  %t90 = load i64, ptr %t89, !range !{i64 0, i64 17}
  %t92 = icmp eq i64 %t90, 2
  store i1 %t92, ptr %l58, !tbaa !21
  br label %bb22
bb22:
  %t93 = load i1, ptr %l58, !tbaa !21
  br i1 %t93, label %bb23, label %bb24
bb23:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t94, i32 0, i32 1
  %t97 = getelementptr { %"compiler/source:Span", ptr }, ptr %t96, i32 0, i32 1
  %t98 = load ptr, ptr %t97
  store ptr %t98, ptr %l6, !tbaa !29
  br label %bb29
bb24:
  %t100 = load ptr, ptr %l1, !tbaa !29
  store ptr %t100, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t101 = load ptr, ptr %l63, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb25, label %bb26
bb25:
  %t104 = load ptr, ptr %l63, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 17}
  %t107 = icmp eq i64 %t105, 8
  store i1 %t107, ptr %l64, !tbaa !21
  br label %bb26
bb26:
  %t108 = load i1, ptr %l64, !tbaa !21
  br i1 %t108, label %bb27, label %bb28
bb27:
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr { i64, [3 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t111, i32 0, i32 1
  %t113 = load ptr, ptr %t112
  store ptr %t113, ptr %l6, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load ptr, ptr %l6, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t118
  %t119 = getelementptr { i64, [1 x i64] }, ptr %t118, i32 0, i32 0
  store i64 0, ptr %t119
  %t120 = load { i64, [1 x i64] }, ptr %t118
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t115, ptr %t116, { i64, [1 x i64] } %t120)
  br label %bb30
bb30:
  br label %bb133
bb31:
  %t124 = load ptr, ptr %l1, !tbaa !29
  store ptr %t124, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t125 = load ptr, ptr %l73, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb32, label %bb33
bb32:
  %t128 = load ptr, ptr %l73, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 17}
  %t131 = icmp eq i64 %t129, 6
  store i1 %t131, ptr %l74, !tbaa !21
  br label %bb33
bb33:
  %t132 = load i1, ptr %l74, !tbaa !21
  br i1 %t132, label %bb34, label %bb35
bb34:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr { i64, [3 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", ptr }, ptr %t135, i32 0, i32 1
  %t137 = load ptr, ptr %t136
  store ptr %t137, ptr %l7, !tbaa !29
  br label %bb36
bb35:
  br label %bb42
bb36:
  %t139 = load ptr, ptr %l7, !tbaa !29
  %t141 = icmp eq ptr %t139, null
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb37, label %bb38
bb37:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/typed:LocalUses", ptr %t145, i32 0, i32 18
  %t148 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t147, ptr %t148)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l7, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t153
  %t154 = getelementptr { i64, [1 x i64] }, ptr %t153, i32 0, i32 0
  store i64 3, ptr %t154
  %t155 = load { i64, [1 x i64] }, ptr %t153
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t151, ptr %t152, { i64, [1 x i64] } %t155)
  br label %bb41
bb41:
  br label %bb133
bb42:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t160 = load ptr, ptr %l88, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb43, label %bb44
bb43:
  %t163 = load ptr, ptr %l88, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 17}
  %t166 = icmp eq i64 %t164, 15
  store i1 %t166, ptr %l89, !tbaa !21
  br label %bb44
bb44:
  %t167 = load i1, ptr %l89, !tbaa !21
  br i1 %t167, label %bb45, label %bb46
bb45:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [3 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", ptr }, ptr %t170, i32 0, i32 1
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l8, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l8, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t177
  %t178 = getelementptr { i64, [1 x i64] }, ptr %t177, i32 0, i32 0
  store i64 5, ptr %t178
  %t179 = load { i64, [1 x i64] }, ptr %t177
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t174, ptr %t175, { i64, [1 x i64] } %t179)
  br label %bb48
bb48:
  br label %bb133
bb49:
  %t183 = load ptr, ptr %l1, !tbaa !29
  store ptr %t183, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t184 = load ptr, ptr %l98, !tbaa !29
  %t185 = icmp ne ptr %t184, null
  br i1 %t185, label %bb50, label %bb51
bb50:
  %t187 = load ptr, ptr %l98, !tbaa !29
  %t188 = load i64, ptr %t187, !range !{i64 0, i64 17}
  %t190 = icmp eq i64 %t188, 16
  store i1 %t190, ptr %l99, !tbaa !21
  br label %bb51
bb51:
  %t191 = load i1, ptr %l99, !tbaa !21
  br i1 %t191, label %bb52, label %bb53
bb52:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t194 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 1
  %t195 = getelementptr { %"compiler/source:Span", ptr }, ptr %t194, i32 0, i32 1
  %t196 = load ptr, ptr %t195
  store ptr %t196, ptr %l9, !tbaa !29
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %l9, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t200
  %t201 = getelementptr { i64, [1 x i64] }, ptr %t200, i32 0, i32 0
  store i64 5, ptr %t201
  %t202 = load { i64, [1 x i64] }, ptr %t200
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t198, ptr %t199, { i64, [1 x i64] } %t202)
  br label %bb55
bb55:
  br label %bb133
bb56:
  %t206 = load ptr, ptr %l1, !tbaa !29
  store ptr %t206, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t207 = load ptr, ptr %l107, !tbaa !29
  %t208 = icmp ne ptr %t207, null
  br i1 %t208, label %bb57, label %bb58
bb57:
  %t210 = load ptr, ptr %l107, !tbaa !29
  %t211 = load i64, ptr %t210, !range !{i64 0, i64 17}
  %t213 = icmp eq i64 %t211, 3
  store i1 %t213, ptr %l108, !tbaa !21
  br label %bb58
bb58:
  %t214 = load i1, ptr %l108, !tbaa !21
  br i1 %t214, label %bb59, label %bb60
bb59:
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = getelementptr { i64, [3 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", ptr }, ptr %t217, i32 0, i32 1
  %t219 = load ptr, ptr %t218
  store ptr %t219, ptr %l10, !tbaa !29
  br label %bb61
bb60:
  br label %bb65
bb61:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load ptr, ptr %l10, !tbaa !29
  %t224 = getelementptr %"compiler/typed:If", ptr %t222, i32 0, i32 0
  %t225 = load ptr, ptr %t224, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t227
  %t228 = getelementptr { i64, [1 x i64] }, ptr %t227, i32 0, i32 0
  store i64 0, ptr %t228
  %t229 = load { i64, [1 x i64] }, ptr %t227
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t221, ptr %t225, { i64, [1 x i64] } %t229)
  br label %bb62
bb62:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load ptr, ptr %l10, !tbaa !29
  %t236 = getelementptr %"compiler/typed:If", ptr %t234, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t233, ptr %t237)
  br label %bb63
bb63:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load ptr, ptr %l10, !tbaa !29
  %t244 = getelementptr %"compiler/typed:If", ptr %t242, i32 0, i32 2
  %t245 = load ptr, ptr %t244, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t241, ptr %t245)
  br label %bb64
bb64:
  br label %bb133
bb65:
  %t248 = load ptr, ptr %l1, !tbaa !29
  store ptr %t248, ptr %l125, !tbaa !29
  store i1 false, ptr %l126, !tbaa !21
  %t249 = load ptr, ptr %l125, !tbaa !29
  %t250 = icmp ne ptr %t249, null
  br i1 %t250, label %bb66, label %bb67
bb66:
  %t252 = load ptr, ptr %l125, !tbaa !29
  %t253 = load i64, ptr %t252, !range !{i64 0, i64 17}
  %t255 = icmp eq i64 %t253, 4
  store i1 %t255, ptr %l126, !tbaa !21
  br label %bb67
bb67:
  %t256 = load i1, ptr %l126, !tbaa !21
  br i1 %t256, label %bb68, label %bb69
bb68:
  %t257 = load ptr, ptr %l1, !tbaa !29
  %t259 = getelementptr { i64, [3 x i64] }, ptr %t257, i32 0, i32 1
  %t260 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t259, i32 0, i32 1
  %t261 = load ptr, ptr %t260
  store ptr %t261, ptr %l11, !tbaa !29
  %t263 = load ptr, ptr %l1, !tbaa !29
  %t265 = getelementptr { i64, [3 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t265, i32 0, i32 2
  %t267 = load ptr, ptr %t266
  store ptr %t267, ptr %l12, !tbaa !29
  br label %bb70
bb69:
  br label %bb73
bb70:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t269, ptr %t270)
  br label %bb71
bb71:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t274, ptr %t275)
  br label %bb72
bb72:
  br label %bb133
bb73:
  %t278 = load ptr, ptr %l1, !tbaa !29
  store ptr %t278, ptr %l138, !tbaa !29
  store i1 false, ptr %l139, !tbaa !21
  %t279 = load ptr, ptr %l138, !tbaa !29
  %t280 = icmp ne ptr %t279, null
  br i1 %t280, label %bb74, label %bb75
bb74:
  %t282 = load ptr, ptr %l138, !tbaa !29
  %t283 = load i64, ptr %t282, !range !{i64 0, i64 17}
  %t285 = icmp eq i64 %t283, 9
  store i1 %t285, ptr %l139, !tbaa !21
  br label %bb75
bb75:
  %t286 = load i1, ptr %l139, !tbaa !21
  br i1 %t286, label %bb76, label %bb77
bb76:
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = getelementptr { i64, [3 x i64] }, ptr %t287, i32 0, i32 1
  %t290 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t289, i32 0, i32 2
  %t291 = load ptr, ptr %t290
  store ptr %t291, ptr %l13, !tbaa !29
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load ptr, ptr %l13, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t295
  %t296 = getelementptr { i64, [1 x i64] }, ptr %t295, i32 0, i32 0
  store i64 0, ptr %t296
  %t297 = load { i64, [1 x i64] }, ptr %t295
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t293, ptr %t294, { i64, [1 x i64] } %t297)
  br label %bb79
bb79:
  br label %bb133
bb80:
  %t301 = load ptr, ptr %l1, !tbaa !29
  store ptr %t301, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t302 = load ptr, ptr %l147, !tbaa !29
  %t303 = icmp ne ptr %t302, null
  br i1 %t303, label %bb81, label %bb82
bb81:
  %t305 = load ptr, ptr %l147, !tbaa !29
  %t306 = load i64, ptr %t305, !range !{i64 0, i64 17}
  %t308 = icmp eq i64 %t306, 10
  store i1 %t308, ptr %l148, !tbaa !21
  br label %bb82
bb82:
  %t309 = load i1, ptr %l148, !tbaa !21
  br i1 %t309, label %bb83, label %bb84
bb83:
  %t310 = load ptr, ptr %l1, !tbaa !29
  %t312 = getelementptr { i64, [3 x i64] }, ptr %t310, i32 0, i32 1
  %t313 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t312, i32 0, i32 1
  %t314 = load ptr, ptr %t313
  store ptr %t314, ptr %l14, !tbaa !29
  %t316 = load ptr, ptr %l1, !tbaa !29
  %t318 = getelementptr { i64, [3 x i64] }, ptr %t316, i32 0, i32 1
  %t319 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t318, i32 0, i32 2
  %t320 = load ptr, ptr %t319
  store ptr %t320, ptr %l15, !tbaa !29
  br label %bb85
bb84:
  br label %bb88
bb85:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load ptr, ptr %l14, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t325
  %t326 = getelementptr { i64, [1 x i64] }, ptr %t325, i32 0, i32 0
  store i64 0, ptr %t326
  %t327 = load { i64, [1 x i64] }, ptr %t325
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t322, ptr %t323, { i64, [1 x i64] } %t327)
  br label %bb86
bb86:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load ptr, ptr %l15, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t333
  %t334 = getelementptr { i64, [1 x i64] }, ptr %t333, i32 0, i32 0
  store i64 0, ptr %t334
  %t335 = load { i64, [1 x i64] }, ptr %t333
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t331, ptr %t332, { i64, [1 x i64] } %t335)
  br label %bb87
bb87:
  br label %bb133
bb88:
  %t339 = load ptr, ptr %l1, !tbaa !29
  store ptr %t339, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t340 = load ptr, ptr %l162, !tbaa !29
  %t341 = icmp ne ptr %t340, null
  br i1 %t341, label %bb89, label %bb90
bb89:
  %t343 = load ptr, ptr %l162, !tbaa !29
  %t344 = load i64, ptr %t343, !range !{i64 0, i64 17}
  %t346 = icmp eq i64 %t344, 11
  store i1 %t346, ptr %l163, !tbaa !21
  br label %bb90
bb90:
  %t347 = load i1, ptr %l163, !tbaa !21
  br i1 %t347, label %bb91, label %bb92
bb91:
  %t348 = load ptr, ptr %l1, !tbaa !29
  %t350 = getelementptr { i64, [3 x i64] }, ptr %t348, i32 0, i32 1
  %t351 = getelementptr { %"compiler/source:Span", ptr }, ptr %t350, i32 0, i32 1
  %t352 = load ptr, ptr %t351
  store ptr %t352, ptr %l16, !tbaa !29
  br label %bb97
bb92:
  %t354 = load ptr, ptr %l1, !tbaa !29
  store ptr %t354, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t355 = load ptr, ptr %l168, !tbaa !29
  %t356 = icmp ne ptr %t355, null
  br i1 %t356, label %bb93, label %bb94
bb93:
  %t358 = load ptr, ptr %l168, !tbaa !29
  %t359 = load i64, ptr %t358, !range !{i64 0, i64 17}
  %t361 = icmp eq i64 %t359, 12
  store i1 %t361, ptr %l169, !tbaa !21
  br label %bb94
bb94:
  %t362 = load i1, ptr %l169, !tbaa !21
  br i1 %t362, label %bb95, label %bb96
bb95:
  %t363 = load ptr, ptr %l1, !tbaa !29
  %t365 = getelementptr { i64, [3 x i64] }, ptr %t363, i32 0, i32 1
  %t366 = getelementptr { %"compiler/source:Span", ptr }, ptr %t365, i32 0, i32 1
  %t367 = load ptr, ptr %t366
  store ptr %t367, ptr %l16, !tbaa !29
  br label %bb97
bb96:
  br label %bb99
bb97:
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t370 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t369, ptr %t370)
  br label %bb98
bb98:
  br label %bb133
bb99:
  %t374 = load ptr, ptr %l1, !tbaa !29
  store ptr %t374, ptr %l177, !tbaa !29
  store i1 false, ptr %l178, !tbaa !21
  %t375 = load ptr, ptr %l177, !tbaa !29
  %t376 = icmp ne ptr %t375, null
  br i1 %t376, label %bb100, label %bb101
bb100:
  %t378 = load ptr, ptr %l177, !tbaa !29
  %t379 = load i64, ptr %t378, !range !{i64 0, i64 17}
  %t381 = icmp eq i64 %t379, 13
  store i1 %t381, ptr %l178, !tbaa !21
  br label %bb101
bb101:
  %t382 = load i1, ptr %l178, !tbaa !21
  br i1 %t382, label %bb102, label %bb103
bb102:
  %t383 = load ptr, ptr %l1, !tbaa !29
  %t385 = getelementptr { i64, [3 x i64] }, ptr %t383, i32 0, i32 1
  %t386 = getelementptr { %"compiler/source:Span", ptr }, ptr %t385, i32 0, i32 1
  %t387 = load ptr, ptr %t386
  store ptr %t387, ptr %l17, !tbaa !29
  br label %bb104
bb103:
  br label %bb107
bb104:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t390 = load ptr, ptr %l17, !tbaa !29
  %t392 = getelementptr %"compiler/typed:Join", ptr %t390, i32 0, i32 0
  %t393 = load ptr, ptr %t392, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t389, ptr %t393)
  br label %bb105
bb105:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load ptr, ptr %l17, !tbaa !29
  %t400 = getelementptr %"compiler/typed:Join", ptr %t398, i32 0, i32 2
  %t401 = load { i64, ptr }, ptr %t400, !tbaa !27
  store { i64, [1 x i64] } zeroinitializer, ptr %t402
  %t403 = getelementptr { i64, [1 x i64] }, ptr %t402, i32 0, i32 0
  store i64 5, ptr %t403
  %t404 = load { i64, [1 x i64] }, ptr %t402
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t397, { i64, ptr } %t401, { i64, [1 x i64] } %t404)
  br label %bb106
bb106:
  br label %bb133
bb107:
  %t408 = load ptr, ptr %l1, !tbaa !29
  store ptr %t408, ptr %l191, !tbaa !29
  store i1 false, ptr %l192, !tbaa !21
  %t409 = load ptr, ptr %l191, !tbaa !29
  %t410 = icmp ne ptr %t409, null
  br i1 %t410, label %bb108, label %bb109
bb108:
  %t412 = load ptr, ptr %l191, !tbaa !29
  %t413 = load i64, ptr %t412, !range !{i64 0, i64 17}
  %t415 = icmp eq i64 %t413, 14
  store i1 %t415, ptr %l192, !tbaa !21
  br label %bb109
bb109:
  %t416 = load i1, ptr %l192, !tbaa !21
  br i1 %t416, label %bb110, label %bb111
bb110:
  %t417 = load ptr, ptr %l1, !tbaa !29
  %t419 = getelementptr { i64, [3 x i64] }, ptr %t417, i32 0, i32 1
  %t420 = getelementptr { %"compiler/source:Span", ptr }, ptr %t419, i32 0, i32 1
  %t421 = load ptr, ptr %t420
  store ptr %t421, ptr %l18, !tbaa !29
  br label %bb112
bb111:
  br label %bb122
bb112:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load ptr, ptr %l18, !tbaa !29
  %t426 = getelementptr %"compiler/typed:Spawn", ptr %t424, i32 0, i32 0
  %t427 = load { i64, ptr }, ptr %t426, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etargets(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t423, { i64, ptr } %t427)
  br label %bb113
bb113:
  %t430 = load ptr, ptr %l0, !tbaa !29
  store ptr %t430, ptr %l200, !tbaa !29
  %t431 = load ptr, ptr %l200, !tbaa !29
  %t432 = getelementptr %"compiler/typed:LocalUses", ptr %t431, i32 0, i32 23
  %t433 = load i64, ptr %t432, !tbaa !24
  %t435 = add i64 %t433, 1
  %t437 = load ptr, ptr %l200, !tbaa !29
  %t438 = getelementptr %"compiler/typed:LocalUses", ptr %t437, i32 0, i32 23
  store i64 %t435, ptr %t438, !tbaa !24
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load ptr, ptr %l18, !tbaa !29
  %t442 = getelementptr %"compiler/typed:Spawn", ptr %t440, i32 0, i32 1
  %t443 = load ptr, ptr %t442, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t445
  %t446 = getelementptr { i64, [1 x i64] }, ptr %t445, i32 0, i32 0
  store i64 5, ptr %t446
  %t447 = load { i64, [1 x i64] }, ptr %t445
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t439, ptr %t443, { i64, [1 x i64] } %t447)
  br label %bb114
bb114:
  %t451 = load ptr, ptr %l18, !tbaa !29
  %t453 = getelementptr %"compiler/typed:Spawn", ptr %t451, i32 0, i32 2
  %t454 = load { i64, ptr }, ptr %t453, !tbaa !27
  store { i64, ptr } %t454, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t456 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t458 = extractvalue { i64, ptr } %t456, 0
  store i64 %t458, ptr %l21, !tbaa !24
  br label %bb115
bb115:
  %t460 = load i64, ptr %l20, !tbaa !24
  %t461 = load i64, ptr %l21, !tbaa !24
  %t464 = icmp slt i64 %t460, %t461
  %t466 = xor i1 %t464, true
  br i1 %t466, label %bb116, label %bb117
bb116:
  br label %bb121
bb117:
  br label %bb118
bb118:
  %t468 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t468, ptr %l216, !tbaa !27
  %t469 = load i64, ptr %l20, !tbaa !24
  %t471 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !27
  %t473 = getelementptr ptr, ptr %t472, i64 %t469
  %t474 = load ptr, ptr %t473, !tbaa !39
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/typed:TaskClause", ptr %t474, i32 0, i32 3
  %t480 = load ptr, ptr %t479, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t481
  %t482 = getelementptr { i64, [1 x i64] }, ptr %t481, i32 0, i32 0
  store i64 5, ptr %t482
  %t483 = load { i64, [1 x i64] }, ptr %t481
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t476, ptr %t480, { i64, [1 x i64] } %t483)
  br label %bb119
bb119:
  br label %bb120
bb120:
  %t487 = load i64, ptr %l20, !tbaa !24
  %t489 = add i64 %t487, 1
  store i64 %t489, ptr %l20, !tbaa !24
  br label %bb115
bb121:
  %t491 = load ptr, ptr %l0, !tbaa !29
  store ptr %t491, ptr %l225, !tbaa !29
  %t492 = load ptr, ptr %l225, !tbaa !29
  %t493 = getelementptr %"compiler/typed:LocalUses", ptr %t492, i32 0, i32 23
  %t494 = load i64, ptr %t493, !tbaa !24
  %t496 = sub i64 %t494, 1
  %t498 = load ptr, ptr %l225, !tbaa !29
  %t499 = getelementptr %"compiler/typed:LocalUses", ptr %t498, i32 0, i32 23
  store i64 %t496, ptr %t499, !tbaa !24
  br label %bb133
bb122:
  %t500 = load ptr, ptr %l1, !tbaa !29
  store ptr %t500, ptr %l228, !tbaa !29
  store i1 false, ptr %l229, !tbaa !21
  %t501 = load ptr, ptr %l228, !tbaa !29
  %t502 = icmp ne ptr %t501, null
  br i1 %t502, label %bb123, label %bb124
bb123:
  %t504 = load ptr, ptr %l228, !tbaa !29
  %t505 = load i64, ptr %t504, !range !{i64 0, i64 17}
  %t507 = icmp eq i64 %t505, 5
  store i1 %t507, ptr %l229, !tbaa !21
  br label %bb124
bb124:
  %t508 = load i1, ptr %l229, !tbaa !21
  br i1 %t508, label %bb125, label %bb126
bb125:
  br label %bb131
bb126:
  %t509 = load ptr, ptr %l1, !tbaa !29
  store ptr %t509, ptr %l232, !tbaa !29
  store i1 false, ptr %l233, !tbaa !21
  %t510 = load ptr, ptr %l232, !tbaa !29
  %t511 = icmp ne ptr %t510, null
  br i1 %t511, label %bb127, label %bb128
bb127:
  %t513 = load ptr, ptr %l232, !tbaa !29
  %t514 = load i64, ptr %t513, !range !{i64 0, i64 17}
  %t516 = icmp eq i64 %t514, 7
  store i1 %t516, ptr %l233, !tbaa !21
  br label %bb128
bb128:
  %t517 = load i1, ptr %l233, !tbaa !21
  br i1 %t517, label %bb129, label %bb130
bb129:
  br label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb133
bb132:
  call void @__olang_check_failed(ptr @olang_loc_9a2d2471d97215b1_125b5d47933e1fad)
  unreachable
bb133:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2evalueRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l43 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l6, !tbaa !24
  br label %bb32
bb6:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l16, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t39 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2evalueRoot(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  store i64 %t39, ptr %l23
  br label %bb12
bb12:
  %t40 = load i64, ptr %l23, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  br label %bb32
bb13:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t42 = load ptr, ptr %l24, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l24, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 8}
  %t48 = icmp eq i64 %t46, 4
  store i1 %t48, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l25, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t52, i32 0, i32 2
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Elem", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t63 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2evalueRoot(ptr %v0, ptr %v1, ptr %t56, ptr %t60)
  store i64 %t63, ptr %l33
  br label %bb19
bb19:
  %t64 = load i64, ptr %l33, !tbaa !24
  store i64 %t64, ptr %l6, !tbaa !24
  br label %bb32
bb20:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t66 = load ptr, ptr %l34, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t69 = load ptr, ptr %l34, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 8}
  %t72 = icmp eq i64 %t70, 5
  store i1 %t72, ptr %l35, !tbaa !21
  br label %bb22
bb22:
  %t73 = load i1, ptr %l35, !tbaa !21
  br i1 %t73, label %bb23, label %bb24
bb23:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l5, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Payload", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t87 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2evalueRoot(ptr %v0, ptr %v1, ptr %t80, ptr %t84)
  store i64 %t87, ptr %l43
  br label %bb26
bb26:
  %t88 = load i64, ptr %l43, !tbaa !24
  store i64 %t88, ptr %l6, !tbaa !24
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_4086334666941342_2cd2470309ce51f6)
  unreachable
bb32:
  %t89 = load i64, ptr %l6, !tbaa !24
  store i64 %t89, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %rv = alloca %"compiler/source:Span"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  br label %bb17
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l1
  br label %bb17
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t32 = load ptr, ptr %l16, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l16, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l17, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l1
  br label %bb17
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t47 = load ptr, ptr %l22, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l22, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 3
  store i1 %t53, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l23, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l1
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t61, ptr %l3
  br label %bb37
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t64 = load ptr, ptr %l29, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l29, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 8}
  %t70 = icmp eq i64 %t68, 4
  store i1 %t70, ptr %l30, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l30, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t74, i32 0, i32 0
  %t76 = load %"compiler/source:Span", ptr %t75
  store %"compiler/source:Span" %t76, ptr %l2
  br label %bb35
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t79 = load ptr, ptr %l35, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l35, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 8}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l36, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l36, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l2
  br label %bb35
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t94 = load ptr, ptr %l41, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t97 = load ptr, ptr %l41, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 8}
  %t100 = icmp eq i64 %t98, 6
  store i1 %t100, ptr %l42, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l42, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t104, i32 0, i32 0
  %t106 = load %"compiler/source:Span", ptr %t105
  store %"compiler/source:Span" %t106, ptr %l2
  br label %bb35
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t109 = load ptr, ptr %l47, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l47, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 8}
  %t115 = icmp eq i64 %t113, 7
  store i1 %t115, ptr %l48, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l48, !tbaa !21
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32 }, ptr %t119, i32 0, i32 0
  %t121 = load %"compiler/source:Span", ptr %t120
  store %"compiler/source:Span" %t121, ptr %l2
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t123 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t123, ptr %l3
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_35eb3a0a3b047e6d_bf317ca81d1426a1)
  unreachable
bb37:
  %t125 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t125, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropDerived(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca ptr
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Plan", ptr %t1, i32 0, i32 18
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l15, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Plan", ptr %t53, i32 0, i32 18
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %s2, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l39
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t61 = load ptr, ptr %l39, !tbaa !29
  %t63 = icmp eq ptr %t61, %t60
  br i1 %t63, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Plan", ptr %t65, i32 0, i32 19
  store ptr %t67, ptr %l43, !tbaa !29
  %t68 = load i64, ptr %l8, !tbaa !24
  store i64 %t68, ptr %l44, !tbaa !24
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l45
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %s3, ptr %l45)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l47
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t72 = load ptr, ptr %l43, !tbaa !29
  %t73 = load i64, ptr %l44, !tbaa !24
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H850118f76c49c45e73ad12b3c73517c9(ptr %v0, ptr %s3, ptr %t72, i64 %t73, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l7, !tbaa !24
  br label %bb8
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Plan", ptr %t79, i32 0, i32 18
  %t82 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Plan", ptr %t85, i32 0, i32 19
  store ptr %t87, ptr %l54, !tbaa !29
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l55
  %t90 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %s0, ptr %l55)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l57
  br label %bb21
bb21:
  %t91 = load ptr, ptr %l54, !tbaa !29
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H658d0bbb24c75abb2e0dcb1121887af6(ptr %v0, ptr %s0, ptr %t91, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eSetPassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l12 = alloca i1
  %l15 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Plan", ptr %t1, i32 0, i32 12
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l6, !tbaa !27
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t9 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr i64, ptr %t10, i64 %t7
  %t12 = load i64, ptr %t11, !tbaa !34
  store i64 %t12, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp eq i64 %t14, 0
  br i1 %t16, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Plan", ptr %t19, i32 0, i32 13
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l15, !tbaa !27
  %t23 = load i32, ptr %l1, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t27 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i64, ptr %t28, i64 %t25
  %t30 = load i64, ptr %t29, !tbaa !34
  %t33 = icmp sge i64 %t18, %t30
  store i1 %t33, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t35 = load i1, ptr %l12, !tbaa !21
  br i1 %t35, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Plan", ptr %t36, i32 0, i32 14
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = add i64 %t41, %t42
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eSetAt_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t38, i64 %t45, { i64, [2 x i64] } %a3)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReachInto(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eRowOf(ptr %v0, ptr %t2, i64 %a1)
  store i64 %t6, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReachRow(ptr %v0, ptr %v1, ptr %t9, i64 %t10, i64 %a2, ptr %a3)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eclassify(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l50 = alloca %"std/prelude/text:StringBuilder"
  %l55 = alloca i64
  %l58 = alloca i64
  %l76 = alloca ptr
  %l84 = alloca i64
  %l86 = alloca i8
  %l90 = alloca { i64, ptr }
  %l93 = alloca i1
  %l99 = alloca ptr
  %l103 = alloca ptr
  %l104 = alloca i64
  %l107 = alloca i64
  %l108 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 3
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i64, ptr %l19, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  %t7 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t7, ptr %l20
  br label %bb2
bb2:
  %t8 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Versions", ptr %t9, i32 0, i32 11
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l23
  br label %bb3
bb3:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l23, !tbaa !24
  %t17 = sdiv i64 %t15, %t14
  store i64 %t17, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb9
bb6:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l32, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l32, !tbaa !24
  store i64 %t45, ptr %l29, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l29, !tbaa !24
  store i64 %t46, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb12:
  br label %bb13
bb13:
  %t55 = load i64, ptr %l3, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t57 = load i64, ptr %l5, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l8, !tbaa !24
  %t65 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t65, ptr %l50
  br label %bb14
bb14:
  %t66 = load %"std/prelude/text:StringBuilder", ptr %l50
  store %"std/prelude/text:StringBuilder" %t66, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t67 = load i64, ptr %l1, !tbaa !24
  store i64 %t67, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t69 = load i64, ptr %l11, !tbaa !24
  %t70 = load i64, ptr %l10, !tbaa !24
  %t73 = icmp sgt i64 %t69, %t70
  br i1 %t73, label %bb15, label %bb16
bb15:
  %t75 = load i64, ptr %l12, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb20
bb17:
  %t79 = load i64, ptr %l11, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t84 = load i64, ptr %l12, !tbaa !24
  %t87 = add i64 %t83, %t84
  %t89 = sub i64 %t87, 1
  %t90 = load i64, ptr %l12, !tbaa !24
  %t93 = sdiv i64 %t89, %t90
  store i64 %t93, ptr %l58, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb19
bb19:
  %t95 = load i64, ptr %l58, !tbaa !24
  store i64 %t95, ptr %l55, !tbaa !24
  br label %bb20
bb20:
  %t96 = load i64, ptr %l55, !tbaa !24
  store i64 %t96, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb21
bb21:
  %t97 = load i64, ptr %l14, !tbaa !24
  %t98 = load i64, ptr %l13, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb22, label %bb23
bb22:
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t105 = load i64, ptr %l10, !tbaa !24
  %t106 = load i64, ptr %l14, !tbaa !24
  %t107 = load i64, ptr %l12, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  store ptr %l9, ptr %l76, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Versions", ptr %t115, i32 0, i32 11
  %t118 = load i64, ptr %l8, !tbaa !24
  %t119 = load i64, ptr %l1, !tbaa !24
  %t122 = mul i64 %t118, %t119
  %t126 = add i64 %t122, %t113
  %t129 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t117, i64 %t126)
  store i64 %t129, ptr %l84
  br label %bb25
bb25:
  %t130 = load i64, ptr %l84, !tbaa !24
  %t131 = icmp sgt i64 %t130, -2
  br i1 %t131, label %bb26, label %bb27
bb26:
  store i8 49, ptr %l86, !tbaa !22
  br label %bb28
bb27:
  store i8 48, ptr %l86, !tbaa !22
  br label %bb28
bb28:
  %t133 = load ptr, ptr %l76, !tbaa !29
  %t134 = load i8, ptr %l86, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s2, ptr %t133, i8 %t134)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t135 = load i64, ptr %l14, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l14, !tbaa !24
  br label %bb21
bb31:
  %t140 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s2, ptr %l9)
  store { i64, ptr } %t140, ptr %l90
  br label %bb32
bb32:
  %t141 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t141, ptr %l16, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t145 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H6a1e9f71e6394ce7f250c1dfd2eee93e(ptr %s0, ptr %l2, { i64, ptr } %t142)
  store i1 %t145, ptr %l93
  br label %bb33
bb33:
  %t146 = load i1, ptr %l93, !tbaa !21
  %t147 = xor i1 %t146, true
  br i1 %t147, label %bb34, label %bb35
bb34:
  %t149 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/typed:Versions", ptr %t150, i32 0, i32 13
  %t153 = load i64, ptr %t152, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H3f302293c6f4c07a80dfb5e30c1500bf(ptr %s0, ptr %l2, { i64, ptr } %t149, i64 %t153)
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l99, !tbaa !29
  %t158 = load ptr, ptr %l99, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Versions", ptr %t158, i32 0, i32 13
  %t160 = load i64, ptr %t159, !tbaa !24
  %t162 = add i64 %t160, 1
  %t164 = load ptr, ptr %l99, !tbaa !29
  %t165 = getelementptr %"compiler/typed:Versions", ptr %t164, i32 0, i32 13
  store i64 %t162, ptr %t165, !tbaa !24
  br label %bb37
bb37:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/typed:Versions", ptr %t166, i32 0, i32 12
  store ptr %t168, ptr %l103, !tbaa !29
  %t169 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t172 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %s0, ptr %l2, { i64, ptr } %t169)
  %t173 = extractvalue { i32, i64 } %t172, 1
  %t174 = extractvalue { i32, i64 } %t172, 0
  store i32 %t174, ptr %l108
  %t175 = icmp ne i32 %t174, 0
  br i1 %t175, label %bb39, label %ok.176, !prof !99
ok.176:
  store i64 %t173, ptr %l107
  br label %bb38
bb38:
  %t177 = load i64, ptr %l107, !tbaa !24
  store i64 %t177, ptr %l104, !tbaa !24
  br label %bb41
bb39:
  br label %bb40
bb40:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb41
bb41:
  %t178 = load ptr, ptr %l103, !tbaa !29
  %t179 = load i64, ptr %l104, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t178, i64 %t179)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb43:
  %t180 = load i64, ptr %l7, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l7, !tbaa !24
  br label %bb10
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edead(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i1
  %l7 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 14
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb6
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Versions", ptr %t9, i32 0, i32 14
  store ptr %t11, ptr %l7, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Versions", ptr %t12, i32 0, i32 14
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l10
  br label %bb4
bb4:
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = sub i64 %t17, 1
  %t19 = load ptr, ptr %l7, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t19, i64 %t18)
  store i64 %t21, ptr %l12
  br label %bb5
bb5:
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = icmp ne i64 %t22, 0
  store i1 %t23, ptr %l5, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l5, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eend(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %l8 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 20
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Versions", ptr %t8, i32 0, i32 14
  store ptr %t10, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Versions", ptr %t11, i32 0, i32 14
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l8
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t16 = load i64, ptr %l8, !tbaa !24
  %t17 = sub i64 %t16, 1
  %t18 = load ptr, ptr %l5, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t17, i64 1)
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca ptr
  %l50 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca i1
  %l123 = alloca ptr
  %l124 = alloca i1
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l137 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l148 = alloca ptr
  %l149 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca i1
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l181 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l190 = alloca ptr
  %l191 = alloca i1
  %l204 = alloca { i64, ptr }
  %l214 = alloca ptr
  %l215 = alloca i1
  %l222 = alloca ptr
  %l223 = alloca i1
  %l229 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l232 = alloca i64
  %l237 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l242 = alloca i64
  %l247 = alloca i64
  %l250 = alloca i64
  %l268 = alloca ptr
  %l269 = alloca i64
  %l270 = alloca ptr
  %l273 = alloca i64
  %l276 = alloca i64
  %l277 = alloca i64
  %l280 = alloca ptr
  %l282 = alloca i64
  %l283 = alloca i64
  %l284 = alloca ptr
  %l286 = alloca i64
  %l288 = alloca i64
  %l292 = alloca i64
  %l296 = alloca i64
  %l299 = alloca i64
  %l317 = alloca ptr
  %l321 = alloca i64
  %l322 = alloca ptr
  %l323 = alloca ptr
  %l327 = alloca i64
  %l328 = alloca i64
  %l329 = alloca i64
  %l336 = alloca ptr
  %l337 = alloca i1
  %l342 = alloca ptr
  %l343 = alloca i1
  %l355 = alloca { i64, ptr }
  %l364 = alloca ptr
  %l365 = alloca i1
  %l373 = alloca ptr
  %l374 = alloca i1
  %l377 = alloca ptr
  %l378 = alloca i1
  %l391 = alloca { i64, ptr }
  %l394 = alloca ptr
  %l395 = alloca i1
  %l405 = alloca ptr
  %l406 = alloca i1
  %s9 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s19 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t6 = load ptr, ptr %l53, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l53, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l54, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l54, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t15 = load ptr, ptr %l57, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l57, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 18}
  %t21 = icmp eq i64 %t19, 1
  store i1 %t21, ptr %l58, !tbaa !21
  br label %bb9
bb9:
  %t22 = load i1, ptr %l58, !tbaa !21
  br i1 %t22, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb237
bb13:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t24 = load ptr, ptr %l61, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb14, label %bb15
bb14:
  %t27 = load ptr, ptr %l61, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l62, !tbaa !21
  br label %bb15
bb15:
  %t31 = load i1, ptr %l62, !tbaa !21
  br i1 %t31, label %bb16, label %bb17
bb16:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l2, !tbaa !29
  br label %bb26
bb17:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t39 = load ptr, ptr %l67, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb18, label %bb19
bb18:
  %t42 = load ptr, ptr %l67, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l68, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l68, !tbaa !21
  br i1 %t46, label %bb20, label %bb21
bb20:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l2, !tbaa !29
  br label %bb26
bb21:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t54 = load ptr, ptr %l73, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t57 = load ptr, ptr %l73, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 4
  store i1 %t60, ptr %l74, !tbaa !21
  br label %bb23
bb23:
  %t61 = load i1, ptr %l74, !tbaa !21
  br i1 %t61, label %bb24, label %bb25
bb24:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l2, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %t68, ptr %t69)
  br label %bb27
bb27:
  br label %bb237
bb28:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t73 = load ptr, ptr %l81, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb29, label %bb30
bb29:
  %t76 = load ptr, ptr %l81, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 18}
  %t79 = icmp eq i64 %t77, 5
  store i1 %t79, ptr %l82, !tbaa !21
  br label %bb30
bb30:
  %t80 = load i1, ptr %l82, !tbaa !21
  br i1 %t80, label %bb31, label %bb32
bb31:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l3, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l3, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Promote", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t87, ptr %t91)
  br label %bb34
bb34:
  br label %bb237
bb35:
  %t95 = load ptr, ptr %l1, !tbaa !29
  store ptr %t95, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t96 = load ptr, ptr %l91, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb36, label %bb37
bb36:
  %t99 = load ptr, ptr %l91, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 18}
  %t102 = icmp eq i64 %t100, 6
  store i1 %t102, ptr %l92, !tbaa !21
  br label %bb37
bb37:
  %t103 = load i1, ptr %l92, !tbaa !21
  br i1 %t103, label %bb38, label %bb39
bb38:
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr { i64, [5 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t106, i32 0, i32 2
  %t108 = load ptr, ptr %t107
  store ptr %t108, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb54
bb40:
  %t110 = load ptr, ptr %l4, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Call", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  store ptr %t113, ptr %l5, !tbaa !29
  %t115 = load ptr, ptr %l5, !tbaa !29
  store ptr %t115, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t116 = load ptr, ptr %l99, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb41, label %bb42
bb41:
  %t119 = load ptr, ptr %l99, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 5}
  %t122 = icmp eq i64 %t120, 2
  store i1 %t122, ptr %l100, !tbaa !21
  br label %bb42
bb42:
  %t123 = load i1, ptr %l100, !tbaa !21
  br i1 %t123, label %bb43, label %bb44
bb43:
  %t124 = load ptr, ptr %l5, !tbaa !29
  %t126 = getelementptr { i64, [3 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { ptr }, ptr %t126, i32 0, i32 0
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l6, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t130, ptr %t131)
  br label %bb46
bb46:
  br label %bb52
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_77315c1e1ec03e98_be22ee0dd90c53a4)
  unreachable
bb52:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l4, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Call", ptr %t136, i32 0, i32 1
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexprs(ptr %v0, ptr %v1, ptr %t135, { i64, ptr } %t139)
  br label %bb53
bb53:
  br label %bb237
bb54:
  %t142 = load ptr, ptr %l1, !tbaa !29
  store ptr %t142, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t143 = load ptr, ptr %l111, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb55, label %bb56
bb55:
  %t146 = load ptr, ptr %l111, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 18}
  %t149 = icmp eq i64 %t147, 7
  store i1 %t149, ptr %l112, !tbaa !21
  br label %bb56
bb56:
  %t150 = load i1, ptr %l112, !tbaa !21
  br i1 %t150, label %bb57, label %bb58
bb57:
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = getelementptr { i64, [5 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t153, i32 0, i32 2
  %t155 = load ptr, ptr %t154
  store ptr %t155, ptr %l7, !tbaa !29
  br label %bb59
bb58:
  br label %bb62
bb59:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l7, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Make", ptr %t158, i32 0, i32 2
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexprs(ptr %v0, ptr %v1, ptr %t157, { i64, ptr } %t161)
  br label %bb60
bb60:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l7, !tbaa !29
  %t167 = getelementptr %"compiler/typed:Make", ptr %t165, i32 0, i32 3
  %t168 = load ptr, ptr %t167, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t164, ptr %t168)
  br label %bb61
bb61:
  br label %bb237
bb62:
  %t171 = load ptr, ptr %l1, !tbaa !29
  store ptr %t171, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t172 = load ptr, ptr %l123, !tbaa !29
  %t173 = icmp ne ptr %t172, null
  br i1 %t173, label %bb63, label %bb64
bb63:
  %t175 = load ptr, ptr %l123, !tbaa !29
  %t176 = load i64, ptr %t175, !range !{i64 0, i64 18}
  %t178 = icmp eq i64 %t176, 8
  store i1 %t178, ptr %l124, !tbaa !21
  br label %bb64
bb64:
  %t179 = load i1, ptr %l124, !tbaa !21
  br i1 %t179, label %bb65, label %bb66
bb65:
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr { i64, [5 x i64] }, ptr %t180, i32 0, i32 1
  %t183 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t182, i32 0, i32 2
  %t184 = load ptr, ptr %t183
  store ptr %t184, ptr %l8, !tbaa !29
  br label %bb67
bb66:
  br label %bb75
bb67:
  store %olang.scope zeroinitializer, ptr %s9
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load ptr, ptr %l8, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Collect", ptr %t187, i32 0, i32 0
  %t190 = load ptr, ptr %t189, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t186, ptr %t190)
  br label %bb68
bb68:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load ptr, ptr %l8, !tbaa !29
  %t196 = getelementptr %"compiler/typed:Collect", ptr %t194, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t200 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eloop(ptr %v0, ptr %v1, ptr %v0, ptr %s9, ptr %t193, ptr %t197, ptr null)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %l135
  br label %bb69
bb69:
  %t201 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t201, ptr %l9
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edead(ptr %v0, ptr %t202)
  store i1 %t204, ptr %l137
  br label %bb70
bb70:
  %t205 = load i1, ptr %l137, !tbaa !21
  br i1 %t205, label %bb71, label %bb72
bb71:
  %t206 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s9, ptr %t206, ptr %l9)
  br label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s9)
  br label %bb237
bb75:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t210 = load ptr, ptr %l140, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb76, label %bb77
bb76:
  %t213 = load ptr, ptr %l140, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 18}
  %t216 = icmp eq i64 %t214, 9
  store i1 %t216, ptr %l141, !tbaa !21
  br label %bb77
bb77:
  %t217 = load i1, ptr %l141, !tbaa !21
  br i1 %t217, label %bb78, label %bb79
bb78:
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [5 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t220, i32 0, i32 4
  %t222 = load { i64, ptr }, ptr %t221
  store { i64, ptr } %t222, ptr %l10, !tbaa !27
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexprs(ptr %v0, ptr %v1, ptr %t224, { i64, ptr } %t225)
  br label %bb81
bb81:
  br label %bb237
bb82:
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t229 = load ptr, ptr %l148, !tbaa !29
  %t230 = icmp ne ptr %t229, null
  br i1 %t230, label %bb83, label %bb84
bb83:
  %t232 = load ptr, ptr %l148, !tbaa !29
  %t233 = load i64, ptr %t232, !range !{i64 0, i64 18}
  %t235 = icmp eq i64 %t233, 10
  store i1 %t235, ptr %l149, !tbaa !21
  br label %bb84
bb84:
  %t236 = load i1, ptr %l149, !tbaa !21
  br i1 %t236, label %bb85, label %bb86
bb85:
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t239 = getelementptr { i64, [5 x i64] }, ptr %t237, i32 0, i32 1
  %t240 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t239, i32 0, i32 2
  %t241 = load ptr, ptr %t240
  store ptr %t241, ptr %l11, !tbaa !29
  br label %bb87
bb86:
  br label %bb91
bb87:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load ptr, ptr %l11, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Slice", ptr %t244, i32 0, i32 0
  %t247 = load ptr, ptr %t246, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %t243, ptr %t247)
  br label %bb88
bb88:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load ptr, ptr %l11, !tbaa !29
  %t253 = getelementptr %"compiler/typed:Slice", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t250, ptr %t254)
  br label %bb89
bb89:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load ptr, ptr %l11, !tbaa !29
  %t261 = getelementptr %"compiler/typed:Slice", ptr %t259, i32 0, i32 2
  %t262 = load ptr, ptr %t261, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t258, ptr %t262)
  br label %bb90
bb90:
  br label %bb237
bb91:
  %t266 = load ptr, ptr %l1, !tbaa !29
  store ptr %t266, ptr %l165, !tbaa !29
  store i1 false, ptr %l166, !tbaa !21
  %t267 = load ptr, ptr %l165, !tbaa !29
  %t268 = icmp ne ptr %t267, null
  br i1 %t268, label %bb92, label %bb93
bb92:
  %t270 = load ptr, ptr %l165, !tbaa !29
  %t271 = load i64, ptr %t270, !range !{i64 0, i64 18}
  %t273 = icmp eq i64 %t271, 11
  store i1 %t273, ptr %l166, !tbaa !21
  br label %bb93
bb93:
  %t274 = load i1, ptr %l166, !tbaa !21
  br i1 %t274, label %bb94, label %bb95
bb94:
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr { i64, [5 x i64] }, ptr %t275, i32 0, i32 1
  %t278 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t277, i32 0, i32 2
  %t279 = load ptr, ptr %t278
  store ptr %t279, ptr %l12, !tbaa !29
  br label %bb96
bb95:
  br label %bb104
bb96:
  store %olang.scope zeroinitializer, ptr %s13
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load ptr, ptr %l12, !tbaa !29
  %t284 = getelementptr %"compiler/typed:Cond", ptr %t282, i32 0, i32 0
  %t285 = load ptr, ptr %t284, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t281, ptr %t285)
  br label %bb97
bb97:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s13, ptr %t289)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t291, ptr %l176
  br label %bb98
bb98:
  %t292 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t292, ptr %l13
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load ptr, ptr %l12, !tbaa !29
  %t296 = getelementptr %"compiler/typed:Cond", ptr %t294, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t293, ptr %t297)
  br label %bb99
bb99:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s13, ptr %t300)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %l181
  br label %bb100
bb100:
  %t303 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l181
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %l14
  %t304 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s13, ptr %t304, ptr %l13)
  br label %bb101
bb101:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load ptr, ptr %l12, !tbaa !29
  %t310 = getelementptr %"compiler/typed:Cond", ptr %t308, i32 0, i32 2
  %t311 = load ptr, ptr %t310, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t307, ptr %t311)
  br label %bb102
bb102:
  %t315 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %s13, ptr %t315, ptr %l14)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s13)
  br label %bb237
bb104:
  %t318 = load ptr, ptr %l1, !tbaa !29
  store ptr %t318, ptr %l190, !tbaa !29
  store i1 false, ptr %l191, !tbaa !21
  %t319 = load ptr, ptr %l190, !tbaa !29
  %t320 = icmp ne ptr %t319, null
  br i1 %t320, label %bb105, label %bb106
bb105:
  %t322 = load ptr, ptr %l190, !tbaa !29
  %t323 = load i64, ptr %t322, !range !{i64 0, i64 18}
  %t325 = icmp eq i64 %t323, 12
  store i1 %t325, ptr %l191, !tbaa !21
  br label %bb106
bb106:
  %t326 = load i1, ptr %l191, !tbaa !21
  br i1 %t326, label %bb107, label %bb108
bb107:
  %t327 = load ptr, ptr %l1, !tbaa !29
  %t329 = getelementptr { i64, [5 x i64] }, ptr %t327, i32 0, i32 1
  %t330 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t329, i32 0, i32 2
  %t331 = load ptr, ptr %t330
  store ptr %t331, ptr %l15, !tbaa !29
  br label %bb109
bb108:
  br label %bb118
bb109:
  %t333 = load ptr, ptr %l15, !tbaa !29
  %t335 = getelementptr %"compiler/typed:Seq", ptr %t333, i32 0, i32 0
  %t336 = load { i64, ptr }, ptr %t335, !tbaa !27
  store { i64, ptr } %t336, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t338 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t338, 0
  store i64 %t340, ptr %l18, !tbaa !24
  br label %bb110
bb110:
  %t342 = load i64, ptr %l17, !tbaa !24
  %t343 = load i64, ptr %l18, !tbaa !24
  %t346 = icmp slt i64 %t342, %t343
  %t348 = xor i1 %t346, true
  br i1 %t348, label %bb111, label %bb112
bb111:
  br label %bb116
bb112:
  br label %bb113
bb113:
  %t350 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t350, ptr %l204, !tbaa !27
  %t351 = load i64, ptr %l17, !tbaa !24
  %t353 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr ptr, ptr %t354, i64 %t351
  %t356 = load ptr, ptr %t355, !tbaa !39
  %t358 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2estmt(ptr %v0, ptr %v1, ptr %t358, ptr %t356)
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t362 = load i64, ptr %l17, !tbaa !24
  %t364 = add i64 %t362, 1
  store i64 %t364, ptr %l17, !tbaa !24
  br label %bb110
bb116:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load ptr, ptr %l15, !tbaa !29
  %t369 = getelementptr %"compiler/typed:Seq", ptr %t367, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t366, ptr %t370)
  br label %bb117
bb117:
  br label %bb237
bb118:
  %t373 = load ptr, ptr %l1, !tbaa !29
  store ptr %t373, ptr %l214, !tbaa !29
  store i1 false, ptr %l215, !tbaa !21
  %t374 = load ptr, ptr %l214, !tbaa !29
  %t375 = icmp ne ptr %t374, null
  br i1 %t375, label %bb119, label %bb120
bb119:
  %t377 = load ptr, ptr %l214, !tbaa !29
  %t378 = load i64, ptr %t377, !range !{i64 0, i64 18}
  %t380 = icmp eq i64 %t378, 13
  store i1 %t380, ptr %l215, !tbaa !21
  br label %bb120
bb120:
  %t381 = load i1, ptr %l215, !tbaa !21
  br i1 %t381, label %bb121, label %bb122
bb121:
  %t382 = load ptr, ptr %l1, !tbaa !29
  %t384 = getelementptr { i64, [5 x i64] }, ptr %t382, i32 0, i32 1
  %t385 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t384, i32 0, i32 2
  %t386 = load ptr, ptr %t385
  store ptr %t386, ptr %l20, !tbaa !29
  br label %bb123
bb122:
  br label %bb125
bb123:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2ematch(ptr %v0, ptr %v1, ptr %t388, ptr %t389)
  br label %bb124
bb124:
  br label %bb237
bb125:
  %t392 = load ptr, ptr %l1, !tbaa !29
  store ptr %t392, ptr %l222, !tbaa !29
  store i1 false, ptr %l223, !tbaa !21
  %t393 = load ptr, ptr %l222, !tbaa !29
  %t394 = icmp ne ptr %t393, null
  br i1 %t394, label %bb126, label %bb127
bb126:
  %t396 = load ptr, ptr %l222, !tbaa !29
  %t397 = load i64, ptr %t396, !range !{i64 0, i64 18}
  %t399 = icmp eq i64 %t397, 14
  store i1 %t399, ptr %l223, !tbaa !21
  br label %bb127
bb127:
  %t400 = load i1, ptr %l223, !tbaa !21
  br i1 %t400, label %bb128, label %bb129
bb128:
  %t401 = load ptr, ptr %l1, !tbaa !29
  %t403 = getelementptr { i64, [5 x i64] }, ptr %t401, i32 0, i32 1
  %t404 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t403, i32 0, i32 2
  %t405 = load ptr, ptr %t404
  store ptr %t405, ptr %l21, !tbaa !29
  br label %bb130
bb129:
  br label %bb178
bb130:
  store %olang.scope zeroinitializer, ptr %s19
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s19, ptr %t407)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t409, ptr %l229
  br label %bb131
bb131:
  %t410 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l229
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t410, ptr %l22
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/typed:Versions", ptr %t411, i32 0, i32 15
  %t415 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t413)
  store i64 %t415, ptr %l232
  br label %bb132
bb132:
  %t416 = load i64, ptr %l232, !tbaa !24
  store i64 %t416, ptr %l23, !tbaa !24
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load ptr, ptr %l21, !tbaa !29
  %t420 = getelementptr %"compiler/typed:Try", ptr %t418, i32 0, i32 0
  %t421 = load ptr, ptr %t420, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t417, ptr %t421)
  br label %bb133
bb133:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t426 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s19, ptr %t424)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t426, ptr %l237
  br label %bb134
bb134:
  %t427 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l237
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t427, ptr %l24
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/typed:Versions", ptr %t428, i32 0, i32 20
  %t431 = load i1, ptr %t430, !tbaa !21
  %t433 = xor i1 %t431, true
  br i1 %t433, label %bb135, label %bb136
bb135:
  store i64 0, ptr %l25, !tbaa !24
  %t436 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s19, ptr %l22)
  store i64 %t436, ptr %l242
  br label %bb137
bb136:
  br label %bb176
bb137:
  %t437 = load i64, ptr %l242, !tbaa !24
  %t438 = sub i64 %t437, 1
  store i64 %t438, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t440 = load i64, ptr %l26, !tbaa !24
  %t441 = load i64, ptr %l25, !tbaa !24
  %t444 = icmp sgt i64 %t440, %t441
  br i1 %t444, label %bb138, label %bb139
bb138:
  %t446 = load i64, ptr %l27, !tbaa !24
  %t448 = icmp sgt i64 %t446, 0
  br i1 %t448, label %bb140, label %bb141
bb139:
  store i64 0, ptr %l247, !tbaa !24
  br label %bb143
bb140:
  %t450 = load i64, ptr %l26, !tbaa !24
  %t451 = load i64, ptr %l25, !tbaa !24
  %t454 = sub i64 %t450, %t451
  %t455 = load i64, ptr %l27, !tbaa !24
  %t458 = add i64 %t454, %t455
  %t460 = sub i64 %t458, 1
  %t461 = load i64, ptr %l27, !tbaa !24
  %t464 = sdiv i64 %t460, %t461
  store i64 %t464, ptr %l250, !tbaa !24
  br label %bb142
bb141:
  store i64 0, ptr %l250, !tbaa !24
  br label %bb142
bb142:
  %t466 = load i64, ptr %l250, !tbaa !24
  store i64 %t466, ptr %l247, !tbaa !24
  br label %bb143
bb143:
  %t467 = load i64, ptr %l247, !tbaa !24
  store i64 %t467, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb144
bb144:
  %t468 = load i64, ptr %l29, !tbaa !24
  %t469 = load i64, ptr %l28, !tbaa !24
  %t472 = icmp slt i64 %t468, %t469
  %t474 = xor i1 %t472, true
  br i1 %t474, label %bb145, label %bb146
bb145:
  br label %bb153
bb146:
  br label %bb147
bb147:
  %t476 = load i64, ptr %l25, !tbaa !24
  %t477 = load i64, ptr %l29, !tbaa !24
  %t478 = load i64, ptr %l27, !tbaa !24
  %t481 = mul i64 %t477, %t478
  %t484 = add i64 %t476, %t481
  store i64 %t484, ptr %l30, !tbaa !24
  store ptr %l24, ptr %l268, !tbaa !29
  %t486 = load i64, ptr %l30, !tbaa !24
  store i64 %t486, ptr %l269, !tbaa !24
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l270, !tbaa !29
  %t488 = load i64, ptr %l30, !tbaa !24
  %t491 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s19, ptr %l24, i64 %t488)
  store i64 %t491, ptr %l273
  br label %bb148
bb148:
  %t492 = load i64, ptr %l30, !tbaa !24
  %t495 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s19, ptr %l22, i64 %t492)
  store i64 %t495, ptr %l276
  br label %bb149
bb149:
  %t496 = load ptr, ptr %l270, !tbaa !29
  %t497 = load i64, ptr %l273, !tbaa !24
  %t498 = load i64, ptr %l276, !tbaa !24
  %t499 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %t496, i64 %t497, i64 %t498)
  store i64 %t499, ptr %l277
  br label %bb150
bb150:
  %t500 = load ptr, ptr %l268, !tbaa !29
  %t501 = load i64, ptr %l269, !tbaa !24
  %t502 = load i64, ptr %l277, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %s19, ptr %t500, i64 %t501, i64 %t502)
  br label %bb151
bb151:
  br label %bb152
bb152:
  %t503 = load i64, ptr %l29, !tbaa !24
  %t505 = add i64 %t503, 1
  store i64 %t505, ptr %l29, !tbaa !24
  br label %bb144
bb153:
  store ptr %l24, ptr %l280, !tbaa !29
  %t508 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s19, ptr %l22)
  store i64 %t508, ptr %l282
  br label %bb154
bb154:
  %t509 = load i64, ptr %l282, !tbaa !24
  %t510 = sub i64 %t509, 1
  store i64 %t510, ptr %l283, !tbaa !24
  store ptr %l22, ptr %l284, !tbaa !29
  %t512 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s19, ptr %l22)
  store i64 %t512, ptr %l286
  br label %bb155
bb155:
  %t513 = load i64, ptr %l286, !tbaa !24
  %t514 = sub i64 %t513, 1
  %t515 = load ptr, ptr %l284, !tbaa !29
  %t517 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s19, ptr %t515, i64 %t514)
  store i64 %t517, ptr %l288
  br label %bb156
bb156:
  %t518 = load ptr, ptr %l280, !tbaa !29
  %t519 = load i64, ptr %l283, !tbaa !24
  %t520 = load i64, ptr %l288, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %s19, ptr %t518, i64 %t519, i64 %t520)
  br label %bb157
bb157:
  %t521 = load i64, ptr %l23, !tbaa !24
  store i64 %t521, ptr %l31, !tbaa !24
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/typed:Versions", ptr %t523, i32 0, i32 15
  %t527 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t525)
  store i64 %t527, ptr %l292
  br label %bb158
bb158:
  %t528 = load i64, ptr %l292, !tbaa !24
  store i64 %t528, ptr %l32, !tbaa !24
  store i64 1, ptr %l33, !tbaa !24
  %t529 = load i64, ptr %l32, !tbaa !24
  %t530 = load i64, ptr %l31, !tbaa !24
  %t533 = icmp sgt i64 %t529, %t530
  br i1 %t533, label %bb159, label %bb160
bb159:
  %t535 = load i64, ptr %l33, !tbaa !24
  %t537 = icmp sgt i64 %t535, 0
  br i1 %t537, label %bb161, label %bb162
bb160:
  store i64 0, ptr %l296, !tbaa !24
  br label %bb164
bb161:
  %t539 = load i64, ptr %l32, !tbaa !24
  %t540 = load i64, ptr %l31, !tbaa !24
  %t543 = sub i64 %t539, %t540
  %t544 = load i64, ptr %l33, !tbaa !24
  %t547 = add i64 %t543, %t544
  %t549 = sub i64 %t547, 1
  %t550 = load i64, ptr %l33, !tbaa !24
  %t553 = sdiv i64 %t549, %t550
  store i64 %t553, ptr %l299, !tbaa !24
  br label %bb163
bb162:
  store i64 0, ptr %l299, !tbaa !24
  br label %bb163
bb163:
  %t555 = load i64, ptr %l299, !tbaa !24
  store i64 %t555, ptr %l296, !tbaa !24
  br label %bb164
bb164:
  %t556 = load i64, ptr %l296, !tbaa !24
  store i64 %t556, ptr %l34, !tbaa !24
  store i64 0, ptr %l35, !tbaa !24
  br label %bb165
bb165:
  %t557 = load i64, ptr %l35, !tbaa !24
  %t558 = load i64, ptr %l34, !tbaa !24
  %t561 = icmp slt i64 %t557, %t558
  %t563 = xor i1 %t561, true
  br i1 %t563, label %bb166, label %bb167
bb166:
  br label %bb175
bb167:
  br label %bb168
bb168:
  %t565 = load i64, ptr %l31, !tbaa !24
  %t566 = load i64, ptr %l35, !tbaa !24
  %t567 = load i64, ptr %l33, !tbaa !24
  %t570 = mul i64 %t566, %t567
  %t573 = add i64 %t565, %t570
  store i64 %t573, ptr %l36, !tbaa !24
  store ptr %l24, ptr %l317, !tbaa !29
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t577 = getelementptr %"compiler/typed:Versions", ptr %t575, i32 0, i32 15
  %t578 = load i64, ptr %l36, !tbaa !24
  %t581 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t577, i64 %t578)
  store i64 %t581, ptr %l321
  br label %bb169
bb169:
  %t582 = load ptr, ptr %l0, !tbaa !29
  store ptr %t582, ptr %l322, !tbaa !29
  store ptr %l24, ptr %l323, !tbaa !29
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t585 = getelementptr %"compiler/typed:Versions", ptr %t583, i32 0, i32 15
  %t586 = load i64, ptr %l36, !tbaa !24
  %t589 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t585, i64 %t586)
  store i64 %t589, ptr %l327
  br label %bb170
bb170:
  %t590 = load ptr, ptr %l323, !tbaa !29
  %t591 = load i64, ptr %l327, !tbaa !24
  %t592 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s19, ptr %t590, i64 %t591)
  store i64 %t592, ptr %l328
  br label %bb171
bb171:
  %t593 = load ptr, ptr %l322, !tbaa !29
  %t594 = load i64, ptr %l328, !tbaa !24
  %t595 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %t593, i64 %t594, i64 -1)
  store i64 %t595, ptr %l329
  br label %bb172
bb172:
  %t596 = load ptr, ptr %l317, !tbaa !29
  %t597 = load i64, ptr %l321, !tbaa !24
  %t598 = load i64, ptr %l329, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %s19, ptr %t596, i64 %t597, i64 %t598)
  br label %bb173
bb173:
  br label %bb174
bb174:
  %t599 = load i64, ptr %l35, !tbaa !24
  %t601 = add i64 %t599, 1
  store i64 %t601, ptr %l35, !tbaa !24
  br label %bb165
bb175:
  br label %bb176
bb176:
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t604 = load ptr, ptr %l21, !tbaa !29
  %t606 = getelementptr %"compiler/typed:Try", ptr %t604, i32 0, i32 1
  %t607 = load { i64, ptr }, ptr %t606, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eclauses(ptr %v0, ptr %v1, ptr %s19, ptr %t603, { i64, ptr } %t607, ptr %l24, i1 false)
  br label %bb177
bb177:
  call void @__olang_scope_close(ptr %s19)
  br label %bb237
bb178:
  %t611 = load ptr, ptr %l1, !tbaa !29
  store ptr %t611, ptr %l336, !tbaa !29
  store i1 false, ptr %l337, !tbaa !21
  %t612 = load ptr, ptr %l336, !tbaa !29
  %t613 = icmp ne ptr %t612, null
  br i1 %t613, label %bb179, label %bb180
bb179:
  %t615 = load ptr, ptr %l336, !tbaa !29
  %t616 = load i64, ptr %t615, !range !{i64 0, i64 18}
  %t618 = icmp eq i64 %t616, 15
  store i1 %t618, ptr %l337, !tbaa !21
  br label %bb180
bb180:
  %t619 = load i1, ptr %l337, !tbaa !21
  br i1 %t619, label %bb181, label %bb182
bb181:
  %t620 = load ptr, ptr %l1, !tbaa !29
  %t622 = getelementptr { i64, [5 x i64] }, ptr %t620, i32 0, i32 1
  %t623 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t622, i32 0, i32 2
  %t624 = load ptr, ptr %t623
  store ptr %t624, ptr %l37, !tbaa !29
  br label %bb183
bb182:
  br label %bb211
bb183:
  %t626 = load ptr, ptr %l37, !tbaa !29
  store ptr %t626, ptr %l342, !tbaa !29
  store i1 false, ptr %l343, !tbaa !21
  %t627 = load ptr, ptr %l342, !tbaa !29
  %t628 = icmp ne ptr %t627, null
  br i1 %t628, label %bb184, label %bb185
bb184:
  %t630 = load ptr, ptr %l342, !tbaa !29
  %t631 = load i64, ptr %t630, !range !{i64 0, i64 3}
  %t633 = icmp eq i64 %t631, 1
  store i1 %t633, ptr %l343, !tbaa !21
  br label %bb185
bb185:
  %t634 = load i1, ptr %l343, !tbaa !21
  br i1 %t634, label %bb186, label %bb187
bb186:
  %t635 = load ptr, ptr %l37, !tbaa !29
  %t637 = getelementptr { i64, [4 x i64] }, ptr %t635, i32 0, i32 1
  %t638 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t637, i32 0, i32 1
  %t639 = load { i64, ptr }, ptr %t638
  store { i64, ptr } %t639, ptr %l38, !tbaa !27
  br label %bb188
bb187:
  br label %bb196
bb188:
  %t641 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t641, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t643 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t645 = extractvalue { i64, ptr } %t643, 0
  store i64 %t645, ptr %l41, !tbaa !24
  br label %bb189
bb189:
  %t647 = load i64, ptr %l40, !tbaa !24
  %t648 = load i64, ptr %l41, !tbaa !24
  %t651 = icmp slt i64 %t647, %t648
  %t653 = xor i1 %t651, true
  br i1 %t653, label %bb190, label %bb191
bb190:
  br label %bb195
bb191:
  br label %bb192
bb192:
  %t655 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t655, ptr %l355, !tbaa !27
  %t656 = load i64, ptr %l40, !tbaa !24
  %t658 = getelementptr { i64, ptr }, ptr %l355, i32 0, i32 1
  %t659 = load ptr, ptr %t658, !tbaa !27
  %t660 = getelementptr ptr, ptr %t659, i64 %t656
  %t661 = load ptr, ptr %t660, !tbaa !39
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t666 = getelementptr %"compiler/typed:Capture", ptr %t661, i32 0, i32 1
  %t667 = load ptr, ptr %t666, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t663, ptr %t667)
  br label %bb193
bb193:
  br label %bb194
bb194:
  %t671 = load i64, ptr %l40, !tbaa !24
  %t673 = add i64 %t671, 1
  store i64 %t673, ptr %l40, !tbaa !24
  br label %bb189
bb195:
  br label %bb210
bb196:
  %t675 = load ptr, ptr %l37, !tbaa !29
  store ptr %t675, ptr %l364, !tbaa !29
  store i1 false, ptr %l365, !tbaa !21
  %t676 = load ptr, ptr %l364, !tbaa !29
  %t677 = icmp ne ptr %t676, null
  br i1 %t677, label %bb197, label %bb198
bb197:
  %t679 = load ptr, ptr %l364, !tbaa !29
  %t680 = load i64, ptr %t679, !range !{i64 0, i64 3}
  %t682 = icmp eq i64 %t680, 2
  store i1 %t682, ptr %l365, !tbaa !21
  br label %bb198
bb198:
  %t683 = load i1, ptr %l365, !tbaa !21
  br i1 %t683, label %bb199, label %bb200
bb199:
  %t684 = load ptr, ptr %l37, !tbaa !29
  %t686 = getelementptr { i64, [4 x i64] }, ptr %t684, i32 0, i32 1
  %t687 = getelementptr { i32, ptr, i32 }, ptr %t686, i32 0, i32 1
  %t688 = load ptr, ptr %t687
  store ptr %t688, ptr %l43, !tbaa !29
  br label %bb201
bb200:
  br label %bb203
bb201:
  %t690 = load ptr, ptr %l0, !tbaa !29
  %t691 = load ptr, ptr %l43, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t690, ptr %t691)
  br label %bb202
bb202:
  br label %bb210
bb203:
  %t695 = load ptr, ptr %l37, !tbaa !29
  store ptr %t695, ptr %l373, !tbaa !29
  store i1 false, ptr %l374, !tbaa !21
  %t696 = load ptr, ptr %l373, !tbaa !29
  %t697 = icmp ne ptr %t696, null
  br i1 %t697, label %bb204, label %bb205
bb204:
  %t699 = load ptr, ptr %l373, !tbaa !29
  %t700 = load i64, ptr %t699, !range !{i64 0, i64 3}
  %t702 = icmp eq i64 %t700, 0
  store i1 %t702, ptr %l374, !tbaa !21
  br label %bb205
bb205:
  %t703 = load i1, ptr %l374, !tbaa !21
  br i1 %t703, label %bb206, label %bb207
bb206:
  br label %bb208
bb207:
  br label %bb209
bb208:
  br label %bb210
bb209:
  call void @__olang_check_failed(ptr @olang_loc_ec88ab62730d3569_72c455660b6c295)
  unreachable
bb210:
  br label %bb237
bb211:
  %t704 = load ptr, ptr %l1, !tbaa !29
  store ptr %t704, ptr %l377, !tbaa !29
  store i1 false, ptr %l378, !tbaa !21
  %t705 = load ptr, ptr %l377, !tbaa !29
  %t706 = icmp ne ptr %t705, null
  br i1 %t706, label %bb212, label %bb213
bb212:
  %t708 = load ptr, ptr %l377, !tbaa !29
  %t709 = load i64, ptr %t708, !range !{i64 0, i64 18}
  %t711 = icmp eq i64 %t709, 16
  store i1 %t711, ptr %l378, !tbaa !21
  br label %bb213
bb213:
  %t712 = load i1, ptr %l378, !tbaa !21
  br i1 %t712, label %bb214, label %bb215
bb214:
  %t713 = load ptr, ptr %l1, !tbaa !29
  %t715 = getelementptr { i64, [5 x i64] }, ptr %t713, i32 0, i32 1
  %t716 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t715, i32 0, i32 2
  %t717 = load ptr, ptr %t716
  store ptr %t717, ptr %l44, !tbaa !29
  br label %bb216
bb215:
  br label %bb229
bb216:
  %t719 = load ptr, ptr %l44, !tbaa !29
  %t721 = getelementptr %"compiler/typed:Text", ptr %t719, i32 0, i32 0
  %t722 = load { i64, ptr }, ptr %t721, !tbaa !27
  store { i64, ptr } %t722, ptr %l45, !tbaa !27
  store i64 0, ptr %l46, !tbaa !24
  %t724 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t726 = extractvalue { i64, ptr } %t724, 0
  store i64 %t726, ptr %l47, !tbaa !24
  br label %bb217
bb217:
  %t728 = load i64, ptr %l46, !tbaa !24
  %t729 = load i64, ptr %l47, !tbaa !24
  %t732 = icmp slt i64 %t728, %t729
  %t734 = xor i1 %t732, true
  br i1 %t734, label %bb218, label %bb219
bb218:
  br label %bb228
bb219:
  br label %bb220
bb220:
  %t736 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t736, ptr %l391, !tbaa !27
  %t737 = load i64, ptr %l46, !tbaa !24
  %t739 = getelementptr { i64, ptr }, ptr %l391, i32 0, i32 1
  %t740 = load ptr, ptr %t739, !tbaa !27
  %t741 = getelementptr ptr, ptr %t740, i64 %t737
  %t742 = load ptr, ptr %t741, !tbaa !39
  store ptr %t742, ptr %l48, !tbaa !29
  %t744 = load ptr, ptr %l48, !tbaa !29
  store ptr %t744, ptr %l394, !tbaa !29
  store i1 false, ptr %l395, !tbaa !21
  %t745 = load ptr, ptr %l394, !tbaa !29
  %t746 = icmp ne ptr %t745, null
  br i1 %t746, label %bb221, label %bb222
bb221:
  %t748 = load ptr, ptr %l394, !tbaa !29
  %t749 = load i64, ptr %t748, !range !{i64 0, i64 2}
  %t751 = icmp eq i64 %t749, 1
  store i1 %t751, ptr %l395, !tbaa !21
  br label %bb222
bb222:
  %t752 = load i1, ptr %l395, !tbaa !21
  br i1 %t752, label %bb223, label %bb224
bb223:
  %t753 = load ptr, ptr %l48, !tbaa !29
  %t755 = getelementptr { i64, [2 x i64] }, ptr %t753, i32 0, i32 1
  %t756 = getelementptr { ptr }, ptr %t755, i32 0, i32 0
  %t757 = load ptr, ptr %t756
  %t759 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t759, ptr %t757)
  br label %bb225
bb224:
  br label %bb226
bb225:
  br label %bb226
bb226:
  br label %bb227
bb227:
  %t764 = load i64, ptr %l46, !tbaa !24
  %t766 = add i64 %t764, 1
  store i64 %t766, ptr %l46, !tbaa !24
  br label %bb217
bb228:
  br label %bb237
bb229:
  %t768 = load ptr, ptr %l1, !tbaa !29
  store ptr %t768, ptr %l405, !tbaa !29
  store i1 false, ptr %l406, !tbaa !21
  %t769 = load ptr, ptr %l405, !tbaa !29
  %t770 = icmp ne ptr %t769, null
  br i1 %t770, label %bb230, label %bb231
bb230:
  %t772 = load ptr, ptr %l405, !tbaa !29
  %t773 = load i64, ptr %t772, !range !{i64 0, i64 18}
  %t775 = icmp eq i64 %t773, 17
  store i1 %t775, ptr %l406, !tbaa !21
  br label %bb231
bb231:
  %t776 = load i1, ptr %l406, !tbaa !21
  br i1 %t776, label %bb232, label %bb233
bb232:
  %t777 = load ptr, ptr %l1, !tbaa !29
  %t779 = getelementptr { i64, [5 x i64] }, ptr %t777, i32 0, i32 1
  %t780 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t779, i32 0, i32 2
  %t781 = load ptr, ptr %t780
  store ptr %t781, ptr %l50, !tbaa !29
  br label %bb234
bb233:
  br label %bb236
bb234:
  %t783 = load ptr, ptr %l0, !tbaa !29
  %t784 = load ptr, ptr %l50, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t783, ptr %t784)
  br label %bb235
bb235:
  br label %bb237
bb236:
  call void @__olang_check_failed(ptr @olang_loc_a5a46b672ecbc32_209a020a110ad15e)
  unreachable
bb237:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l12 = alloca i64
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
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l38 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l70 = alloca ptr
  %l74 = alloca i64
  %l76 = alloca ptr
  %l80 = alloca i64
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca i64
  %l95 = alloca i64
  %l114 = alloca ptr
  %l120 = alloca i64
  %l124 = alloca i64
  %l130 = alloca ptr
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l141 = alloca i64
  %l143 = alloca ptr
  %l146 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l148 = alloca i32
  %l151 = alloca i32
  %l152 = alloca i32
  %l161 = alloca i64
  %l164 = alloca i64
  %l182 = alloca i64
  %l185 = alloca i64
  %l186 = alloca i32
  %l190 = alloca i64
  %l193 = alloca i64
  %l194 = alloca i32
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 20
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %t6, ptr %t7)
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v2, ptr %t11, ptr %t12)
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %v3, ptr %t15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l32
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %rv
  br label %ret
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Versions", ptr %t19, i32 0, i32 3
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l35
  br label %bb7
bb7:
  %t24 = load i64, ptr %l35, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Versions", ptr %t25, i32 0, i32 17
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l38
  br label %bb8
bb8:
  %t30 = load i64, ptr %l38, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Versions", ptr %t31, i32 0, i32 17
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Block", ptr %t34, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t33, i32 %t37)
  br label %bb9
bb9:
  store i64 0, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = icmp sgt i64 %t44, %t45
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb15
bb12:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = sub i64 %t62, 1
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = sdiv i64 %t64, %t65
  store i64 %t68, ptr %l51, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb14
bb14:
  %t70 = load i64, ptr %l51, !tbaa !24
  store i64 %t70, ptr %l48, !tbaa !24
  br label %bb15
bb15:
  %t71 = load i64, ptr %l48, !tbaa !24
  store i64 %t71, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t72 = load i64, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb17, label %bb18
bb17:
  br label %bb29
bb18:
  br label %bb19
bb19:
  %t80 = load i64, ptr %l5, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t82 = load i64, ptr %l7, !tbaa !24
  %t85 = mul i64 %t81, %t82
  %t88 = add i64 %t80, %t85
  store i64 %t88, ptr %l10, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Versions", ptr %t90, i32 0, i32 18
  store ptr %t92, ptr %l70, !tbaa !29
  %t93 = load i64, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l3, !tbaa !24
  %t97 = icmp eq i64 %t93, %t94
  br i1 %t97, label %bb20, label %bb21
bb20:
  store i64 1, ptr %l74, !tbaa !24
  br label %bb22
bb21:
  store i64 -2, ptr %l74, !tbaa !24
  br label %bb22
bb22:
  %t99 = load ptr, ptr %l70, !tbaa !29
  %t100 = load i64, ptr %l74, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t99, i64 %t100)
  br label %bb23
bb23:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Versions", ptr %t101, i32 0, i32 19
  store ptr %t103, ptr %l76, !tbaa !29
  %t104 = load i64, ptr %l10, !tbaa !24
  %t105 = load i64, ptr %l3, !tbaa !24
  %t108 = icmp eq i64 %t104, %t105
  br i1 %t108, label %bb24, label %bb25
bb24:
  store i64 1, ptr %l80, !tbaa !24
  br label %bb26
bb25:
  store i64 -2, ptr %l80, !tbaa !24
  br label %bb26
bb26:
  %t110 = load ptr, ptr %l76, !tbaa !29
  %t111 = load i64, ptr %l80, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t110, i64 %t111)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t112 = load i64, ptr %l9, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l9, !tbaa !24
  br label %bb16
bb29:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %v3, ptr %t116)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t118, ptr %l84
  br label %bb30
bb30:
  %t119 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t119, ptr %lp11
  %t120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  %t121 = load ptr, ptr %lp11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %t121
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %lp11
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %v3, ptr %t122, ptr %t123)
  br label %bb32
bb32:
  store i64 0, ptr %l12, !tbaa !24
  %t126 = load i64, ptr %l3, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t130 = load i64, ptr %l13, !tbaa !24
  %t131 = load i64, ptr %l12, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb33, label %bb34
bb33:
  %t136 = load i64, ptr %l14, !tbaa !24
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb38
bb35:
  %t140 = load i64, ptr %l13, !tbaa !24
  %t141 = load i64, ptr %l12, !tbaa !24
  %t144 = sub i64 %t140, %t141
  %t145 = load i64, ptr %l14, !tbaa !24
  %t148 = add i64 %t144, %t145
  %t150 = sub i64 %t148, 1
  %t151 = load i64, ptr %l14, !tbaa !24
  %t154 = sdiv i64 %t150, %t151
  store i64 %t154, ptr %l95, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb37
bb37:
  %t156 = load i64, ptr %l95, !tbaa !24
  store i64 %t156, ptr %l92, !tbaa !24
  br label %bb38
bb38:
  %t157 = load i64, ptr %l92, !tbaa !24
  store i64 %t157, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb39
bb39:
  %t158 = load i64, ptr %l16, !tbaa !24
  %t159 = load i64, ptr %l15, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb40, label %bb41
bb40:
  br label %bb48
bb41:
  br label %bb42
bb42:
  %t166 = load i64, ptr %l12, !tbaa !24
  %t167 = load i64, ptr %l16, !tbaa !24
  %t168 = load i64, ptr %l14, !tbaa !24
  %t171 = mul i64 %t167, %t168
  %t174 = add i64 %t166, %t171
  store i64 %t174, ptr %l17, !tbaa !24
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Versions", ptr %t176, i32 0, i32 19
  store ptr %t178, ptr %l114, !tbaa !29
  %t179 = load i64, ptr %l4, !tbaa !24
  %t180 = load i64, ptr %l3, !tbaa !24
  %t182 = add i64 %t180, 1
  %t185 = mul i64 %t179, %t182
  %t186 = load i64, ptr %l17, !tbaa !24
  %t189 = add i64 %t185, %t186
  store i64 %t189, ptr %l120, !tbaa !24
  %t190 = load i64, ptr %l17, !tbaa !24
  %t191 = load i64, ptr %l3, !tbaa !24
  %t194 = icmp eq i64 %t190, %t191
  br i1 %t194, label %bb43, label %bb44
bb43:
  store i64 1, ptr %l124, !tbaa !24
  br label %bb45
bb44:
  store i64 -2, ptr %l124, !tbaa !24
  br label %bb45
bb45:
  %t196 = load ptr, ptr %l114, !tbaa !29
  %t197 = load i64, ptr %l120, !tbaa !24
  %t198 = load i64, ptr %l124, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t196, i64 %t197, i64 %t198)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t199 = load i64, ptr %l16, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l16, !tbaa !24
  br label %bb39
bb48:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %t203, ptr %t204)
  br label %bb49
bb49:
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l130, !tbaa !29
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i64, ptr %l4, !tbaa !24
  %t213 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erow(ptr %v0, ptr %s5, ptr %t209, i1 false, i64 %t210)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t213, ptr %l133
  br label %bb50
bb50:
  %t214 = load ptr, ptr %l130, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %s5, ptr %t214, ptr %l133)
  br label %bb51
bb51:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v2, ptr %t216, ptr %t217)
  br label %bb52
bb52:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load ptr, ptr %lp11
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t224 = getelementptr %"compiler/typed:Block", ptr %t222, i32 0, i32 0
  %t225 = load i32, ptr %t224, !tbaa !23
  %t229 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2ewiden(ptr %v0, ptr %v3, ptr %t220, ptr %t221, i32 %t225)
  store i64 %t229, ptr %l141
  br label %bb53
bb53:
  %t230 = load i64, ptr %l141, !tbaa !24
  %t231 = icmp eq i64 %t230, 0
  br i1 %t231, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s5)
  br label %bb58
bb55:
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s5)
  br label %bb57
bb57:
  br label %bb31
bb58:
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l143, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load i64, ptr %l4, !tbaa !24
  %t238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erow(ptr %v0, ptr %s0, ptr %t234, i1 true, i64 %t235)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l146
  br label %bb59
bb59:
  %t239 = load ptr, ptr %l143, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s0, ptr %t239, ptr %l146)
  br label %bb60
bb60:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/typed:Versions", ptr %t241, i32 0, i32 17
  %t245 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t243)
  %t246 = extractvalue { i32, i32 } %t245, 1
  %t247 = extractvalue { i32, i32 } %t245, 0
  store i32 %t247, ptr %l152
  %t248 = icmp ne i32 %t247, 0
  br i1 %t248, label %bb62, label %ok.249, !prof !99
ok.249:
  store i32 %t246, ptr %l151
  br label %bb61
bb61:
  %t250 = load i32, ptr %l151, !tbaa !23
  store i32 %t250, ptr %l148, !tbaa !23
  br label %bb69
bb62:
  %t251 = load i32, ptr %l152, !tbaa !23
  %t252 = icmp eq i32 %t251, 65536
  br i1 %t252, label %bb63, label %bb64
bb63:
  call void @__olang_bang_failed_plain(ptr @olang_loc_4b8ddca9d8f0d204_c8cf417eb9785a78)
  unreachable
bb64:
  %t254 = load i32, ptr %l152, !tbaa !23
  %t255 = icmp eq i32 %t254, 65537
  br i1 %t255, label %bb65, label %bb66
bb65:
  call void @__olang_bang_failed_plain(ptr @olang_loc_f658218d2a233859_f81a26e56b3c591d)
  unreachable
bb66:
  %t257 = load i32, ptr %l152, !tbaa !23
  %t258 = icmp eq i32 %t257, 65538
  br i1 %t258, label %bb67, label %bb68
bb67:
  call void @__olang_bang_failed_plain(ptr @olang_loc_4c95fac740fe18b9_da00c3dfb70c298d)
  unreachable
bb68:
  call void @__olang_bang_failed_plain(ptr @olang_loc_1ae239f8e5f7a55f_790ae28d8c0cd633)
  unreachable
bb69:
  store i64 0, ptr %l18, !tbaa !24
  %t260 = load i64, ptr %l3, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t264 = load i64, ptr %l19, !tbaa !24
  %t265 = load i64, ptr %l18, !tbaa !24
  %t268 = icmp sgt i64 %t264, %t265
  br i1 %t268, label %bb70, label %bb71
bb70:
  %t270 = load i64, ptr %l20, !tbaa !24
  %t272 = icmp sgt i64 %t270, 0
  br i1 %t272, label %bb72, label %bb73
bb71:
  store i64 0, ptr %l161, !tbaa !24
  br label %bb75
bb72:
  %t274 = load i64, ptr %l19, !tbaa !24
  %t275 = load i64, ptr %l18, !tbaa !24
  %t278 = sub i64 %t274, %t275
  %t279 = load i64, ptr %l20, !tbaa !24
  %t282 = add i64 %t278, %t279
  %t284 = sub i64 %t282, 1
  %t285 = load i64, ptr %l20, !tbaa !24
  %t288 = sdiv i64 %t284, %t285
  store i64 %t288, ptr %l164, !tbaa !24
  br label %bb74
bb73:
  store i64 0, ptr %l164, !tbaa !24
  br label %bb74
bb74:
  %t290 = load i64, ptr %l164, !tbaa !24
  store i64 %t290, ptr %l161, !tbaa !24
  br label %bb75
bb75:
  %t291 = load i64, ptr %l161, !tbaa !24
  store i64 %t291, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb76
bb76:
  %t292 = load i64, ptr %l22, !tbaa !24
  %t293 = load i64, ptr %l21, !tbaa !24
  %t296 = icmp slt i64 %t292, %t293
  %t298 = xor i1 %t296, true
  br i1 %t298, label %bb77, label %bb78
bb77:
  br label %bb99
bb78:
  br label %bb79
bb79:
  %t300 = load i64, ptr %l18, !tbaa !24
  %t301 = load i64, ptr %l22, !tbaa !24
  %t302 = load i64, ptr %l20, !tbaa !24
  %t305 = mul i64 %t301, %t302
  %t308 = add i64 %t300, %t305
  store i64 %t308, ptr %l23, !tbaa !24
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/typed:Versions", ptr %t310, i32 0, i32 18
  %t314 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t312)
  %t315 = extractvalue { i32, i64 } %t314, 1
  %t316 = extractvalue { i32, i64 } %t314, 0
  store i32 %t316, ptr %l186
  %t317 = icmp ne i32 %t316, 0
  br i1 %t317, label %bb81, label %ok.318, !prof !99
ok.318:
  store i64 %t315, ptr %l185
  br label %bb80
bb80:
  %t319 = load i64, ptr %l185, !tbaa !24
  store i64 %t319, ptr %l182, !tbaa !24
  br label %bb88
bb81:
  %t320 = load i32, ptr %l186, !tbaa !23
  %t321 = icmp eq i32 %t320, 65536
  br i1 %t321, label %bb82, label %bb83
bb82:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c0631815a77772a8_ad2a1d61fb1cdf14)
  unreachable
bb83:
  %t323 = load i32, ptr %l186, !tbaa !23
  %t324 = icmp eq i32 %t323, 65537
  br i1 %t324, label %bb84, label %bb85
bb84:
  call void @__olang_bang_failed_plain(ptr @olang_loc_bb3d6fb8f9a8facd_6b23a8aabab7ea69)
  unreachable
bb85:
  %t326 = load i32, ptr %l186, !tbaa !23
  %t327 = icmp eq i32 %t326, 65538
  br i1 %t327, label %bb86, label %bb87
bb86:
  call void @__olang_bang_failed_plain(ptr @olang_loc_cb0f3499142fc19d_d94490f94af5f129)
  unreachable
bb87:
  call void @__olang_bang_failed_plain(ptr @olang_loc_730e5d3857c59e23_64c21f8ca2d9dbaf)
  unreachable
bb88:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/typed:Versions", ptr %t329, i32 0, i32 19
  %t333 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t331)
  %t334 = extractvalue { i32, i64 } %t333, 1
  %t335 = extractvalue { i32, i64 } %t333, 0
  store i32 %t335, ptr %l194
  %t336 = icmp ne i32 %t335, 0
  br i1 %t336, label %bb90, label %ok.337, !prof !99
ok.337:
  store i64 %t334, ptr %l193
  br label %bb89
bb89:
  %t338 = load i64, ptr %l193, !tbaa !24
  store i64 %t338, ptr %l190, !tbaa !24
  br label %bb97
bb90:
  %t339 = load i32, ptr %l194, !tbaa !23
  %t340 = icmp eq i32 %t339, 65536
  br i1 %t340, label %bb91, label %bb92
bb91:
  call void @__olang_bang_failed_plain(ptr @olang_loc_14162ea47c0c801c_ce4205068f01e790)
  unreachable
bb92:
  %t342 = load i32, ptr %l194, !tbaa !23
  %t343 = icmp eq i32 %t342, 65537
  br i1 %t343, label %bb93, label %bb94
bb93:
  call void @__olang_bang_failed_plain(ptr @olang_loc_a93f600a1cb39be1_ee16d2dfcadba585)
  unreachable
bb94:
  %t345 = load i32, ptr %l194, !tbaa !23
  %t346 = icmp eq i32 %t345, 65538
  br i1 %t346, label %bb95, label %bb96
bb95:
  call void @__olang_bang_failed_plain(ptr @olang_loc_f25a0dcb15ec66ae_41d78ed91c6395da)
  unreachable
bb96:
  call void @__olang_bang_failed_plain(ptr @olang_loc_8726c5b979482c78_cdee9de0701e13e4)
  unreachable
bb97:
  br label %bb98
bb98:
  %t348 = load i64, ptr %l22, !tbaa !24
  %t350 = add i64 %t348, 1
  store i64 %t350, ptr %l22, !tbaa !24
  br label %bb76
bb99:
  %t352 = load ptr, ptr %lp11
  %t353 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t352
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t353, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca ptr
  %l58 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 20
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Versions", ptr %t6, i32 0, i32 14
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l13
  br label %bb4
bb4:
  %t11 = load i64, ptr %l13, !tbaa !24
  %t12 = sub i64 %t11, 1
  store i64 %t12, ptr %l2, !tbaa !24
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t14, i64 %t15)
  store i64 %t18, ptr %l17
  br label %bb5
bb5:
  %t19 = load i64, ptr %l17, !tbaa !24
  %t20 = icmp ne i64 %t19, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Versions", ptr %t22, i32 0, i32 14
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t24, i64 %t25)
  store i64 %t28, ptr %l22
  br label %bb9
bb9:
  %t29 = load i64, ptr %l22, !tbaa !24
  %t30 = icmp ne i64 %t29, 0
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %v1, ptr %t32, ptr %t33)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %ret
bb13:
  store i64 0, ptr %l3, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  store i64 %t36, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb19
bb16:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  %t52 = sub i64 %t48, %t49
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = sub i64 %t56, 1
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = sdiv i64 %t58, %t59
  store i64 %t62, ptr %l33, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb18
bb18:
  %t64 = load i64, ptr %l33, !tbaa !24
  store i64 %t64, ptr %l30, !tbaa !24
  br label %bb19
bb19:
  %t65 = load i64, ptr %l30, !tbaa !24
  store i64 %t65, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb20
bb20:
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb21, label %bb22
bb21:
  br label %bb29
bb22:
  br label %bb23
bb23:
  %t74 = load i64, ptr %l3, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l5, !tbaa !24
  %t79 = mul i64 %t75, %t76
  %t82 = add i64 %t74, %t79
  store i64 %t82, ptr %l8, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Versions", ptr %t84, i32 0, i32 14
  store ptr %t86, ptr %l52, !tbaa !29
  %t87 = load i64, ptr %l8, !tbaa !24
  store i64 %t87, ptr %l53, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l54, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Versions", ptr %t89, i32 0, i32 14
  %t92 = load i64, ptr %l8, !tbaa !24
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t91, i64 %t92)
  store i64 %t95, ptr %l58
  br label %bb24
bb24:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t97 = load i64, ptr %l8, !tbaa !24
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t96, i64 %t97)
  store i64 %t100, ptr %l61
  br label %bb25
bb25:
  %t101 = load ptr, ptr %l54, !tbaa !29
  %t102 = load i64, ptr %l58, !tbaa !24
  %t103 = load i64, ptr %l61, !tbaa !24
  %t104 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %t101, i64 %t102, i64 %t103)
  store i64 %t104, ptr %l62
  br label %bb26
bb26:
  %t105 = load ptr, ptr %l52, !tbaa !29
  %t106 = load i64, ptr %l53, !tbaa !24
  %t107 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t105, i64 %t106, i64 %t107)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t108 = load i64, ptr %l7, !tbaa !24
  %t110 = add i64 %t108, 1
  store i64 %t110, ptr %l7, !tbaa !24
  br label %bb20
bb29:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erow(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l23 = alloca i64
  %l41 = alloca ptr
  %l43 = alloca i64
  %l51 = alloca i64
  %l59 = alloca i64
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 3
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr %l13, !tbaa !24
  %t7 = add i64 %t6, 1
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t10, ptr %lp4
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t12 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  store i64 0, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l7, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb8
bb5:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l23, !tbaa !24
  store i64 %t41, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l20, !tbaa !24
  store i64 %t42, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l9, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l9, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l10, !tbaa !24
  %t61 = load ptr, ptr %lp4
  store ptr %t61, ptr %l41, !tbaa !29
  br i1 %a1, label %bb13, label %bb14
bb13:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Versions", ptr %t64, i32 0, i32 18
  %t67 = load i64, ptr %l2, !tbaa !24
  %t68 = load i64, ptr %l3, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t78 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t66, i64 %t75)
  store i64 %t78, ptr %l51
  br label %bb15
bb14:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Versions", ptr %t79, i32 0, i32 19
  %t82 = load i64, ptr %l2, !tbaa !24
  %t83 = load i64, ptr %l3, !tbaa !24
  %t86 = mul i64 %t82, %t83
  %t87 = load i64, ptr %l10, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t81, i64 %t90)
  store i64 %t93, ptr %l59
  br label %bb16
bb15:
  %t94 = load i64, ptr %l51, !tbaa !24
  store i64 %t94, ptr %l43, !tbaa !24
  br label %bb17
bb16:
  %t95 = load i64, ptr %l59, !tbaa !24
  store i64 %t95, ptr %l43, !tbaa !24
  br label %bb17
bb17:
  %t96 = load ptr, ptr %l41, !tbaa !29
  %t97 = load i64, ptr %l43, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t96, i64 %t97)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t98 = load i64, ptr %l9, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l9, !tbaa !24
  br label %bb9
bb20:
  %t102 = load ptr, ptr %lp4
  %t103 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t103, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eElidedCopy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2ecopyViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eSettle(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i1
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
  %l16 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l54 = alloca i1
  %l56 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca i64
  %l64 = alloca i64
  %l68 = alloca i64
  %l71 = alloca i64
  %l92 = alloca i64
  %l95 = alloca i64
  %l96 = alloca ptr
  %l100 = alloca ptr
  %l102 = alloca i64
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:ViewWalk", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 1
  %t7 = load { i64, [2 x i64] }, ptr %t6
  %t9 = extractvalue { i64, [2 x i64] } %t7, 0
  %t10 = icmp eq i64 %t9, 1
  store i1 %t10, ptr %l3, !tbaa !21
  store i64 0, ptr %l4, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/typed:ViewWalk", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 7
  store ptr %t17, ptr %l23, !tbaa !29
  %t18 = load ptr, ptr %l23, !tbaa !29
  %t19 = call ptr @__olang_scope_or(ptr %v3, ptr %t18)
  %t20 = ptrtoint ptr %t19 to i64
  %t22 = inttoptr i64 %t20 to ptr
  %t23 = load ptr, ptr %l23, !tbaa !29
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %t22, ptr %t23)
  store i64 %t24, ptr %l25
  br label %bb1
bb1:
  %t25 = load i64, ptr %l25, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb2, label %bb3
bb2:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb7
bb4:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l32, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb6
bb6:
  %t52 = load i64, ptr %l32, !tbaa !24
  store i64 %t52, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t53 = load i64, ptr %l29, !tbaa !24
  store i64 %t53, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb9, label %bb10
bb9:
  br label %bb42
bb10:
  br label %bb11
bb11:
  %t62 = load i64, ptr %l4, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l9, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i1, ptr %l3, !tbaa !21
  %t80 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eresultLocal(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t72, ptr %t73, i64 %t74, i1 %t75)
  store i1 %t80, ptr %l54
  br label %bb12
bb12:
  %t81 = load i1, ptr %l54, !tbaa !21
  %t82 = xor i1 %t81, true
  br i1 %t82, label %bb13, label %bb14
bb13:
  br label %bb41
bb14:
  br label %bb15
bb15:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l56, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/typed:LocalUses", ptr %t85, i32 0, i32 9
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v1, ptr %v1, ptr %t87, i64 %t88)
  store ptr %t91, ptr %l60
  br label %bb16
bb16:
  %t92 = load ptr, ptr %l56, !tbaa !29
  %t93 = load ptr, ptr %l60, !tbaa !29
  %t94 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2ecopyViews(ptr %v0, ptr %v1, ptr %v4, ptr %v3, ptr %t92, ptr %t93)
  store i64 %t94, ptr %l61
  br label %bb17
bb17:
  %t95 = load i64, ptr %l61, !tbaa !24
  store i64 %t95, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/typed:LocalUses", ptr %t96, i32 0, i32 10
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t98)
  store i64 %t100, ptr %l64
  br label %bb18
bb18:
  %t101 = load i64, ptr %l64, !tbaa !24
  store i64 %t101, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t102 = load i64, ptr %l12, !tbaa !24
  %t103 = load i64, ptr %l11, !tbaa !24
  %t106 = icmp sgt i64 %t102, %t103
  br i1 %t106, label %bb19, label %bb20
bb19:
  %t108 = load i64, ptr %l13, !tbaa !24
  %t110 = icmp sgt i64 %t108, 0
  br i1 %t110, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb24
bb21:
  %t112 = load i64, ptr %l12, !tbaa !24
  %t113 = load i64, ptr %l11, !tbaa !24
  %t116 = sub i64 %t112, %t113
  %t117 = load i64, ptr %l13, !tbaa !24
  %t120 = add i64 %t116, %t117
  %t122 = sub i64 %t120, 1
  %t123 = load i64, ptr %l13, !tbaa !24
  %t126 = sdiv i64 %t122, %t123
  store i64 %t126, ptr %l71, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb23
bb23:
  %t128 = load i64, ptr %l71, !tbaa !24
  store i64 %t128, ptr %l68, !tbaa !24
  br label %bb24
bb24:
  %t129 = load i64, ptr %l68, !tbaa !24
  store i64 %t129, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  %t130 = load i64, ptr %l15, !tbaa !24
  %t131 = load i64, ptr %l14, !tbaa !24
  %t134 = icmp slt i64 %t130, %t131
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb26, label %bb27
bb26:
  br label %bb36
bb27:
  br label %bb28
bb28:
  %t138 = load i64, ptr %l11, !tbaa !24
  %t139 = load i64, ptr %l15, !tbaa !24
  %t140 = load i64, ptr %l13, !tbaa !24
  %t143 = mul i64 %t139, %t140
  %t146 = add i64 %t138, %t143
  store i64 %t146, ptr %l16, !tbaa !24
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = getelementptr %"compiler/typed:LocalUses", ptr %t148, i32 0, i32 10
  %t151 = load i64, ptr %l16, !tbaa !24
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t150, i64 %t151)
  store i64 %t154, ptr %l92
  br label %bb29
bb29:
  %t155 = load i64, ptr %l9, !tbaa !24
  %t156 = load i64, ptr %l92, !tbaa !24
  %t158 = icmp eq i64 %t156, %t155
  br i1 %t158, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t160 = load i64, ptr %l10, !tbaa !24
  store i64 %t160, ptr %l95, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l96, !tbaa !29
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t164 = getelementptr %"compiler/typed:LocalUses", ptr %t162, i32 0, i32 11
  %t165 = load i64, ptr %l16, !tbaa !24
  %t168 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %s6, ptr %t164, i64 %t165)
  store ptr %t168, ptr %l100
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t169 = load ptr, ptr %l100, !tbaa !29
  %t170 = load ptr, ptr %l96, !tbaa !29
  %t172 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2ecopyViews(ptr %v0, ptr %s6, ptr %v4, ptr %v3, ptr %t170, ptr %t169)
  store i64 %t172, ptr %l102
  br label %bb33
bb33:
  %t173 = load i64, ptr %l95, !tbaa !24
  %t174 = load i64, ptr %l102, !tbaa !24
  %t175 = or i64 %t173, %t174
  store i64 %t175, ptr %l10, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t177 = load i64, ptr %l15, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l15, !tbaa !24
  br label %bb25
bb36:
  %t181 = load i64, ptr %l10, !tbaa !24
  %t183 = icmp sgt i64 %t181, 0
  br i1 %t183, label %bb37, label %bb38
bb37:
  %t186 = load i64, ptr %l9, !tbaa !24
  %t187 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v2, ptr %a2, i64 %t186, i64 %t187)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t191 = load i64, ptr %l8, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l8, !tbaa !24
  br label %bb8
bb42:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2earrayValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca i32
  %l16 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:ViewWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t7 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %a1)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v2, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i32, ptr %l6, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t12, ptr %t13, i32 %t14)
  store i32 %t15, ptr %l8
  br label %bb2
bb2:
  %t16 = load i32, ptr %l8, !tbaa !23
  store i32 %t16, ptr %l2, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/typed:ViewWalk", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l10, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t22 = load ptr, ptr %l10, !tbaa !29
  %t23 = call ptr @__olang_scope_or(ptr %v2, ptr %t22)
  %t24 = ptrtoint ptr %t23 to i64
  %t26 = inttoptr i64 %t24 to ptr
  %t27 = load ptr, ptr %l10, !tbaa !29
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t26, ptr %t27, i32 %t21)
  store i32 %t29, ptr %l13
  br label %bb3
bb3:
  %t30 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t32 = trunc i64 19 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/typed:ViewWalk", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  store ptr %t38, ptr %l18, !tbaa !29
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = load ptr, ptr %l18, !tbaa !29
  %t41 = call ptr @__olang_scope_or(ptr %v2, ptr %t40)
  %t42 = ptrtoint ptr %t41 to i64
  %t44 = inttoptr i64 %t42 to ptr
  %t45 = load ptr, ptr %l18, !tbaa !29
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %t44, ptr %t45, i32 %t39)
  store i32 %t47, ptr %l21
  br label %bb6
bb5:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb7
bb6:
  %t48 = load i32, ptr %l21, !tbaa !23
  %t49 = icmp eq i32 %t48, 0
  store i1 %t49, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t51 = load i1, ptr %l16, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ecall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i1
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca i1
  %l52 = alloca i1
  %l62 = alloca i1
  %l89 = alloca { i64, ptr }
  %l106 = alloca i64
  %l108 = alloca i64
  %l113 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t7 = load ptr, ptr %l27, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l27, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l28, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l28, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { ptr }, ptr %t17, i32 0, i32 0
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  br label %bb6
bb6:
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_5f0c96ba8f37c420_5ca612e1d5c707f4)
  unreachable
bb12:
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l36
  br label %bb13
bb13:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l4
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Call", ptr %t28, i32 0, i32 1
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l7, !tbaa !24
  br label %bb14
bb14:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb15, label %bb16
bb15:
  br label %bb39
bb16:
  br label %bb17
bb17:
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t45, ptr %l45, !tbaa !27
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr ptr, ptr %t49, i64 %t46
  %t51 = load ptr, ptr %t50, !tbaa !39
  store ptr %t51, ptr %l8, !tbaa !29
  %t53 = load ptr, ptr %l8, !tbaa !29
  store ptr %t53, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t54 = load ptr, ptr %l48, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l48, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 12
  store i1 %t60, ptr %l49, !tbaa !21
  br label %bb19
bb19:
  %t61 = load i1, ptr %l49, !tbaa !21
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t62 = load ptr, ptr %l8, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 0
  %t66 = load %"compiler/source:Span", ptr %t65
  store %"compiler/source:Span" %t66, ptr %l9
  %t68 = load ptr, ptr %l8, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l10, !tbaa !23
  %t74 = load ptr, ptr %l8, !tbaa !29
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  %t83 = getelementptr %"compiler/typed:Seq", ptr %t78, i32 0, i32 2
  %t84 = load i1, ptr %t83, !tbaa !21
  store i1 %t84, ptr %l52, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l52, !tbaa !21
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t87 = load ptr, ptr %l8, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l12
  %t93 = load ptr, ptr %l8, !tbaa !29
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t95, i32 0, i32 1
  %t97 = load i32, ptr %t96
  store i32 %t97, ptr %l13, !tbaa !23
  %t99 = load ptr, ptr %l8, !tbaa !29
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  %t108 = getelementptr %"compiler/typed:Seq", ptr %t103, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = icmp eq ptr %t109, null
  %t113 = xor i1 %t111, true
  store i1 %t113, ptr %l62, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb25
bb25:
  %t115 = load i1, ptr %l62, !tbaa !21
  br i1 %t115, label %bb26, label %bb27
bb26:
  %t116 = load ptr, ptr %l8, !tbaa !29
  %t118 = getelementptr { i64, [5 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t118, i32 0, i32 0
  %t120 = load %"compiler/source:Span", ptr %t119
  store %"compiler/source:Span" %t120, ptr %l15
  %t122 = load ptr, ptr %l8, !tbaa !29
  %t124 = getelementptr { i64, [5 x i64] }, ptr %t122, i32 0, i32 1
  %t125 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t124, i32 0, i32 1
  %t126 = load i32, ptr %t125
  store i32 %t126, ptr %l16, !tbaa !23
  %t128 = load ptr, ptr %l8, !tbaa !29
  %t130 = getelementptr { i64, [5 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t130, i32 0, i32 2
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l17, !tbaa !29
  %t134 = load ptr, ptr %l17, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Seq", ptr %t134, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  store { i64, ptr } %t138, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l20, !tbaa !24
  br label %bb28
bb27:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t144, ptr %t145)
  br label %bb36
bb28:
  %t149 = load i64, ptr %l19, !tbaa !24
  %t150 = load i64, ptr %l20, !tbaa !24
  %t153 = icmp slt i64 %t149, %t150
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb29, label %bb30
bb29:
  br label %bb34
bb30:
  br label %bb31
bb31:
  %t157 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t157, ptr %l89, !tbaa !27
  %t158 = load i64, ptr %l19, !tbaa !24
  %t160 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr ptr, ptr %t161, i64 %t158
  %t163 = load ptr, ptr %t162, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %s0, ptr %v1, ptr %l4, ptr %t163)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t168 = load i64, ptr %l19, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l19, !tbaa !24
  br label %bb28
bb34:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load ptr, ptr %l17, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Seq", ptr %t173, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t172, ptr %t177)
  br label %bb35
bb35:
  br label %bb37
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t180 = load i64, ptr %l6, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l6, !tbaa !24
  br label %bb14
bb39:
  store ptr %l4, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb40
bb40:
  %t185 = load i64, ptr %l23, !tbaa !24
  store i64 %t185, ptr %l106, !tbaa !24
  %t186 = load ptr, ptr %l22, !tbaa !29
  %t188 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %s0, ptr %t186)
  store i64 %t188, ptr %l108
  br label %bb41
bb41:
  %t189 = load i64, ptr %l106, !tbaa !24
  %t190 = load i64, ptr %l108, !tbaa !24
  %t191 = icmp slt i64 %t189, %t190
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb42, label %bb43
bb42:
  br label %bb48
bb43:
  br label %bb44
bb44:
  %t195 = load ptr, ptr %l22, !tbaa !29
  %t196 = load i64, ptr %l23, !tbaa !24
  %t199 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eAt_3ccompiler_2ftyped_3aStmt_26_3e(ptr %s0, ptr %s0, ptr %t195, i64 %t196)
  store ptr %t199, ptr %l113
  br label %bb45
bb45:
  %t200 = load ptr, ptr %l113, !tbaa !29
  %t201 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2estmt(ptr %v0, ptr %s0, ptr %t201, ptr %t200)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t205 = load i64, ptr %l23, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l23, !tbaa !24
  br label %bb40
bb48:
  %t209 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efailHere(ptr %v0, ptr %t209, i1 false)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2enumber(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l8 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l14 = alloca i64
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
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/typed:dropWalk", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t7, i64 %t8)
  store i1 %t11, ptr %l8
  br label %bb3
bb3:
  %t12 = load i1, ptr %l8, !tbaa !21
  store i1 %t12, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l4, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/typed:dropWalk", ptr %t14, i32 0, i32 1
  store ptr %t16, ptr %l10, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  store i64 %t17, ptr %l11, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/typed:dropWalk", ptr %t18, i32 0, i32 2
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l14
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load i64, ptr %l11, !tbaa !24
  %t25 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t23, i64 %t24, i64 %t25)
  br label %bb9
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/typed:dropWalk", ptr %t26, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t28, i1 false)
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2etry(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
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
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca i64
  %l36 = alloca ptr
  %l39 = alloca i1
  %l51 = alloca i64
  %l54 = alloca i64
  %l82 = alloca i64
  %l90 = alloca i64
  %l93 = alloca i64
  %l111 = alloca i64
  %l120 = alloca i1
  %l123 = alloca i1
  %l126 = alloca i1
  %l127 = alloca i32
  %l131 = alloca i64
  %l134 = alloca i64
  %l135 = alloca i32
  %l144 = alloca i64
  %l147 = alloca i64
  %l165 = alloca i1
  %l168 = alloca i1
  %l169 = alloca i32
  %l179 = alloca { i64, ptr }
  %l180 = alloca i64
  %l181 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l195 = alloca i64
  %l196 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %t1, i32 0, i32 2
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l31
  br label %bb1
bb1:
  %t6 = load i64, ptr %l31, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:dropWalk", ptr %t7, i32 0, i32 11
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l34
  br label %bb2
bb2:
  %t12 = load i64, ptr %l34, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:dropWalk", ptr %t13, i32 0, i32 11
  store ptr %t15, ptr %l36, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Try", ptr %t16, i32 0, i32 4
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Try", ptr %t21, i32 0, i32 2
  %t24 = load i1, ptr %t23, !tbaa !21
  %t26 = xor i1 %t24, true
  store i1 %t26, ptr %l39, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l36, !tbaa !29
  %t29 = load i1, ptr %l39, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t28, i1 %t29)
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/typed:dropWalk", ptr %t30, i32 0, i32 12
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/typed:dropWalk", ptr %t33, i32 0, i32 4
  %t36 = load i64, ptr %t35, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t32, i64 %t36)
  br label %bb7
bb7:
  store i64 0, ptr %l4, !tbaa !24
  %t39 = load i64, ptr %l2, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb8, label %bb9
bb8:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb13
bb10:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l6, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l54, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb12
bb12:
  %t67 = load i64, ptr %l54, !tbaa !24
  store i64 %t67, ptr %l51, !tbaa !24
  br label %bb13
bb13:
  %t68 = load i64, ptr %l51, !tbaa !24
  store i64 %t68, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb14
bb14:
  %t69 = load i64, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb15, label %bb16
bb15:
  br label %bb20
bb16:
  br label %bb17
bb17:
  %t77 = load i64, ptr %l4, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l9, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/typed:dropWalk", ptr %t87, i32 0, i32 13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t89, i1 false)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t91 = load i64, ptr %l8, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l8, !tbaa !24
  br label %bb14
bb20:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/typed:dropWalk", ptr %t95, i32 0, i32 13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t97, i1 true)
  br label %bb21
bb21:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Try", ptr %t100, i32 0, i32 0
  %t103 = load ptr, ptr %t102, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t99, ptr %t103)
  br label %bb22
bb22:
  %t106 = load i64, ptr %l2, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l82, !tbaa !24
  %t109 = load i64, ptr %l82, !tbaa !24
  %t110 = icmp sge i64 %t109, 0
  br i1 %t110, label %bb23, label %bb24
bb23:
  %t112 = load i64, ptr %l82, !tbaa !24
  %t113 = mul i64 %t112, 1
  %t114 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l2, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t122 = load i64, ptr %l12, !tbaa !24
  %t123 = load i64, ptr %l11, !tbaa !24
  %t126 = icmp sgt i64 %t122, %t123
  br i1 %t126, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_2cf1608fd5d1230c_1374e48cd144e348)
  unreachable
bb25:
  %t128 = load i64, ptr %l13, !tbaa !24
  %t130 = icmp sgt i64 %t128, 0
  br i1 %t130, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb30
bb27:
  %t132 = load i64, ptr %l12, !tbaa !24
  %t133 = load i64, ptr %l11, !tbaa !24
  %t136 = sub i64 %t132, %t133
  %t137 = load i64, ptr %l13, !tbaa !24
  %t140 = add i64 %t136, %t137
  %t142 = sub i64 %t140, 1
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = sdiv i64 %t142, %t143
  store i64 %t146, ptr %l93, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb29
bb29:
  %t148 = load i64, ptr %l93, !tbaa !24
  store i64 %t148, ptr %l90, !tbaa !24
  br label %bb30
bb30:
  %t149 = load i64, ptr %l90, !tbaa !24
  store i64 %t149, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  %t150 = load i64, ptr %l15, !tbaa !24
  %t151 = load i64, ptr %l14, !tbaa !24
  %t154 = icmp slt i64 %t150, %t151
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb32, label %bb33
bb32:
  br label %bb37
bb33:
  br label %bb34
bb34:
  %t158 = load i64, ptr %l11, !tbaa !24
  %t159 = load i64, ptr %l15, !tbaa !24
  %t160 = load i64, ptr %l13, !tbaa !24
  %t163 = mul i64 %t159, %t160
  %t166 = add i64 %t158, %t163
  store i64 %t166, ptr %l16, !tbaa !24
  %t168 = load i64, ptr %l16, !tbaa !24
  store i64 %t168, ptr %l111, !tbaa !24
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/typed:dropWalk", ptr %t169, i32 0, i32 13
  %t172 = load i64, ptr %l3, !tbaa !24
  %t173 = load i64, ptr %l2, !tbaa !24
  %t175 = add i64 %t173, 1
  %t178 = mul i64 %t172, %t175
  %t179 = load i64, ptr %l16, !tbaa !24
  %t182 = add i64 %t178, %t179
  %t185 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t171, i64 %t182)
  store i1 %t185, ptr %l120
  br label %bb35
bb35:
  %t186 = load i1, ptr %l120, !tbaa !21
  %t187 = load i64, ptr %l111, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i1, ptr %t189, i64 %t187
  store i1 %t186, ptr %t190, !tbaa !31
  br label %bb36
bb36:
  %t191 = load i64, ptr %l15, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l15, !tbaa !24
  br label %bb31
bb37:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/typed:dropWalk", ptr %t195, i32 0, i32 11
  %t199 = call { i32, i1 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePop_3cBool_3e(ptr %v0, ptr %t197)
  %t200 = extractvalue { i32, i1 } %t199, 1
  %t201 = extractvalue { i32, i1 } %t199, 0
  store i32 %t201, ptr %l127
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb39, label %ok.203, !prof !99
ok.203:
  store i1 %t200, ptr %l126
  br label %bb38
bb38:
  %t204 = load i1, ptr %l126, !tbaa !21
  store i1 %t204, ptr %l123, !tbaa !21
  br label %bb46
bb39:
  %t205 = load i32, ptr %l127, !tbaa !23
  %t206 = icmp eq i32 %t205, 65536
  br i1 %t206, label %bb40, label %bb41
bb40:
  call void @__olang_bang_failed_plain(ptr @olang_loc_73be6a0e490978a7_b5fa18d3e7eede33)
  unreachable
bb41:
  %t208 = load i32, ptr %l127, !tbaa !23
  %t209 = icmp eq i32 %t208, 65537
  br i1 %t209, label %bb42, label %bb43
bb42:
  call void @__olang_bang_failed_plain(ptr @olang_loc_2fb6091d652311b2_1c71a9a414fce87e)
  unreachable
bb43:
  %t211 = load i32, ptr %l127, !tbaa !23
  %t212 = icmp eq i32 %t211, 65538
  br i1 %t212, label %bb44, label %bb45
bb44:
  call void @__olang_bang_failed_plain(ptr @olang_loc_8c1b8241682c8a5c_1491e83e9da6f28)
  unreachable
bb45:
  call void @__olang_bang_failed_plain(ptr @olang_loc_4fc9df9522ae1330_697d53c50db00ce4)
  unreachable
bb46:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/typed:dropWalk", ptr %t214, i32 0, i32 12
  %t218 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t216)
  %t219 = extractvalue { i32, i64 } %t218, 1
  %t220 = extractvalue { i32, i64 } %t218, 0
  store i32 %t220, ptr %l135
  %t221 = icmp ne i32 %t220, 0
  br i1 %t221, label %bb48, label %ok.222, !prof !99
ok.222:
  store i64 %t219, ptr %l134
  br label %bb47
bb47:
  %t223 = load i64, ptr %l134, !tbaa !24
  store i64 %t223, ptr %l131, !tbaa !24
  br label %bb55
bb48:
  %t224 = load i32, ptr %l135, !tbaa !23
  %t225 = icmp eq i32 %t224, 65536
  br i1 %t225, label %bb49, label %bb50
bb49:
  call void @__olang_bang_failed_plain(ptr @olang_loc_e4195c8d52320dab_6e5abcaf8844f88f)
  unreachable
bb50:
  %t227 = load i32, ptr %l135, !tbaa !23
  %t228 = icmp eq i32 %t227, 65537
  br i1 %t228, label %bb51, label %bb52
bb51:
  call void @__olang_bang_failed_plain(ptr @olang_loc_6df7d27e20fc18e6_9af88db0bee394aa)
  unreachable
bb52:
  %t230 = load i32, ptr %l135, !tbaa !23
  %t231 = icmp eq i32 %t230, 65538
  br i1 %t231, label %bb53, label %bb54
bb53:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c52364142dc414a0_4d1da6470710a144)
  unreachable
bb54:
  call void @__olang_bang_failed_plain(ptr @olang_loc_a6cbf8c37e7b58e4_127b3a96b1e2c730)
  unreachable
bb55:
  store i64 0, ptr %l17, !tbaa !24
  %t233 = load i64, ptr %l2, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t237 = load i64, ptr %l18, !tbaa !24
  %t238 = load i64, ptr %l17, !tbaa !24
  %t241 = icmp sgt i64 %t237, %t238
  br i1 %t241, label %bb56, label %bb57
bb56:
  %t243 = load i64, ptr %l19, !tbaa !24
  %t245 = icmp sgt i64 %t243, 0
  br i1 %t245, label %bb58, label %bb59
bb57:
  store i64 0, ptr %l144, !tbaa !24
  br label %bb61
bb58:
  %t247 = load i64, ptr %l18, !tbaa !24
  %t248 = load i64, ptr %l17, !tbaa !24
  %t251 = sub i64 %t247, %t248
  %t252 = load i64, ptr %l19, !tbaa !24
  %t255 = add i64 %t251, %t252
  %t257 = sub i64 %t255, 1
  %t258 = load i64, ptr %l19, !tbaa !24
  %t261 = sdiv i64 %t257, %t258
  store i64 %t261, ptr %l147, !tbaa !24
  br label %bb60
bb59:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb60
bb60:
  %t263 = load i64, ptr %l147, !tbaa !24
  store i64 %t263, ptr %l144, !tbaa !24
  br label %bb61
bb61:
  %t264 = load i64, ptr %l144, !tbaa !24
  store i64 %t264, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb62
bb62:
  %t265 = load i64, ptr %l21, !tbaa !24
  %t266 = load i64, ptr %l20, !tbaa !24
  %t269 = icmp slt i64 %t265, %t266
  %t271 = xor i1 %t269, true
  br i1 %t271, label %bb63, label %bb64
bb63:
  br label %bb76
bb64:
  br label %bb65
bb65:
  %t273 = load i64, ptr %l17, !tbaa !24
  %t274 = load i64, ptr %l21, !tbaa !24
  %t275 = load i64, ptr %l19, !tbaa !24
  %t278 = mul i64 %t274, %t275
  %t281 = add i64 %t273, %t278
  store i64 %t281, ptr %l22, !tbaa !24
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/typed:dropWalk", ptr %t283, i32 0, i32 13
  %t287 = call { i32, i1 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePop_3cBool_3e(ptr %v0, ptr %t285)
  %t288 = extractvalue { i32, i1 } %t287, 1
  %t289 = extractvalue { i32, i1 } %t287, 0
  store i32 %t289, ptr %l169
  %t290 = icmp ne i32 %t289, 0
  br i1 %t290, label %bb67, label %ok.291, !prof !99
ok.291:
  store i1 %t288, ptr %l168
  br label %bb66
bb66:
  %t292 = load i1, ptr %l168, !tbaa !21
  store i1 %t292, ptr %l165, !tbaa !21
  br label %bb74
bb67:
  %t293 = load i32, ptr %l169, !tbaa !23
  %t294 = icmp eq i32 %t293, 65536
  br i1 %t294, label %bb68, label %bb69
bb68:
  call void @__olang_bang_failed_plain(ptr @olang_loc_899e4ae5152e7c8f_c8d5ce57c54889ab)
  unreachable
bb69:
  %t296 = load i32, ptr %l169, !tbaa !23
  %t297 = icmp eq i32 %t296, 65537
  br i1 %t297, label %bb70, label %bb71
bb70:
  call void @__olang_bang_failed_plain(ptr @olang_loc_cdd2e50680d68485_7d51e204495f7309)
  unreachable
bb71:
  %t299 = load i32, ptr %l169, !tbaa !23
  %t300 = icmp eq i32 %t299, 65538
  br i1 %t300, label %bb72, label %bb73
bb72:
  call void @__olang_bang_failed_plain(ptr @olang_loc_2ee7063c57fe9793_68bf97cc73752027)
  unreachable
bb73:
  call void @__olang_bang_failed_plain(ptr @olang_loc_be8b3c6aa0377e2b_acae2459f1c4a24f)
  unreachable
bb74:
  br label %bb75
bb75:
  %t302 = load i64, ptr %l21, !tbaa !24
  %t304 = add i64 %t302, 1
  store i64 %t304, ptr %l21, !tbaa !24
  br label %bb62
bb76:
  %t306 = load ptr, ptr %l1, !tbaa !29
  %t308 = getelementptr %"compiler/typed:Try", ptr %t306, i32 0, i32 1
  %t309 = load { i64, ptr }, ptr %t308, !tbaa !27
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t313 = icmp eq i64 %t311, 0
  br i1 %t313, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb78:
  br label %bb79
bb79:
  %t315 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t315, ptr %l179, !tbaa !27
  %t316 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t317 = extractvalue { i64, ptr } %t316, 0
  store i64 %t317, ptr %l180, !tbaa !24
  %t318 = load i64, ptr %l180, !tbaa !24
  %t319 = mul i64 %t318, 1
  %t320 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t319)
  %t321 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t320, 1
  store { i64, ptr } %t322, ptr %l181, !tbaa !27
  %t323 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = load i64, ptr %l180, !tbaa !24
  %t328 = mul i64 %t327, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t324, ptr %t326, i64 %t328, i1 false)
  %t329 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t329, ptr %l23, !tbaa !27
  %t330 = load ptr, ptr %l1, !tbaa !29
  %t332 = getelementptr %"compiler/typed:Try", ptr %t330, i32 0, i32 1
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  store { i64, ptr } %t333, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t335 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t337 = extractvalue { i64, ptr } %t335, 0
  store i64 %t337, ptr %l26, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s12
  %t339 = load i64, ptr %l25, !tbaa !24
  %t340 = load i64, ptr %l26, !tbaa !24
  %t343 = icmp slt i64 %t339, %t340
  %t345 = xor i1 %t343, true
  br i1 %t345, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s12)
  br label %bb90
bb82:
  br label %bb83
bb83:
  %t347 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t347, ptr %l190, !tbaa !27
  %t348 = load i64, ptr %l25, !tbaa !24
  %t350 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !27
  %t352 = getelementptr ptr, ptr %t351, i64 %t348
  %t353 = load ptr, ptr %t352, !tbaa !39
  store ptr %t353, ptr %l27, !tbaa !29
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s12, ptr %t355)
  store { i64, ptr } %t357, ptr %l194
  br label %bb84
bb84:
  %t358 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t358, 0
  store i64 %t359, ptr %l195, !tbaa !24
  %t360 = load i64, ptr %l195, !tbaa !24
  %t361 = mul i64 %t360, 1
  %t362 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t361)
  %t363 = insertvalue { i64, ptr } undef, i64 %t360, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  store { i64, ptr } %t364, ptr %l196, !tbaa !27
  %t365 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t368 = load ptr, ptr %t367, !tbaa !27
  %t369 = load i64, ptr %l195, !tbaa !24
  %t370 = mul i64 %t369, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t366, ptr %t368, i64 %t370, i1 false)
  %t371 = load { i64, ptr }, ptr %l196, !tbaa !27
  store { i64, ptr } %t371, ptr %l28, !tbaa !27
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %s0, ptr %t372, { i64, ptr } %t373)
  br label %bb85
bb85:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load ptr, ptr %l27, !tbaa !29
  %t379 = getelementptr %"compiler/typed:Clause", ptr %t377, i32 0, i32 3
  %t380 = load ptr, ptr %t379, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %t376, ptr %t380)
  br label %bb86
bb86:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load ptr, ptr %l27, !tbaa !29
  %t386 = getelementptr %"compiler/typed:Clause", ptr %t384, i32 0, i32 4
  %t387 = load { i64, ptr }, ptr %t386, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexprs(ptr %v0, ptr %v1, ptr %t383, { i64, ptr } %t387)
  br label %bb87
bb87:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load { i64, ptr }, ptr %l28, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %s12, ptr %t390, { i64, ptr } %t391)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s12)
  br label %bb89
bb89:
  %t394 = load i64, ptr %l25, !tbaa !24
  %t396 = add i64 %t394, 1
  store i64 %t396, ptr %l25, !tbaa !24
  br label %bb80
bb90:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca ptr
  %l24 = alloca i1
  %l39 = alloca { i64, ptr }
  %l47 = alloca i64
  %l49 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l67 = alloca i64
  %l71 = alloca i64
  %l74 = alloca i64
  %l92 = alloca ptr
  %l95 = alloca ptr
  %l97 = alloca i1
  %l98 = alloca i1
  %l100 = alloca ptr
  %l103 = alloca ptr
  %l104 = alloca i32
  %l106 = alloca i1
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l20
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l3
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Call", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l4, !tbaa !29
  store ptr %t12, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t13 = load ptr, ptr %l23, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load ptr, ptr %l23, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 5}
  %t19 = icmp eq i64 %t17, 2
  store i1 %t19, ptr %l24, !tbaa !21
  br label %bb4
bb4:
  %t20 = load i1, ptr %l24, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { ptr }, ptr %t23, i32 0, i32 0
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l5, !tbaa !29
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t27 = load ptr, ptr %l5, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %v1, ptr %l3, ptr %t27)
  br label %bb8
bb8:
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_2676a1f2cfb255f8_2530c83c98e00394)
  unreachable
bb14:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Call", ptr %t30, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t47, ptr %l39, !tbaa !27
  %t48 = load i64, ptr %l7, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 %t48
  %t53 = load ptr, ptr %t52, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %v1, ptr %l3, ptr %t53)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l7, !tbaa !24
  br label %bb15
bb21:
  store ptr %l3, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t63 = load i64, ptr %l11, !tbaa !24
  store i64 %t63, ptr %l47, !tbaa !24
  %t64 = load ptr, ptr %l10, !tbaa !29
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %t64)
  store i64 %t66, ptr %l49
  br label %bb23
bb23:
  %t67 = load i64, ptr %l47, !tbaa !24
  %t68 = load i64, ptr %l49, !tbaa !24
  %t69 = icmp slt i64 %t67, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s7)
  br label %bb31
bb25:
  br label %bb26
bb26:
  %t73 = load ptr, ptr %l10, !tbaa !29
  %t74 = load i64, ptr %l11, !tbaa !24
  %t77 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t73, i64 %t74)
  store ptr %t77, ptr %l54
  br label %bb27
bb27:
  %t78 = load ptr, ptr %l54, !tbaa !29
  %t79 = load ptr, ptr %lp2
  store ptr %t79, ptr %l55, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t85 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %s0, ptr %v0, ptr %v3, ptr %v4, ptr %t80, ptr %t78)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %l59
  br label %bb28
bb28:
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  %t87 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %t87
  %t88 = load ptr, ptr %l55, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t88, ptr %t87)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb30
bb30:
  %t90 = load i64, ptr %l11, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l11, !tbaa !24
  br label %bb22
bb31:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l63, !tbaa !29
  %t96 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t96, ptr %l65
  br label %bb32
bb32:
  %t97 = load ptr, ptr %l63, !tbaa !29
  %t98 = load { i64, ptr }, ptr %l65, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2emix(ptr %v0, ptr %s0, ptr %v3, ptr %v4, ptr %t97, { i64, ptr } %t98)
  br label %bb33
bb33:
  store i64 0, ptr %l13, !tbaa !24
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %l3)
  store i64 %t100, ptr %l67
  br label %bb34
bb34:
  %t101 = load i64, ptr %l67, !tbaa !24
  store i64 %t101, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t102 = load i64, ptr %l14, !tbaa !24
  %t103 = load i64, ptr %l13, !tbaa !24
  %t106 = icmp sgt i64 %t102, %t103
  br i1 %t106, label %bb35, label %bb36
bb35:
  %t108 = load i64, ptr %l15, !tbaa !24
  %t110 = icmp sgt i64 %t108, 0
  br i1 %t110, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb40
bb37:
  %t112 = load i64, ptr %l14, !tbaa !24
  %t113 = load i64, ptr %l13, !tbaa !24
  %t116 = sub i64 %t112, %t113
  %t117 = load i64, ptr %l15, !tbaa !24
  %t120 = add i64 %t116, %t117
  %t122 = sub i64 %t120, 1
  %t123 = load i64, ptr %l15, !tbaa !24
  %t126 = sdiv i64 %t122, %t123
  store i64 %t126, ptr %l74, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb39
bb39:
  %t128 = load i64, ptr %l74, !tbaa !24
  store i64 %t128, ptr %l71, !tbaa !24
  br label %bb40
bb40:
  %t129 = load i64, ptr %l71, !tbaa !24
  store i64 %t129, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s10
  %t130 = load i64, ptr %l17, !tbaa !24
  %t131 = load i64, ptr %l16, !tbaa !24
  %t134 = icmp slt i64 %t130, %t131
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s10)
  br label %bb58
bb43:
  br label %bb44
bb44:
  %t138 = load i64, ptr %l13, !tbaa !24
  %t139 = load i64, ptr %l17, !tbaa !24
  %t140 = load i64, ptr %l15, !tbaa !24
  %t143 = mul i64 %t139, %t140
  %t146 = add i64 %t138, %t143
  store i64 %t146, ptr %l18, !tbaa !24
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l92, !tbaa !29
  %t149 = load i64, ptr %l18, !tbaa !24
  %t152 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s10, ptr %l3, i64 %t149)
  store ptr %t152, ptr %l95
  br label %bb45
bb45:
  %t153 = load ptr, ptr %l95, !tbaa !29
  %t154 = load ptr, ptr %l92, !tbaa !29
  %t156 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregistered(ptr %v0, ptr %s10, ptr %v3, ptr %t154, ptr %t153)
  store i1 %t156, ptr %l97
  br label %bb46
bb46:
  %t157 = load i1, ptr %l97, !tbaa !21
  br i1 %t157, label %bb47, label %bb48
bb47:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/typed:holdWalk", ptr %t158, i32 0, i32 0
  %t161 = load ptr, ptr %t160, !tbaa !29
  store ptr %t161, ptr %l100, !tbaa !29
  %t162 = load i64, ptr %l18, !tbaa !24
  %t165 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t162)
  store ptr %t165, ptr %l103
  br label %bb49
bb48:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb52
bb49:
  %t166 = load ptr, ptr %l103, !tbaa !29
  %t167 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %s0, ptr %t166)
  store i32 %t167, ptr %l104
  br label %bb50
bb50:
  %t168 = load ptr, ptr %l100, !tbaa !29
  %t169 = call ptr @__olang_scope_or(ptr %v3, ptr %t168)
  %t170 = ptrtoint ptr %t169 to i64
  %t172 = inttoptr i64 %t170 to ptr
  %t173 = load ptr, ptr %l100, !tbaa !29
  %t174 = load i32, ptr %l104, !tbaa !23
  %t175 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %t172, ptr %t173, i32 %t174)
  store i1 %t175, ptr %l106
  br label %bb51
bb51:
  %t176 = load i1, ptr %l106, !tbaa !21
  store i1 %t176, ptr %l98, !tbaa !21
  br label %bb52
bb52:
  %t177 = load i1, ptr %l98, !tbaa !21
  br i1 %t177, label %bb53, label %bb54
bb53:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etempGiven(ptr %v0, ptr %s0, ptr %v3, ptr %v4, ptr %t178, i64 %t179, ptr %l3)
  br label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s10)
  br label %bb57
bb57:
  %t183 = load i64, ptr %l17, !tbaa !24
  %t185 = add i64 %t183, 1
  store i64 %t185, ptr %l17, !tbaa !24
  br label %bb41
bb58:
  %t187 = load ptr, ptr %lp2
  %t188 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t187
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eheldBefore(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l26 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2eone(ptr %s1, i64 %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t6 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t8 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s1, ptr %s1, ptr %t6)
  store { i64, ptr } %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclosure(ptr %v0, ptr %s1, ptr %s1, ptr %t9, { i64, ptr } %t10)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l10
  br label %bb3
bb3:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t13 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %t13
  store ptr %t13, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %l12, !tbaa !24
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t16)
  store i64 %t18, ptr %l14
  br label %bb5
bb5:
  %t19 = load i64, ptr %l12, !tbaa !24
  %t20 = load i64, ptr %l14, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb6, label %bb7
bb6:
  br label %bb26
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t25, i64 %t26)
  store i64 %t29, ptr %l19
  br label %bb9
bb9:
  %t30 = load i64, ptr %l19, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp eq i64 %t31, %t32
  br i1 %t35, label %bb10, label %bb11
bb10:
  br label %bb25
bb11:
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/typed:holdWalk", ptr %t37, i32 0, i32 6
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t39, i64 %t40)
  store i1 %t43, ptr %l26
  br label %bb13
bb13:
  %t44 = load i1, ptr %l26, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t45, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/typed:holdWalk", ptr %t47, i32 0, i32 9
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t49, i64 %t50)
  store i1 %t53, ptr %l31
  br label %bb17
bb17:
  %t54 = load i1, ptr %l31, !tbaa !21
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  %t57 = load i64, ptr %l1, !tbaa !24
  %t61 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregisteredBefore(ptr %v0, ptr %v1, ptr %t55, i64 %t56, i64 %t57)
  store i1 %t61, ptr %l36
  br label %bb20
bb19:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb21
bb20:
  %t62 = load i1, ptr %l36, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l32, !tbaa !21
  br label %bb21
bb21:
  %t65 = load i1, ptr %l32, !tbaa !21
  br i1 %t65, label %bb22, label %bb23
bb22:
  %t66 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t66, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t68 = load i64, ptr %l3, !tbaa !24
  %t70 = add i64 %t68, 1
  store i64 %t70, ptr %l3, !tbaa !24
  br label %bb4
bb26:
  call void @__olang_scope_close(ptr %s1)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2ematch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Match", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l20, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t30 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estmt(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t30, ptr %t28)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb2
bb8:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Match", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s5
  %t47 = load i64, ptr %l8, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s5)
  br label %bb16
bb11:
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t55, ptr %l35, !tbaa !27
  %t56 = load i64, ptr %l8, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  %t63 = load ptr, ptr %lp2
  store ptr %t63, ptr %l38, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2earm(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %v4, ptr %t64, ptr %t61)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l41
  br label %bb13
bb13:
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  %t70 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %t70
  %t71 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t71, ptr %t70)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s5)
  br label %bb15
bb15:
  %t73 = load i64, ptr %l8, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l8, !tbaa !24
  br label %bb9
bb16:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Match", ptr %t77, i32 0, i32 2
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = icmp eq ptr %t80, null
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s7
  %t86 = load ptr, ptr %lp2
  store ptr %t86, ptr %l49, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l50, !tbaa !29
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Match", ptr %t88, i32 0, i32 2
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  br i1 %t93, label %bb19, label %bb20
bb18:
  br label %bb24
bb19:
  call void @__olang_check_failed(ptr @olang_loc_7fb442b2027c5df4_8cb8a301a51c1668)
  unreachable
bb20:
  br label %bb21
bb21:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Match", ptr %t95, i32 0, i32 2
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t99 = load ptr, ptr %l50, !tbaa !29
  %t101 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2earm(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %v4, ptr %t99, ptr %t98)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t101, ptr %l56
  br label %bb22
bb22:
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  %t103 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %t103
  %t104 = load ptr, ptr %l49, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t104, ptr %t103)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s7)
  br label %bb24
bb24:
  %t106 = load ptr, ptr %lp2
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t106
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i64
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca ptr
  %l52 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca ptr
  %l67 = alloca i1
  %l73 = alloca ptr
  %l75 = alloca i32
  %l77 = alloca i32
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca ptr
  %l88 = alloca i1
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca ptr
  %l99 = alloca i1
  %l106 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l107 = alloca ptr
  %l108 = alloca i1
  %l121 = alloca { i64, ptr }
  %l124 = alloca ptr
  %l128 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca ptr
  %l137 = alloca i1
  %l145 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l147 = alloca ptr
  %l148 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l153 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l156 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca i32
  %l161 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l163 = alloca ptr
  %l164 = alloca i1
  %l181 = alloca { i64, ptr }
  %l184 = alloca ptr
  %l188 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l192 = alloca ptr
  %l193 = alloca i1
  %l202 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l207 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l211 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l212 = alloca ptr
  %l213 = alloca i1
  %l222 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l223 = alloca ptr
  %l227 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l229 = alloca ptr
  %l234 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l236 = alloca ptr
  %l237 = alloca i1
  %l250 = alloca { i64, ptr }
  %l260 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l261 = alloca ptr
  %l262 = alloca i1
  %l269 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l270 = alloca ptr
  %l271 = alloca i1
  %l279 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l280 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l290 = alloca { i64, ptr }
  %l304 = alloca { i64, ptr }
  %l307 = alloca ptr
  %l311 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l317 = alloca ptr
  %l318 = alloca i1
  %l325 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l326 = alloca ptr
  %l327 = alloca i1
  %l340 = alloca { i64, ptr }
  %l343 = alloca ptr
  %l344 = alloca i1
  %l352 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l355 = alloca ptr
  %l356 = alloca i1
  %l364 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l44, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aholdWalk__2erefs_2elocal_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l44, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l44
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l46
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aholdWalk__2erefs_2elocal_2e2
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l44
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t20, ptr %lp2
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  %t22 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %t22
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %lp2
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t31 = load ptr, ptr %l51, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l51, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 18}
  %t37 = icmp eq i64 %t35, 2
  store i1 %t37, ptr %l52, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l52, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [5 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t41, i32 0, i32 2
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l3, !tbaa !29
  br label %bb17
bb12:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t46 = load ptr, ptr %l57, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = load ptr, ptr %l57, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 4
  store i1 %t52, ptr %l58, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l58, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l3, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eheld(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t60, ptr %t61)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l65
  br label %bb18
bb18:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %rv
  br label %ret
bb19:
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t67 = load ptr, ptr %l66, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t70 = load ptr, ptr %l66, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 18}
  %t73 = icmp eq i64 %t71, 3
  store i1 %t73, ptr %l67, !tbaa !21
  br label %bb21
bb21:
  %t74 = load i1, ptr %l67, !tbaa !21
  br i1 %t74, label %bb22, label %bb23
bb22:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t77, i32 0, i32 2
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l4, !tbaa !29
  br label %bb24
bb23:
  br label %bb32
bb24:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/typed:holdWalk", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  store ptr %t84, ptr %l73, !tbaa !29
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t87 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t85)
  store i32 %t87, ptr %l75
  br label %bb25
bb25:
  %t88 = load ptr, ptr %l73, !tbaa !29
  %t89 = call ptr @__olang_scope_or(ptr %v3, ptr %t88)
  %t90 = ptrtoint ptr %t89 to i64
  %t92 = inttoptr i64 %t90 to ptr
  %t93 = load ptr, ptr %l73, !tbaa !29
  %t94 = load i32, ptr %l75, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t92, ptr %t93, i32 %t94)
  store i32 %t95, ptr %l77
  br label %bb26
bb26:
  %t96 = load i32, ptr %l77, !range !{i32 0, i32 33}
  %t98 = trunc i64 20 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb27, label %bb28
bb27:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l4, !tbaa !29
  %t105 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eheld(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t101, ptr %t102)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l83
  br label %bb29
bb28:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t110 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t106, ptr %t107)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l86
  br label %bb30
bb29:
  %t111 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l83
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t111, ptr %l80
  br label %bb31
bb30:
  %t112 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %l80
  br label %bb31
bb31:
  %t113 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t113, ptr %rv
  br label %ret
bb32:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t115 = load ptr, ptr %l87, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t118 = load ptr, ptr %l87, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 18}
  %t121 = icmp eq i64 %t119, 5
  store i1 %t121, ptr %l88, !tbaa !21
  br label %bb34
bb34:
  %t122 = load i1, ptr %l88, !tbaa !21
  br i1 %t122, label %bb35, label %bb36
bb35:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [5 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t125, i32 0, i32 2
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l5, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l5, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Promote", ptr %t130, i32 0, i32 0
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t137 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t129, ptr %t133)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t137, ptr %l97
  br label %bb38
bb38:
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %rv
  br label %ret
bb39:
  %t139 = load ptr, ptr %l1, !tbaa !29
  store ptr %t139, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t140 = load ptr, ptr %l98, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb40, label %bb41
bb40:
  %t143 = load ptr, ptr %l98, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 18}
  %t146 = icmp eq i64 %t144, 6
  store i1 %t146, ptr %l99, !tbaa !21
  br label %bb41
bb41:
  %t147 = load i1, ptr %l99, !tbaa !21
  br i1 %t147, label %bb42, label %bb43
bb42:
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = getelementptr { i64, [5 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t150, i32 0, i32 2
  %t152 = load ptr, ptr %t151
  store ptr %t152, ptr %l6, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load ptr, ptr %l6, !tbaa !29
  %t158 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t154, ptr %t155)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l106
  br label %bb45
bb45:
  %t159 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %rv
  br label %ret
bb46:
  %t160 = load ptr, ptr %l1, !tbaa !29
  store ptr %t160, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t161 = load ptr, ptr %l107, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l107, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 18}
  %t167 = icmp eq i64 %t165, 7
  store i1 %t167, ptr %l108, !tbaa !21
  br label %bb48
bb48:
  %t168 = load i1, ptr %l108, !tbaa !21
  br i1 %t168, label %bb49, label %bb50
bb49:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr { i64, [5 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t171, i32 0, i32 2
  %t173 = load ptr, ptr %t172
  store ptr %t173, ptr %l7, !tbaa !29
  br label %bb51
bb50:
  br label %bb61
bb51:
  store %olang.scope zeroinitializer, ptr %s6
  %t175 = load ptr, ptr %l7, !tbaa !29
  %t177 = getelementptr %"compiler/typed:Make", ptr %t175, i32 0, i32 2
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t180 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t180, 0
  store i64 %t182, ptr %l10, !tbaa !24
  br label %bb52
bb52:
  store %olang.scope zeroinitializer, ptr %s8
  %t184 = load i64, ptr %l9, !tbaa !24
  %t185 = load i64, ptr %l10, !tbaa !24
  %t188 = icmp slt i64 %t184, %t185
  %t190 = xor i1 %t188, true
  br i1 %t190, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s8)
  br label %bb59
bb54:
  br label %bb55
bb55:
  %t192 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t192, ptr %l121, !tbaa !27
  %t193 = load i64, ptr %l9, !tbaa !24
  %t195 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr ptr, ptr %t196, i64 %t193
  %t198 = load ptr, ptr %t197, !tbaa !39
  %t200 = load ptr, ptr %lp2
  store ptr %t200, ptr %l124, !tbaa !29
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t206 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %v4, ptr %t201, ptr %t198)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t206, ptr %l128
  br label %bb56
bb56:
  %t207 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l128
  %t208 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t207, ptr %t208
  %t209 = load ptr, ptr %l124, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t209, ptr %t208)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s8)
  br label %bb58
bb58:
  %t211 = load i64, ptr %l9, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l9, !tbaa !24
  br label %bb52
bb59:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load ptr, ptr %l7, !tbaa !29
  %t218 = getelementptr %"compiler/typed:Make", ptr %t216, i32 0, i32 3
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t222 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s6, ptr %v3, ptr %v4, ptr %t215, ptr %t219)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t222, ptr %l135
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s6)
  br label %bb201
bb61:
  %t223 = load ptr, ptr %l1, !tbaa !29
  store ptr %t223, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t224 = load ptr, ptr %l136, !tbaa !29
  %t225 = icmp ne ptr %t224, null
  br i1 %t225, label %bb62, label %bb63
bb62:
  %t227 = load ptr, ptr %l136, !tbaa !29
  %t228 = load i64, ptr %t227, !range !{i64 0, i64 18}
  %t230 = icmp eq i64 %t228, 8
  store i1 %t230, ptr %l137, !tbaa !21
  br label %bb63
bb63:
  %t231 = load i1, ptr %l137, !tbaa !21
  br i1 %t231, label %bb64, label %bb65
bb64:
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t234 = getelementptr { i64, [5 x i64] }, ptr %t232, i32 0, i32 1
  %t235 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t234, i32 0, i32 2
  %t236 = load ptr, ptr %t235
  store ptr %t236, ptr %l12, !tbaa !29
  br label %bb66
bb65:
  br label %bb82
bb66:
  store %olang.scope zeroinitializer, ptr %s10
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l12, !tbaa !29
  %t241 = getelementptr %"compiler/typed:Collect", ptr %t239, i32 0, i32 0
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t245 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s10, ptr %v3, ptr %v4, ptr %t238, ptr %t242)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t245, ptr %l145
  br label %bb67
bb67:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/typed:holdWalk", ptr %t246, i32 0, i32 5
  store ptr %t248, ptr %l147, !tbaa !29
  %t249 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s10, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t249, ptr %l148
  br label %bb68
bb68:
  %t250 = load ptr, ptr %l147, !tbaa !29
  %t251 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l148
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %s10, ptr %t250, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t251)
  br label %bb69
bb69:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load ptr, ptr %l12, !tbaa !29
  %t255 = getelementptr %"compiler/typed:Collect", ptr %t253, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t252, ptr %t256)
  br label %bb70
bb70:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = getelementptr %"compiler/typed:holdWalk", ptr %t260, i32 0, i32 5
  %t264 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcd1867a2c89de03c7af27b93b5b476d9(ptr %v0, ptr %v2, ptr %t262)
  %t265 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t264, 1
  %t266 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t264, 0
  store i32 %t266, ptr %l157
  %t267 = icmp ne i32 %t266, 0
  br i1 %t267, label %bb72, label %ok.268, !prof !99
ok.268:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t265, ptr %l156
  br label %bb71
bb71:
  %t269 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l156
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t269, ptr %l153
  br label %bb79
bb72:
  %t270 = load i32, ptr %l157, !tbaa !23
  %t271 = icmp eq i32 %t270, 65536
  br i1 %t271, label %bb73, label %bb74
bb73:
  call void @__olang_bang_failed_plain(ptr @olang_loc_2fe17ed863e993f3_a4fd95e432e2de7)
  unreachable
bb74:
  %t273 = load i32, ptr %l157, !tbaa !23
  %t274 = icmp eq i32 %t273, 65537
  br i1 %t274, label %bb75, label %bb76
bb75:
  call void @__olang_bang_failed_plain(ptr @olang_loc_2b0ce19cf8abfa0_63d28338a0667b94)
  unreachable
bb76:
  %t276 = load i32, ptr %l157, !tbaa !23
  %t277 = icmp eq i32 %t276, 65538
  br i1 %t277, label %bb77, label %bb78
bb77:
  call void @__olang_bang_failed_plain(ptr @olang_loc_231c306bfae66ae8_f9a103d13bf0009c)
  unreachable
bb78:
  call void @__olang_bang_failed_plain(ptr @olang_loc_60c7f079a8f50056_f0211a32bac11e1a)
  unreachable
bb79:
  %t279 = load ptr, ptr %lp2
  %t280 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t279
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %l161
  %t281 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l153
  %t282 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t281, ptr %t282
  %t283 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aholdWalk__2erefs_2elocal_2e2
  br i1 %t283, label %bb80, label %bb81
bb80:
  %t285 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l161, i32 0, i32 0
  %t286 = load { i64, ptr }, ptr %t285
  %t287 = extractvalue { i64, ptr } %t286, 1
  %t288 = call ptr @__olang_region_or(ptr %t287, ptr null)
  %t289 = icmp ne ptr %t288, null
  %t290 = select i1 %t289, ptr %t288, ptr null
  call void @__olang_region_drop(ptr %t290)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l161
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s10)
  br label %bb201
bb82:
  %t291 = load ptr, ptr %l1, !tbaa !29
  store ptr %t291, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t292 = load ptr, ptr %l163, !tbaa !29
  %t293 = icmp ne ptr %t292, null
  br i1 %t293, label %bb83, label %bb84
bb83:
  %t295 = load ptr, ptr %l163, !tbaa !29
  %t296 = load i64, ptr %t295, !range !{i64 0, i64 18}
  %t298 = icmp eq i64 %t296, 9
  store i1 %t298, ptr %l164, !tbaa !21
  br label %bb84
bb84:
  %t299 = load i1, ptr %l164, !tbaa !21
  br i1 %t299, label %bb85, label %bb86
bb85:
  %t300 = load ptr, ptr %l1, !tbaa !29
  %t302 = getelementptr { i64, [5 x i64] }, ptr %t300, i32 0, i32 1
  %t303 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t302, i32 0, i32 2
  %t304 = load i32, ptr %t303, !range !{i32 0, i32 52}
  store i32 %t304, ptr %l13
  %t306 = load ptr, ptr %l1, !tbaa !29
  %t308 = getelementptr { i64, [5 x i64] }, ptr %t306, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t308, i32 0, i32 4
  %t310 = load { i64, ptr }, ptr %t309
  store { i64, ptr } %t310, ptr %l14, !tbaa !27
  br label %bb87
bb86:
  br label %bb99
bb87:
  %t312 = load i32, ptr %l13, !range !{i32 0, i32 52}
  %t314 = trunc i64 30 to i32
  %t315 = icmp eq i32 %t312, %t314
  br i1 %t315, label %bb88, label %bb89
bb88:
  %t317 = load ptr, ptr %lp2
  %t318 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t317
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t318, ptr %rv
  br label %ret
bb89:
  br label %bb90
bb90:
  %t320 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t320, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t322 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t322, 0
  store i64 %t324, ptr %l17, !tbaa !24
  br label %bb91
bb91:
  store %olang.scope zeroinitializer, ptr %s14
  %t326 = load i64, ptr %l16, !tbaa !24
  %t327 = load i64, ptr %l17, !tbaa !24
  %t330 = icmp slt i64 %t326, %t327
  %t332 = xor i1 %t330, true
  br i1 %t332, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s14)
  br label %bb98
bb93:
  br label %bb94
bb94:
  %t334 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t334, ptr %l181, !tbaa !27
  %t335 = load i64, ptr %l16, !tbaa !24
  %t337 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = getelementptr ptr, ptr %t338, i64 %t335
  %t340 = load ptr, ptr %t339, !tbaa !39
  %t342 = load ptr, ptr %lp2
  store ptr %t342, ptr %l184, !tbaa !29
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t348 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %v4, ptr %t343, ptr %t340)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t348, ptr %l188
  br label %bb95
bb95:
  %t349 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l188
  %t350 = call ptr @__olang_scope_alloc_a(ptr %s14, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t349, ptr %t350
  %t351 = load ptr, ptr %l184, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t351, ptr %t350)
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s14)
  br label %bb97
bb97:
  %t353 = load i64, ptr %l16, !tbaa !24
  %t355 = add i64 %t353, 1
  store i64 %t355, ptr %l16, !tbaa !24
  br label %bb91
bb98:
  br label %bb201
bb99:
  %t357 = load ptr, ptr %l1, !tbaa !29
  store ptr %t357, ptr %l192, !tbaa !29
  store i1 false, ptr %l193, !tbaa !21
  %t358 = load ptr, ptr %l192, !tbaa !29
  %t359 = icmp ne ptr %t358, null
  br i1 %t359, label %bb100, label %bb101
bb100:
  %t361 = load ptr, ptr %l192, !tbaa !29
  %t362 = load i64, ptr %t361, !range !{i64 0, i64 18}
  %t364 = icmp eq i64 %t362, 10
  store i1 %t364, ptr %l193, !tbaa !21
  br label %bb101
bb101:
  %t365 = load i1, ptr %l193, !tbaa !21
  br i1 %t365, label %bb102, label %bb103
bb102:
  %t366 = load ptr, ptr %l1, !tbaa !29
  %t368 = getelementptr { i64, [5 x i64] }, ptr %t366, i32 0, i32 1
  %t369 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t368, i32 0, i32 2
  %t370 = load ptr, ptr %t369
  store ptr %t370, ptr %l19, !tbaa !29
  br label %bb104
bb103:
  br label %bb108
bb104:
  store %olang.scope zeroinitializer, ptr %s16
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load ptr, ptr %l19, !tbaa !29
  %t375 = getelementptr %"compiler/typed:Slice", ptr %t373, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !29
  %t380 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s16, ptr %v3, ptr %v4, ptr %t372, ptr %t376)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t380, ptr %l202
  br label %bb105
bb105:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load ptr, ptr %l19, !tbaa !29
  %t384 = getelementptr %"compiler/typed:Slice", ptr %t382, i32 0, i32 2
  %t385 = load ptr, ptr %t384, !tbaa !29
  %t389 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s16, ptr %v3, ptr %v4, ptr %t381, ptr %t385)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t389, ptr %l207
  br label %bb106
bb106:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load ptr, ptr %l19, !tbaa !29
  %t393 = getelementptr %"compiler/typed:Slice", ptr %t391, i32 0, i32 0
  %t394 = load ptr, ptr %t393, !tbaa !29
  %t397 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t390, ptr %t394)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t397, ptr %l211
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s16)
  %t398 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l211
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %rv
  br label %ret
bb108:
  %t399 = load ptr, ptr %l1, !tbaa !29
  store ptr %t399, ptr %l212, !tbaa !29
  store i1 false, ptr %l213, !tbaa !21
  %t400 = load ptr, ptr %l212, !tbaa !29
  %t401 = icmp ne ptr %t400, null
  br i1 %t401, label %bb109, label %bb110
bb109:
  %t403 = load ptr, ptr %l212, !tbaa !29
  %t404 = load i64, ptr %t403, !range !{i64 0, i64 18}
  %t406 = icmp eq i64 %t404, 11
  store i1 %t406, ptr %l213, !tbaa !21
  br label %bb110
bb110:
  %t407 = load i1, ptr %l213, !tbaa !21
  br i1 %t407, label %bb111, label %bb112
bb111:
  %t408 = load ptr, ptr %l1, !tbaa !29
  %t410 = getelementptr { i64, [5 x i64] }, ptr %t408, i32 0, i32 1
  %t411 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t410, i32 0, i32 2
  %t412 = load ptr, ptr %t411
  store ptr %t412, ptr %l20, !tbaa !29
  br label %bb113
bb112:
  br label %bb119
bb113:
  store %olang.scope zeroinitializer, ptr %s17
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load ptr, ptr %l20, !tbaa !29
  %t417 = getelementptr %"compiler/typed:Cond", ptr %t415, i32 0, i32 0
  %t418 = load ptr, ptr %t417, !tbaa !29
  %t422 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s17, ptr %v3, ptr %v4, ptr %t414, ptr %t418)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t422, ptr %l222
  br label %bb114
bb114:
  %t423 = load ptr, ptr %lp2
  store ptr %t423, ptr %l223, !tbaa !29
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load ptr, ptr %l20, !tbaa !29
  %t427 = getelementptr %"compiler/typed:Cond", ptr %t425, i32 0, i32 1
  %t428 = load ptr, ptr %t427, !tbaa !29
  %t431 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %v4, ptr %t424, ptr %t428)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t431, ptr %l227
  br label %bb115
bb115:
  %t432 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l227
  %t433 = call ptr @__olang_scope_alloc_a(ptr %s17, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t432, ptr %t433
  %t434 = load ptr, ptr %l223, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t434, ptr %t433)
  br label %bb116
bb116:
  %t436 = load ptr, ptr %lp2
  store ptr %t436, ptr %l229, !tbaa !29
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load ptr, ptr %l20, !tbaa !29
  %t440 = getelementptr %"compiler/typed:Cond", ptr %t438, i32 0, i32 2
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t445 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %v4, ptr %t437, ptr %t441)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t445, ptr %l234
  br label %bb117
bb117:
  %t446 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l234
  %t447 = call ptr @__olang_scope_alloc_a(ptr %s17, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t446, ptr %t447
  %t448 = load ptr, ptr %l229, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t448, ptr %t447)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s17)
  br label %bb201
bb119:
  %t450 = load ptr, ptr %l1, !tbaa !29
  store ptr %t450, ptr %l236, !tbaa !29
  store i1 false, ptr %l237, !tbaa !21
  %t451 = load ptr, ptr %l236, !tbaa !29
  %t452 = icmp ne ptr %t451, null
  br i1 %t452, label %bb120, label %bb121
bb120:
  %t454 = load ptr, ptr %l236, !tbaa !29
  %t455 = load i64, ptr %t454, !range !{i64 0, i64 18}
  %t457 = icmp eq i64 %t455, 12
  store i1 %t457, ptr %l237, !tbaa !21
  br label %bb121
bb121:
  %t458 = load i1, ptr %l237, !tbaa !21
  br i1 %t458, label %bb122, label %bb123
bb122:
  %t459 = load ptr, ptr %l1, !tbaa !29
  %t461 = getelementptr { i64, [5 x i64] }, ptr %t459, i32 0, i32 1
  %t462 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t461, i32 0, i32 2
  %t463 = load ptr, ptr %t462
  store ptr %t463, ptr %l21, !tbaa !29
  br label %bb124
bb123:
  br label %bb133
bb124:
  %t465 = load ptr, ptr %l21, !tbaa !29
  %t467 = getelementptr %"compiler/typed:Seq", ptr %t465, i32 0, i32 0
  %t468 = load { i64, ptr }, ptr %t467, !tbaa !27
  store { i64, ptr } %t468, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t470 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t472 = extractvalue { i64, ptr } %t470, 0
  store i64 %t472, ptr %l24, !tbaa !24
  br label %bb125
bb125:
  %t474 = load i64, ptr %l23, !tbaa !24
  %t475 = load i64, ptr %l24, !tbaa !24
  %t478 = icmp slt i64 %t474, %t475
  %t480 = xor i1 %t478, true
  br i1 %t480, label %bb126, label %bb127
bb126:
  br label %bb131
bb127:
  br label %bb128
bb128:
  %t482 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t482, ptr %l250, !tbaa !27
  %t483 = load i64, ptr %l23, !tbaa !24
  %t485 = getelementptr { i64, ptr }, ptr %l250, i32 0, i32 1
  %t486 = load ptr, ptr %t485, !tbaa !27
  %t487 = getelementptr ptr, ptr %t486, i64 %t483
  %t488 = load ptr, ptr %t487, !tbaa !39
  %t490 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estmt(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t490, ptr %t488)
  br label %bb129
bb129:
  br label %bb130
bb130:
  %t494 = load i64, ptr %l23, !tbaa !24
  %t496 = add i64 %t494, 1
  store i64 %t496, ptr %l23, !tbaa !24
  br label %bb125
bb131:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t499 = load ptr, ptr %l21, !tbaa !29
  %t501 = getelementptr %"compiler/typed:Seq", ptr %t499, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !29
  %t505 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t498, ptr %t502)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t505, ptr %l260
  br label %bb132
bb132:
  %t506 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l260
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t506, ptr %rv
  br label %ret
bb133:
  %t507 = load ptr, ptr %l1, !tbaa !29
  store ptr %t507, ptr %l261, !tbaa !29
  store i1 false, ptr %l262, !tbaa !21
  %t508 = load ptr, ptr %l261, !tbaa !29
  %t509 = icmp ne ptr %t508, null
  br i1 %t509, label %bb134, label %bb135
bb134:
  %t511 = load ptr, ptr %l261, !tbaa !29
  %t512 = load i64, ptr %t511, !range !{i64 0, i64 18}
  %t514 = icmp eq i64 %t512, 13
  store i1 %t514, ptr %l262, !tbaa !21
  br label %bb135
bb135:
  %t515 = load i1, ptr %l262, !tbaa !21
  br i1 %t515, label %bb136, label %bb137
bb136:
  %t516 = load ptr, ptr %l1, !tbaa !29
  %t518 = getelementptr { i64, [5 x i64] }, ptr %t516, i32 0, i32 1
  %t519 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t518, i32 0, i32 2
  %t520 = load ptr, ptr %t519
  store ptr %t520, ptr %l26, !tbaa !29
  br label %bb138
bb137:
  br label %bb140
bb138:
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t523 = load ptr, ptr %l26, !tbaa !29
  %t526 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2ematch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t522, ptr %t523)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t526, ptr %l269
  br label %bb139
bb139:
  %t527 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l269
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t527, ptr %rv
  br label %ret
bb140:
  %t528 = load ptr, ptr %l1, !tbaa !29
  store ptr %t528, ptr %l270, !tbaa !29
  store i1 false, ptr %l271, !tbaa !21
  %t529 = load ptr, ptr %l270, !tbaa !29
  %t530 = icmp ne ptr %t529, null
  br i1 %t530, label %bb141, label %bb142
bb141:
  %t532 = load ptr, ptr %l270, !tbaa !29
  %t533 = load i64, ptr %t532, !range !{i64 0, i64 18}
  %t535 = icmp eq i64 %t533, 14
  store i1 %t535, ptr %l271, !tbaa !21
  br label %bb142
bb142:
  %t536 = load i1, ptr %l271, !tbaa !21
  br i1 %t536, label %bb143, label %bb144
bb143:
  %t537 = load ptr, ptr %l1, !tbaa !29
  %t539 = getelementptr { i64, [5 x i64] }, ptr %t537, i32 0, i32 1
  %t540 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t539, i32 0, i32 2
  %t541 = load ptr, ptr %t540
  store ptr %t541, ptr %l27, !tbaa !29
  br label %bb145
bb144:
  br label %bb164
bb145:
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load ptr, ptr %l27, !tbaa !29
  %t546 = getelementptr %"compiler/typed:Try", ptr %t544, i32 0, i32 0
  %t547 = load ptr, ptr %t546, !tbaa !29
  %t550 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t543, ptr %t547)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t550, ptr %l279
  br label %bb146
bb146:
  %t551 = load ptr, ptr %lp2
  %t552 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t551
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t552, ptr %l280
  %t553 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l279
  %t554 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t553, ptr %t554
  %t555 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aholdWalk__2erefs_2elocal_2e2
  br i1 %t555, label %bb147, label %bb148
bb147:
  %t557 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l280, i32 0, i32 0
  %t558 = load { i64, ptr }, ptr %t557
  %t559 = extractvalue { i64, ptr } %t558, 1
  %t560 = call ptr @__olang_region_or(ptr %t559, ptr null)
  %t561 = icmp ne ptr %t560, null
  %t562 = select i1 %t561, ptr %t560, ptr null
  call void @__olang_region_drop(ptr %t562)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l280
  br label %bb148
bb148:
  %t563 = load ptr, ptr %l27, !tbaa !29
  %t565 = getelementptr %"compiler/typed:Try", ptr %t563, i32 0, i32 1
  %t566 = load { i64, ptr }, ptr %t565, !tbaa !27
  store { i64, ptr } %t566, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t568 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t570 = extractvalue { i64, ptr } %t568, 0
  store i64 %t570, ptr %l30, !tbaa !24
  br label %bb149
bb149:
  %t572 = load i64, ptr %l29, !tbaa !24
  %t573 = load i64, ptr %l30, !tbaa !24
  %t576 = icmp slt i64 %t572, %t573
  %t578 = xor i1 %t576, true
  br i1 %t578, label %bb150, label %bb151
bb150:
  br label %bb163
bb151:
  br label %bb152
bb152:
  %t580 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t580, ptr %l290, !tbaa !27
  %t581 = load i64, ptr %l29, !tbaa !24
  %t583 = getelementptr { i64, ptr }, ptr %l290, i32 0, i32 1
  %t584 = load ptr, ptr %t583, !tbaa !27
  %t585 = getelementptr ptr, ptr %t584, i64 %t581
  %t586 = load ptr, ptr %t585, !tbaa !39
  store ptr %t586, ptr %l31, !tbaa !29
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t589 = load ptr, ptr %l31, !tbaa !29
  %t591 = getelementptr %"compiler/typed:Clause", ptr %t589, i32 0, i32 3
  %t592 = load ptr, ptr %t591, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t588, ptr %t592)
  br label %bb153
bb153:
  %t595 = load ptr, ptr %l31, !tbaa !29
  %t597 = getelementptr %"compiler/typed:Clause", ptr %t595, i32 0, i32 4
  %t598 = load { i64, ptr }, ptr %t597, !tbaa !27
  store { i64, ptr } %t598, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t600 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t602 = extractvalue { i64, ptr } %t600, 0
  store i64 %t602, ptr %l34, !tbaa !24
  br label %bb154
bb154:
  store %olang.scope zeroinitializer, ptr %s27
  %t604 = load i64, ptr %l33, !tbaa !24
  %t605 = load i64, ptr %l34, !tbaa !24
  %t608 = icmp slt i64 %t604, %t605
  %t610 = xor i1 %t608, true
  br i1 %t610, label %bb155, label %bb156
bb155:
  call void @__olang_scope_close(ptr %s27)
  br label %bb161
bb156:
  br label %bb157
bb157:
  %t612 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t612, ptr %l304, !tbaa !27
  %t613 = load i64, ptr %l33, !tbaa !24
  %t615 = getelementptr { i64, ptr }, ptr %l304, i32 0, i32 1
  %t616 = load ptr, ptr %t615, !tbaa !27
  %t617 = getelementptr ptr, ptr %t616, i64 %t613
  %t618 = load ptr, ptr %t617, !tbaa !39
  %t620 = load ptr, ptr %lp2
  store ptr %t620, ptr %l307, !tbaa !29
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t626 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %v4, ptr %t621, ptr %t618)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t626, ptr %l311
  br label %bb158
bb158:
  %t627 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l311
  %t628 = call ptr @__olang_scope_alloc_a(ptr %s27, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t627, ptr %t628
  %t629 = load ptr, ptr %l307, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t629, ptr %t628)
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s27)
  br label %bb160
bb160:
  %t631 = load i64, ptr %l33, !tbaa !24
  %t633 = add i64 %t631, 1
  store i64 %t633, ptr %l33, !tbaa !24
  br label %bb154
bb161:
  br label %bb162
bb162:
  %t635 = load i64, ptr %l29, !tbaa !24
  %t637 = add i64 %t635, 1
  store i64 %t637, ptr %l29, !tbaa !24
  br label %bb149
bb163:
  br label %bb201
bb164:
  %t639 = load ptr, ptr %l1, !tbaa !29
  store ptr %t639, ptr %l317, !tbaa !29
  store i1 false, ptr %l318, !tbaa !21
  %t640 = load ptr, ptr %l317, !tbaa !29
  %t641 = icmp ne ptr %t640, null
  br i1 %t641, label %bb165, label %bb166
bb165:
  %t643 = load ptr, ptr %l317, !tbaa !29
  %t644 = load i64, ptr %t643, !range !{i64 0, i64 18}
  %t646 = icmp eq i64 %t644, 15
  store i1 %t646, ptr %l318, !tbaa !21
  br label %bb166
bb166:
  %t647 = load i1, ptr %l318, !tbaa !21
  br i1 %t647, label %bb167, label %bb168
bb167:
  %t648 = load ptr, ptr %l1, !tbaa !29
  %t650 = getelementptr { i64, [5 x i64] }, ptr %t648, i32 0, i32 1
  %t651 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t650, i32 0, i32 2
  %t652 = load ptr, ptr %t651
  store ptr %t652, ptr %l36, !tbaa !29
  br label %bb169
bb168:
  br label %bb171
bb169:
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load ptr, ptr %l36, !tbaa !29
  %t658 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2efnVal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t654, ptr %t655)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t658, ptr %l325
  br label %bb170
bb170:
  %t659 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l325
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t659, ptr %rv
  br label %ret
bb171:
  %t660 = load ptr, ptr %l1, !tbaa !29
  store ptr %t660, ptr %l326, !tbaa !29
  store i1 false, ptr %l327, !tbaa !21
  %t661 = load ptr, ptr %l326, !tbaa !29
  %t662 = icmp ne ptr %t661, null
  br i1 %t662, label %bb172, label %bb173
bb172:
  %t664 = load ptr, ptr %l326, !tbaa !29
  %t665 = load i64, ptr %t664, !range !{i64 0, i64 18}
  %t667 = icmp eq i64 %t665, 16
  store i1 %t667, ptr %l327, !tbaa !21
  br label %bb173
bb173:
  %t668 = load i1, ptr %l327, !tbaa !21
  br i1 %t668, label %bb174, label %bb175
bb174:
  %t669 = load ptr, ptr %l1, !tbaa !29
  %t671 = getelementptr { i64, [5 x i64] }, ptr %t669, i32 0, i32 1
  %t672 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t671, i32 0, i32 2
  %t673 = load ptr, ptr %t672
  store ptr %t673, ptr %l37, !tbaa !29
  br label %bb176
bb175:
  br label %bb189
bb176:
  %t675 = load ptr, ptr %l37, !tbaa !29
  %t677 = getelementptr %"compiler/typed:Text", ptr %t675, i32 0, i32 0
  %t678 = load { i64, ptr }, ptr %t677, !tbaa !27
  store { i64, ptr } %t678, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t680 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t682 = extractvalue { i64, ptr } %t680, 0
  store i64 %t682, ptr %l40, !tbaa !24
  br label %bb177
bb177:
  %t684 = load i64, ptr %l39, !tbaa !24
  %t685 = load i64, ptr %l40, !tbaa !24
  %t688 = icmp slt i64 %t684, %t685
  %t690 = xor i1 %t688, true
  br i1 %t690, label %bb178, label %bb179
bb178:
  br label %bb188
bb179:
  br label %bb180
bb180:
  %t692 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t692, ptr %l340, !tbaa !27
  %t693 = load i64, ptr %l39, !tbaa !24
  %t695 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t696 = load ptr, ptr %t695, !tbaa !27
  %t697 = getelementptr ptr, ptr %t696, i64 %t693
  %t698 = load ptr, ptr %t697, !tbaa !39
  store ptr %t698, ptr %l41, !tbaa !29
  %t700 = load ptr, ptr %l41, !tbaa !29
  store ptr %t700, ptr %l343, !tbaa !29
  store i1 false, ptr %l344, !tbaa !21
  %t701 = load ptr, ptr %l343, !tbaa !29
  %t702 = icmp ne ptr %t701, null
  br i1 %t702, label %bb181, label %bb182
bb181:
  %t704 = load ptr, ptr %l343, !tbaa !29
  %t705 = load i64, ptr %t704, !range !{i64 0, i64 2}
  %t707 = icmp eq i64 %t705, 1
  store i1 %t707, ptr %l344, !tbaa !21
  br label %bb182
bb182:
  %t708 = load i1, ptr %l344, !tbaa !21
  br i1 %t708, label %bb183, label %bb184
bb183:
  store %olang.scope zeroinitializer, ptr %s34
  %t709 = load ptr, ptr %l41, !tbaa !29
  %t711 = getelementptr { i64, [2 x i64] }, ptr %t709, i32 0, i32 1
  %t712 = getelementptr { ptr }, ptr %t711, i32 0, i32 0
  %t713 = load ptr, ptr %t712
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t720 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s34, ptr %v3, ptr %v4, ptr %t715, ptr %t713)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t720, ptr %l352
  br label %bb185
bb184:
  br label %bb186
bb185:
  call void @__olang_scope_close(ptr %s34)
  br label %bb186
bb186:
  br label %bb187
bb187:
  %t721 = load i64, ptr %l39, !tbaa !24
  %t723 = add i64 %t721, 1
  store i64 %t723, ptr %l39, !tbaa !24
  br label %bb177
bb188:
  br label %bb201
bb189:
  %t725 = load ptr, ptr %l1, !tbaa !29
  store ptr %t725, ptr %l355, !tbaa !29
  store i1 false, ptr %l356, !tbaa !21
  %t726 = load ptr, ptr %l355, !tbaa !29
  %t727 = icmp ne ptr %t726, null
  br i1 %t727, label %bb190, label %bb191
bb190:
  %t729 = load ptr, ptr %l355, !tbaa !29
  %t730 = load i64, ptr %t729, !range !{i64 0, i64 18}
  %t732 = icmp eq i64 %t730, 17
  store i1 %t732, ptr %l356, !tbaa !21
  br label %bb191
bb191:
  %t733 = load i1, ptr %l356, !tbaa !21
  br i1 %t733, label %bb192, label %bb193
bb192:
  %t734 = load ptr, ptr %l1, !tbaa !29
  %t736 = getelementptr { i64, [5 x i64] }, ptr %t734, i32 0, i32 1
  %t737 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t736, i32 0, i32 2
  %t738 = load ptr, ptr %t737
  store ptr %t738, ptr %l43, !tbaa !29
  br label %bb194
bb193:
  br label %bb196
bb194:
  %t740 = load ptr, ptr %l0, !tbaa !29
  %t741 = load ptr, ptr %l43, !tbaa !29
  %t745 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t740, ptr %t741)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t745, ptr %l364
  br label %bb195
bb195:
  %t746 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l364
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t746, ptr %rv
  br label %ret
bb196:
  br i1 true, label %bb197, label %bb198
bb197:
  br label %bb199
bb198:
  br label %bb200
bb199:
  br label %bb201
bb200:
  call void @__olang_check_failed(ptr @olang_loc_7e259cde601a72ba_d3d8f3b52bf79a7e)
  unreachable
bb201:
  %t747 = load ptr, ptr %lp2
  %t748 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t747
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t748, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregister(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i1
  %l49 = alloca i64
  %l61 = alloca ptr
  %l63 = alloca i32
  %l67 = alloca i1
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca i1
  %l82 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:holdWalk", ptr %t6, i32 0, i32 10
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load i64, ptr %l14, !tbaa !24
  store i64 %t11, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l6, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb4:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l18, !tbaa !24
  store i64 %t39, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l9, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/typed:holdWalk", ptr %t58, i32 0, i32 10
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t60, i64 %t61)
  store i64 %t64, ptr %l42
  br label %bb12
bb12:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t66 = load i64, ptr %l42, !tbaa !24
  %t68 = icmp eq i64 %t66, %t65
  br i1 %t68, label %bb13, label %bb14
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/typed:holdWalk", ptr %t70, i32 0, i32 11
  %t73 = load i64, ptr %l9, !tbaa !24
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t72, i64 %t73)
  store i64 %t76, ptr %l49
  br label %bb15
bb14:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb16
bb15:
  %t77 = load i64, ptr %l1, !tbaa !24
  %t78 = load i64, ptr %l49, !tbaa !24
  %t80 = icmp eq i64 %t78, %t77
  store i1 %t80, ptr %l45, !tbaa !21
  br label %bb16
bb16:
  %t82 = load i1, ptr %l45, !tbaa !21
  br i1 %t82, label %bb17, label %bb18
bb17:
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t83 = load i64, ptr %l8, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l8, !tbaa !24
  br label %bb8
bb21:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/typed:holdWalk", ptr %t87, i32 0, i32 10
  %t90 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t89, i64 %t90)
  br label %bb22
bb22:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/typed:holdWalk", ptr %t93, i32 0, i32 11
  %t96 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t95, i64 %t96)
  br label %bb23
bb23:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/typed:holdWalk", ptr %t99, i32 0, i32 12
  store ptr %t101, ptr %l61, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2einBlock(ptr %v0, ptr %t102)
  store i32 %t104, ptr %l63
  br label %bb24
bb24:
  %t105 = load ptr, ptr %l61, !tbaa !29
  %t106 = load i32, ptr %l63, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t105, i32 %t106)
  br label %bb25
bb25:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/typed:holdWalk", ptr %t107, i32 0, i32 9
  %t110 = load i64, ptr %l1, !tbaa !24
  %t113 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t109, i64 %t110)
  store i1 %t113, ptr %l67
  br label %bb26
bb26:
  %t114 = load i1, ptr %l67, !tbaa !21
  %t115 = xor i1 %t114, true
  br i1 %t115, label %bb27, label %bb28
bb27:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/typed:holdWalk", ptr %t117, i32 0, i32 9
  %t120 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t119, i64 %t120)
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/typed:holdWalk", ptr %t123, i32 0, i32 2
  %t126 = load i64, ptr %l1, !tbaa !24
  %t129 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t125, i64 %t126)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l75
  br label %bb31
bb31:
  %t130 = load i64, ptr %l1, !tbaa !24
  %t133 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %l75, i64 %t130)
  store i1 %t133, ptr %l78
  br label %bb32
bb32:
  %t134 = load i1, ptr %l78, !tbaa !21
  br i1 %t134, label %bb33, label %bb34
bb33:
  br label %ret
bb34:
  br label %bb35
bb35:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/typed:holdWalk", ptr %t135, i32 0, i32 2
  %t138 = load i64, ptr %l1, !tbaa !24
  %t141 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcb8bb928db85b876b7f95fc01a2ef730(ptr %v0, ptr %v0, ptr %t137, i64 %t138)
  store ptr %t141, ptr %l82
  br label %bb36
bb36:
  %t142 = load i64, ptr %l1, !tbaa !24
  %t143 = load ptr, ptr %l82, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t143, i64 %t142)
  br label %bb37
bb37:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/typed:holdWalk", ptr %t145, i32 0, i32 3
  store i1 true, ptr %t147, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca ptr
  %l19 = alloca i1
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca ptr
  %l29 = alloca i1
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca ptr
  %l38 = alloca i1
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca ptr
  %l47 = alloca i1
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca ptr
  %l57 = alloca i1
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca ptr
  %l66 = alloca i1
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t20 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2eone(ptr %v2, i64 %t18)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l17
  br label %bb6
bb6:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l8
  br label %bb55
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 2
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t42 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t37, ptr %t38)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l27
  br label %bb13
bb13:
  %t43 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l8
  br label %bb55
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l28, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 8}
  %t51 = icmp eq i64 %t49, 3
  store i1 %t51, ptr %l29, !tbaa !21
  br label %bb16
bb16:
  %t52 = load i1, ptr %l29, !tbaa !21
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t63 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t59, ptr %t60)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l36
  br label %bb20
bb20:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l8
  br label %bb55
bb21:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t66 = load ptr, ptr %l37, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb22, label %bb23
bb22:
  %t69 = load ptr, ptr %l37, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 8}
  %t72 = icmp eq i64 %t70, 4
  store i1 %t72, ptr %l38, !tbaa !21
  br label %bb23
bb23:
  %t73 = load i1, ptr %l38, !tbaa !21
  br i1 %t73, label %bb24, label %bb25
bb24:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eelemStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t80, ptr %t81)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l45
  br label %bb27
bb27:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %l8
  br label %bb55
bb28:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t87 = load ptr, ptr %l46, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb29, label %bb30
bb29:
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 8}
  %t93 = icmp eq i64 %t91, 5
  store i1 %t93, ptr %l47, !tbaa !21
  br label %bb30
bb30:
  %t94 = load i1, ptr %l47, !tbaa !21
  br i1 %t94, label %bb31, label %bb32
bb31:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l6, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Payload", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t101, ptr %t105)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l55
  br label %bb34
bb34:
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l8
  br label %bb55
bb35:
  %t110 = load ptr, ptr %l1, !tbaa !29
  store ptr %t110, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t111 = load ptr, ptr %l56, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb36, label %bb37
bb36:
  %t114 = load ptr, ptr %l56, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 8}
  %t117 = icmp eq i64 %t115, 6
  store i1 %t117, ptr %l57, !tbaa !21
  br label %bb37
bb37:
  %t118 = load i1, ptr %l57, !tbaa !21
  br i1 %t118, label %bb38, label %bb39
bb38:
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr { i64, [4 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t121, i32 0, i32 2
  %t123 = load ptr, ptr %t122
  store ptr %t123, ptr %l7, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l7, !tbaa !29
  %t129 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etempStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t125, ptr %t126)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l64
  br label %bb41
bb41:
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %l8
  br label %bb55
bb42:
  %t131 = load ptr, ptr %l1, !tbaa !29
  store ptr %t131, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t132 = load ptr, ptr %l65, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb43, label %bb44
bb43:
  %t135 = load ptr, ptr %l65, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 8}
  %t138 = icmp eq i64 %t136, 7
  store i1 %t138, ptr %l66, !tbaa !21
  br label %bb44
bb44:
  %t139 = load i1, ptr %l66, !tbaa !21
  br i1 %t139, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etarget(ptr %v0, ptr %v2, ptr %t140)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l70
  br label %bb48
bb48:
  %t143 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %l8
  br label %bb55
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t144 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %l71
  br label %bb53
bb53:
  %t145 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t145, ptr %l8
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_60996a1f08c29aeb_ed876111a60916df)
  unreachable
bb55:
  %t146 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2earmsLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
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
  br label %bb13
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
  %t34 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2earmLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  store i1 %t34, ptr %l22
  br label %bb8
bb8:
  %t35 = load i1, ptr %l22, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2ecalleeLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %t17)
  store i1 %t21, ptr %l13
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  store i1 %t22, ptr %l3, !tbaa !21
  br label %bb26
bb7:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l14, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 5}
  %t30 = icmp eq i64 %t28, 0
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l15, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  br label %bb24
bb11:
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb12, label %bb13
bb12:
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 5}
  %t39 = icmp eq i64 %t37, 1
  store i1 %t39, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t40 = load i1, ptr %l19, !tbaa !21
  br i1 %t40, label %bb14, label %bb15
bb14:
  br label %bb24
bb15:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb16, label %bb17
bb16:
  %t45 = load ptr, ptr %l22, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 5}
  %t48 = icmp eq i64 %t46, 3
  store i1 %t48, ptr %l23, !tbaa !21
  br label %bb17
bb17:
  %t49 = load i1, ptr %l23, !tbaa !21
  br i1 %t49, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t51 = load ptr, ptr %l26, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb20, label %bb21
bb20:
  %t54 = load ptr, ptr %l26, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 5}
  %t57 = icmp eq i64 %t55, 4
  store i1 %t57, ptr %l27, !tbaa !21
  br label %bb21
bb21:
  %t58 = load i1, ptr %l27, !tbaa !21
  br i1 %t58, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_10efe43793a641ac_2dabf1c43cd6a168)
  unreachable
bb26:
  %t59 = load i1, ptr %l3, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l63 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l75 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i1
  %l84 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l94 = alloca i1
  %l95 = alloca i1
  %l99 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l109 = alloca i1
  %l110 = alloca i1
  %l114 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l123 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca i1
  %l133 = alloca i1
  %l134 = alloca i1
  %l139 = alloca i1
  %l140 = alloca i1
  %l145 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l156 = alloca i1
  %l157 = alloca i1
  %l161 = alloca i1
  %l162 = alloca i1
  %l167 = alloca i1
  %l168 = alloca ptr
  %l169 = alloca i1
  %l177 = alloca i1
  %l178 = alloca i1
  %l182 = alloca i1
  %l183 = alloca ptr
  %l184 = alloca i1
  %l192 = alloca i1
  %l193 = alloca i1
  %l197 = alloca i1
  %l198 = alloca i1
  %l203 = alloca i1
  %l204 = alloca ptr
  %l210 = alloca i1
  %l211 = alloca ptr
  %l212 = alloca i1
  %l220 = alloca i1
  %l224 = alloca i1
  %l227 = alloca i1
  %l230 = alloca i1
  %l232 = alloca i1
  %l236 = alloca i1
  %l237 = alloca i1
  %l241 = alloca i1
  %l242 = alloca ptr
  %l243 = alloca i1
  %l251 = alloca i1
  %l252 = alloca ptr
  %l253 = alloca i1
  %l261 = alloca i1
  %s7 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t7 = load ptr, ptr %l20, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l20, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l21, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t16 = load ptr, ptr %l24, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l24, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 1
  store i1 %t22, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l25, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t25 = load ptr, ptr %l28, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l28, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 15
  store i1 %t31, ptr %l29, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l29, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb183
bb17:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t34 = load ptr, ptr %l32, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb18, label %bb19
bb18:
  %t37 = load ptr, ptr %l32, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 18}
  %t40 = icmp eq i64 %t38, 2
  store i1 %t40, ptr %l33, !tbaa !21
  br label %bb19
bb19:
  %t41 = load i1, ptr %l33, !tbaa !21
  br i1 %t41, label %bb20, label %bb21
bb20:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr { i64, [5 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t44, i32 0, i32 2
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l2, !tbaa !29
  br label %bb30
bb21:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t49 = load ptr, ptr %l38, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb22, label %bb23
bb22:
  %t52 = load ptr, ptr %l38, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 18}
  %t55 = icmp eq i64 %t53, 3
  store i1 %t55, ptr %l39, !tbaa !21
  br label %bb23
bb23:
  %t56 = load i1, ptr %l39, !tbaa !21
  br i1 %t56, label %bb24, label %bb25
bb24:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [5 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t59, i32 0, i32 2
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l2, !tbaa !29
  br label %bb30
bb25:
  %t63 = load ptr, ptr %l1, !tbaa !29
  store ptr %t63, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t64 = load ptr, ptr %l44, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb26, label %bb27
bb26:
  %t67 = load ptr, ptr %l44, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 18}
  %t70 = icmp eq i64 %t68, 4
  store i1 %t70, ptr %l45, !tbaa !21
  br label %bb27
bb27:
  %t71 = load i1, ptr %l45, !tbaa !21
  br i1 %t71, label %bb28, label %bb29
bb28:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t74, i32 0, i32 2
  %t76 = load ptr, ptr %t75
  store ptr %t76, ptr %l2, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t82 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eplaceLeaves(ptr %v0, ptr %v1, ptr %t78, ptr %t79)
  store i1 %t82, ptr %l52
  br label %bb31
bb31:
  %t83 = load i1, ptr %l52, !tbaa !21
  store i1 %t83, ptr %l19, !tbaa !21
  br label %bb183
bb32:
  %t84 = load ptr, ptr %l1, !tbaa !29
  store ptr %t84, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t85 = load ptr, ptr %l53, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb33, label %bb34
bb33:
  %t88 = load ptr, ptr %l53, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 18}
  %t91 = icmp eq i64 %t89, 5
  store i1 %t91, ptr %l54, !tbaa !21
  br label %bb34
bb34:
  %t92 = load i1, ptr %l54, !tbaa !21
  br i1 %t92, label %bb35, label %bb36
bb35:
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t95, i32 0, i32 2
  %t97 = load ptr, ptr %t96
  store ptr %t97, ptr %l3, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l3, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Promote", ptr %t100, i32 0, i32 0
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t107 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t99, ptr %t103)
  store i1 %t107, ptr %l63
  br label %bb38
bb38:
  %t108 = load i1, ptr %l63, !tbaa !21
  store i1 %t108, ptr %l19, !tbaa !21
  br label %bb183
bb39:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t110 = load ptr, ptr %l64, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb40, label %bb41
bb40:
  %t113 = load ptr, ptr %l64, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 18}
  %t116 = icmp eq i64 %t114, 6
  store i1 %t116, ptr %l65, !tbaa !21
  br label %bb41
bb41:
  %t117 = load i1, ptr %l65, !tbaa !21
  br i1 %t117, label %bb42, label %bb43
bb42:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [5 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t120, i32 0, i32 1
  %t122 = load i32, ptr %t121
  store i32 %t122, ptr %l4, !tbaa !23
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr { i64, [5 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t126, i32 0, i32 2
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l5, !tbaa !29
  br label %bb44
bb43:
  br label %bb53
bb44:
  %t130 = load i32, ptr %l4, !tbaa !23
  %t131 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t134 = icmp eq i32 %t130, %t131
  br i1 %t134, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb48
bb46:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l5, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Call", ptr %t137, i32 0, i32 0
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t143 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2ecalleeLeaves(ptr %v0, ptr %v1, ptr %t136, ptr %t140)
  store i1 %t143, ptr %l79
  br label %bb47
bb47:
  %t144 = load i1, ptr %l79, !tbaa !21
  store i1 %t144, ptr %l75, !tbaa !21
  br label %bb48
bb48:
  %t145 = load i1, ptr %l75, !tbaa !21
  br i1 %t145, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb52
bb50:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l5, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Call", ptr %t147, i32 0, i32 1
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  %t153 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprsLeave(ptr %v0, ptr %v1, ptr %t146, { i64, ptr } %t150)
  store i1 %t153, ptr %l84
  br label %bb51
bb51:
  %t154 = load i1, ptr %l84, !tbaa !21
  store i1 %t154, ptr %l80, !tbaa !21
  br label %bb52
bb52:
  %t155 = load i1, ptr %l80, !tbaa !21
  store i1 %t155, ptr %l19, !tbaa !21
  br label %bb183
bb53:
  %t156 = load ptr, ptr %l1, !tbaa !29
  store ptr %t156, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t157 = load ptr, ptr %l85, !tbaa !29
  %t158 = icmp ne ptr %t157, null
  br i1 %t158, label %bb54, label %bb55
bb54:
  %t160 = load ptr, ptr %l85, !tbaa !29
  %t161 = load i64, ptr %t160, !range !{i64 0, i64 18}
  %t163 = icmp eq i64 %t161, 7
  store i1 %t163, ptr %l86, !tbaa !21
  br label %bb55
bb55:
  %t164 = load i1, ptr %l86, !tbaa !21
  br i1 %t164, label %bb56, label %bb57
bb56:
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t167 = getelementptr { i64, [5 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t167, i32 0, i32 2
  %t169 = load ptr, ptr %t168
  store ptr %t169, ptr %l6, !tbaa !29
  br label %bb58
bb57:
  br label %bb64
bb58:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l6, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Make", ptr %t172, i32 0, i32 2
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  %t178 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprsLeave(ptr %v0, ptr %v1, ptr %t171, { i64, ptr } %t175)
  store i1 %t178, ptr %l94
  br label %bb59
bb59:
  %t179 = load i1, ptr %l94, !tbaa !21
  br i1 %t179, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb63
bb61:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load ptr, ptr %l6, !tbaa !29
  %t183 = getelementptr %"compiler/typed:Make", ptr %t181, i32 0, i32 3
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t187 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t180, ptr %t184)
  store i1 %t187, ptr %l99
  br label %bb62
bb62:
  %t188 = load i1, ptr %l99, !tbaa !21
  store i1 %t188, ptr %l95, !tbaa !21
  br label %bb63
bb63:
  %t189 = load i1, ptr %l95, !tbaa !21
  store i1 %t189, ptr %l19, !tbaa !21
  br label %bb183
bb64:
  %t190 = load ptr, ptr %l1, !tbaa !29
  store ptr %t190, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t191 = load ptr, ptr %l100, !tbaa !29
  %t192 = icmp ne ptr %t191, null
  br i1 %t192, label %bb65, label %bb66
bb65:
  %t194 = load ptr, ptr %l100, !tbaa !29
  %t195 = load i64, ptr %t194, !range !{i64 0, i64 18}
  %t197 = icmp eq i64 %t195, 8
  store i1 %t197, ptr %l101, !tbaa !21
  br label %bb66
bb66:
  %t198 = load i1, ptr %l101, !tbaa !21
  br i1 %t198, label %bb67, label %bb68
bb67:
  %t199 = load ptr, ptr %l1, !tbaa !29
  %t201 = getelementptr { i64, [5 x i64] }, ptr %t199, i32 0, i32 1
  %t202 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t201, i32 0, i32 2
  %t203 = load ptr, ptr %t202
  store ptr %t203, ptr %l7, !tbaa !29
  br label %bb69
bb68:
  br label %bb75
bb69:
  store %olang.scope zeroinitializer, ptr %s7
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load ptr, ptr %l7, !tbaa !29
  %t208 = getelementptr %"compiler/typed:Collect", ptr %t206, i32 0, i32 0
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t212 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t205, ptr %t209)
  store i1 %t212, ptr %l109
  br label %bb70
bb70:
  %t213 = load i1, ptr %l109, !tbaa !21
  br i1 %t213, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l110, !tbaa !21
  br label %bb74
bb72:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load ptr, ptr %l7, !tbaa !29
  %t217 = getelementptr %"compiler/typed:Collect", ptr %t215, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t221 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eloopLeaves(ptr %v0, ptr %v1, ptr %s7, ptr %t214, ptr %t218, ptr null)
  store i1 %t221, ptr %l114
  br label %bb73
bb73:
  %t222 = load i1, ptr %l114, !tbaa !21
  store i1 %t222, ptr %l110, !tbaa !21
  br label %bb74
bb74:
  %t223 = load i1, ptr %l110, !tbaa !21
  store i1 %t223, ptr %l19, !tbaa !21
  call void @__olang_scope_close(ptr %s7)
  br label %bb183
bb75:
  %t224 = load ptr, ptr %l1, !tbaa !29
  store ptr %t224, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t225 = load ptr, ptr %l115, !tbaa !29
  %t226 = icmp ne ptr %t225, null
  br i1 %t226, label %bb76, label %bb77
bb76:
  %t228 = load ptr, ptr %l115, !tbaa !29
  %t229 = load i64, ptr %t228, !range !{i64 0, i64 18}
  %t231 = icmp eq i64 %t229, 9
  store i1 %t231, ptr %l116, !tbaa !21
  br label %bb77
bb77:
  %t232 = load i1, ptr %l116, !tbaa !21
  br i1 %t232, label %bb78, label %bb79
bb78:
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t235 = getelementptr { i64, [5 x i64] }, ptr %t233, i32 0, i32 1
  %t236 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t235, i32 0, i32 4
  %t237 = load { i64, ptr }, ptr %t236
  store { i64, ptr } %t237, ptr %l8, !tbaa !27
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t243 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprsLeave(ptr %v0, ptr %v1, ptr %t239, { i64, ptr } %t240)
  store i1 %t243, ptr %l123
  br label %bb81
bb81:
  %t244 = load i1, ptr %l123, !tbaa !21
  store i1 %t244, ptr %l19, !tbaa !21
  br label %bb183
bb82:
  %t245 = load ptr, ptr %l1, !tbaa !29
  store ptr %t245, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t246 = load ptr, ptr %l124, !tbaa !29
  %t247 = icmp ne ptr %t246, null
  br i1 %t247, label %bb83, label %bb84
bb83:
  %t249 = load ptr, ptr %l124, !tbaa !29
  %t250 = load i64, ptr %t249, !range !{i64 0, i64 18}
  %t252 = icmp eq i64 %t250, 10
  store i1 %t252, ptr %l125, !tbaa !21
  br label %bb84
bb84:
  %t253 = load i1, ptr %l125, !tbaa !21
  br i1 %t253, label %bb85, label %bb86
bb85:
  %t254 = load ptr, ptr %l1, !tbaa !29
  %t256 = getelementptr { i64, [5 x i64] }, ptr %t254, i32 0, i32 1
  %t257 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t256, i32 0, i32 2
  %t258 = load ptr, ptr %t257
  store ptr %t258, ptr %l9, !tbaa !29
  br label %bb87
bb86:
  br label %bb97
bb87:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load ptr, ptr %l9, !tbaa !29
  %t263 = getelementptr %"compiler/typed:Slice", ptr %t261, i32 0, i32 0
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t267 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eplaceLeaves(ptr %v0, ptr %v1, ptr %t260, ptr %t264)
  store i1 %t267, ptr %l133
  br label %bb88
bb88:
  %t268 = load i1, ptr %l133, !tbaa !21
  br i1 %t268, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb92
bb90:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load ptr, ptr %l9, !tbaa !29
  %t272 = getelementptr %"compiler/typed:Slice", ptr %t270, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t277 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t269, ptr %t273)
  store i1 %t277, ptr %l139
  br label %bb91
bb91:
  %t278 = load i1, ptr %l139, !tbaa !21
  store i1 %t278, ptr %l134, !tbaa !21
  br label %bb92
bb92:
  %t279 = load i1, ptr %l134, !tbaa !21
  br i1 %t279, label %bb93, label %bb94
bb93:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb96
bb94:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l9, !tbaa !29
  %t283 = getelementptr %"compiler/typed:Slice", ptr %t281, i32 0, i32 2
  %t284 = load ptr, ptr %t283, !tbaa !29
  %t288 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t280, ptr %t284)
  store i1 %t288, ptr %l145
  br label %bb95
bb95:
  %t289 = load i1, ptr %l145, !tbaa !21
  store i1 %t289, ptr %l140, !tbaa !21
  br label %bb96
bb96:
  %t290 = load i1, ptr %l140, !tbaa !21
  store i1 %t290, ptr %l19, !tbaa !21
  br label %bb183
bb97:
  %t291 = load ptr, ptr %l1, !tbaa !29
  store ptr %t291, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t292 = load ptr, ptr %l146, !tbaa !29
  %t293 = icmp ne ptr %t292, null
  br i1 %t293, label %bb98, label %bb99
bb98:
  %t295 = load ptr, ptr %l146, !tbaa !29
  %t296 = load i64, ptr %t295, !range !{i64 0, i64 18}
  %t298 = icmp eq i64 %t296, 11
  store i1 %t298, ptr %l147, !tbaa !21
  br label %bb99
bb99:
  %t299 = load i1, ptr %l147, !tbaa !21
  br i1 %t299, label %bb100, label %bb101
bb100:
  %t300 = load ptr, ptr %l1, !tbaa !29
  %t302 = getelementptr { i64, [5 x i64] }, ptr %t300, i32 0, i32 1
  %t303 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t302, i32 0, i32 2
  %t304 = load ptr, ptr %t303
  store ptr %t304, ptr %l10, !tbaa !29
  br label %bb102
bb101:
  br label %bb112
bb102:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load ptr, ptr %l10, !tbaa !29
  %t309 = getelementptr %"compiler/typed:Cond", ptr %t307, i32 0, i32 0
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t314 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t306, ptr %t310)
  store i1 %t314, ptr %l156
  br label %bb103
bb103:
  %t315 = load i1, ptr %l156, !tbaa !21
  br i1 %t315, label %bb104, label %bb105
bb104:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb107
bb105:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load ptr, ptr %l10, !tbaa !29
  %t319 = getelementptr %"compiler/typed:Cond", ptr %t317, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t323 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t316, ptr %t320)
  store i1 %t323, ptr %l161
  br label %bb106
bb106:
  %t324 = load i1, ptr %l161, !tbaa !21
  store i1 %t324, ptr %l157, !tbaa !21
  br label %bb107
bb107:
  %t325 = load i1, ptr %l157, !tbaa !21
  br i1 %t325, label %bb108, label %bb109
bb108:
  store i1 true, ptr %l162, !tbaa !21
  br label %bb111
bb109:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load ptr, ptr %l10, !tbaa !29
  %t329 = getelementptr %"compiler/typed:Cond", ptr %t327, i32 0, i32 2
  %t330 = load ptr, ptr %t329, !tbaa !29
  %t334 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t326, ptr %t330)
  store i1 %t334, ptr %l167
  br label %bb110
bb110:
  %t335 = load i1, ptr %l167, !tbaa !21
  store i1 %t335, ptr %l162, !tbaa !21
  br label %bb111
bb111:
  %t336 = load i1, ptr %l162, !tbaa !21
  store i1 %t336, ptr %l19, !tbaa !21
  br label %bb183
bb112:
  %t337 = load ptr, ptr %l1, !tbaa !29
  store ptr %t337, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t338 = load ptr, ptr %l168, !tbaa !29
  %t339 = icmp ne ptr %t338, null
  br i1 %t339, label %bb113, label %bb114
bb113:
  %t341 = load ptr, ptr %l168, !tbaa !29
  %t342 = load i64, ptr %t341, !range !{i64 0, i64 18}
  %t344 = icmp eq i64 %t342, 12
  store i1 %t344, ptr %l169, !tbaa !21
  br label %bb114
bb114:
  %t345 = load i1, ptr %l169, !tbaa !21
  br i1 %t345, label %bb115, label %bb116
bb115:
  %t346 = load ptr, ptr %l1, !tbaa !29
  %t348 = getelementptr { i64, [5 x i64] }, ptr %t346, i32 0, i32 1
  %t349 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t348, i32 0, i32 2
  %t350 = load ptr, ptr %t349
  store ptr %t350, ptr %l11, !tbaa !29
  br label %bb117
bb116:
  br label %bb123
bb117:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load ptr, ptr %l11, !tbaa !29
  %t355 = getelementptr %"compiler/typed:Seq", ptr %t353, i32 0, i32 0
  %t356 = load { i64, ptr }, ptr %t355, !tbaa !27
  %t359 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtsLeave(ptr %v0, ptr %v1, ptr %t352, { i64, ptr } %t356)
  store i1 %t359, ptr %l177
  br label %bb118
bb118:
  %t360 = load i1, ptr %l177, !tbaa !21
  br i1 %t360, label %bb119, label %bb120
bb119:
  store i1 true, ptr %l178, !tbaa !21
  br label %bb122
bb120:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load ptr, ptr %l11, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Seq", ptr %t362, i32 0, i32 1
  %t365 = load ptr, ptr %t364, !tbaa !29
  %t368 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t361, ptr %t365)
  store i1 %t368, ptr %l182
  br label %bb121
bb121:
  %t369 = load i1, ptr %l182, !tbaa !21
  store i1 %t369, ptr %l178, !tbaa !21
  br label %bb122
bb122:
  %t370 = load i1, ptr %l178, !tbaa !21
  store i1 %t370, ptr %l19, !tbaa !21
  br label %bb183
bb123:
  %t371 = load ptr, ptr %l1, !tbaa !29
  store ptr %t371, ptr %l183, !tbaa !29
  store i1 false, ptr %l184, !tbaa !21
  %t372 = load ptr, ptr %l183, !tbaa !29
  %t373 = icmp ne ptr %t372, null
  br i1 %t373, label %bb124, label %bb125
bb124:
  %t375 = load ptr, ptr %l183, !tbaa !29
  %t376 = load i64, ptr %t375, !range !{i64 0, i64 18}
  %t378 = icmp eq i64 %t376, 13
  store i1 %t378, ptr %l184, !tbaa !21
  br label %bb125
bb125:
  %t379 = load i1, ptr %l184, !tbaa !21
  br i1 %t379, label %bb126, label %bb127
bb126:
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = getelementptr { i64, [5 x i64] }, ptr %t380, i32 0, i32 1
  %t383 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t382, i32 0, i32 2
  %t384 = load ptr, ptr %t383
  store ptr %t384, ptr %l12, !tbaa !29
  br label %bb128
bb127:
  br label %bb144
bb128:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load ptr, ptr %l12, !tbaa !29
  %t389 = getelementptr %"compiler/typed:Match", ptr %t387, i32 0, i32 0
  %t390 = load { i64, ptr }, ptr %t389, !tbaa !27
  %t393 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtsLeave(ptr %v0, ptr %v1, ptr %t386, { i64, ptr } %t390)
  store i1 %t393, ptr %l192
  br label %bb129
bb129:
  %t394 = load i1, ptr %l192, !tbaa !21
  br i1 %t394, label %bb130, label %bb131
bb130:
  store i1 true, ptr %l193, !tbaa !21
  br label %bb133
bb131:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load ptr, ptr %l12, !tbaa !29
  %t398 = getelementptr %"compiler/typed:Match", ptr %t396, i32 0, i32 1
  %t399 = load { i64, ptr }, ptr %t398, !tbaa !27
  %t402 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2earmsLeave(ptr %v0, ptr %v1, ptr %t395, { i64, ptr } %t399)
  store i1 %t402, ptr %l197
  br label %bb132
bb132:
  %t403 = load i1, ptr %l197, !tbaa !21
  store i1 %t403, ptr %l193, !tbaa !21
  br label %bb133
bb133:
  %t404 = load i1, ptr %l193, !tbaa !21
  br i1 %t404, label %bb134, label %bb135
bb134:
  store i1 true, ptr %l198, !tbaa !21
  br label %bb143
bb135:
  %t405 = load ptr, ptr %l12, !tbaa !29
  %t407 = getelementptr %"compiler/typed:Match", ptr %t405, i32 0, i32 2
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t410 = icmp eq ptr %t408, null
  %t412 = xor i1 %t410, true
  br i1 %t412, label %bb136, label %bb137
bb136:
  %t414 = load ptr, ptr %l0, !tbaa !29
  store ptr %t414, ptr %l204, !tbaa !29
  %t415 = load ptr, ptr %l12, !tbaa !29
  %t417 = getelementptr %"compiler/typed:Match", ptr %t415, i32 0, i32 2
  %t418 = load ptr, ptr %t417, !tbaa !29
  %t420 = icmp eq ptr %t418, null
  br i1 %t420, label %bb138, label %bb139
bb137:
  store i1 false, ptr %l203, !tbaa !21
  br label %bb142
bb138:
  call void @__olang_check_failed(ptr @olang_loc_b80660129801afa0_e660219d512f014)
  unreachable
bb139:
  br label %bb140
bb140:
  %t422 = load ptr, ptr %l12, !tbaa !29
  %t424 = getelementptr %"compiler/typed:Match", ptr %t422, i32 0, i32 2
  %t425 = load ptr, ptr %t424, !tbaa !29
  %t426 = load ptr, ptr %l204, !tbaa !29
  %t428 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2earmLeaves(ptr %v0, ptr %v1, ptr %t426, ptr %t425)
  store i1 %t428, ptr %l210
  br label %bb141
bb141:
  %t429 = load i1, ptr %l210, !tbaa !21
  store i1 %t429, ptr %l203, !tbaa !21
  br label %bb142
bb142:
  %t430 = load i1, ptr %l203, !tbaa !21
  store i1 %t430, ptr %l198, !tbaa !21
  br label %bb143
bb143:
  %t431 = load i1, ptr %l198, !tbaa !21
  store i1 %t431, ptr %l19, !tbaa !21
  br label %bb183
bb144:
  %t432 = load ptr, ptr %l1, !tbaa !29
  store ptr %t432, ptr %l211, !tbaa !29
  store i1 false, ptr %l212, !tbaa !21
  %t433 = load ptr, ptr %l211, !tbaa !29
  %t434 = icmp ne ptr %t433, null
  br i1 %t434, label %bb145, label %bb146
bb145:
  %t436 = load ptr, ptr %l211, !tbaa !29
  %t437 = load i64, ptr %t436, !range !{i64 0, i64 18}
  %t439 = icmp eq i64 %t437, 14
  store i1 %t439, ptr %l212, !tbaa !21
  br label %bb146
bb146:
  %t440 = load i1, ptr %l212, !tbaa !21
  br i1 %t440, label %bb147, label %bb148
bb147:
  %t441 = load ptr, ptr %l1, !tbaa !29
  %t443 = getelementptr { i64, [5 x i64] }, ptr %t441, i32 0, i32 1
  %t444 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t443, i32 0, i32 2
  %t445 = load ptr, ptr %t444
  store ptr %t445, ptr %l13, !tbaa !29
  br label %bb149
bb148:
  br label %bb168
bb149:
  %t447 = load ptr, ptr %l13, !tbaa !29
  %t449 = getelementptr %"compiler/typed:Try", ptr %t447, i32 0, i32 2
  %t450 = load i1, ptr %t449, !tbaa !21
  %t452 = xor i1 %t450, true
  br i1 %t452, label %bb150, label %bb151
bb150:
  %t454 = load ptr, ptr %l13, !tbaa !29
  %t456 = getelementptr %"compiler/typed:Try", ptr %t454, i32 0, i32 3
  %t457 = load i1, ptr %t456, !tbaa !21
  %t459 = xor i1 %t457, true
  store i1 %t459, ptr %l220, !tbaa !21
  br label %bb152
bb151:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb152
bb152:
  %t461 = load i1, ptr %l220, !tbaa !21
  br i1 %t461, label %bb153, label %bb154
bb153:
  %t462 = load ptr, ptr %l13, !tbaa !29
  %t464 = getelementptr %"compiler/typed:Try", ptr %t462, i32 0, i32 4
  %t465 = load i1, ptr %t464, !tbaa !21
  store i1 %t465, ptr %l224, !tbaa !21
  br label %bb155
bb154:
  store i1 false, ptr %l224, !tbaa !21
  br label %bb155
bb155:
  %t467 = load i1, ptr %l224, !tbaa !21
  br i1 %t467, label %bb156, label %bb157
bb156:
  %t468 = load ptr, ptr %l13, !tbaa !29
  %t470 = getelementptr %"compiler/typed:Try", ptr %t468, i32 0, i32 1
  %t471 = load { i64, ptr }, ptr %t470, !tbaa !27
  %t473 = call i1 @compiler_2ftyped_2eclausesTakeAll(ptr %v1, { i64, ptr } %t471)
  store i1 %t473, ptr %l230
  br label %bb158
bb157:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb159
bb158:
  %t474 = load i1, ptr %l230, !tbaa !21
  %t475 = xor i1 %t474, true
  store i1 %t475, ptr %l227, !tbaa !21
  br label %bb159
bb159:
  %t477 = load i1, ptr %l227, !tbaa !21
  br i1 %t477, label %bb160, label %bb161
bb160:
  store i1 true, ptr %l232, !tbaa !21
  br label %bb163
bb161:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load ptr, ptr %l13, !tbaa !29
  %t481 = getelementptr %"compiler/typed:Try", ptr %t479, i32 0, i32 0
  %t482 = load ptr, ptr %t481, !tbaa !29
  %t485 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t478, ptr %t482)
  store i1 %t485, ptr %l236
  br label %bb162
bb162:
  %t486 = load i1, ptr %l236, !tbaa !21
  store i1 %t486, ptr %l232, !tbaa !21
  br label %bb163
bb163:
  %t487 = load i1, ptr %l232, !tbaa !21
  br i1 %t487, label %bb164, label %bb165
bb164:
  store i1 true, ptr %l237, !tbaa !21
  br label %bb167
bb165:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load ptr, ptr %l13, !tbaa !29
  %t491 = getelementptr %"compiler/typed:Try", ptr %t489, i32 0, i32 1
  %t492 = load { i64, ptr }, ptr %t491, !tbaa !27
  %t495 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eclausesLeave(ptr %v0, ptr %v1, ptr %t488, { i64, ptr } %t492)
  store i1 %t495, ptr %l241
  br label %bb166
bb166:
  %t496 = load i1, ptr %l241, !tbaa !21
  store i1 %t496, ptr %l237, !tbaa !21
  br label %bb167
bb167:
  %t497 = load i1, ptr %l237, !tbaa !21
  store i1 %t497, ptr %l19, !tbaa !21
  br label %bb183
bb168:
  %t498 = load ptr, ptr %l1, !tbaa !29
  store ptr %t498, ptr %l242, !tbaa !29
  store i1 false, ptr %l243, !tbaa !21
  %t499 = load ptr, ptr %l242, !tbaa !29
  %t500 = icmp ne ptr %t499, null
  br i1 %t500, label %bb169, label %bb170
bb169:
  %t502 = load ptr, ptr %l242, !tbaa !29
  %t503 = load i64, ptr %t502, !range !{i64 0, i64 18}
  %t505 = icmp eq i64 %t503, 16
  store i1 %t505, ptr %l243, !tbaa !21
  br label %bb170
bb170:
  %t506 = load i1, ptr %l243, !tbaa !21
  br i1 %t506, label %bb171, label %bb172
bb171:
  %t507 = load ptr, ptr %l1, !tbaa !29
  %t509 = getelementptr { i64, [5 x i64] }, ptr %t507, i32 0, i32 1
  %t510 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t509, i32 0, i32 2
  %t511 = load ptr, ptr %t510
  store ptr %t511, ptr %l14, !tbaa !29
  br label %bb173
bb172:
  br label %bb175
bb173:
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load ptr, ptr %l14, !tbaa !29
  %t516 = getelementptr %"compiler/typed:Text", ptr %t514, i32 0, i32 0
  %t517 = load { i64, ptr }, ptr %t516, !tbaa !27
  %t520 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2epiecesLeave(ptr %v0, ptr %v1, ptr %t513, { i64, ptr } %t517)
  store i1 %t520, ptr %l251
  br label %bb174
bb174:
  %t521 = load i1, ptr %l251, !tbaa !21
  store i1 %t521, ptr %l19, !tbaa !21
  br label %bb183
bb175:
  %t522 = load ptr, ptr %l1, !tbaa !29
  store ptr %t522, ptr %l252, !tbaa !29
  store i1 false, ptr %l253, !tbaa !21
  %t523 = load ptr, ptr %l252, !tbaa !29
  %t524 = icmp ne ptr %t523, null
  br i1 %t524, label %bb176, label %bb177
bb176:
  %t526 = load ptr, ptr %l252, !tbaa !29
  %t527 = load i64, ptr %t526, !range !{i64 0, i64 18}
  %t529 = icmp eq i64 %t527, 17
  store i1 %t529, ptr %l253, !tbaa !21
  br label %bb177
bb177:
  %t530 = load i1, ptr %l253, !tbaa !21
  br i1 %t530, label %bb178, label %bb179
bb178:
  %t531 = load ptr, ptr %l1, !tbaa !29
  %t533 = getelementptr { i64, [5 x i64] }, ptr %t531, i32 0, i32 1
  %t534 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t533, i32 0, i32 2
  %t535 = load ptr, ptr %t534
  store ptr %t535, ptr %l15, !tbaa !29
  br label %bb180
bb179:
  br label %bb182
bb180:
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t538 = load ptr, ptr %l15, !tbaa !29
  %t542 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t537, ptr %t538)
  store i1 %t542, ptr %l261
  br label %bb181
bb181:
  %t543 = load i1, ptr %l261, !tbaa !21
  store i1 %t543, ptr %l19, !tbaa !21
  br label %bb183
bb182:
  call void @__olang_check_failed(ptr @olang_loc_4e96dfdde30f8206_e09e7eb6a314a8ba)
  unreachable
bb183:
  %t544 = load i1, ptr %l19, !tbaa !21
  store i1 %t544, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2epiecesLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l30 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
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
  br label %bb26
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l18, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  store ptr %t30, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t31 = load ptr, ptr %l21, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l21, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 2}
  %t37 = icmp eq i64 %t35, 1
  store i1 %t37, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l22, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { ptr }, ptr %t41, i32 0, i32 0
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l6, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t46 = load ptr, ptr %l6, !tbaa !29
  %t50 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %t46)
  store i1 %t50, ptr %l30
  br label %bb13
bb13:
  %t51 = load i1, ptr %l30, !tbaa !21
  br i1 %t51, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb24
bb17:
  %t53 = load ptr, ptr %l5, !tbaa !29
  store ptr %t53, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t54 = load ptr, ptr %l32, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l32, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 2}
  %t60 = icmp eq i64 %t58, 0
  store i1 %t60, ptr %l33, !tbaa !21
  br label %bb19
bb19:
  %t61 = load i1, ptr %l33, !tbaa !21
  br i1 %t61, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_4c49c2cc391943fc_885b7fff3b4a3180)
  unreachable
bb24:
  br label %bb25
bb25:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l3, !tbaa !24
  br label %bb4
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtsLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
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
  br label %bb13
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
  %t34 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  store i1 %t34, ptr %l22
  br label %bb8
bb8:
  %t35 = load i1, ptr %l22, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l22 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  %t4 = sub i64 %t2, 1
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Block", ptr %t5, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t12 = sext i32 %t8 to i64
  %t13 = call i64 @__olang_fmt_i64(ptr null, i64 %t12)
  %t14 = add i64 %t10, %t13
  %t15 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t9, i64 %t10)
  %t16 = getelementptr i8, ptr %t15, i64 %t10
  %t17 = call i64 @__olang_fmt_i64(ptr %t16, i64 %t12)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t15, 1
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t22 = extractvalue { i64, ptr } %t19, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s0, ptr %t1, i64 %t4, { i64, ptr } %t26)
  br label %bb1
bb1:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Block", ptr %t30, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t47, ptr %l22, !tbaa !27
  %t48 = load i64, ptr %l4, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 %t48
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %t55, ptr %t53, i64 %t57)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t61 = load i64, ptr %l4, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l4, !tbaa !24
  br label %bb2
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i64
  %l35 = alloca i32
  %l39 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l43 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i64
  %l54 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i64
  %l72 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l76 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i64
  %l87 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i64
  %l144 = alloca { i64, ptr }
  %l148 = alloca ptr
  %l149 = alloca i1
  %l154 = alloca ptr
  %l155 = alloca i64
  %l159 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l168 = alloca ptr
  %l169 = alloca i1
  %l176 = alloca ptr
  %l177 = alloca i64
  %l179 = alloca ptr
  %l183 = alloca { i64, ptr }
  %l187 = alloca ptr
  %l188 = alloca i1
  %l193 = alloca ptr
  %l194 = alloca i64
  %l198 = alloca { i64, ptr }
  %l201 = alloca ptr
  %l202 = alloca i1
  %l207 = alloca ptr
  %l208 = alloca i64
  %l209 = alloca i32
  %l211 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l216 = alloca ptr
  %l217 = alloca i1
  %l222 = alloca ptr
  %l223 = alloca i64
  %l227 = alloca { i64, ptr }
  %l230 = alloca ptr
  %l231 = alloca i1
  %l240 = alloca ptr
  %l241 = alloca i1
  %l252 = alloca ptr
  %l253 = alloca i1
  %l258 = alloca ptr
  %l259 = alloca i64
  %l262 = alloca { i64, ptr }
  %l270 = alloca ptr
  %l271 = alloca i1
  %l276 = alloca ptr
  %l277 = alloca i64
  %l282 = alloca { i64, ptr }
  %l287 = alloca ptr
  %l288 = alloca i1
  %l293 = alloca ptr
  %l294 = alloca i64
  %l298 = alloca { i64, ptr }
  %l301 = alloca ptr
  %l302 = alloca i1
  %l307 = alloca ptr
  %l308 = alloca i64
  %l309 = alloca ptr
  %l314 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.builder
  %s22room = alloca [64 x i8], align 8
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s34 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t2 = load ptr, ptr %l25, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l25, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l26, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l26, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l33, !tbaa !29
  %t23 = load i64, ptr %l2, !tbaa !24
  store i64 %t23, ptr %l34, !tbaa !24
  %t24 = load i32, ptr %l3, !tbaa !23
  store i32 %t24, ptr %l35, !tbaa !23
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t30 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s1, ptr %v2, ptr %t25, ptr %t26)
  store { i64, ptr } %t30, ptr %l39
  br label %bb6
bb6:
  %t31 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t33 = load i32, ptr %l35, !tbaa !23
  %t34 = sext i32 %t33 to i64
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t34)
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = add i64 %t39, %t42
  %t44 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t31, i64 %t32)
  %t45 = getelementptr i8, ptr %t44, i64 %t32
  %t46 = call i64 @__olang_fmt_i64(ptr %t45, i64 %t34)
  %t47 = getelementptr i8, ptr %t45, i64 %t35
  call void @olang_textcopy(ptr %t47, ptr %t37, i64 %t38)
  %t48 = getelementptr i8, ptr %t47, i64 %t38
  call void @olang_textcopy(ptr %t48, ptr %t41, i64 %t42)
  %t49 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t44, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = extractvalue { i64, ptr } %t50, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load ptr, ptr %l33, !tbaa !29
  %t59 = load i64, ptr %l34, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s1, ptr %t58, i64 %t59, { i64, ptr } %t57)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %bb163
bb8:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t62 = load ptr, ptr %l42, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb9, label %bb10
bb9:
  %t65 = load ptr, ptr %l42, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 17}
  %t68 = icmp eq i64 %t66, 1
  store i1 %t68, ptr %l43, !tbaa !21
  br label %bb10
bb10:
  %t69 = load i1, ptr %l43, !tbaa !21
  br i1 %t69, label %bb11, label %bb12
bb11:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t72, i32 0, i32 1
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l5, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [3 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l6, !tbaa !29
  br label %bb13
bb12:
  br label %bb17
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l50, !tbaa !29
  %t83 = load i64, ptr %l2, !tbaa !24
  store i64 %t83, ptr %l51, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l5, !tbaa !29
  %t88 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %s3, ptr %v2, ptr %t84, ptr %t85)
  store { i64, ptr } %t88, ptr %l54
  br label %bb14
bb14:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t94 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s3, ptr %v2, ptr %t89, ptr %t90)
  store { i64, ptr } %t94, ptr %l58
  br label %bb15
bb15:
  %t95 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t97 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 1
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t100 = add i64 %t96, %t99
  %t101 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t103 = add i64 %t100, %t102
  %t104 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = add i64 %t103, %t106
  %t108 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t107)
  call void @olang_textcopy(ptr %t108, ptr %t95, i64 %t96)
  %t109 = getelementptr i8, ptr %t108, i64 %t96
  call void @olang_textcopy(ptr %t109, ptr %t98, i64 %t99)
  %t110 = getelementptr i8, ptr %t109, i64 %t99
  call void @olang_textcopy(ptr %t110, ptr %t101, i64 %t102)
  %t111 = getelementptr i8, ptr %t110, i64 %t102
  call void @olang_textcopy(ptr %t111, ptr %t105, i64 %t106)
  %t112 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t108, 1
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = extractvalue { i64, ptr } %t113, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t121 = load ptr, ptr %l50, !tbaa !29
  %t122 = load i64, ptr %l51, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s3, ptr %t121, i64 %t122, { i64, ptr } %t120)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb163
bb17:
  %t124 = load ptr, ptr %l1, !tbaa !29
  store ptr %t124, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t125 = load ptr, ptr %l61, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb18, label %bb19
bb18:
  %t128 = load ptr, ptr %l61, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 17}
  %t131 = icmp eq i64 %t129, 2
  store i1 %t131, ptr %l62, !tbaa !21
  br label %bb19
bb19:
  %t132 = load i1, ptr %l62, !tbaa !21
  br i1 %t132, label %bb20, label %bb21
bb20:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr { i64, [3 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", ptr }, ptr %t135, i32 0, i32 1
  %t137 = load ptr, ptr %t136
  store ptr %t137, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb25
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l67, !tbaa !29
  %t140 = load i64, ptr %l2, !tbaa !24
  store i64 %t140, ptr %l68, !tbaa !24
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l7, !tbaa !29
  %t146 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s5, ptr %v2, ptr %t141, ptr %t142)
  store { i64, ptr } %t146, ptr %l72
  br label %bb23
bb23:
  %t147 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t149 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t152 = add i64 %t148, %t151
  %t153 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t152)
  call void @olang_textcopy(ptr %t153, ptr %t147, i64 %t148)
  %t154 = getelementptr i8, ptr %t153, i64 %t148
  call void @olang_textcopy(ptr %t154, ptr %t150, i64 %t151)
  %t155 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t153, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = extractvalue { i64, ptr } %t156, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t164 = load ptr, ptr %l67, !tbaa !29
  %t165 = load i64, ptr %l68, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s5, ptr %t164, i64 %t165, { i64, ptr } %t163)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s5)
  br label %bb163
bb25:
  %t167 = load ptr, ptr %l1, !tbaa !29
  store ptr %t167, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t168 = load ptr, ptr %l75, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb26, label %bb27
bb26:
  %t171 = load ptr, ptr %l75, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 17}
  %t174 = icmp eq i64 %t172, 3
  store i1 %t174, ptr %l76, !tbaa !21
  br label %bb27
bb27:
  %t175 = load i1, ptr %l76, !tbaa !21
  br i1 %t175, label %bb28, label %bb29
bb28:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr { i64, [3 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", ptr }, ptr %t178, i32 0, i32 1
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l8, !tbaa !29
  br label %bb30
bb29:
  br label %bb42
bb30:
  store %olang.scope zeroinitializer, ptr %s7
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l81, !tbaa !29
  %t183 = load i64, ptr %l2, !tbaa !24
  store i64 %t183, ptr %l82, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load ptr, ptr %l8, !tbaa !29
  %t187 = getelementptr %"compiler/typed:If", ptr %t185, i32 0, i32 0
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t192 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s7, ptr %v2, ptr %t184, ptr %t188)
  store { i64, ptr } %t192, ptr %l87
  br label %bb31
bb31:
  %t193 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t195 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t195, 1
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t198 = add i64 %t194, %t197
  %t199 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t198)
  call void @olang_textcopy(ptr %t199, ptr %t193, i64 %t194)
  %t200 = getelementptr i8, ptr %t199, i64 %t194
  call void @olang_textcopy(ptr %t200, ptr %t196, i64 %t197)
  %t201 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t199, 1
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t205 = extractvalue { i64, ptr } %t202, 1
  %t206 = mul i64 %t204, 1
  %t207 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t206)
  call void @llvm.memcpy.p0.p0.i64(ptr %t207, ptr %t205, i64 %t206, i1 false)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  %t210 = load ptr, ptr %l81, !tbaa !29
  %t211 = load i64, ptr %l82, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s7, ptr %t210, i64 %t211, { i64, ptr } %t209)
  br label %bb32
bb32:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l8, !tbaa !29
  %t216 = getelementptr %"compiler/typed:If", ptr %t214, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t218 = load i64, ptr %l2, !tbaa !24
  %t220 = add i64 %t218, 1
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t213, ptr %t217, i64 %t220)
  br label %bb33
bb33:
  %t224 = load ptr, ptr %l8, !tbaa !29
  %t226 = getelementptr %"compiler/typed:If", ptr %t224, i32 0, i32 2
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = icmp eq ptr %t227, null
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s9
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s9, ptr %t233, i64 %t234, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb36
bb35:
  br label %bb41
bb36:
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l101, !tbaa !29
  %t238 = load ptr, ptr %l8, !tbaa !29
  %t240 = getelementptr %"compiler/typed:If", ptr %t238, i32 0, i32 2
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t243 = icmp eq ptr %t241, null
  br i1 %t243, label %bb37, label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_7b432bbe8f05f1d7_7deffd42aa472253)
  unreachable
bb38:
  br label %bb39
bb39:
  %t245 = load ptr, ptr %l8, !tbaa !29
  %t247 = getelementptr %"compiler/typed:If", ptr %t245, i32 0, i32 2
  %t248 = load ptr, ptr %t247, !tbaa !29
  %t249 = load i64, ptr %l2, !tbaa !24
  %t251 = add i64 %t249, 1
  %t252 = load ptr, ptr %l101, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t252, ptr %t248, i64 %t251)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s9)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s7)
  br label %bb163
bb42:
  %t255 = load ptr, ptr %l1, !tbaa !29
  store ptr %t255, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t256 = load ptr, ptr %l109, !tbaa !29
  %t257 = icmp ne ptr %t256, null
  br i1 %t257, label %bb43, label %bb44
bb43:
  %t259 = load ptr, ptr %l109, !tbaa !29
  %t260 = load i64, ptr %t259, !range !{i64 0, i64 17}
  %t262 = icmp eq i64 %t260, 4
  store i1 %t262, ptr %l110, !tbaa !21
  br label %bb44
bb44:
  %t263 = load i1, ptr %l110, !tbaa !21
  br i1 %t263, label %bb45, label %bb46
bb45:
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t266 = getelementptr { i64, [3 x i64] }, ptr %t264, i32 0, i32 1
  %t267 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t266, i32 0, i32 1
  %t268 = load ptr, ptr %t267
  store ptr %t268, ptr %l9, !tbaa !29
  %t270 = load ptr, ptr %l1, !tbaa !29
  %t272 = getelementptr { i64, [3 x i64] }, ptr %t270, i32 0, i32 1
  %t273 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t272, i32 0, i32 2
  %t274 = load ptr, ptr %t273
  store ptr %t274, ptr %l10, !tbaa !29
  br label %bb47
bb46:
  br label %bb55
bb47:
  store %olang.scope zeroinitializer, ptr %s10
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s10, ptr %t276, i64 %t277, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb48
bb48:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l9, !tbaa !29
  %t282 = load i64, ptr %l2, !tbaa !24
  %t284 = add i64 %t282, 1
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t280, ptr %t281, i64 %t284)
  br label %bb49
bb49:
  %t288 = load ptr, ptr %l10, !tbaa !29
  %t290 = icmp eq ptr %t288, null
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s11
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s11, ptr %t294, i64 %t295, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) })
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load ptr, ptr %l10, !tbaa !29
  %t300 = load i64, ptr %l2, !tbaa !24
  %t302 = add i64 %t300, 1
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t298, ptr %t299, i64 %t302)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s11)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s10)
  br label %bb163
bb55:
  %t306 = load ptr, ptr %l1, !tbaa !29
  store ptr %t306, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t307 = load ptr, ptr %l132, !tbaa !29
  %t308 = icmp ne ptr %t307, null
  br i1 %t308, label %bb56, label %bb57
bb56:
  %t310 = load ptr, ptr %l132, !tbaa !29
  %t311 = load i64, ptr %t310, !range !{i64 0, i64 17}
  %t313 = icmp eq i64 %t311, 5
  store i1 %t313, ptr %l133, !tbaa !21
  br label %bb57
bb57:
  %t314 = load i1, ptr %l133, !tbaa !21
  br i1 %t314, label %bb58, label %bb59
bb58:
  %t315 = load ptr, ptr %l1, !tbaa !29
  %t317 = getelementptr { i64, [3 x i64] }, ptr %t315, i32 0, i32 1
  %t318 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t317, i32 0, i32 1
  %t319 = load i32, ptr %t318, !range !{i32 0, i32 2}
  store i32 %t319, ptr %l11
  %t321 = load ptr, ptr %l1, !tbaa !29
  %t323 = getelementptr { i64, [3 x i64] }, ptr %t321, i32 0, i32 1
  %t324 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t323, i32 0, i32 2
  %t325 = load i32, ptr %t324
  store i32 %t325, ptr %l12, !tbaa !23
  br label %bb60
bb59:
  br label %bb65
bb60:
  store %olang.scope zeroinitializer, ptr %s12
  %t327 = load ptr, ptr %l0, !tbaa !29
  store ptr %t327, ptr %l140, !tbaa !29
  %t328 = load i64, ptr %l2, !tbaa !24
  store i64 %t328, ptr %l141, !tbaa !24
  %t329 = load i32, ptr %l11, !range !{i32 0, i32 2}
  %t331 = trunc i64 0 to i32
  %t332 = icmp eq i32 %t329, %t331
  br i1 %t332, label %bb61, label %bb62
bb61:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l144, !tbaa !27
  br label %bb63
bb62:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l144, !tbaa !27
  br label %bb63
bb63:
  %t334 = load i32, ptr %l12, !tbaa !23
  %t335 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t339 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t340 = add i64 %t337, %t339
  %t342 = sext i32 %t334 to i64
  %t343 = call i64 @__olang_fmt_i64(ptr null, i64 %t342)
  %t344 = add i64 %t340, %t343
  %t345 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t344)
  call void @olang_textcopy(ptr %t345, ptr %t336, i64 %t337)
  %t346 = getelementptr i8, ptr %t345, i64 %t337
  call void @olang_textcopy(ptr %t346, ptr %t338, i64 %t339)
  %t347 = getelementptr i8, ptr %t346, i64 %t339
  %t348 = call i64 @__olang_fmt_i64(ptr %t347, i64 %t342)
  %t349 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t345, 1
  %t352 = extractvalue { i64, ptr } %t350, 0
  %t353 = extractvalue { i64, ptr } %t350, 1
  %t354 = mul i64 %t352, 1
  %t355 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t354)
  call void @llvm.memcpy.p0.p0.i64(ptr %t355, ptr %t353, i64 %t354, i1 false)
  %t356 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t357 = insertvalue { i64, ptr } %t356, ptr %t355, 1
  %t358 = load ptr, ptr %l140, !tbaa !29
  %t359 = load i64, ptr %l141, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s12, ptr %t358, i64 %t359, { i64, ptr } %t357)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s12)
  br label %bb163
bb65:
  %t361 = load ptr, ptr %l1, !tbaa !29
  store ptr %t361, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t362 = load ptr, ptr %l148, !tbaa !29
  %t363 = icmp ne ptr %t362, null
  br i1 %t363, label %bb66, label %bb67
bb66:
  %t365 = load ptr, ptr %l148, !tbaa !29
  %t366 = load i64, ptr %t365, !range !{i64 0, i64 17}
  %t368 = icmp eq i64 %t366, 6
  store i1 %t368, ptr %l149, !tbaa !21
  br label %bb67
bb67:
  %t369 = load i1, ptr %l149, !tbaa !21
  br i1 %t369, label %bb68, label %bb69
bb68:
  %t370 = load ptr, ptr %l1, !tbaa !29
  %t372 = getelementptr { i64, [3 x i64] }, ptr %t370, i32 0, i32 1
  %t373 = getelementptr { %"compiler/source:Span", ptr }, ptr %t372, i32 0, i32 1
  %t374 = load ptr, ptr %t373
  store ptr %t374, ptr %l13, !tbaa !29
  br label %bb70
bb69:
  br label %bb76
bb70:
  store %olang.scope zeroinitializer, ptr %s14
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l154, !tbaa !29
  %t377 = load i64, ptr %l2, !tbaa !24
  store i64 %t377, ptr %l155, !tbaa !24
  %t378 = load ptr, ptr %l13, !tbaa !29
  %t380 = icmp eq ptr %t378, null
  %t382 = xor i1 %t380, true
  br i1 %t382, label %bb71, label %bb72
bb71:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load ptr, ptr %l13, !tbaa !29
  %t389 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s14, ptr %v2, ptr %t384, ptr %t385)
  store { i64, ptr } %t389, ptr %l163
  br label %bb73
bb72:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l159, !tbaa !27
  br label %bb74
bb73:
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t391 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t392 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t392, 1
  %t394 = extractvalue { i64, ptr } %t392, 0
  %t395 = add i64 %t391, %t394
  %t396 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t395)
  call void @olang_textcopy(ptr %t396, ptr %t390, i64 %t391)
  %t397 = getelementptr i8, ptr %t396, i64 %t391
  call void @olang_textcopy(ptr %t397, ptr %t393, i64 %t394)
  %t398 = insertvalue { i64, ptr } undef, i64 %t395, 0
  %t399 = insertvalue { i64, ptr } %t398, ptr %t396, 1
  %t401 = extractvalue { i64, ptr } %t399, 0
  %t402 = extractvalue { i64, ptr } %t399, 1
  %t403 = mul i64 %t401, 1
  %t404 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t403)
  call void @llvm.memcpy.p0.p0.i64(ptr %t404, ptr %t402, i64 %t403, i1 false)
  %t405 = insertvalue { i64, ptr } undef, i64 %t401, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t404, 1
  store { i64, ptr } %t406, ptr %l159, !tbaa !27
  br label %bb74
bb74:
  %t408 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t409 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t410 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t411 = extractvalue { i64, ptr } %t410, 1
  %t412 = extractvalue { i64, ptr } %t410, 0
  %t413 = add i64 %t409, %t412
  %t414 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t413)
  call void @olang_textcopy(ptr %t414, ptr %t408, i64 %t409)
  %t415 = getelementptr i8, ptr %t414, i64 %t409
  call void @olang_textcopy(ptr %t415, ptr %t411, i64 %t412)
  %t416 = insertvalue { i64, ptr } undef, i64 %t413, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t414, 1
  %t419 = extractvalue { i64, ptr } %t417, 0
  %t420 = extractvalue { i64, ptr } %t417, 1
  %t421 = mul i64 %t419, 1
  %t422 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t421)
  call void @llvm.memcpy.p0.p0.i64(ptr %t422, ptr %t420, i64 %t421, i1 false)
  %t423 = insertvalue { i64, ptr } undef, i64 %t419, 0
  %t424 = insertvalue { i64, ptr } %t423, ptr %t422, 1
  %t425 = load ptr, ptr %l154, !tbaa !29
  %t426 = load i64, ptr %l155, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s14, ptr %t425, i64 %t426, { i64, ptr } %t424)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s14)
  br label %bb163
bb76:
  %t428 = load ptr, ptr %l1, !tbaa !29
  store ptr %t428, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t429 = load ptr, ptr %l168, !tbaa !29
  %t430 = icmp ne ptr %t429, null
  br i1 %t430, label %bb77, label %bb78
bb77:
  %t432 = load ptr, ptr %l168, !tbaa !29
  %t433 = load i64, ptr %t432, !range !{i64 0, i64 17}
  %t435 = icmp eq i64 %t433, 7
  store i1 %t435, ptr %l169, !tbaa !21
  br label %bb78
bb78:
  %t436 = load i1, ptr %l169, !tbaa !21
  br i1 %t436, label %bb79, label %bb80
bb79:
  %t437 = load ptr, ptr %l1, !tbaa !29
  %t439 = getelementptr { i64, [3 x i64] }, ptr %t437, i32 0, i32 1
  %t440 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t439, i32 0, i32 1
  %t441 = load i32, ptr %t440
  store i32 %t441, ptr %l14, !tbaa !23
  %t443 = load ptr, ptr %l1, !tbaa !29
  %t445 = getelementptr { i64, [3 x i64] }, ptr %t443, i32 0, i32 1
  %t446 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t445, i32 0, i32 2
  %t447 = load i64, ptr %t446
  store i64 %t447, ptr %l15, !tbaa !24
  br label %bb81
bb80:
  br label %bb84
bb81:
  store %olang.scope zeroinitializer, ptr %s17
  %t449 = load ptr, ptr %l0, !tbaa !29
  store ptr %t449, ptr %l176, !tbaa !29
  %t450 = load i64, ptr %l2, !tbaa !24
  store i64 %t450, ptr %l177, !tbaa !24
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr %"compiler/typed:printer", ptr %t451, i32 0, i32 0
  %t454 = load ptr, ptr %t453, !tbaa !29
  store ptr %t454, ptr %l179, !tbaa !29
  %t455 = load i32, ptr %l14, !tbaa !23
  %t456 = load ptr, ptr %l179, !tbaa !29
  %t457 = call ptr @__olang_scope_or(ptr %v2, ptr %t456)
  %t458 = ptrtoint ptr %t457 to i64
  %t460 = inttoptr i64 %t458 to ptr
  %t462 = inttoptr i64 0 to ptr
  %t463 = load ptr, ptr %l179, !tbaa !29
  %t465 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t460, ptr %s17, ptr %t462, ptr %t463, i32 %t455)
  store { i64, ptr } %t465, ptr %l183
  br label %bb82
bb82:
  %t466 = load i64, ptr %l15, !tbaa !24
  %t467 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t468 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t469 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t470 = extractvalue { i64, ptr } %t469, 1
  %t471 = extractvalue { i64, ptr } %t469, 0
  %t472 = add i64 %t468, %t471
  %t473 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t474 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t475 = add i64 %t472, %t474
  %t477 = call i64 @__olang_fmt_i64(ptr null, i64 %t466)
  %t478 = add i64 %t475, %t477
  %t479 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t478)
  call void @olang_textcopy(ptr %t479, ptr %t467, i64 %t468)
  %t480 = getelementptr i8, ptr %t479, i64 %t468
  call void @olang_textcopy(ptr %t480, ptr %t470, i64 %t471)
  %t481 = getelementptr i8, ptr %t480, i64 %t471
  call void @olang_textcopy(ptr %t481, ptr %t473, i64 %t474)
  %t482 = getelementptr i8, ptr %t481, i64 %t474
  %t483 = call i64 @__olang_fmt_i64(ptr %t482, i64 %t466)
  %t484 = insertvalue { i64, ptr } undef, i64 %t478, 0
  %t485 = insertvalue { i64, ptr } %t484, ptr %t479, 1
  %t487 = extractvalue { i64, ptr } %t485, 0
  %t488 = extractvalue { i64, ptr } %t485, 1
  %t489 = mul i64 %t487, 1
  %t490 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t489)
  call void @llvm.memcpy.p0.p0.i64(ptr %t490, ptr %t488, i64 %t489, i1 false)
  %t491 = insertvalue { i64, ptr } undef, i64 %t487, 0
  %t492 = insertvalue { i64, ptr } %t491, ptr %t490, 1
  %t493 = load ptr, ptr %l176, !tbaa !29
  %t494 = load i64, ptr %l177, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s17, ptr %t493, i64 %t494, { i64, ptr } %t492)
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s17)
  br label %bb163
bb84:
  %t496 = load ptr, ptr %l1, !tbaa !29
  store ptr %t496, ptr %l187, !tbaa !29
  store i1 false, ptr %l188, !tbaa !21
  %t497 = load ptr, ptr %l187, !tbaa !29
  %t498 = icmp ne ptr %t497, null
  br i1 %t498, label %bb85, label %bb86
bb85:
  %t500 = load ptr, ptr %l187, !tbaa !29
  %t501 = load i64, ptr %t500, !range !{i64 0, i64 17}
  %t503 = icmp eq i64 %t501, 8
  store i1 %t503, ptr %l188, !tbaa !21
  br label %bb86
bb86:
  %t504 = load i1, ptr %l188, !tbaa !21
  br i1 %t504, label %bb87, label %bb88
bb87:
  %t505 = load ptr, ptr %l1, !tbaa !29
  %t507 = getelementptr { i64, [3 x i64] }, ptr %t505, i32 0, i32 1
  %t508 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t507, i32 0, i32 1
  %t509 = load ptr, ptr %t508
  store ptr %t509, ptr %l16, !tbaa !29
  br label %bb89
bb88:
  br label %bb92
bb89:
  store %olang.scope zeroinitializer, ptr %s19
  %t511 = load ptr, ptr %l0, !tbaa !29
  store ptr %t511, ptr %l193, !tbaa !29
  %t512 = load i64, ptr %l2, !tbaa !24
  store i64 %t512, ptr %l194, !tbaa !24
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load ptr, ptr %l16, !tbaa !29
  %t518 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s19, ptr %v2, ptr %t513, ptr %t514)
  store { i64, ptr } %t518, ptr %l198
  br label %bb90
bb90:
  %t519 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t520 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t521 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t522 = extractvalue { i64, ptr } %t521, 1
  %t523 = extractvalue { i64, ptr } %t521, 0
  %t524 = add i64 %t520, %t523
  %t525 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t524)
  call void @olang_textcopy(ptr %t525, ptr %t519, i64 %t520)
  %t526 = getelementptr i8, ptr %t525, i64 %t520
  call void @olang_textcopy(ptr %t526, ptr %t522, i64 %t523)
  %t527 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t528 = insertvalue { i64, ptr } %t527, ptr %t525, 1
  %t530 = extractvalue { i64, ptr } %t528, 0
  %t531 = extractvalue { i64, ptr } %t528, 1
  %t532 = mul i64 %t530, 1
  %t533 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t532)
  call void @llvm.memcpy.p0.p0.i64(ptr %t533, ptr %t531, i64 %t532, i1 false)
  %t534 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t533, 1
  %t536 = load ptr, ptr %l193, !tbaa !29
  %t537 = load i64, ptr %l194, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s19, ptr %t536, i64 %t537, { i64, ptr } %t535)
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s19)
  br label %bb163
bb92:
  %t539 = load ptr, ptr %l1, !tbaa !29
  store ptr %t539, ptr %l201, !tbaa !29
  store i1 false, ptr %l202, !tbaa !21
  %t540 = load ptr, ptr %l201, !tbaa !29
  %t541 = icmp ne ptr %t540, null
  br i1 %t541, label %bb93, label %bb94
bb93:
  %t543 = load ptr, ptr %l201, !tbaa !29
  %t544 = load i64, ptr %t543, !range !{i64 0, i64 17}
  %t546 = icmp eq i64 %t544, 9
  store i1 %t546, ptr %l202, !tbaa !21
  br label %bb94
bb94:
  %t547 = load i1, ptr %l202, !tbaa !21
  br i1 %t547, label %bb95, label %bb96
bb95:
  %t548 = load ptr, ptr %l1, !tbaa !29
  %t550 = getelementptr { i64, [3 x i64] }, ptr %t548, i32 0, i32 1
  %t551 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t550, i32 0, i32 1
  %t552 = load i32, ptr %t551, !range !{i32 0, i32 2}
  store i32 %t552, ptr %l17
  br label %bb97
bb96:
  br label %bb101
bb97:
  store %olang.scope zeroinitializer, ptr %s21
  %t554 = load ptr, ptr %l0, !tbaa !29
  store ptr %t554, ptr %l207, !tbaa !29
  %t555 = load i64, ptr %l2, !tbaa !24
  store i64 %t555, ptr %l208, !tbaa !24
  %t556 = load i32, ptr %l17, !range !{i32 0, i32 2}
  store i32 %t556, ptr %l209
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s22
  store ptr %s22room, ptr %s22
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aExitKind(ptr %s22, ptr %l209, i64 0)
  br label %bb98
bb98:
  %t558 = load ptr, ptr %s22
  %t559 = getelementptr %olang.builder, ptr %s22, i32 0, i32 1
  %t560 = load i64, ptr %t559
  %t561 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t560)
  call void @olang_textcopy(ptr %t561, ptr %t558, i64 %t560)
  %t562 = insertvalue { i64, ptr } undef, i64 %t560, 0
  %t563 = insertvalue { i64, ptr } %t562, ptr %t561, 1
  store { i64, ptr } %t563, ptr %l211, !tbaa !27
  %t564 = getelementptr %olang.builder, ptr %s22, i32 0, i32 3
  %t565 = load ptr, ptr %t564
  %t566 = icmp ne ptr %t565, null
  br i1 %t566, label %sbgrew.567, label %sbdone.568
sbgrew.567:
  call void @__olang_sb_done(ptr %s22)
  br label %sbdone.568
sbdone.568:
  %t569 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t570 = extractvalue { i64, ptr } %t569, 0
  %t571 = extractvalue { i64, ptr } %t569, 1
  %t572 = mul i64 %t570, 1
  %t573 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t572)
  call void @llvm.memcpy.p0.p0.i64(ptr %t573, ptr %t571, i64 %t572, i1 false)
  %t574 = insertvalue { i64, ptr } undef, i64 %t570, 0
  %t575 = insertvalue { i64, ptr } %t574, ptr %t573, 1
  %t577 = call { i64, ptr } @compiler_2ftyped_2eshort(ptr %s21, ptr %s21, { i64, ptr } %t575)
  store { i64, ptr } %t577, ptr %l213
  br label %bb99
bb99:
  %t578 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t579 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t580 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t581 = extractvalue { i64, ptr } %t580, 1
  %t582 = extractvalue { i64, ptr } %t580, 0
  %t583 = add i64 %t579, %t582
  %t584 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t583)
  call void @olang_textcopy(ptr %t584, ptr %t578, i64 %t579)
  %t585 = getelementptr i8, ptr %t584, i64 %t579
  call void @olang_textcopy(ptr %t585, ptr %t581, i64 %t582)
  %t586 = insertvalue { i64, ptr } undef, i64 %t583, 0
  %t587 = insertvalue { i64, ptr } %t586, ptr %t584, 1
  %t589 = extractvalue { i64, ptr } %t587, 0
  %t590 = extractvalue { i64, ptr } %t587, 1
  %t591 = mul i64 %t589, 1
  %t592 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t591)
  call void @llvm.memcpy.p0.p0.i64(ptr %t592, ptr %t590, i64 %t591, i1 false)
  %t593 = insertvalue { i64, ptr } undef, i64 %t589, 0
  %t594 = insertvalue { i64, ptr } %t593, ptr %t592, 1
  %t595 = load ptr, ptr %l207, !tbaa !29
  %t596 = load i64, ptr %l208, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s21, ptr %t595, i64 %t596, { i64, ptr } %t594)
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s21)
  br label %bb163
bb101:
  %t598 = load ptr, ptr %l1, !tbaa !29
  store ptr %t598, ptr %l216, !tbaa !29
  store i1 false, ptr %l217, !tbaa !21
  %t599 = load ptr, ptr %l216, !tbaa !29
  %t600 = icmp ne ptr %t599, null
  br i1 %t600, label %bb102, label %bb103
bb102:
  %t602 = load ptr, ptr %l216, !tbaa !29
  %t603 = load i64, ptr %t602, !range !{i64 0, i64 17}
  %t605 = icmp eq i64 %t603, 10
  store i1 %t605, ptr %l217, !tbaa !21
  br label %bb103
bb103:
  %t606 = load i1, ptr %l217, !tbaa !21
  br i1 %t606, label %bb104, label %bb105
bb104:
  %t607 = load ptr, ptr %l1, !tbaa !29
  %t609 = getelementptr { i64, [3 x i64] }, ptr %t607, i32 0, i32 1
  %t610 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t609, i32 0, i32 1
  %t611 = load ptr, ptr %t610
  store ptr %t611, ptr %l18, !tbaa !29
  br label %bb106
bb105:
  br label %bb109
bb106:
  store %olang.scope zeroinitializer, ptr %s24
  %t613 = load ptr, ptr %l0, !tbaa !29
  store ptr %t613, ptr %l222, !tbaa !29
  %t614 = load i64, ptr %l2, !tbaa !24
  store i64 %t614, ptr %l223, !tbaa !24
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t616 = load ptr, ptr %l18, !tbaa !29
  %t620 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s24, ptr %v2, ptr %t615, ptr %t616)
  store { i64, ptr } %t620, ptr %l227
  br label %bb107
bb107:
  %t621 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t622 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t623 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t624 = extractvalue { i64, ptr } %t623, 1
  %t625 = extractvalue { i64, ptr } %t623, 0
  %t626 = add i64 %t622, %t625
  %t627 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t626)
  call void @olang_textcopy(ptr %t627, ptr %t621, i64 %t622)
  %t628 = getelementptr i8, ptr %t627, i64 %t622
  call void @olang_textcopy(ptr %t628, ptr %t624, i64 %t625)
  %t629 = insertvalue { i64, ptr } undef, i64 %t626, 0
  %t630 = insertvalue { i64, ptr } %t629, ptr %t627, 1
  %t632 = extractvalue { i64, ptr } %t630, 0
  %t633 = extractvalue { i64, ptr } %t630, 1
  %t634 = mul i64 %t632, 1
  %t635 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t634)
  call void @llvm.memcpy.p0.p0.i64(ptr %t635, ptr %t633, i64 %t634, i1 false)
  %t636 = insertvalue { i64, ptr } undef, i64 %t632, 0
  %t637 = insertvalue { i64, ptr } %t636, ptr %t635, 1
  %t638 = load ptr, ptr %l222, !tbaa !29
  %t639 = load i64, ptr %l223, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s24, ptr %t638, i64 %t639, { i64, ptr } %t637)
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s24)
  br label %bb163
bb109:
  %t641 = load ptr, ptr %l1, !tbaa !29
  store ptr %t641, ptr %l230, !tbaa !29
  store i1 false, ptr %l231, !tbaa !21
  %t642 = load ptr, ptr %l230, !tbaa !29
  %t643 = icmp ne ptr %t642, null
  br i1 %t643, label %bb110, label %bb111
bb110:
  %t645 = load ptr, ptr %l230, !tbaa !29
  %t646 = load i64, ptr %t645, !range !{i64 0, i64 17}
  %t648 = icmp eq i64 %t646, 11
  store i1 %t648, ptr %l231, !tbaa !21
  br label %bb111
bb111:
  %t649 = load i1, ptr %l231, !tbaa !21
  br i1 %t649, label %bb112, label %bb113
bb112:
  %t650 = load ptr, ptr %l1, !tbaa !29
  %t652 = getelementptr { i64, [3 x i64] }, ptr %t650, i32 0, i32 1
  %t653 = getelementptr { %"compiler/source:Span", ptr }, ptr %t652, i32 0, i32 1
  %t654 = load ptr, ptr %t653
  store ptr %t654, ptr %l19, !tbaa !29
  br label %bb114
bb113:
  br label %bb116
bb114:
  %t656 = load ptr, ptr %l0, !tbaa !29
  %t657 = load ptr, ptr %l19, !tbaa !29
  %t658 = load i64, ptr %l2, !tbaa !24
  %t660 = add i64 %t658, 1
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t656, ptr %t657, i64 %t660)
  br label %bb115
bb115:
  br label %bb163
bb116:
  %t664 = load ptr, ptr %l1, !tbaa !29
  store ptr %t664, ptr %l240, !tbaa !29
  store i1 false, ptr %l241, !tbaa !21
  %t665 = load ptr, ptr %l240, !tbaa !29
  %t666 = icmp ne ptr %t665, null
  br i1 %t666, label %bb117, label %bb118
bb117:
  %t668 = load ptr, ptr %l240, !tbaa !29
  %t669 = load i64, ptr %t668, !range !{i64 0, i64 17}
  %t671 = icmp eq i64 %t669, 12
  store i1 %t671, ptr %l241, !tbaa !21
  br label %bb118
bb118:
  %t672 = load i1, ptr %l241, !tbaa !21
  br i1 %t672, label %bb119, label %bb120
bb119:
  %t673 = load ptr, ptr %l1, !tbaa !29
  %t675 = getelementptr { i64, [3 x i64] }, ptr %t673, i32 0, i32 1
  %t676 = getelementptr { %"compiler/source:Span", ptr }, ptr %t675, i32 0, i32 1
  %t677 = load ptr, ptr %t676
  store ptr %t677, ptr %l20, !tbaa !29
  br label %bb121
bb120:
  br label %bb124
bb121:
  store %olang.scope zeroinitializer, ptr %s27
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t680 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s27, ptr %t679, i64 %t680, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) })
  br label %bb122
bb122:
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t684 = load ptr, ptr %l20, !tbaa !29
  %t685 = load i64, ptr %l2, !tbaa !24
  %t687 = add i64 %t685, 1
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t683, ptr %t684, i64 %t687)
  br label %bb123
bb123:
  call void @__olang_scope_close(ptr %s27)
  br label %bb163
bb124:
  %t691 = load ptr, ptr %l1, !tbaa !29
  store ptr %t691, ptr %l252, !tbaa !29
  store i1 false, ptr %l253, !tbaa !21
  %t692 = load ptr, ptr %l252, !tbaa !29
  %t693 = icmp ne ptr %t692, null
  br i1 %t693, label %bb125, label %bb126
bb125:
  %t695 = load ptr, ptr %l252, !tbaa !29
  %t696 = load i64, ptr %t695, !range !{i64 0, i64 17}
  %t698 = icmp eq i64 %t696, 13
  store i1 %t698, ptr %l253, !tbaa !21
  br label %bb126
bb126:
  %t699 = load i1, ptr %l253, !tbaa !21
  br i1 %t699, label %bb127, label %bb128
bb127:
  %t700 = load ptr, ptr %l1, !tbaa !29
  %t702 = getelementptr { i64, [3 x i64] }, ptr %t700, i32 0, i32 1
  %t703 = getelementptr { %"compiler/source:Span", ptr }, ptr %t702, i32 0, i32 1
  %t704 = load ptr, ptr %t703
  store ptr %t704, ptr %l21, !tbaa !29
  br label %bb129
bb128:
  br label %bb135
bb129:
  store %olang.scope zeroinitializer, ptr %s28
  %t706 = load ptr, ptr %l0, !tbaa !29
  store ptr %t706, ptr %l258, !tbaa !29
  %t707 = load i64, ptr %l2, !tbaa !24
  store i64 %t707, ptr %l259, !tbaa !24
  %t708 = load ptr, ptr %l21, !tbaa !29
  %t710 = getelementptr %"compiler/typed:Join", ptr %t708, i32 0, i32 1
  %t711 = load i1, ptr %t710, !tbaa !21
  br i1 %t711, label %bb130, label %bb131
bb130:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l262, !tbaa !27
  br label %bb132
bb131:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l262, !tbaa !27
  br label %bb132
bb132:
  %t713 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t714 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t715 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t716 = extractvalue { i64, ptr } %t715, 1
  %t717 = extractvalue { i64, ptr } %t715, 0
  %t718 = add i64 %t714, %t717
  %t719 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t718)
  call void @olang_textcopy(ptr %t719, ptr %t713, i64 %t714)
  %t720 = getelementptr i8, ptr %t719, i64 %t714
  call void @olang_textcopy(ptr %t720, ptr %t716, i64 %t717)
  %t721 = insertvalue { i64, ptr } undef, i64 %t718, 0
  %t722 = insertvalue { i64, ptr } %t721, ptr %t719, 1
  %t724 = extractvalue { i64, ptr } %t722, 0
  %t725 = extractvalue { i64, ptr } %t722, 1
  %t726 = mul i64 %t724, 1
  %t727 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t726)
  call void @llvm.memcpy.p0.p0.i64(ptr %t727, ptr %t725, i64 %t726, i1 false)
  %t728 = insertvalue { i64, ptr } undef, i64 %t724, 0
  %t729 = insertvalue { i64, ptr } %t728, ptr %t727, 1
  %t730 = load ptr, ptr %l258, !tbaa !29
  %t731 = load i64, ptr %l259, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s28, ptr %t730, i64 %t731, { i64, ptr } %t729)
  br label %bb133
bb133:
  %t733 = load ptr, ptr %l0, !tbaa !29
  %t734 = load ptr, ptr %l21, !tbaa !29
  %t736 = getelementptr %"compiler/typed:Join", ptr %t734, i32 0, i32 0
  %t737 = load ptr, ptr %t736, !tbaa !29
  %t738 = load i64, ptr %l2, !tbaa !24
  %t740 = add i64 %t738, 1
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t733, ptr %t737, i64 %t740)
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s28)
  br label %bb163
bb135:
  %t744 = load ptr, ptr %l1, !tbaa !29
  store ptr %t744, ptr %l270, !tbaa !29
  store i1 false, ptr %l271, !tbaa !21
  %t745 = load ptr, ptr %l270, !tbaa !29
  %t746 = icmp ne ptr %t745, null
  br i1 %t746, label %bb136, label %bb137
bb136:
  %t748 = load ptr, ptr %l270, !tbaa !29
  %t749 = load i64, ptr %t748, !range !{i64 0, i64 17}
  %t751 = icmp eq i64 %t749, 14
  store i1 %t751, ptr %l271, !tbaa !21
  br label %bb137
bb137:
  %t752 = load i1, ptr %l271, !tbaa !21
  br i1 %t752, label %bb138, label %bb139
bb138:
  %t753 = load ptr, ptr %l1, !tbaa !29
  %t755 = getelementptr { i64, [3 x i64] }, ptr %t753, i32 0, i32 1
  %t756 = getelementptr { %"compiler/source:Span", ptr }, ptr %t755, i32 0, i32 1
  %t757 = load ptr, ptr %t756
  store ptr %t757, ptr %l22, !tbaa !29
  br label %bb140
bb139:
  br label %bb143
bb140:
  store %olang.scope zeroinitializer, ptr %s30
  %t759 = load ptr, ptr %l0, !tbaa !29
  store ptr %t759, ptr %l276, !tbaa !29
  %t760 = load i64, ptr %l2, !tbaa !24
  store i64 %t760, ptr %l277, !tbaa !24
  %t761 = load ptr, ptr %l0, !tbaa !29
  %t762 = load ptr, ptr %l22, !tbaa !29
  %t764 = getelementptr %"compiler/typed:Spawn", ptr %t762, i32 0, i32 1
  %t765 = load ptr, ptr %t764, !tbaa !29
  %t769 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s30, ptr %v2, ptr %t761, ptr %t765)
  store { i64, ptr } %t769, ptr %l282
  br label %bb141
bb141:
  %t770 = load ptr, ptr %l22, !tbaa !29
  %t772 = getelementptr %"compiler/typed:Spawn", ptr %t770, i32 0, i32 3
  %t773 = load i32, ptr %t772, !tbaa !23
  %t774 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t775 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t776 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t777 = extractvalue { i64, ptr } %t776, 1
  %t778 = extractvalue { i64, ptr } %t776, 0
  %t779 = add i64 %t775, %t778
  %t780 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t781 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t782 = add i64 %t779, %t781
  %t784 = sext i32 %t773 to i64
  %t785 = call i64 @__olang_fmt_i64(ptr null, i64 %t784)
  %t786 = add i64 %t782, %t785
  %t787 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t786)
  call void @olang_textcopy(ptr %t787, ptr %t774, i64 %t775)
  %t788 = getelementptr i8, ptr %t787, i64 %t775
  call void @olang_textcopy(ptr %t788, ptr %t777, i64 %t778)
  %t789 = getelementptr i8, ptr %t788, i64 %t778
  call void @olang_textcopy(ptr %t789, ptr %t780, i64 %t781)
  %t790 = getelementptr i8, ptr %t789, i64 %t781
  %t791 = call i64 @__olang_fmt_i64(ptr %t790, i64 %t784)
  %t792 = insertvalue { i64, ptr } undef, i64 %t786, 0
  %t793 = insertvalue { i64, ptr } %t792, ptr %t787, 1
  %t795 = extractvalue { i64, ptr } %t793, 0
  %t796 = extractvalue { i64, ptr } %t793, 1
  %t797 = mul i64 %t795, 1
  %t798 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t797)
  call void @llvm.memcpy.p0.p0.i64(ptr %t798, ptr %t796, i64 %t797, i1 false)
  %t799 = insertvalue { i64, ptr } undef, i64 %t795, 0
  %t800 = insertvalue { i64, ptr } %t799, ptr %t798, 1
  %t801 = load ptr, ptr %l276, !tbaa !29
  %t802 = load i64, ptr %l277, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s30, ptr %t801, i64 %t802, { i64, ptr } %t800)
  br label %bb142
bb142:
  call void @__olang_scope_close(ptr %s30)
  br label %bb163
bb143:
  %t804 = load ptr, ptr %l1, !tbaa !29
  store ptr %t804, ptr %l287, !tbaa !29
  store i1 false, ptr %l288, !tbaa !21
  %t805 = load ptr, ptr %l287, !tbaa !29
  %t806 = icmp ne ptr %t805, null
  br i1 %t806, label %bb144, label %bb145
bb144:
  %t808 = load ptr, ptr %l287, !tbaa !29
  %t809 = load i64, ptr %t808, !range !{i64 0, i64 17}
  %t811 = icmp eq i64 %t809, 15
  store i1 %t811, ptr %l288, !tbaa !21
  br label %bb145
bb145:
  %t812 = load i1, ptr %l288, !tbaa !21
  br i1 %t812, label %bb146, label %bb147
bb146:
  %t813 = load ptr, ptr %l1, !tbaa !29
  %t815 = getelementptr { i64, [3 x i64] }, ptr %t813, i32 0, i32 1
  %t816 = getelementptr { %"compiler/source:Span", ptr }, ptr %t815, i32 0, i32 1
  %t817 = load ptr, ptr %t816
  store ptr %t817, ptr %l23, !tbaa !29
  br label %bb148
bb147:
  br label %bb151
bb148:
  store %olang.scope zeroinitializer, ptr %s32
  %t819 = load ptr, ptr %l0, !tbaa !29
  store ptr %t819, ptr %l293, !tbaa !29
  %t820 = load i64, ptr %l2, !tbaa !24
  store i64 %t820, ptr %l294, !tbaa !24
  %t821 = load ptr, ptr %l0, !tbaa !29
  %t822 = load ptr, ptr %l23, !tbaa !29
  %t826 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s32, ptr %v2, ptr %t821, ptr %t822)
  store { i64, ptr } %t826, ptr %l298
  br label %bb149
bb149:
  %t827 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t828 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t829 = load { i64, ptr }, ptr %l298, !tbaa !27
  %t830 = extractvalue { i64, ptr } %t829, 1
  %t831 = extractvalue { i64, ptr } %t829, 0
  %t832 = add i64 %t828, %t831
  %t833 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t832)
  call void @olang_textcopy(ptr %t833, ptr %t827, i64 %t828)
  %t834 = getelementptr i8, ptr %t833, i64 %t828
  call void @olang_textcopy(ptr %t834, ptr %t830, i64 %t831)
  %t835 = insertvalue { i64, ptr } undef, i64 %t832, 0
  %t836 = insertvalue { i64, ptr } %t835, ptr %t833, 1
  %t838 = extractvalue { i64, ptr } %t836, 0
  %t839 = extractvalue { i64, ptr } %t836, 1
  %t840 = mul i64 %t838, 1
  %t841 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t840)
  call void @llvm.memcpy.p0.p0.i64(ptr %t841, ptr %t839, i64 %t840, i1 false)
  %t842 = insertvalue { i64, ptr } undef, i64 %t838, 0
  %t843 = insertvalue { i64, ptr } %t842, ptr %t841, 1
  %t844 = load ptr, ptr %l293, !tbaa !29
  %t845 = load i64, ptr %l294, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s32, ptr %t844, i64 %t845, { i64, ptr } %t843)
  br label %bb150
bb150:
  call void @__olang_scope_close(ptr %s32)
  br label %bb163
bb151:
  %t847 = load ptr, ptr %l1, !tbaa !29
  store ptr %t847, ptr %l301, !tbaa !29
  store i1 false, ptr %l302, !tbaa !21
  %t848 = load ptr, ptr %l301, !tbaa !29
  %t849 = icmp ne ptr %t848, null
  br i1 %t849, label %bb152, label %bb153
bb152:
  %t851 = load ptr, ptr %l301, !tbaa !29
  %t852 = load i64, ptr %t851, !range !{i64 0, i64 17}
  %t854 = icmp eq i64 %t852, 16
  store i1 %t854, ptr %l302, !tbaa !21
  br label %bb153
bb153:
  %t855 = load i1, ptr %l302, !tbaa !21
  br i1 %t855, label %bb154, label %bb155
bb154:
  %t856 = load ptr, ptr %l1, !tbaa !29
  %t858 = getelementptr { i64, [3 x i64] }, ptr %t856, i32 0, i32 1
  %t859 = getelementptr { %"compiler/source:Span", ptr }, ptr %t858, i32 0, i32 1
  %t860 = load ptr, ptr %t859
  store ptr %t860, ptr %l24, !tbaa !29
  br label %bb156
bb155:
  br label %bb162
bb156:
  store %olang.scope zeroinitializer, ptr %s34
  %t862 = load ptr, ptr %l0, !tbaa !29
  store ptr %t862, ptr %l307, !tbaa !29
  %t863 = load i64, ptr %l2, !tbaa !24
  store i64 %t863, ptr %l308, !tbaa !24
  %t864 = load ptr, ptr %l0, !tbaa !29
  store ptr %t864, ptr %l309, !tbaa !29
  %t865 = load ptr, ptr %l24, !tbaa !29
  %t867 = icmp eq ptr %t865, null
  br i1 %t867, label %bb157, label %bb158
bb157:
  call void @__olang_check_failed(ptr @olang_loc_78afbb313fff45b8_957466907ebeb484)
  unreachable
bb158:
  br label %bb159
bb159:
  %t869 = load ptr, ptr %l24, !tbaa !29
  %t871 = load ptr, ptr %l309, !tbaa !29
  %t873 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s34, ptr %v2, ptr %t871, ptr %t869)
  store { i64, ptr } %t873, ptr %l314
  br label %bb160
bb160:
  %t874 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t875 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t876 = load { i64, ptr }, ptr %l314, !tbaa !27
  %t877 = extractvalue { i64, ptr } %t876, 1
  %t878 = extractvalue { i64, ptr } %t876, 0
  %t879 = add i64 %t875, %t878
  %t880 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t879)
  call void @olang_textcopy(ptr %t880, ptr %t874, i64 %t875)
  %t881 = getelementptr i8, ptr %t880, i64 %t875
  call void @olang_textcopy(ptr %t881, ptr %t877, i64 %t878)
  %t882 = insertvalue { i64, ptr } undef, i64 %t879, 0
  %t883 = insertvalue { i64, ptr } %t882, ptr %t880, 1
  %t885 = extractvalue { i64, ptr } %t883, 0
  %t886 = extractvalue { i64, ptr } %t883, 1
  %t887 = mul i64 %t885, 1
  %t888 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t887)
  call void @llvm.memcpy.p0.p0.i64(ptr %t888, ptr %t886, i64 %t887, i1 false)
  %t889 = insertvalue { i64, ptr } undef, i64 %t885, 0
  %t890 = insertvalue { i64, ptr } %t889, ptr %t888, 1
  %t891 = load ptr, ptr %l307, !tbaa !29
  %t892 = load i64, ptr %l308, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %s34, ptr %t891, i64 %t892, { i64, ptr } %t890)
  br label %bb161
bb161:
  call void @__olang_scope_close(ptr %s34)
  br label %bb163
bb162:
  call void @__olang_check_failed(ptr @olang_loc_90a2a4daf32abd74_d37804826367c570)
  unreachable
bb163:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2efnBreaks(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l26 = alloca { i64, ptr }
  %l33 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l47 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t12 = load ptr, ptr %l13, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l13, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 3}
  %t18 = icmp eq i64 %t16, 1
  store i1 %t18, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l14, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t22, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23
  store { i64, ptr } %t24, ptr %l2, !tbaa !27
  br label %bb11
bb10:
  br label %bb22
bb11:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l5, !tbaa !24
  br label %bb12
bb12:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t40, ptr %l26, !tbaa !27
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr ptr, ptr %t44, i64 %t41
  %t46 = load ptr, ptr %t45, !tbaa !39
  %t50 = getelementptr %"compiler/typed:Capture", ptr %t46, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = load i32, ptr %l1, !tbaa !23
  %t56 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t51, i32 %t53)
  store i1 %t56, ptr %l33
  br label %bb16
bb16:
  %t57 = load i1, ptr %l33, !tbaa !21
  br i1 %t57, label %bb17, label %bb18
bb17:
  store i1 true, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l4, !tbaa !24
  br label %bb12
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t65 = load ptr, ptr %l38, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb23, label %bb24
bb23:
  %t68 = load ptr, ptr %l38, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 3}
  %t71 = icmp eq i64 %t69, 2
  store i1 %t71, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t72 = load i1, ptr %l39, !tbaa !21
  br i1 %t72, label %bb25, label %bb26
bb25:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { i32, ptr, i32 }, ptr %t75, i32 0, i32 1
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l7, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t79 = load ptr, ptr %l7, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t79, i32 %t81)
  store i1 %t84, ptr %l47
  br label %bb28
bb28:
  %t85 = load i1, ptr %l47, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
bb29:
  call void @__olang_check_failed(ptr @olang_loc_2c2074b813b4d1af_bb6745173ec2e4fb)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2efreshValue(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l25 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
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
  br label %bb24
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 7
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Make", ptr %t25, i32 0, i32 0
  %t28 = load i32, ptr %t27, !range !{i32 0, i32 5}
  %t30 = trunc i64 4 to i32
  %t31 = icmp eq i32 %t28, %t30
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l3, !tbaa !21
  br label %bb24
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb13, label %bb14
bb13:
  %t39 = load ptr, ptr %l18, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 17
  store i1 %t42, ptr %l19, !tbaa !21
  br label %bb14
bb14:
  %t43 = load i1, ptr %l19, !tbaa !21
  br i1 %t43, label %bb15, label %bb16
bb15:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = call i1 @compiler_2ftyped_2efreshValue(ptr %v0, ptr %t50)
  store i1 %t52, ptr %l25
  br label %bb18
bb18:
  %t53 = load i1, ptr %l25, !tbaa !21
  store i1 %t53, ptr %l3, !tbaa !21
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_bea5bf6ffc689610_b71acf810bfa0324)
  unreachable
bb24:
  %t54 = load i1, ptr %l3, !tbaa !21
  store i1 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2eholdsOwned(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i32
  %l19 = alloca i32
  %l21 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca i32
  %l28 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca i32
  %l38 = alloca i1
  %l41 = alloca ptr
  %l44 = alloca i32
  %l46 = alloca i1
  %l51 = alloca i1
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i32
  %l59 = alloca i1
  %l62 = alloca ptr
  %l65 = alloca i32
  %l67 = alloca i1
  %l70 = alloca ptr
  %l73 = alloca i32
  %l75 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l11
  br label %bb4
bb4:
  %t11 = load i32, ptr %l11, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l14
  br label %bb5
bb5:
  %t17 = load i32, ptr %l14, !range !{i32 0, i32 33}
  store i32 %t17, ptr %l4
  %t18 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb15
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l19
  br label %bb9
bb9:
  %t28 = load i32, ptr %l19, !tbaa !23
  %t29 = icmp eq i32 %t28, 0
  br i1 %t29, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb14
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l25
  br label %bb12
bb12:
  %t37 = load i64, ptr %l2, !tbaa !24
  %t39 = add i64 %t37, 1
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t41 = load i32, ptr %l25, !tbaa !23
  %t43 = call i1 @compiler_2ftyped_2eholdsOwned(ptr %v0, ptr %t40, i32 %t41, i64 %t39)
  store i1 %t43, ptr %l28
  br label %bb13
bb13:
  %t44 = load i1, ptr %l28, !tbaa !21
  store i1 %t44, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t45 = load i1, ptr %l21, !tbaa !21
  store i1 %t45, ptr %rv
  br label %ret
bb15:
  %t46 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t48 = trunc i64 22 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  %t51 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t53 = trunc i64 23 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l33, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l3, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l36
  br label %bb21
bb21:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = load i32, ptr %l36, !tbaa !23
  %t66 = call i1 @compiler_2ftyped_2elistOwned(ptr %v0, ptr %t63, i32 %t64, i64 %t62)
  store i1 %t66, ptr %l38
  br label %bb22
bb22:
  %t67 = load i1, ptr %l38, !tbaa !21
  store i1 %t67, ptr %rv
  br label %ret
bb23:
  %t68 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t70 = trunc i64 24 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l41, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l3, !tbaa !23
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t78, ptr %l44
  br label %bb27
bb27:
  %t79 = load i64, ptr %l2, !tbaa !24
  %t80 = load ptr, ptr %l41, !tbaa !29
  %t81 = load i32, ptr %l44, !tbaa !23
  %t83 = call i1 @compiler_2ftyped_2elistOwned(ptr %v0, ptr %t80, i32 %t81, i64 %t79)
  store i1 %t83, ptr %l46
  br label %bb28
bb28:
  %t84 = load i1, ptr %l46, !tbaa !21
  store i1 %t84, ptr %rv
  br label %ret
bb29:
  %t85 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t87 = trunc i64 18 to i32
  %t88 = icmp eq i32 %t85, %t87
  br i1 %t88, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb56
bb32:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l3, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l51
  br label %bb33
bb33:
  %t95 = load i1, ptr %l51, !tbaa !21
  %t96 = xor i1 %t95, true
  br i1 %t96, label %bb34, label %bb35
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l54, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i32, ptr %l3, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l57
  br label %bb37
bb37:
  %t105 = load ptr, ptr %l54, !tbaa !29
  %t106 = load i32, ptr %l57, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t105, i32 %t106)
  store i32 %t107, ptr %l58
  br label %bb38
bb38:
  %t108 = load i32, ptr %l58, !range !{i32 0, i32 6}
  store i32 %t108, ptr %l5
  %t109 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t111 = trunc i64 0 to i32
  %t112 = icmp eq i32 %t109, %t111
  br i1 %t112, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l62, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l3, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l65
  br label %bb42
bb42:
  %t120 = load i64, ptr %l2, !tbaa !24
  %t121 = load ptr, ptr %l62, !tbaa !29
  %t122 = load i32, ptr %l65, !tbaa !23
  %t124 = call i1 @compiler_2ftyped_2elistOwned(ptr %v0, ptr %t121, i32 %t122, i64 %t120)
  store i1 %t124, ptr %l67
  br label %bb43
bb43:
  %t125 = load i1, ptr %l67, !tbaa !21
  store i1 %t125, ptr %l59, !tbaa !21
  br label %bb55
bb44:
  %t126 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t128 = trunc i64 1 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l70, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i32, ptr %l3, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l73
  br label %bb48
bb48:
  %t137 = load i64, ptr %l2, !tbaa !24
  %t138 = load ptr, ptr %l70, !tbaa !29
  %t139 = load i32, ptr %l73, !tbaa !23
  %t141 = call i1 @compiler_2ftyped_2elistOwned(ptr %v0, ptr %t138, i32 %t139, i64 %t137)
  store i1 %t141, ptr %l75
  br label %bb49
bb49:
  %t142 = load i1, ptr %l75, !tbaa !21
  store i1 %t142, ptr %l59, !tbaa !21
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_61141ab026762302_86235c78c2d902d6)
  unreachable
bb55:
  %t143 = load i1, ptr %l59, !tbaa !21
  store i1 %t143, ptr %rv
  br label %ret
bb56:
  br i1 true, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  store i1 false, ptr %rv
  br label %ret
bb60:
  call void @__olang_check_failed(ptr @olang_loc_2566079f8423d483_66fa93375f6766f7)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2eone(ptr %v0, i64 %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t5, i64 %a0)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %lp1
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2ftyped_2eorInto(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l16, !tbaa !24
  store i64 %t31, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l13, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t51, ptr %l34, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  store i64 %t52, ptr %l35, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t53, ptr %l36, !tbaa !27
  %t54 = load i64, ptr %l7, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i1, ptr %t57, i64 %t54
  %t59 = load i1, ptr %t58, !tbaa !31
  br i1 %t59, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb13
bb12:
  store { i64, ptr } %a1, ptr %l40, !tbaa !27
  %t62 = load i64, ptr %l7, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i1, ptr %t65, i64 %t62
  %t67 = load i1, ptr %t66, !tbaa !31
  store i1 %t67, ptr %l39, !tbaa !21
  br label %bb13
bb13:
  %t69 = load i1, ptr %l39, !tbaa !21
  %t70 = load i64, ptr %l35, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i1, ptr %t72, i64 %t70
  store i1 %t69, ptr %t73, !tbaa !31
  br label %bb14
bb14:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb7
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l48 = alloca i1
  %l49 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l74 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t11 = load ptr, ptr %l12, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l13, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 7
  store i1 %t26, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l17, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb54
bb14:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb15, label %bb16
bb15:
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 8}
  %t35 = icmp eq i64 %t33, 2
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb16
bb16:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb17, label %bb18
bb17:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l2, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = load i32, ptr %l1, !tbaa !23
  %t48 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t43, i32 %t45)
  store i1 %t48, ptr %l29
  br label %bb20
bb20:
  %t49 = load i1, ptr %l29, !tbaa !21
  store i1 %t49, ptr %l7, !tbaa !21
  br label %bb54
bb21:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb22, label %bb23
bb22:
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 8}
  %t57 = icmp eq i64 %t55, 3
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb23
bb23:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb24, label %bb25
bb24:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l3, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t66 = load i32, ptr %l1, !tbaa !23
  %t69 = call i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %t65, i32 %t66)
  store i1 %t69, ptr %l38
  br label %bb27
bb27:
  %t70 = load i1, ptr %l38, !tbaa !21
  store i1 %t70, ptr %l7, !tbaa !21
  br label %bb54
bb28:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t72 = load ptr, ptr %l39, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb29, label %bb30
bb29:
  %t75 = load ptr, ptr %l39, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 8}
  %t78 = icmp eq i64 %t76, 4
  store i1 %t78, ptr %l40, !tbaa !21
  br label %bb30
bb30:
  %t79 = load i1, ptr %l40, !tbaa !21
  br i1 %t79, label %bb31, label %bb32
bb31:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l4, !tbaa !29
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Elem", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t90 = load i32, ptr %l1, !tbaa !23
  %t93 = call i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %t89, i32 %t90)
  store i1 %t93, ptr %l48
  br label %bb34
bb34:
  %t94 = load i1, ptr %l48, !tbaa !21
  br i1 %t94, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb38
bb36:
  %t95 = load ptr, ptr %l4, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Elem", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = load i32, ptr %l1, !tbaa !23
  %t103 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t98, i32 %t100)
  store i1 %t103, ptr %l54
  br label %bb37
bb37:
  %t104 = load i1, ptr %l54, !tbaa !21
  store i1 %t104, ptr %l49, !tbaa !21
  br label %bb38
bb38:
  %t105 = load i1, ptr %l49, !tbaa !21
  store i1 %t105, ptr %l7, !tbaa !21
  br label %bb54
bb39:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t107 = load ptr, ptr %l55, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb40, label %bb41
bb40:
  %t110 = load ptr, ptr %l55, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 8}
  %t113 = icmp eq i64 %t111, 5
  store i1 %t113, ptr %l56, !tbaa !21
  br label %bb41
bb41:
  %t114 = load i1, ptr %l56, !tbaa !21
  br i1 %t114, label %bb42, label %bb43
bb42:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l5, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Payload", ptr %t121, i32 0, i32 0
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t125 = load i32, ptr %l1, !tbaa !23
  %t128 = call i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %t124, i32 %t125)
  store i1 %t128, ptr %l64
  br label %bb45
bb45:
  %t129 = load i1, ptr %l64, !tbaa !21
  store i1 %t129, ptr %l7, !tbaa !21
  br label %bb54
bb46:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t131 = load ptr, ptr %l65, !tbaa !29
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %bb47, label %bb48
bb47:
  %t134 = load ptr, ptr %l65, !tbaa !29
  %t135 = load i64, ptr %t134, !range !{i64 0, i64 8}
  %t137 = icmp eq i64 %t135, 6
  store i1 %t137, ptr %l66, !tbaa !21
  br label %bb48
bb48:
  %t138 = load i1, ptr %l66, !tbaa !21
  br i1 %t138, label %bb49, label %bb50
bb49:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 1
  %t142 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t141, i32 0, i32 2
  %t143 = load ptr, ptr %t142
  store ptr %t143, ptr %l6, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t145 = load ptr, ptr %l6, !tbaa !29
  %t147 = load i32, ptr %l1, !tbaa !23
  %t150 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t145, i32 %t147)
  store i1 %t150, ptr %l74
  br label %bb52
bb52:
  %t151 = load i1, ptr %l74, !tbaa !21
  store i1 %t151, ptr %l7, !tbaa !21
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_f3346b4d6d82824c_aeee08707a274ea0)
  unreachable
bb54:
  %t152 = load i1, ptr %l7, !tbaa !21
  store i1 %t152, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2escalarType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t2, i32 %a1)
  store i32 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t8 = load i32, ptr %l6, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i32, ptr %l7, !range !{i32 0, i32 33}
  store i32 %t10, ptr %l2
  %t11 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t13 = trunc i64 2 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  %t16 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t18 = trunc i64 3 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb17
bb6:
  %t21 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t23 = trunc i64 4 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb7, label %bb8
bb7:
  br label %bb17
bb8:
  %t26 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t28 = trunc i64 5 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  %t31 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t33 = trunc i64 6 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  %t36 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t38 = trunc i64 7 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  %t41 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t43 = trunc i64 8 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb37
bb18:
  %t46 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t48 = trunc i64 9 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb19, label %bb20
bb19:
  br label %bb31
bb20:
  %t51 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t53 = trunc i64 10 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb21, label %bb22
bb21:
  br label %bb31
bb22:
  %t56 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t58 = trunc i64 11 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb23, label %bb24
bb23:
  br label %bb31
bb24:
  %t61 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t63 = trunc i64 12 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb25, label %bb26
bb25:
  br label %bb31
bb26:
  %t66 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t68 = trunc i64 13 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  %t71 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t73 = trunc i64 14 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_4231ae67b136756b_a4f71f39f0a47447)
  unreachable
bb37:
  %t76 = load i1, ptr %l8, !tbaa !21
  store i1 %t76, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/typed:Collect" @compiler_2ftyped_3aCollect_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i1 %a4) #0 {
entry:
  %rv = alloca %"compiler/typed:Collect"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/typed:Collect" undef, ptr %a0, 0
  %t14 = insertvalue %"compiler/typed:Collect" %t12, ptr %a1, 1
  %t16 = insertvalue %"compiler/typed:Collect" %t14, i32 %a2, 2
  %t18 = insertvalue %"compiler/typed:Collect" %t16, i32 %a3, 3
  %t20 = insertvalue %"compiler/typed:Collect" %t18, i1 %a4, 4
  store %"compiler/typed:Collect" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Collect", ptr %rv
  ret %"compiler/typed:Collect" %rr
}

define dso_local %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %rv = alloca %"compiler/typed:Cond"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/typed:Cond" undef, ptr %a0, 0
  %t10 = insertvalue %"compiler/typed:Cond" %t8, ptr %a1, 1
  %t12 = insertvalue %"compiler/typed:Cond" %t10, ptr %a2, 2
  store %"compiler/typed:Cond" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Cond", ptr %rv
  ret %"compiler/typed:Cond" %rr
}

define dso_local %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %v0, i32 %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/typed:Item"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/typed:Item" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/typed:Item" %t6, i64 %a1, 1
  store %"compiler/typed:Item" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Item", ptr %rv
  ret %"compiler/typed:Item" %rr
}

define dso_local %"compiler/typed:Join" @compiler_2ftyped_3aJoin_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i1 %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/typed:Join"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/typed:Join" undef, ptr %a0, 0
  %t10 = insertvalue %"compiler/typed:Join" %t8, i1 %a1, 1
  %t12 = insertvalue %"compiler/typed:Join" %t10, { i64, ptr } %a2, 2
  store %"compiler/typed:Join" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Join", ptr %rv
  ret %"compiler/typed:Join" %rr
}

define dso_local %"compiler/typed:Spawn" @compiler_2ftyped_3aSpawn_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %rv = alloca %"compiler/typed:Spawn"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/typed:Spawn" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/typed:Spawn" %t10, ptr %a1, 1
  %t14 = insertvalue %"compiler/typed:Spawn" %t12, { i64, ptr } %a2, 2
  %t16 = insertvalue %"compiler/typed:Spawn" %t14, i32 %a3, 3
  store %"compiler/typed:Spawn" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Spawn", ptr %rv
  ret %"compiler/typed:Spawn" %rr
}

define dso_local %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %rv = alloca %"compiler/typed:Try"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/typed:Try" undef, ptr %a0, 0
  %t14 = insertvalue %"compiler/typed:Try" %t12, { i64, ptr } %a1, 1
  %t16 = insertvalue %"compiler/typed:Try" %t14, i1 %a2, 2
  %t18 = insertvalue %"compiler/typed:Try" %t16, i1 %a3, 3
  %t20 = insertvalue %"compiler/typed:Try" %t18, i1 %a4, 4
  store %"compiler/typed:Try" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Try", ptr %rv
  ret %"compiler/typed:Try" %rr
}

define dso_local void @compiler_2ftyped_3aholdWalk_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i1
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca i64
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca i64
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca i64
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca i64
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca i64
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca %"compiler/typed:holdWalk"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store ptr %a1, ptr %l3, !tbaa !29
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l21, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l21, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l21
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l23
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l21
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l4
  store i1 false, ptr %l5, !tbaa !21
  %t25 = ptrtoint ptr %v2 to i64
  store i64 %t25, ptr %l25, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e4
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %v2)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t30 = load i64, ptr %l25
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l27
  br label %bb8
bb8:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e4
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l25
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t43)
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l6
  %t45 = ptrtoint ptr %v2 to i64
  store i64 %t45, ptr %l29, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e5
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v2)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l29
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l31
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e5
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l29
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr null
  %t63 = icmp eq ptr %t62, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t63)
  br label %bb15
bb15:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l7
  %t65 = ptrtoint ptr %v2 to i64
  store i64 %t65, ptr %l33, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e6
  br i1 %t66, label %bb16, label %bb17
bb16:
  %t68 = call ptr @__olang_region_make(ptr %v2)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l33, !tbaa !24
  br label %bb17
bb17:
  %t70 = load i64, ptr %l33
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t71, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l35
  br label %bb18
bb18:
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e6
  br i1 %t73, label %bb19, label %bb20
bb19:
  %t75 = load i64, ptr %l33
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = icmp eq ptr %t82, %t76
  call void @__olang_region_settle(ptr %t76, i1 %t83)
  br label %bb20
bb20:
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l8
  %t85 = ptrtoint ptr %v2 to i64
  store i64 %t85, ptr %l37, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e7
  br i1 %t86, label %bb21, label %bb22
bb21:
  %t88 = call ptr @__olang_region_make(ptr %v2)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l37, !tbaa !24
  br label %bb22
bb22:
  %t90 = load i64, ptr %l37
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t91, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l39
  br label %bb23
bb23:
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e7
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t95 = load i64, ptr %l37
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = icmp ne ptr %t100, null
  %t102 = select i1 %t101, ptr %t100, ptr null
  %t103 = icmp eq ptr %t102, %t96
  call void @__olang_region_settle(ptr %t96, i1 %t103)
  br label %bb25
bb25:
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l9
  %t105 = ptrtoint ptr %v2 to i64
  store i64 %t105, ptr %l41, !tbaa !24
  %t106 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e8
  br i1 %t106, label %bb26, label %bb27
bb26:
  %t108 = call ptr @__olang_region_make(ptr %v2)
  %t109 = ptrtoint ptr %t108 to i64
  store i64 %t109, ptr %l41, !tbaa !24
  br label %bb27
bb27:
  %t110 = load i64, ptr %l41
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t111, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %l43
  br label %bb28
bb28:
  %t113 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e8
  br i1 %t113, label %bb29, label %bb30
bb29:
  %t115 = load i64, ptr %l41
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43, i32 0, i32 0
  %t118 = load { i64, ptr }, ptr %t117
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = icmp ne ptr %t120, null
  %t122 = select i1 %t121, ptr %t120, ptr null
  %t123 = icmp eq ptr %t122, %t116
  call void @__olang_region_settle(ptr %t116, i1 %t123)
  br label %bb30
bb30:
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l10
  %t125 = ptrtoint ptr %v2 to i64
  store i64 %t125, ptr %l45, !tbaa !24
  %t126 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e9
  br i1 %t126, label %bb31, label %bb32
bb31:
  %t128 = call ptr @__olang_region_make(ptr %v2)
  %t129 = ptrtoint ptr %t128 to i64
  store i64 %t129, ptr %l45, !tbaa !24
  br label %bb32
bb32:
  %t130 = load i64, ptr %l45
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t131, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l47
  br label %bb33
bb33:
  %t133 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e9
  br i1 %t133, label %bb34, label %bb35
bb34:
  %t135 = load i64, ptr %l45
  %t136 = inttoptr i64 %t135 to ptr
  %t137 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = call ptr @__olang_region_or(ptr %t139, ptr null)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr null
  %t143 = icmp eq ptr %t142, %t136
  call void @__olang_region_settle(ptr %t136, i1 %t143)
  br label %bb35
bb35:
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %l11
  %t145 = ptrtoint ptr %v2 to i64
  store i64 %t145, ptr %l49, !tbaa !24
  %t146 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e10
  br i1 %t146, label %bb36, label %bb37
bb36:
  %t148 = call ptr @__olang_region_make(ptr %v2)
  %t149 = ptrtoint ptr %t148 to i64
  store i64 %t149, ptr %l49, !tbaa !24
  br label %bb37
bb37:
  %t150 = load i64, ptr %l49
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t151, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %l51
  br label %bb38
bb38:
  %t153 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e10
  br i1 %t153, label %bb39, label %bb40
bb39:
  %t155 = load i64, ptr %l49
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr null
  %t163 = icmp eq ptr %t162, %t156
  call void @__olang_region_settle(ptr %t156, i1 %t163)
  br label %bb40
bb40:
  %t164 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %l12
  %t165 = ptrtoint ptr %v2 to i64
  store i64 %t165, ptr %l53, !tbaa !24
  %t166 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e11
  br i1 %t166, label %bb41, label %bb42
bb41:
  %t168 = call ptr @__olang_region_make(ptr %v2)
  %t169 = ptrtoint ptr %t168 to i64
  store i64 %t169, ptr %l53, !tbaa !24
  br label %bb42
bb42:
  %t170 = load i64, ptr %l53
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t171, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t172, ptr %l55
  br label %bb43
bb43:
  %t173 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e11
  br i1 %t173, label %bb44, label %bb45
bb44:
  %t175 = load i64, ptr %l53
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55, i32 0, i32 0
  %t178 = load { i64, ptr }, ptr %t177
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = call ptr @__olang_region_or(ptr %t179, ptr null)
  %t181 = icmp ne ptr %t180, null
  %t182 = select i1 %t181, ptr %t180, ptr null
  %t183 = icmp eq ptr %t182, %t176
  call void @__olang_region_settle(ptr %t176, i1 %t183)
  br label %bb45
bb45:
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %l13
  %t185 = ptrtoint ptr %v2 to i64
  store i64 %t185, ptr %l57, !tbaa !24
  %t186 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e12
  br i1 %t186, label %bb46, label %bb47
bb46:
  %t188 = call ptr @__olang_region_make(ptr %v2)
  %t189 = ptrtoint ptr %t188 to i64
  store i64 %t189, ptr %l57, !tbaa !24
  br label %bb47
bb47:
  %t190 = load i64, ptr %l57
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t191, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t192, ptr %l59
  br label %bb48
bb48:
  %t193 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e12
  br i1 %t193, label %bb49, label %bb50
bb49:
  %t195 = load i64, ptr %l57
  %t196 = inttoptr i64 %t195 to ptr
  %t197 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = icmp ne ptr %t200, null
  %t202 = select i1 %t201, ptr %t200, ptr null
  %t203 = icmp eq ptr %t202, %t196
  call void @__olang_region_settle(ptr %t196, i1 %t203)
  br label %bb50
bb50:
  %t204 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t204, ptr %l14
  %t205 = ptrtoint ptr %v2 to i64
  store i64 %t205, ptr %l61, !tbaa !24
  %t206 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e13
  br i1 %t206, label %bb51, label %bb52
bb51:
  %t208 = call ptr @__olang_region_make(ptr %v2)
  %t209 = ptrtoint ptr %t208 to i64
  store i64 %t209, ptr %l61, !tbaa !24
  br label %bb52
bb52:
  %t210 = load i64, ptr %l61
  %t211 = inttoptr i64 %t210 to ptr
  %t212 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t211, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t212, ptr %l63
  br label %bb53
bb53:
  %t213 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e13
  br i1 %t213, label %bb54, label %bb55
bb54:
  %t215 = load i64, ptr %l61
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63, i32 0, i32 0
  %t218 = load { i64, ptr }, ptr %t217
  %t219 = extractvalue { i64, ptr } %t218, 1
  %t220 = call ptr @__olang_region_or(ptr %t219, ptr null)
  %t221 = icmp ne ptr %t220, null
  %t222 = select i1 %t221, ptr %t220, ptr null
  %t223 = icmp eq ptr %t222, %t216
  call void @__olang_region_settle(ptr %t216, i1 %t223)
  br label %bb55
bb55:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %l15
  %t225 = ptrtoint ptr %v2 to i64
  store i64 %t225, ptr %l65, !tbaa !24
  %t226 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e14
  br i1 %t226, label %bb56, label %bb57
bb56:
  %t228 = call ptr @__olang_region_make(ptr %v2)
  %t229 = ptrtoint ptr %t228 to i64
  store i64 %t229, ptr %l65, !tbaa !24
  br label %bb57
bb57:
  %t230 = load i64, ptr %l65
  %t231 = inttoptr i64 %t230 to ptr
  %t232 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %t231, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232, ptr %l67
  br label %bb58
bb58:
  %t233 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e14
  br i1 %t233, label %bb59, label %bb60
bb59:
  %t235 = load i64, ptr %l65
  %t236 = inttoptr i64 %t235 to ptr
  %t237 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67, i32 0, i32 0
  %t238 = load { i64, ptr }, ptr %t237
  %t239 = extractvalue { i64, ptr } %t238, 1
  %t240 = call ptr @__olang_region_or(ptr %t239, ptr null)
  %t241 = icmp ne ptr %t240, null
  %t242 = select i1 %t241, ptr %t240, ptr null
  %t243 = icmp eq ptr %t242, %t236
  call void @__olang_region_settle(ptr %t236, i1 %t243)
  br label %bb60
bb60:
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %l16
  %t245 = ptrtoint ptr %v2 to i64
  store i64 %t245, ptr %l69, !tbaa !24
  %t246 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e15
  br i1 %t246, label %bb61, label %bb62
bb61:
  %t248 = call ptr @__olang_region_make(ptr %v2)
  %t249 = ptrtoint ptr %t248 to i64
  store i64 %t249, ptr %l69, !tbaa !24
  br label %bb62
bb62:
  %t250 = load i64, ptr %l69
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t251, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t252, ptr %l71
  br label %bb63
bb63:
  %t253 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e15
  br i1 %t253, label %bb64, label %bb65
bb64:
  %t255 = load i64, ptr %l69
  %t256 = inttoptr i64 %t255 to ptr
  %t257 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71, i32 0, i32 0
  %t258 = load { i64, ptr }, ptr %t257
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = call ptr @__olang_region_or(ptr %t259, ptr null)
  %t261 = icmp ne ptr %t260, null
  %t262 = select i1 %t261, ptr %t260, ptr null
  %t263 = icmp eq ptr %t262, %t256
  call void @__olang_region_settle(ptr %t256, i1 %t263)
  br label %bb65
bb65:
  %t264 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %l17
  %t265 = ptrtoint ptr %v2 to i64
  store i64 %t265, ptr %l73, !tbaa !24
  %t266 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e16
  br i1 %t266, label %bb66, label %bb67
bb66:
  %t268 = call ptr @__olang_region_make(ptr %v2)
  %t269 = ptrtoint ptr %t268 to i64
  store i64 %t269, ptr %l73, !tbaa !24
  br label %bb67
bb67:
  %t270 = load i64, ptr %l73
  %t271 = inttoptr i64 %t270 to ptr
  %t272 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t271, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t272, ptr %l75
  br label %bb68
bb68:
  %t273 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e16
  br i1 %t273, label %bb69, label %bb70
bb69:
  %t275 = load i64, ptr %l73
  %t276 = inttoptr i64 %t275 to ptr
  %t277 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75, i32 0, i32 0
  %t278 = load { i64, ptr }, ptr %t277
  %t279 = extractvalue { i64, ptr } %t278, 1
  %t280 = call ptr @__olang_region_or(ptr %t279, ptr null)
  %t281 = icmp ne ptr %t280, null
  %t282 = select i1 %t281, ptr %t280, ptr null
  %t283 = icmp eq ptr %t282, %t276
  call void @__olang_region_settle(ptr %t276, i1 %t283)
  br label %bb70
bb70:
  %t284 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  %t285 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 0
  %t286 = load ptr, ptr %l2, !tbaa !29
  store ptr %t286, ptr %t285, !tbaa !29
  %t287 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 1
  %t288 = load ptr, ptr %l3, !tbaa !29
  store ptr %t288, ptr %t287, !tbaa !29
  %t289 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 2
  %t290 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t290, ptr %t289
  %t291 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 3
  %t292 = load i1, ptr %l5, !tbaa !21
  store i1 %t292, ptr %t291, !tbaa !21
  %t293 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 4
  %t294 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %t293
  %t295 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 5
  %t296 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t296, ptr %t295
  %t297 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 6
  %t298 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t298, ptr %t297
  %t299 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 7
  %t300 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t300, ptr %t299
  %t301 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 8
  %t302 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %t301
  %t303 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 9
  %t304 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t304, ptr %t303
  %t305 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 10
  %t306 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t306, ptr %t305
  %t307 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 11
  %t308 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t308, ptr %t307
  %t309 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 12
  %t310 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t310, ptr %t309
  %t311 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 13
  %t312 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t312, ptr %t311
  %t313 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 14
  %t314 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t314, ptr %t313
  %t315 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 15
  %t316 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t316, ptr %t315
  %t317 = getelementptr %"compiler/typed:holdWalk", ptr %l77, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t284, ptr %t317
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l77, i64 472, i1 false)
  br label %ret
ret:
  ret void
}

declare void @__olang_check_failed(ptr) cold noreturn
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_scope_or(ptr, ptr)
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 40
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 40
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e_2ector(ptr %v0)
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

declare void @__olang_bang_failed_plain(ptr) cold noreturn
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
@olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aholdWalk__2erefs_2elocal_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d1 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"let L" }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"assign " }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d5 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"eval " }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"if " }>, align 8
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"else" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"loop" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"post" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"break" }>, align 8
@.d11 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"continue" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" {" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d15 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"return" }>, align 8
@.d16 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"raise " }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d18 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"reraise " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aExitKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 2}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
ret:
  ret void
}

declare void @__olang_sb_done(ptr)
@.d19 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"exit " }>, align 8
@.d20 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"assert " }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"defer" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" try" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"join" }>, align 8
@.d25 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"spawn " }>, align 8
@.d26 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" site " }>, align 8
@.d27 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"yield " }>, align 8
@.d28 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"suspend " }>, align 8
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aholdWalk_2e16 = weak hidden constant i1 false
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
@.d29 = private unnamed_addr constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"typed.ExitKind.Unreachable" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d30 = private unnamed_addr constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"typed.ExitKind.NullReached" }>, align 8
declare i64 @compiler_2ftyped_2ereached(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2ftyped_2earenaArray(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_9640b30413567955_c65a1e6fb20cf981 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
@olang_loc_c8cee6ec101913bd_743c2b1d0ab2dad9 = external constant [0 x i8]
@olang_loc_22aea6a044f95e17_c10e152cae22b18b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_3aLastUses_2ector(ptr %out, ptr %v0, i64 %a0)
@olang_loc_160fc62cca54a9e9_1017e7cee7f3c75d = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ftyped_3aLocalUses_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ePus_H0c70e9e86794aea54789ff5f3987086b(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5a8d28bd3acbc65d_f5c7f83d77176e09 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ecloseAliases(ptr %v0, ptr %a0)
@olang_loc_c21a1343bdb3d01_d6f77a8ccb597545 = external constant [0 x i8]
@olang_loc_4964fda744059959_ea5b63edb7fb932d = external constant [0 x i8]
declare i1 @compiler_2ftyped_2earmBreaks(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eexprsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare %"compiler/typed:BlockInfo" @compiler_2ftyped_3aBlockInfo_2ector(ptr %v0, i32 %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2ePush_H85e1838377aa8e6b322d82e3edbac596(ptr %v0, ptr %a0, %"compiler/typed:BlockInfo" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eFromTypeVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eClosingVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_49a7b0a2550beed6_c54fa6caa81e807a = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b3e084de49f7dfe2_9d51886cee01545e = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eSet_H54ebfdc15a9c097858a2e264494e7d5a(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2)
@olang_loc_4d8a06dfe39d8193_a27ec756202836f = external constant [0 x i8]
@olang_loc_104aca9b23d55792_b4686871930206ae = external constant [0 x i8]
@olang_loc_6333e3fa20d2f5d8_bcafed7a04540454 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, [1 x i64] } %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etargets(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1)
@olang_loc_9a2d2471d97215b1_125b5d47933e1fad = external constant [0 x i8]
@olang_loc_4086334666941342_2cd2470309ce51f6 = external constant [0 x i8]
@olang_loc_35eb3a0a3b047e6d_bf317ca81d1426a1 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H850118f76c49c45e73ad12b3c73517c9(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H658d0bbb24c75abb2e0dcb1121887af6(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eSetAt_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eRowOf(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReachRow(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H6a1e9f71e6394ce7f250c1dfd2eee93e(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H3f302293c6f4c07a80dfb5e30c1500bf(ptr %v0, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_77315c1e1ec03e98_be22ee0dd90c53a4 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2ematch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2, i1 %a3)
@olang_loc_ec88ab62730d3569_72c455660b6c295 = external constant [0 x i8]
@olang_loc_a5a46b672ecbc32_209a020a110ad15e = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2ewiden(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
@olang_loc_4b8ddca9d8f0d204_c8cf417eb9785a78 = external constant [0 x i8]
@olang_loc_f658218d2a233859_f81a26e56b3c591d = external constant [0 x i8]
@olang_loc_4c95fac740fe18b9_da00c3dfb70c298d = external constant [0 x i8]
@olang_loc_1ae239f8e5f7a55f_790ae28d8c0cd633 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_c0631815a77772a8_ad2a1d61fb1cdf14 = external constant [0 x i8]
@olang_loc_bb3d6fb8f9a8facd_6b23a8aabab7ea69 = external constant [0 x i8]
@olang_loc_cb0f3499142fc19d_d94490f94af5f129 = external constant [0 x i8]
@olang_loc_730e5d3857c59e23_64c21f8ca2d9dbaf = external constant [0 x i8]
@olang_loc_14162ea47c0c801c_ce4205068f01e790 = external constant [0 x i8]
@olang_loc_a93f600a1cb39be1_ee16d2dfcadba585 = external constant [0 x i8]
@olang_loc_f25a0dcb15ec66ae_41d78ed91c6395da = external constant [0 x i8]
@olang_loc_8726c5b979482c78_cdee9de0701e13e4 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2ecopyViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eresultLocal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5f0c96ba8f37c420_5ca612e1d5c707f4 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eAt_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efailHere(ptr %v0, ptr %a0, i1 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
@olang_loc_2cf1608fd5d1230c_1374e48cd144e348 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i1 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePop_3cBool_3e(ptr %v0, ptr %a0)
@olang_loc_73be6a0e490978a7_b5fa18d3e7eede33 = external constant [0 x i8]
@olang_loc_2fb6091d652311b2_1c71a9a414fce87e = external constant [0 x i8]
@olang_loc_8c1b8241682c8a5c_1491e83e9da6f28 = external constant [0 x i8]
@olang_loc_4fc9df9522ae1330_697d53c50db00ce4 = external constant [0 x i8]
@olang_loc_e4195c8d52320dab_6e5abcaf8844f88f = external constant [0 x i8]
@olang_loc_6df7d27e20fc18e6_9af88db0bee394aa = external constant [0 x i8]
@olang_loc_c52364142dc414a0_4d1da6470710a144 = external constant [0 x i8]
@olang_loc_a6cbf8c37e7b58e4_127b3a96b1e2c730 = external constant [0 x i8]
@olang_loc_899e4ae5152e7c8f_c8d5ce57c54889ab = external constant [0 x i8]
@olang_loc_cdd2e50680d68485_7d51e204495f7309 = external constant [0 x i8]
@olang_loc_2ee7063c57fe9793_68bf97cc73752027 = external constant [0 x i8]
@olang_loc_be8b3c6aa0377e2b_acae2459f1c4a24f = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_2676a1f2cfb255f8_2530c83c98e00394 = external constant [0 x i8]
declare void @compiler_2ftyped_2eunion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2emix(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregistered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etempGiven(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclosure(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregisteredBefore(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2earm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
@olang_loc_7fb442b2027c5df4_8cb8a301a51c1668 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eheld(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcd1867a2c89de03c7af27b93b5b476d9(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_2fe17ed863e993f3_a4fd95e432e2de7 = external constant [0 x i8]
@olang_loc_2b0ce19cf8abfa0_63d28338a0667b94 = external constant [0 x i8]
@olang_loc_231c306bfae66ae8_f9a103d13bf0009c = external constant [0 x i8]
@olang_loc_60c7f079a8f50056_f0211a32bac11e1a = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2efnVal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
@olang_loc_7e259cde601a72ba_d3d8f3b52bf79a7e = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2einBlock(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcb8bb928db85b876b7f95fc01a2ef730(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eelemStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etempStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etarget(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_60996a1f08c29aeb_ed876111a60916df = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2earmLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_10efe43793a641ac_2dabf1c43cd6a168 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eplaceLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprsLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eloopLeaves(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_b80660129801afa0_e660219d512f014 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eclausesLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_4e96dfdde30f8206_e09e7eb6a314a8ba = external constant [0 x i8]
@olang_loc_4c49c2cc391943fc_885b7fff3b4a3180 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
@olang_loc_7b432bbe8f05f1d7_7deffd42aa472253 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftyped_2eshort(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_78afbb313fff45b8_957466907ebeb484 = external constant [0 x i8]
@olang_loc_90a2a4daf32abd74_d37804826367c570 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_2c2074b813b4d1af_bb6745173ec2e4fb = external constant [0 x i8]
@olang_loc_bea5bf6ffc689610_b71acf810bfa0324 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2elistOwned(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_61141ab026762302_86235c78c2d902d6 = external constant [0 x i8]
@olang_loc_2566079f8423d483_66fa93375f6766f7 = external constant [0 x i8]
@olang_loc_f3346b4d6d82824c_aeee08707a274ea0 = external constant [0 x i8]
@olang_loc_4231ae67b136756b_a4f71f39f0a47447 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e_2ector(ptr %v0)

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
