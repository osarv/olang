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
%"compiler/definit:heldWalker" = type { i32, i32, i64, i1, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/definit:State" = type { i1, i1, i32, %"compiler/source:Span" }
%"compiler/definit:Verdict" = type { i1, %"compiler/source:Span", i32, %"compiler/source:Span" }
%"compiler/definit:Walker" = type { ptr, i32, i1, %"compiler/source:Span", i32, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
define dso_local i64 @compiler_2fdefinit_2eHeldWalk(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/definit:heldWalker"
  %l10 = alloca %"compiler/definit:heldWalker"
  %l11 = alloca ptr
  %l20 = alloca i1
  %l22 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 11
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = call %"compiler/definit:heldWalker" @compiler_2fdefinit_3aheldWalker_2ector(ptr %s0, i32 %a1, i32 %a2)
  store %"compiler/definit:heldWalker" %t13, ptr %l10
  br label %bb4
bb4:
  %t14 = load %"compiler/definit:heldWalker", ptr %l10
  store %"compiler/definit:heldWalker" %t14, ptr %l3
  store ptr %l3, ptr %l11, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 11
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_98f0ccb4874a0151_2f8f084c984a7dad)
  unreachable
bb6:
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t22, i32 0, i32 11
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %s0, ptr %v0, ptr %t27, ptr %t25, i1 false)
  br label %bb8
bb8:
  %t29 = getelementptr %"compiler/definit:heldWalker", ptr %l3, i32 0, i32 2
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = icmp eq i64 %t30, 1
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = getelementptr %"compiler/definit:heldWalker", ptr %l3, i32 0, i32 3
  %t35 = load i1, ptr %t34, !tbaa !21
  store i1 %t35, ptr %l20, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb11
bb11:
  %t37 = load i1, ptr %l20, !tbaa !21
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t38 = getelementptr %"compiler/definit:heldWalker", ptr %l3, i32 0, i32 4
  %t39 = load i64, ptr %t38, !tbaa !24
  store i64 %t39, ptr %l22, !tbaa !24
  br label %bb14
bb13:
  store i64 -1, ptr %l22, !tbaa !24
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t41 = load i64, ptr %l22, !tbaa !24
  store i64 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead() #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/definit:State"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/definit:State"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 0, ptr %l0
  %t1 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t1, ptr %l1
  br label %bb1
bb1:
  %t2 = load i32, ptr %l0, !range !{i32 0, i32 6}
  %t3 = load %"compiler/source:Span", ptr %l1
  %t4 = call %"compiler/definit:State" @compiler_2fdefinit_3aState_2ector(ptr %s0, i1 false, i1 false, i32 %t2, %"compiler/source:Span" %t3)
  store %"compiler/definit:State" %t4, ptr %l2
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t5 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t5, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:Verdict" @compiler_2fdefinit_2eVerdict_2eJudge(ptr %v0, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/definit:Walker"
  %l4 = alloca %"compiler/definit:State"
  %l7 = alloca %"compiler/definit:Walker"
  %l9 = alloca %"compiler/definit:State"
  %l11 = alloca i1
  %l13 = alloca i1
  %l24 = alloca %"compiler/definit:Verdict"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/definit:Verdict"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"compiler/definit:Walker" @compiler_2fdefinit_3aWalker_2ector(ptr %v0, ptr %s0, ptr %t1, i32 %a1)
  store %"compiler/definit:Walker" %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load %"compiler/definit:Walker", ptr %l7
  store %"compiler/definit:Walker" %t6, ptr %l3
  %t8 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eRun(ptr %s0, ptr %l3)
  store %"compiler/definit:State" %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load %"compiler/definit:State", ptr %l9
  store %"compiler/definit:State" %t9, ptr %l4
  br i1 %a2, label %bb3, label %bb4
bb3:
  %t12 = getelementptr %"compiler/definit:State", ptr %l4, i32 0, i32 0
  %t13 = load i1, ptr %t12, !tbaa !21
  store i1 %t13, ptr %l11, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l11, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = getelementptr %"compiler/definit:State", ptr %l4, i32 0, i32 1
  %t17 = load i1, ptr %t16, !tbaa !21
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t21 = load i1, ptr %l13, !tbaa !21
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t22 = load %"compiler/definit:State", ptr %l4
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Body", ptr %t23, i32 0, i32 4
  %t26 = load %"compiler/source:Span", ptr %t25
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eread(ptr %s0, ptr %l3, %"compiler/definit:State" %t22, %"compiler/source:Span" %t26)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t30 = getelementptr %"compiler/definit:Walker", ptr %l3, i32 0, i32 2
  %t31 = load i1, ptr %t30, !tbaa !21
  %t32 = getelementptr %"compiler/definit:Walker", ptr %l3, i32 0, i32 3
  %t33 = load %"compiler/source:Span", ptr %t32
  %t34 = getelementptr %"compiler/definit:Walker", ptr %l3, i32 0, i32 4
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 6}
  %t36 = getelementptr %"compiler/definit:Walker", ptr %l3, i32 0, i32 5
  %t37 = load %"compiler/source:Span", ptr %t36
  %t42 = call %"compiler/definit:Verdict" @compiler_2fdefinit_3aVerdict_2ector(ptr %s0, i1 %t31, %"compiler/source:Span" %t33, i32 %t35, %"compiler/source:Span" %t37)
  store %"compiler/definit:Verdict" %t42, ptr %l24
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load %"compiler/definit:Verdict", ptr %l24
  store %"compiler/definit:Verdict" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:Verdict", ptr %rv
  ret %"compiler/definit:Verdict" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eRun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/definit:State"
  %l7 = alloca %"compiler/definit:State"
  %rv = alloca %"compiler/definit:State"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/definit:Walker", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Body", ptr %t5, i32 0, i32 11
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  %t9 = call %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead()
  store %"compiler/definit:State" %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = load %"compiler/definit:State", ptr %l6
  %t13 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v0, ptr %t10, ptr %t11, %"compiler/definit:State" %t12)
  store %"compiler/definit:State" %t13, ptr %l7
  br label %bb2
bb2:
  %t14 = load %"compiler/definit:State", ptr %l7
  store %"compiler/definit:State" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/definit:State" %a2, %"compiler/definit:State" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/definit:State"
  %l3 = alloca %"compiler/definit:State"
  %l4 = alloca %"compiler/definit:State"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l22 = alloca { i64, ptr }
  %l30 = alloca %"compiler/definit:State"
  %l39 = alloca { i64, ptr }
  %l47 = alloca %"compiler/definit:State"
  %l56 = alloca %"compiler/definit:State"
  %l61 = alloca %"compiler/definit:State"
  %l66 = alloca %"compiler/definit:State"
  %l67 = alloca %"compiler/definit:State"
  %l74 = alloca %"compiler/definit:State"
  %l75 = alloca %"compiler/definit:State"
  %rv = alloca %"compiler/definit:State"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/definit:State" %a2, ptr %l2
  store %"compiler/definit:State" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t1, ptr %l4
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/typed:Arm", ptr %t3, i32 0, i32 1
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l7, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb2, label %bb3
bb2:
  br label %bb14
bb3:
  br label %bb4
bb4:
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t20, ptr %l22, !tbaa !27
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr ptr, ptr %t24, i64 %t21
  %t26 = load ptr, ptr %t25, !tbaa !39
  store ptr %t26, ptr %l8, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l8, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Alt", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = load %"compiler/definit:State", ptr %l4
  %t38 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t28, ptr %t32, %"compiler/definit:State" %t34)
  store %"compiler/definit:State" %t38, ptr %l30
  br label %bb5
bb5:
  %t39 = load %"compiler/definit:State", ptr %l30
  store %"compiler/definit:State" %t39, ptr %l4
  %t40 = load ptr, ptr %l8, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Alt", ptr %t40, i32 0, i32 1
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  store { i64, ptr } %t43, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l11, !tbaa !24
  br label %bb6
bb6:
  %t49 = load i64, ptr %l10, !tbaa !24
  %t50 = load i64, ptr %l11, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t57 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t57, ptr %l39, !tbaa !27
  %t58 = load i64, ptr %l10, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 %t58
  %t63 = load ptr, ptr %t62, !tbaa !39
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Bind", ptr %t63, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = load %"compiler/definit:State", ptr %l4
  %t75 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t65, ptr %t69, %"compiler/definit:State" %t71)
  store %"compiler/definit:State" %t75, ptr %l47
  br label %bb10
bb10:
  %t76 = load %"compiler/definit:State", ptr %l47
  store %"compiler/definit:State" %t76, ptr %l4
  br label %bb11
bb11:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb6
bb12:
  br label %bb13
bb13:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l6, !tbaa !24
  br label %bb1
bb14:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Arm", ptr %t86, i32 0, i32 2
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t90 = load %"compiler/definit:State", ptr %l4
  %t94 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t85, ptr %t89, %"compiler/definit:State" %t90)
  store %"compiler/definit:State" %t94, ptr %l56
  br label %bb15
bb15:
  %t95 = load %"compiler/definit:State", ptr %l56
  store %"compiler/definit:State" %t95, ptr %l4
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Arm", ptr %t97, i32 0, i32 3
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t101 = load %"compiler/definit:State", ptr %l4
  %t105 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t96, ptr %t100, %"compiler/definit:State" %t101)
  store %"compiler/definit:State" %t105, ptr %l61
  br label %bb16
bb16:
  %t106 = load %"compiler/definit:State", ptr %l61
  store %"compiler/definit:State" %t106, ptr %l4
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Arm", ptr %t108, i32 0, i32 4
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load %"compiler/definit:State", ptr %l4
  %t116 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t107, ptr %t111, %"compiler/definit:State" %t112)
  store %"compiler/definit:State" %t116, ptr %l66
  br label %bb17
bb17:
  %t117 = load %"compiler/definit:State", ptr %l66
  store %"compiler/definit:State" %t117, ptr %l4
  %t118 = load %"compiler/definit:State", ptr %l3
  store %"compiler/definit:State" %t118, ptr %l67
  %t119 = load %"compiler/definit:State", ptr %l4
  %t120 = load %"compiler/definit:State", ptr %l2
  %t121 = load %"compiler/definit:State", ptr %l3
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Arm", ptr %t122, i32 0, i32 0
  %t125 = load %"compiler/source:Span", ptr %t124
  %t131 = call %"compiler/definit:State" @compiler_2fdefinit_2eretag(%"compiler/definit:State" %t119, %"compiler/definit:State" %t120, %"compiler/definit:State" %t121, i32 4, %"compiler/source:Span" %t125)
  store %"compiler/definit:State" %t131, ptr %l74
  br label %bb18
bb18:
  %t132 = load %"compiler/definit:State", ptr %l67
  %t133 = load %"compiler/definit:State", ptr %l74
  %t134 = call %"compiler/definit:State" @compiler_2fdefinit_2emeet(%"compiler/definit:State" %t132, %"compiler/definit:State" %t133)
  store %"compiler/definit:State" %t134, ptr %l75
  br label %bb19
bb19:
  %t135 = load %"compiler/definit:State", ptr %l75
  store %"compiler/definit:State" %t135, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/definit:State" %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/definit:State"
  %l10 = alloca %"compiler/definit:State"
  %rv = alloca %"compiler/definit:State"
  store ptr %a1, ptr %l1
  store %"compiler/definit:State" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Block", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t12 = load %"compiler/definit:State", ptr %l2
  %t16 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %t11, %"compiler/definit:State" %t12)
  store %"compiler/definit:State" %t16, ptr %l10
  br label %bb4
bb4:
  %t17 = load %"compiler/definit:State", ptr %l10
  store %"compiler/definit:State" %t17, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblockSp(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l13 = alloca i64
  %l15 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/typed:BlockInfo"
  %l22 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/typed:Block", ptr %a1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = sext i32 %t4 to i64
  store i64 %t6, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp sge i64 %t8, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l2, !tbaa !24
  store i64 %t12, ptr %l9, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/definit:Walker", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 8
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l13
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = load i64, ptr %l13, !tbaa !24
  %t23 = icmp slt i64 %t21, %t22
  store i1 %t23, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t25 = load i1, ptr %l8, !tbaa !21
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/definit:Walker", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 8
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t31, i64 %t32)
  store %"compiler/typed:BlockInfo" %t35, ptr %l20
  br label %bb7
bb6:
  %t36 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t36, ptr %l22
  br label %bb8
bb7:
  %t37 = getelementptr %"compiler/typed:BlockInfo", ptr %l20, i32 0, i32 2
  %t38 = load %"compiler/source:Span", ptr %t37
  store %"compiler/source:Span" %t38, ptr %l15
  br label %bb9
bb8:
  %t40 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t40, ptr %l15
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t41 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eclauses(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/definit:State" %a2, %"compiler/definit:State" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"compiler/definit:State"
  %l4 = alloca %"compiler/definit:State"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"compiler/definit:State"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l26 = alloca { i64, ptr }
  %l33 = alloca %"compiler/definit:State"
  %l42 = alloca { i64, ptr }
  %l49 = alloca %"compiler/definit:State"
  %l52 = alloca %"compiler/definit:State"
  %l59 = alloca %"compiler/definit:State"
  %l60 = alloca %"compiler/definit:State"
  %rv = alloca %"compiler/definit:State"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store %"compiler/definit:State" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %"compiler/definit:State" %a3, ptr %l4
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp eq i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load %"compiler/definit:State", ptr %l4
  store %"compiler/definit:State" %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l7, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb5, label %bb6
bb5:
  br label %bb19
bb6:
  br label %bb7
bb7:
  %t25 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t25, ptr %l26, !tbaa !27
  %t26 = load i64, ptr %l6, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  store ptr %t31, ptr %l8, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load ptr, ptr %l8, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Clause", ptr %t34, i32 0, i32 3
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load %"compiler/definit:State", ptr %l2
  %t42 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t33, ptr %t37, %"compiler/definit:State" %t38)
  store %"compiler/definit:State" %t42, ptr %l33
  br label %bb8
bb8:
  %t43 = load %"compiler/definit:State", ptr %l33
  store %"compiler/definit:State" %t43, ptr %l9
  %t44 = load ptr, ptr %l8, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Clause", ptr %t44, i32 0, i32 4
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l12, !tbaa !24
  br label %bb9
bb9:
  %t53 = load i64, ptr %l11, !tbaa !24
  %t54 = load i64, ptr %l12, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t61 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t61, ptr %l42, !tbaa !27
  %t62 = load i64, ptr %l11, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr ptr, ptr %t65, i64 %t62
  %t67 = load ptr, ptr %t66, !tbaa !39
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t72 = load %"compiler/definit:State", ptr %l9
  %t76 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t69, ptr %t67, %"compiler/definit:State" %t72)
  store %"compiler/definit:State" %t76, ptr %l49
  br label %bb13
bb13:
  %t77 = load %"compiler/definit:State", ptr %l49
  store %"compiler/definit:State" %t77, ptr %l9
  br label %bb14
bb14:
  %t78 = load i64, ptr %l11, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l11, !tbaa !24
  br label %bb9
bb15:
  %t82 = load %"compiler/definit:State", ptr %l4
  store %"compiler/definit:State" %t82, ptr %l52
  %t83 = load %"compiler/definit:State", ptr %l9
  %t84 = load %"compiler/definit:State", ptr %l2
  %t85 = load %"compiler/definit:State", ptr %l4
  %t86 = load ptr, ptr %l8, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Clause", ptr %t86, i32 0, i32 0
  %t89 = load %"compiler/source:Span", ptr %t88
  %t95 = call %"compiler/definit:State" @compiler_2fdefinit_2eretag(%"compiler/definit:State" %t83, %"compiler/definit:State" %t84, %"compiler/definit:State" %t85, i32 5, %"compiler/source:Span" %t89)
  store %"compiler/definit:State" %t95, ptr %l59
  br label %bb16
bb16:
  %t96 = load %"compiler/definit:State", ptr %l52
  %t97 = load %"compiler/definit:State", ptr %l59
  %t98 = call %"compiler/definit:State" @compiler_2fdefinit_2emeet(%"compiler/definit:State" %t96, %"compiler/definit:State" %t97)
  store %"compiler/definit:State" %t98, ptr %l60
  br label %bb17
bb17:
  %t99 = load %"compiler/definit:State", ptr %l60
  store %"compiler/definit:State" %t99, ptr %l4
  br label %bb18
bb18:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb4
bb19:
  %t104 = load %"compiler/definit:State", ptr %l4
  store %"compiler/definit:State" %t104, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/definit:State" %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/definit:State"
  %l3 = alloca %"compiler/definit:State"
  %l10 = alloca %"compiler/definit:State"
  %l12 = alloca i32
  %l15 = alloca %"compiler/definit:State"
  %rv = alloca %"compiler/definit:State"
  store ptr %a1, ptr %l1
  store %"compiler/definit:State" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t9 = load %"compiler/definit:State", ptr %l2
  %t13 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr1(ptr %v0, ptr %v1, ptr %a0, ptr %t8, %"compiler/definit:State" %t9)
  store %"compiler/definit:State" %t13, ptr %l10
  br label %bb4
bb4:
  %t14 = load %"compiler/definit:State", ptr %l10
  store %"compiler/definit:State" %t14, ptr %l3
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t15)
  store i32 %t17, ptr %l12
  br label %bb5
bb5:
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t19 = load i32, ptr %l12, !tbaa !23
  %t21 = icmp eq i32 %t19, %t18
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = call %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead()
  store %"compiler/definit:State" %t23, ptr %l15
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t24 = load %"compiler/definit:State", ptr %l15
  store %"compiler/definit:State" %t24, ptr %rv
  br label %ret
bb9:
  %t25 = load %"compiler/definit:State", ptr %l3
  store %"compiler/definit:State" %t25, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr1(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/definit:State" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/definit:State"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/definit:State"
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca %"compiler/definit:State"
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca %"compiler/definit:State"
  %l17 = alloca %"compiler/definit:State"
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca %"compiler/definit:State"
  %l22 = alloca %"compiler/definit:State"
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l31 = alloca %"compiler/definit:State"
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca %"compiler/definit:State"
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l75 = alloca %"compiler/definit:State"
  %l76 = alloca ptr
  %l77 = alloca i1
  %l87 = alloca %"compiler/definit:State"
  %l88 = alloca ptr
  %l89 = alloca i1
  %l97 = alloca ptr
  %l98 = alloca i1
  %l107 = alloca %"compiler/definit:State"
  %l112 = alloca %"compiler/definit:State"
  %l113 = alloca ptr
  %l114 = alloca i1
  %l119 = alloca ptr
  %l121 = alloca ptr
  %l126 = alloca %"compiler/definit:State"
  %l127 = alloca %"compiler/definit:State"
  %l128 = alloca ptr
  %l129 = alloca i1
  %l138 = alloca %"compiler/definit:State"
  %l144 = alloca %"compiler/definit:State"
  %l146 = alloca ptr
  %l147 = alloca i1
  %l156 = alloca %"compiler/definit:State"
  %l161 = alloca %"compiler/definit:State"
  %l162 = alloca ptr
  %l163 = alloca i1
  %l168 = alloca ptr
  %l171 = alloca ptr
  %l172 = alloca ptr
  %l175 = alloca ptr
  %l180 = alloca %"compiler/definit:State"
  %l181 = alloca %"compiler/definit:State"
  %l182 = alloca %"compiler/definit:State"
  %l183 = alloca ptr
  %l184 = alloca i1
  %l194 = alloca %"compiler/definit:State"
  %l199 = alloca %"compiler/definit:State"
  %l205 = alloca %"compiler/definit:State"
  %l208 = alloca %"compiler/definit:State"
  %l209 = alloca ptr
  %l210 = alloca i1
  %l215 = alloca ptr
  %l217 = alloca ptr
  %l222 = alloca %"compiler/definit:State"
  %l223 = alloca %"compiler/definit:State"
  %l224 = alloca ptr
  %l225 = alloca i1
  %l234 = alloca %"compiler/definit:State"
  %l235 = alloca %"compiler/definit:State"
  %l244 = alloca { i64, ptr }
  %l251 = alloca %"compiler/definit:State"
  %l258 = alloca ptr
  %l266 = alloca %"compiler/definit:State"
  %l268 = alloca ptr
  %l269 = alloca i1
  %l278 = alloca %"compiler/definit:State"
  %l284 = alloca %"compiler/definit:State"
  %l285 = alloca ptr
  %l286 = alloca i1
  %l291 = alloca ptr
  %l292 = alloca i1
  %l305 = alloca { i64, ptr }
  %l313 = alloca %"compiler/definit:State"
  %l317 = alloca ptr
  %l318 = alloca i1
  %l327 = alloca %"compiler/definit:State"
  %l329 = alloca ptr
  %l330 = alloca i1
  %l344 = alloca { i64, ptr }
  %l347 = alloca ptr
  %l348 = alloca i1
  %l357 = alloca %"compiler/definit:State"
  %l361 = alloca ptr
  %l362 = alloca i1
  %l371 = alloca %"compiler/definit:State"
  %rv = alloca %"compiler/definit:State"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/definit:State" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t2 = load ptr, ptr %l45, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l45, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l46, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l46, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t11 = load ptr, ptr %l49, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l49, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l50, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l50, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t19 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t19, ptr %rv
  br label %ret
bb10:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t22 = load ptr, ptr %l54, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb11, label %bb12
bb11:
  %t25 = load ptr, ptr %l54, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 2
  store i1 %t28, ptr %l55, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l55, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l3, !tbaa !29
  br label %bb23
bb14:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t37 = load ptr, ptr %l60, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb15, label %bb16
bb15:
  %t40 = load ptr, ptr %l60, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 18}
  %t43 = icmp eq i64 %t41, 3
  store i1 %t43, ptr %l61, !tbaa !21
  br label %bb16
bb16:
  %t44 = load i1, ptr %l61, !tbaa !21
  br i1 %t44, label %bb17, label %bb18
bb17:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l3, !tbaa !29
  br label %bb23
bb18:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t52 = load ptr, ptr %l66, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb19, label %bb20
bb19:
  %t55 = load ptr, ptr %l66, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 18}
  %t58 = icmp eq i64 %t56, 4
  store i1 %t58, ptr %l67, !tbaa !21
  br label %bb20
bb20:
  %t59 = load i1, ptr %l67, !tbaa !21
  br i1 %t59, label %bb21, label %bb22
bb21:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t68 = load %"compiler/definit:State", ptr %l2
  %t72 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eplace(ptr %v0, ptr %v1, ptr %t66, ptr %t67, %"compiler/definit:State" %t68)
  store %"compiler/definit:State" %t72, ptr %l75
  br label %bb24
bb24:
  %t73 = load %"compiler/definit:State", ptr %l75
  store %"compiler/definit:State" %t73, ptr %rv
  br label %ret
bb25:
  %t74 = load ptr, ptr %l1, !tbaa !29
  store ptr %t74, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t75 = load ptr, ptr %l76, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb26, label %bb27
bb26:
  %t78 = load ptr, ptr %l76, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 18}
  %t81 = icmp eq i64 %t79, 5
  store i1 %t81, ptr %l77, !tbaa !21
  br label %bb27
bb27:
  %t82 = load i1, ptr %l77, !tbaa !21
  br i1 %t82, label %bb28, label %bb29
bb28:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr { i64, [5 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t85, i32 0, i32 2
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l4, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l4, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Promote", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = load %"compiler/definit:State", ptr %l2
  %t99 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t89, ptr %t93, %"compiler/definit:State" %t95)
  store %"compiler/definit:State" %t99, ptr %l87
  br label %bb31
bb31:
  %t100 = load %"compiler/definit:State", ptr %l87
  store %"compiler/definit:State" %t100, ptr %rv
  br label %ret
bb32:
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t102 = load ptr, ptr %l88, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb33, label %bb34
bb33:
  %t105 = load ptr, ptr %l88, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 18}
  %t108 = icmp eq i64 %t106, 6
  store i1 %t108, ptr %l89, !tbaa !21
  br label %bb34
bb34:
  %t109 = load i1, ptr %l89, !tbaa !21
  br i1 %t109, label %bb35, label %bb36
bb35:
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr { i64, [5 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t112, i32 0, i32 2
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l5, !tbaa !29
  br label %bb37
bb36:
  br label %bb51
bb37:
  %t116 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t116, ptr %l6
  %t118 = load ptr, ptr %l5, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Call", ptr %t118, i32 0, i32 0
  %t121 = load ptr, ptr %t120, !tbaa !29
  store ptr %t121, ptr %l7, !tbaa !29
  %t123 = load ptr, ptr %l7, !tbaa !29
  store ptr %t123, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t124 = load ptr, ptr %l97, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb38, label %bb39
bb38:
  %t127 = load ptr, ptr %l97, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 5}
  %t130 = icmp eq i64 %t128, 2
  store i1 %t130, ptr %l98, !tbaa !21
  br label %bb39
bb39:
  %t131 = load i1, ptr %l98, !tbaa !21
  br i1 %t131, label %bb40, label %bb41
bb40:
  %t132 = load ptr, ptr %l7, !tbaa !29
  %t134 = getelementptr { i64, [3 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { ptr }, ptr %t134, i32 0, i32 0
  %t136 = load ptr, ptr %t135
  store ptr %t136, ptr %l8, !tbaa !29
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l8, !tbaa !29
  %t141 = load %"compiler/definit:State", ptr %l6
  %t145 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t138, ptr %t139, %"compiler/definit:State" %t141)
  store %"compiler/definit:State" %t145, ptr %l107
  br label %bb43
bb43:
  %t146 = load %"compiler/definit:State", ptr %l107
  store %"compiler/definit:State" %t146, ptr %l6
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
  call void @__olang_check_failed(ptr @olang_loc_58a9ebc4913c6262_741c23f7607ff1de)
  unreachable
bb49:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l5, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Call", ptr %t148, i32 0, i32 1
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  %t152 = load %"compiler/definit:State", ptr %l6
  %t156 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexprs(ptr %v0, ptr %v1, ptr %t147, { i64, ptr } %t151, %"compiler/definit:State" %t152)
  store %"compiler/definit:State" %t156, ptr %l112
  br label %bb50
bb50:
  %t157 = load %"compiler/definit:State", ptr %l112
  store %"compiler/definit:State" %t157, ptr %rv
  br label %ret
bb51:
  %t158 = load ptr, ptr %l1, !tbaa !29
  store ptr %t158, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t159 = load ptr, ptr %l113, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb52, label %bb53
bb52:
  %t162 = load ptr, ptr %l113, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 18}
  %t165 = icmp eq i64 %t163, 7
  store i1 %t165, ptr %l114, !tbaa !21
  br label %bb53
bb53:
  %t166 = load i1, ptr %l114, !tbaa !21
  br i1 %t166, label %bb54, label %bb55
bb54:
  %t167 = load ptr, ptr %l1, !tbaa !29
  %t169 = getelementptr { i64, [5 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t169, i32 0, i32 2
  %t171 = load ptr, ptr %t170
  store ptr %t171, ptr %l9, !tbaa !29
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l119, !tbaa !29
  %t174 = load ptr, ptr %l9, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Make", ptr %t174, i32 0, i32 3
  %t177 = load ptr, ptr %t176, !tbaa !29
  store ptr %t177, ptr %l121, !tbaa !29
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load ptr, ptr %l9, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Make", ptr %t179, i32 0, i32 2
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  %t183 = load %"compiler/definit:State", ptr %l2
  %t187 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexprs(ptr %v0, ptr %v1, ptr %t178, { i64, ptr } %t182, %"compiler/definit:State" %t183)
  store %"compiler/definit:State" %t187, ptr %l126
  br label %bb57
bb57:
  %t188 = load ptr, ptr %l119, !tbaa !29
  %t189 = load ptr, ptr %l121, !tbaa !29
  %t190 = load %"compiler/definit:State", ptr %l126
  %t191 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t188, ptr %t189, %"compiler/definit:State" %t190)
  store %"compiler/definit:State" %t191, ptr %l127
  br label %bb58
bb58:
  %t192 = load %"compiler/definit:State", ptr %l127
  store %"compiler/definit:State" %t192, ptr %rv
  br label %ret
bb59:
  %t193 = load ptr, ptr %l1, !tbaa !29
  store ptr %t193, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t194 = load ptr, ptr %l128, !tbaa !29
  %t195 = icmp ne ptr %t194, null
  br i1 %t195, label %bb60, label %bb61
bb60:
  %t197 = load ptr, ptr %l128, !tbaa !29
  %t198 = load i64, ptr %t197, !range !{i64 0, i64 18}
  %t200 = icmp eq i64 %t198, 8
  store i1 %t200, ptr %l129, !tbaa !21
  br label %bb61
bb61:
  %t201 = load i1, ptr %l129, !tbaa !21
  br i1 %t201, label %bb62, label %bb63
bb62:
  %t202 = load ptr, ptr %l1, !tbaa !29
  %t204 = getelementptr { i64, [5 x i64] }, ptr %t202, i32 0, i32 1
  %t205 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t204, i32 0, i32 2
  %t206 = load ptr, ptr %t205
  store ptr %t206, ptr %l10, !tbaa !29
  br label %bb64
bb63:
  br label %bb67
bb64:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load ptr, ptr %l10, !tbaa !29
  %t211 = getelementptr %"compiler/typed:Collect", ptr %t209, i32 0, i32 0
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t213 = load %"compiler/definit:State", ptr %l2
  %t217 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t208, ptr %t212, %"compiler/definit:State" %t213)
  store %"compiler/definit:State" %t217, ptr %l138
  br label %bb65
bb65:
  %t218 = load %"compiler/definit:State", ptr %l138
  store %"compiler/definit:State" %t218, ptr %l11
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l10, !tbaa !29
  %t222 = getelementptr %"compiler/typed:Collect", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = load %"compiler/definit:State", ptr %l11
  %t229 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t219, ptr %t223, %"compiler/definit:State" %t225)
  store %"compiler/definit:State" %t229, ptr %l144
  br label %bb66
bb66:
  %t230 = load %"compiler/definit:State", ptr %l11
  store %"compiler/definit:State" %t230, ptr %rv
  br label %ret
bb67:
  %t232 = load ptr, ptr %l1, !tbaa !29
  store ptr %t232, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t233 = load ptr, ptr %l146, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb68, label %bb69
bb68:
  %t236 = load ptr, ptr %l146, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 18}
  %t239 = icmp eq i64 %t237, 9
  store i1 %t239, ptr %l147, !tbaa !21
  br label %bb69
bb69:
  %t240 = load i1, ptr %l147, !tbaa !21
  br i1 %t240, label %bb70, label %bb71
bb70:
  %t241 = load ptr, ptr %l1, !tbaa !29
  %t243 = getelementptr { i64, [5 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t243, i32 0, i32 2
  %t245 = load i32, ptr %t244, !range !{i32 0, i32 52}
  store i32 %t245, ptr %l12
  %t247 = load ptr, ptr %l1, !tbaa !29
  %t249 = getelementptr { i64, [5 x i64] }, ptr %t247, i32 0, i32 1
  %t250 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t249, i32 0, i32 4
  %t251 = load { i64, ptr }, ptr %t250
  store { i64, ptr } %t251, ptr %l13, !tbaa !27
  br label %bb72
bb71:
  br label %bb77
bb72:
  %t253 = load i32, ptr %l12, !range !{i32 0, i32 52}
  %t255 = trunc i64 30 to i32
  %t256 = icmp eq i32 %t253, %t255
  br i1 %t256, label %bb73, label %bb74
bb73:
  %t258 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t258, ptr %l156
  br label %bb76
bb74:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t262 = load %"compiler/definit:State", ptr %l2
  %t266 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexprs(ptr %v0, ptr %v1, ptr %t260, { i64, ptr } %t261, %"compiler/definit:State" %t262)
  store %"compiler/definit:State" %t266, ptr %l161
  br label %bb75
bb75:
  %t267 = load %"compiler/definit:State", ptr %l161
  store %"compiler/definit:State" %t267, ptr %l156
  br label %bb76
bb76:
  %t268 = load %"compiler/definit:State", ptr %l156
  store %"compiler/definit:State" %t268, ptr %rv
  br label %ret
bb77:
  %t269 = load ptr, ptr %l1, !tbaa !29
  store ptr %t269, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t270 = load ptr, ptr %l162, !tbaa !29
  %t271 = icmp ne ptr %t270, null
  br i1 %t271, label %bb78, label %bb79
bb78:
  %t273 = load ptr, ptr %l162, !tbaa !29
  %t274 = load i64, ptr %t273, !range !{i64 0, i64 18}
  %t276 = icmp eq i64 %t274, 10
  store i1 %t276, ptr %l163, !tbaa !21
  br label %bb79
bb79:
  %t277 = load i1, ptr %l163, !tbaa !21
  br i1 %t277, label %bb80, label %bb81
bb80:
  %t278 = load ptr, ptr %l1, !tbaa !29
  %t280 = getelementptr { i64, [5 x i64] }, ptr %t278, i32 0, i32 1
  %t281 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t280, i32 0, i32 2
  %t282 = load ptr, ptr %t281
  store ptr %t282, ptr %l14, !tbaa !29
  br label %bb82
bb81:
  br label %bb86
bb82:
  %t284 = load ptr, ptr %l0, !tbaa !29
  store ptr %t284, ptr %l168, !tbaa !29
  %t285 = load ptr, ptr %l14, !tbaa !29
  %t287 = getelementptr %"compiler/typed:Slice", ptr %t285, i32 0, i32 2
  %t288 = load ptr, ptr %t287, !tbaa !29
  store ptr %t288, ptr %l171, !tbaa !29
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l172, !tbaa !29
  %t291 = load ptr, ptr %l14, !tbaa !29
  %t293 = getelementptr %"compiler/typed:Slice", ptr %t291, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  store ptr %t294, ptr %l175, !tbaa !29
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load ptr, ptr %l14, !tbaa !29
  %t299 = getelementptr %"compiler/typed:Slice", ptr %t297, i32 0, i32 0
  %t300 = load ptr, ptr %t299, !tbaa !29
  %t301 = load %"compiler/definit:State", ptr %l2
  %t305 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eplace(ptr %v0, ptr %v1, ptr %t296, ptr %t300, %"compiler/definit:State" %t301)
  store %"compiler/definit:State" %t305, ptr %l180
  br label %bb83
bb83:
  %t306 = load ptr, ptr %l172, !tbaa !29
  %t307 = load ptr, ptr %l175, !tbaa !29
  %t308 = load %"compiler/definit:State", ptr %l180
  %t309 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t306, ptr %t307, %"compiler/definit:State" %t308)
  store %"compiler/definit:State" %t309, ptr %l181
  br label %bb84
bb84:
  %t310 = load ptr, ptr %l168, !tbaa !29
  %t311 = load ptr, ptr %l171, !tbaa !29
  %t312 = load %"compiler/definit:State", ptr %l181
  %t313 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t310, ptr %t311, %"compiler/definit:State" %t312)
  store %"compiler/definit:State" %t313, ptr %l182
  br label %bb85
bb85:
  %t314 = load %"compiler/definit:State", ptr %l182
  store %"compiler/definit:State" %t314, ptr %rv
  br label %ret
bb86:
  %t315 = load ptr, ptr %l1, !tbaa !29
  store ptr %t315, ptr %l183, !tbaa !29
  store i1 false, ptr %l184, !tbaa !21
  %t316 = load ptr, ptr %l183, !tbaa !29
  %t317 = icmp ne ptr %t316, null
  br i1 %t317, label %bb87, label %bb88
bb87:
  %t319 = load ptr, ptr %l183, !tbaa !29
  %t320 = load i64, ptr %t319, !range !{i64 0, i64 18}
  %t322 = icmp eq i64 %t320, 11
  store i1 %t322, ptr %l184, !tbaa !21
  br label %bb88
bb88:
  %t323 = load i1, ptr %l184, !tbaa !21
  br i1 %t323, label %bb89, label %bb90
bb89:
  %t324 = load ptr, ptr %l1, !tbaa !29
  %t326 = getelementptr { i64, [5 x i64] }, ptr %t324, i32 0, i32 1
  %t327 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t326, i32 0, i32 2
  %t328 = load ptr, ptr %t327
  store ptr %t328, ptr %l15, !tbaa !29
  br label %bb91
bb90:
  br label %bb96
bb91:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load ptr, ptr %l15, !tbaa !29
  %t333 = getelementptr %"compiler/typed:Cond", ptr %t331, i32 0, i32 0
  %t334 = load ptr, ptr %t333, !tbaa !29
  %t336 = load %"compiler/definit:State", ptr %l2
  %t340 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t330, ptr %t334, %"compiler/definit:State" %t336)
  store %"compiler/definit:State" %t340, ptr %l194
  br label %bb92
bb92:
  %t341 = load %"compiler/definit:State", ptr %l194
  store %"compiler/definit:State" %t341, ptr %l16
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l15, !tbaa !29
  %t345 = getelementptr %"compiler/typed:Cond", ptr %t343, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !29
  %t347 = load %"compiler/definit:State", ptr %l16
  %t351 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t342, ptr %t346, %"compiler/definit:State" %t347)
  store %"compiler/definit:State" %t351, ptr %l199
  br label %bb93
bb93:
  %t352 = load %"compiler/definit:State", ptr %l199
  store %"compiler/definit:State" %t352, ptr %l17
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load ptr, ptr %l15, !tbaa !29
  %t356 = getelementptr %"compiler/typed:Cond", ptr %t354, i32 0, i32 2
  %t357 = load ptr, ptr %t356, !tbaa !29
  %t359 = load %"compiler/definit:State", ptr %l16
  %t363 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t353, ptr %t357, %"compiler/definit:State" %t359)
  store %"compiler/definit:State" %t363, ptr %l205
  br label %bb94
bb94:
  %t364 = load %"compiler/definit:State", ptr %l205
  %t365 = load %"compiler/definit:State", ptr %l17
  %t369 = call %"compiler/definit:State" @compiler_2fdefinit_2emeet(%"compiler/definit:State" %t365, %"compiler/definit:State" %t364)
  store %"compiler/definit:State" %t369, ptr %l208
  br label %bb95
bb95:
  %t370 = load %"compiler/definit:State", ptr %l208
  store %"compiler/definit:State" %t370, ptr %rv
  br label %ret
bb96:
  %t371 = load ptr, ptr %l1, !tbaa !29
  store ptr %t371, ptr %l209, !tbaa !29
  store i1 false, ptr %l210, !tbaa !21
  %t372 = load ptr, ptr %l209, !tbaa !29
  %t373 = icmp ne ptr %t372, null
  br i1 %t373, label %bb97, label %bb98
bb97:
  %t375 = load ptr, ptr %l209, !tbaa !29
  %t376 = load i64, ptr %t375, !range !{i64 0, i64 18}
  %t378 = icmp eq i64 %t376, 12
  store i1 %t378, ptr %l210, !tbaa !21
  br label %bb98
bb98:
  %t379 = load i1, ptr %l210, !tbaa !21
  br i1 %t379, label %bb99, label %bb100
bb99:
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = getelementptr { i64, [5 x i64] }, ptr %t380, i32 0, i32 1
  %t383 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t382, i32 0, i32 2
  %t384 = load ptr, ptr %t383
  store ptr %t384, ptr %l19, !tbaa !29
  br label %bb101
bb100:
  br label %bb104
bb101:
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l215, !tbaa !29
  %t387 = load ptr, ptr %l19, !tbaa !29
  %t389 = getelementptr %"compiler/typed:Seq", ptr %t387, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !29
  store ptr %t390, ptr %l217, !tbaa !29
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load ptr, ptr %l19, !tbaa !29
  %t394 = getelementptr %"compiler/typed:Seq", ptr %t392, i32 0, i32 0
  %t395 = load { i64, ptr }, ptr %t394, !tbaa !27
  %t396 = load %"compiler/definit:State", ptr %l2
  %t400 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2estmts(ptr %v0, ptr %v1, ptr %t391, { i64, ptr } %t395, %"compiler/definit:State" %t396)
  store %"compiler/definit:State" %t400, ptr %l222
  br label %bb102
bb102:
  %t401 = load ptr, ptr %l215, !tbaa !29
  %t402 = load ptr, ptr %l217, !tbaa !29
  %t403 = load %"compiler/definit:State", ptr %l222
  %t404 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t401, ptr %t402, %"compiler/definit:State" %t403)
  store %"compiler/definit:State" %t404, ptr %l223
  br label %bb103
bb103:
  %t405 = load %"compiler/definit:State", ptr %l223
  store %"compiler/definit:State" %t405, ptr %rv
  br label %ret
bb104:
  %t406 = load ptr, ptr %l1, !tbaa !29
  store ptr %t406, ptr %l224, !tbaa !29
  store i1 false, ptr %l225, !tbaa !21
  %t407 = load ptr, ptr %l224, !tbaa !29
  %t408 = icmp ne ptr %t407, null
  br i1 %t408, label %bb105, label %bb106
bb105:
  %t410 = load ptr, ptr %l224, !tbaa !29
  %t411 = load i64, ptr %t410, !range !{i64 0, i64 18}
  %t413 = icmp eq i64 %t411, 13
  store i1 %t413, ptr %l225, !tbaa !21
  br label %bb106
bb106:
  %t414 = load i1, ptr %l225, !tbaa !21
  br i1 %t414, label %bb107, label %bb108
bb107:
  %t415 = load ptr, ptr %l1, !tbaa !29
  %t417 = getelementptr { i64, [5 x i64] }, ptr %t415, i32 0, i32 1
  %t418 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t417, i32 0, i32 2
  %t419 = load ptr, ptr %t418
  store ptr %t419, ptr %l20, !tbaa !29
  br label %bb109
bb108:
  br label %bb126
bb109:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load ptr, ptr %l20, !tbaa !29
  %t424 = getelementptr %"compiler/typed:Match", ptr %t422, i32 0, i32 0
  %t425 = load { i64, ptr }, ptr %t424, !tbaa !27
  %t426 = load %"compiler/definit:State", ptr %l2
  %t430 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2estmts(ptr %v0, ptr %v1, ptr %t421, { i64, ptr } %t425, %"compiler/definit:State" %t426)
  store %"compiler/definit:State" %t430, ptr %l234
  br label %bb110
bb110:
  %t431 = load %"compiler/definit:State", ptr %l234
  store %"compiler/definit:State" %t431, ptr %l21
  %t432 = call %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead()
  store %"compiler/definit:State" %t432, ptr %l235
  br label %bb111
bb111:
  %t433 = load %"compiler/definit:State", ptr %l235
  store %"compiler/definit:State" %t433, ptr %l22
  %t434 = load ptr, ptr %l20, !tbaa !29
  %t436 = getelementptr %"compiler/typed:Match", ptr %t434, i32 0, i32 1
  %t437 = load { i64, ptr }, ptr %t436, !tbaa !27
  store { i64, ptr } %t437, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t439 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t439, 0
  store i64 %t441, ptr %l25, !tbaa !24
  br label %bb112
bb112:
  %t443 = load i64, ptr %l24, !tbaa !24
  %t444 = load i64, ptr %l25, !tbaa !24
  %t447 = icmp slt i64 %t443, %t444
  %t449 = xor i1 %t447, true
  br i1 %t449, label %bb113, label %bb114
bb113:
  br label %bb118
bb114:
  br label %bb115
bb115:
  %t451 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t451, ptr %l244, !tbaa !27
  %t452 = load i64, ptr %l24, !tbaa !24
  %t454 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t455 = load ptr, ptr %t454, !tbaa !27
  %t456 = getelementptr ptr, ptr %t455, i64 %t452
  %t457 = load ptr, ptr %t456, !tbaa !39
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = load %"compiler/definit:State", ptr %l21
  %t462 = load %"compiler/definit:State", ptr %l22
  %t467 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2earm(ptr %v0, ptr %v1, ptr %t459, ptr %t457, %"compiler/definit:State" %t461, %"compiler/definit:State" %t462)
  store %"compiler/definit:State" %t467, ptr %l251
  br label %bb116
bb116:
  %t468 = load %"compiler/definit:State", ptr %l251
  store %"compiler/definit:State" %t468, ptr %l22
  br label %bb117
bb117:
  %t469 = load i64, ptr %l24, !tbaa !24
  %t471 = add i64 %t469, 1
  store i64 %t471, ptr %l24, !tbaa !24
  br label %bb112
bb118:
  %t473 = load ptr, ptr %l20, !tbaa !29
  %t475 = getelementptr %"compiler/typed:Match", ptr %t473, i32 0, i32 2
  %t476 = load ptr, ptr %t475, !tbaa !29
  %t478 = icmp eq ptr %t476, null
  %t480 = xor i1 %t478, true
  br i1 %t480, label %bb119, label %bb120
bb119:
  %t482 = load ptr, ptr %l0, !tbaa !29
  store ptr %t482, ptr %l258, !tbaa !29
  %t483 = load ptr, ptr %l20, !tbaa !29
  %t485 = getelementptr %"compiler/typed:Match", ptr %t483, i32 0, i32 2
  %t486 = load ptr, ptr %t485, !tbaa !29
  %t488 = icmp eq ptr %t486, null
  br i1 %t488, label %bb121, label %bb122
bb120:
  br label %bb125
bb121:
  call void @__olang_check_failed(ptr @olang_loc_84c4d6ea62c85acc_37a8fef9eaee128)
  unreachable
bb122:
  br label %bb123
bb123:
  %t490 = load ptr, ptr %l20, !tbaa !29
  %t492 = getelementptr %"compiler/typed:Match", ptr %t490, i32 0, i32 2
  %t493 = load ptr, ptr %t492, !tbaa !29
  %t494 = load %"compiler/definit:State", ptr %l21
  %t495 = load %"compiler/definit:State", ptr %l22
  %t496 = load ptr, ptr %l258, !tbaa !29
  %t500 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2earm(ptr %v0, ptr %v1, ptr %t496, ptr %t493, %"compiler/definit:State" %t494, %"compiler/definit:State" %t495)
  store %"compiler/definit:State" %t500, ptr %l266
  br label %bb124
bb124:
  %t501 = load %"compiler/definit:State", ptr %l266
  store %"compiler/definit:State" %t501, ptr %l22
  br label %bb125
bb125:
  %t502 = load %"compiler/definit:State", ptr %l22
  store %"compiler/definit:State" %t502, ptr %rv
  br label %ret
bb126:
  %t504 = load ptr, ptr %l1, !tbaa !29
  store ptr %t504, ptr %l268, !tbaa !29
  store i1 false, ptr %l269, !tbaa !21
  %t505 = load ptr, ptr %l268, !tbaa !29
  %t506 = icmp ne ptr %t505, null
  br i1 %t506, label %bb127, label %bb128
bb127:
  %t508 = load ptr, ptr %l268, !tbaa !29
  %t509 = load i64, ptr %t508, !range !{i64 0, i64 18}
  %t511 = icmp eq i64 %t509, 14
  store i1 %t511, ptr %l269, !tbaa !21
  br label %bb128
bb128:
  %t512 = load i1, ptr %l269, !tbaa !21
  br i1 %t512, label %bb129, label %bb130
bb129:
  %t513 = load ptr, ptr %l1, !tbaa !29
  %t515 = getelementptr { i64, [5 x i64] }, ptr %t513, i32 0, i32 1
  %t516 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t515, i32 0, i32 2
  %t517 = load ptr, ptr %t516
  store ptr %t517, ptr %l27, !tbaa !29
  br label %bb131
bb130:
  br label %bb134
bb131:
  %t519 = load ptr, ptr %l0, !tbaa !29
  %t520 = load ptr, ptr %l27, !tbaa !29
  %t522 = getelementptr %"compiler/typed:Try", ptr %t520, i32 0, i32 0
  %t523 = load ptr, ptr %t522, !tbaa !29
  %t524 = load %"compiler/definit:State", ptr %l2
  %t528 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t519, ptr %t523, %"compiler/definit:State" %t524)
  store %"compiler/definit:State" %t528, ptr %l278
  br label %bb132
bb132:
  %t529 = load %"compiler/definit:State", ptr %l278
  %t530 = load ptr, ptr %l0, !tbaa !29
  %t531 = load ptr, ptr %l27, !tbaa !29
  %t533 = getelementptr %"compiler/typed:Try", ptr %t531, i32 0, i32 1
  %t534 = load { i64, ptr }, ptr %t533, !tbaa !27
  %t535 = load %"compiler/definit:State", ptr %l2
  %t541 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eclauses(ptr %v0, ptr %v1, ptr %t530, { i64, ptr } %t534, %"compiler/definit:State" %t535, %"compiler/definit:State" %t529)
  store %"compiler/definit:State" %t541, ptr %l284
  br label %bb133
bb133:
  %t542 = load %"compiler/definit:State", ptr %l284
  store %"compiler/definit:State" %t542, ptr %rv
  br label %ret
bb134:
  %t543 = load ptr, ptr %l1, !tbaa !29
  store ptr %t543, ptr %l285, !tbaa !29
  store i1 false, ptr %l286, !tbaa !21
  %t544 = load ptr, ptr %l285, !tbaa !29
  %t545 = icmp ne ptr %t544, null
  br i1 %t545, label %bb135, label %bb136
bb135:
  %t547 = load ptr, ptr %l285, !tbaa !29
  %t548 = load i64, ptr %t547, !range !{i64 0, i64 18}
  %t550 = icmp eq i64 %t548, 15
  store i1 %t550, ptr %l286, !tbaa !21
  br label %bb136
bb136:
  %t551 = load i1, ptr %l286, !tbaa !21
  br i1 %t551, label %bb137, label %bb138
bb137:
  %t552 = load ptr, ptr %l1, !tbaa !29
  %t554 = getelementptr { i64, [5 x i64] }, ptr %t552, i32 0, i32 1
  %t555 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t554, i32 0, i32 2
  %t556 = load ptr, ptr %t555
  store ptr %t556, ptr %l29, !tbaa !29
  br label %bb139
bb138:
  br label %bb164
bb139:
  %t558 = load ptr, ptr %l29, !tbaa !29
  store ptr %t558, ptr %l291, !tbaa !29
  store i1 false, ptr %l292, !tbaa !21
  %t559 = load ptr, ptr %l291, !tbaa !29
  %t560 = icmp ne ptr %t559, null
  br i1 %t560, label %bb140, label %bb141
bb140:
  %t562 = load ptr, ptr %l291, !tbaa !29
  %t563 = load i64, ptr %t562, !range !{i64 0, i64 3}
  %t565 = icmp eq i64 %t563, 1
  store i1 %t565, ptr %l292, !tbaa !21
  br label %bb141
bb141:
  %t566 = load i1, ptr %l292, !tbaa !21
  br i1 %t566, label %bb142, label %bb143
bb142:
  %t567 = load ptr, ptr %l29, !tbaa !29
  %t569 = getelementptr { i64, [4 x i64] }, ptr %t567, i32 0, i32 1
  %t570 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t569, i32 0, i32 1
  %t571 = load { i64, ptr }, ptr %t570
  store { i64, ptr } %t571, ptr %l30, !tbaa !27
  br label %bb144
bb143:
  br label %bb152
bb144:
  %t573 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t573, ptr %l31
  %t575 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t575, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t577 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t579 = extractvalue { i64, ptr } %t577, 0
  store i64 %t579, ptr %l34, !tbaa !24
  br label %bb145
bb145:
  %t581 = load i64, ptr %l33, !tbaa !24
  %t582 = load i64, ptr %l34, !tbaa !24
  %t585 = icmp slt i64 %t581, %t582
  %t587 = xor i1 %t585, true
  br i1 %t587, label %bb146, label %bb147
bb146:
  br label %bb151
bb147:
  br label %bb148
bb148:
  %t589 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t589, ptr %l305, !tbaa !27
  %t590 = load i64, ptr %l33, !tbaa !24
  %t592 = getelementptr { i64, ptr }, ptr %l305, i32 0, i32 1
  %t593 = load ptr, ptr %t592, !tbaa !27
  %t594 = getelementptr ptr, ptr %t593, i64 %t590
  %t595 = load ptr, ptr %t594, !tbaa !39
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t600 = getelementptr %"compiler/typed:Capture", ptr %t595, i32 0, i32 1
  %t601 = load ptr, ptr %t600, !tbaa !29
  %t603 = load %"compiler/definit:State", ptr %l31
  %t607 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t597, ptr %t601, %"compiler/definit:State" %t603)
  store %"compiler/definit:State" %t607, ptr %l313
  br label %bb149
bb149:
  %t608 = load %"compiler/definit:State", ptr %l313
  store %"compiler/definit:State" %t608, ptr %l31
  br label %bb150
bb150:
  %t609 = load i64, ptr %l33, !tbaa !24
  %t611 = add i64 %t609, 1
  store i64 %t611, ptr %l33, !tbaa !24
  br label %bb145
bb151:
  %t613 = load %"compiler/definit:State", ptr %l31
  store %"compiler/definit:State" %t613, ptr %rv
  br label %ret
bb152:
  %t615 = load ptr, ptr %l29, !tbaa !29
  store ptr %t615, ptr %l317, !tbaa !29
  store i1 false, ptr %l318, !tbaa !21
  %t616 = load ptr, ptr %l317, !tbaa !29
  %t617 = icmp ne ptr %t616, null
  br i1 %t617, label %bb153, label %bb154
bb153:
  %t619 = load ptr, ptr %l317, !tbaa !29
  %t620 = load i64, ptr %t619, !range !{i64 0, i64 3}
  %t622 = icmp eq i64 %t620, 2
  store i1 %t622, ptr %l318, !tbaa !21
  br label %bb154
bb154:
  %t623 = load i1, ptr %l318, !tbaa !21
  br i1 %t623, label %bb155, label %bb156
bb155:
  %t624 = load ptr, ptr %l29, !tbaa !29
  %t626 = getelementptr { i64, [4 x i64] }, ptr %t624, i32 0, i32 1
  %t627 = getelementptr { i32, ptr, i32 }, ptr %t626, i32 0, i32 1
  %t628 = load ptr, ptr %t627
  store ptr %t628, ptr %l36, !tbaa !29
  br label %bb157
bb156:
  br label %bb159
bb157:
  %t630 = load ptr, ptr %l0, !tbaa !29
  %t631 = load ptr, ptr %l36, !tbaa !29
  %t633 = load %"compiler/definit:State", ptr %l2
  %t637 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t630, ptr %t631, %"compiler/definit:State" %t633)
  store %"compiler/definit:State" %t637, ptr %l327
  br label %bb158
bb158:
  %t638 = load %"compiler/definit:State", ptr %l327
  store %"compiler/definit:State" %t638, ptr %rv
  br label %ret
bb159:
  br i1 true, label %bb160, label %bb161
bb160:
  br label %bb162
bb161:
  br label %bb163
bb162:
  %t639 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t639, ptr %rv
  br label %ret
bb163:
  call void @__olang_check_failed(ptr @olang_loc_2666e55c871bfc88_11a50ffb28817424)
  unreachable
bb164:
  %t641 = load ptr, ptr %l1, !tbaa !29
  store ptr %t641, ptr %l329, !tbaa !29
  store i1 false, ptr %l330, !tbaa !21
  %t642 = load ptr, ptr %l329, !tbaa !29
  %t643 = icmp ne ptr %t642, null
  br i1 %t643, label %bb165, label %bb166
bb165:
  %t645 = load ptr, ptr %l329, !tbaa !29
  %t646 = load i64, ptr %t645, !range !{i64 0, i64 18}
  %t648 = icmp eq i64 %t646, 16
  store i1 %t648, ptr %l330, !tbaa !21
  br label %bb166
bb166:
  %t649 = load i1, ptr %l330, !tbaa !21
  br i1 %t649, label %bb167, label %bb168
bb167:
  %t650 = load ptr, ptr %l1, !tbaa !29
  %t652 = getelementptr { i64, [5 x i64] }, ptr %t650, i32 0, i32 1
  %t653 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t652, i32 0, i32 2
  %t654 = load ptr, ptr %t653
  store ptr %t654, ptr %l37, !tbaa !29
  br label %bb169
bb168:
  br label %bb188
bb169:
  %t656 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t656, ptr %l38
  %t658 = load ptr, ptr %l37, !tbaa !29
  %t660 = getelementptr %"compiler/typed:Text", ptr %t658, i32 0, i32 0
  %t661 = load { i64, ptr }, ptr %t660, !tbaa !27
  store { i64, ptr } %t661, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t663 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t665 = extractvalue { i64, ptr } %t663, 0
  store i64 %t665, ptr %l41, !tbaa !24
  br label %bb170
bb170:
  %t667 = load i64, ptr %l40, !tbaa !24
  %t668 = load i64, ptr %l41, !tbaa !24
  %t671 = icmp slt i64 %t667, %t668
  %t673 = xor i1 %t671, true
  br i1 %t673, label %bb171, label %bb172
bb171:
  br label %bb187
bb172:
  br label %bb173
bb173:
  %t675 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t675, ptr %l344, !tbaa !27
  %t676 = load i64, ptr %l40, !tbaa !24
  %t678 = getelementptr { i64, ptr }, ptr %l344, i32 0, i32 1
  %t679 = load ptr, ptr %t678, !tbaa !27
  %t680 = getelementptr ptr, ptr %t679, i64 %t676
  %t681 = load ptr, ptr %t680, !tbaa !39
  store ptr %t681, ptr %l42, !tbaa !29
  %t683 = load ptr, ptr %l42, !tbaa !29
  store ptr %t683, ptr %l347, !tbaa !29
  store i1 false, ptr %l348, !tbaa !21
  %t684 = load ptr, ptr %l347, !tbaa !29
  %t685 = icmp ne ptr %t684, null
  br i1 %t685, label %bb174, label %bb175
bb174:
  %t687 = load ptr, ptr %l347, !tbaa !29
  %t688 = load i64, ptr %t687, !range !{i64 0, i64 2}
  %t690 = icmp eq i64 %t688, 1
  store i1 %t690, ptr %l348, !tbaa !21
  br label %bb175
bb175:
  %t691 = load i1, ptr %l348, !tbaa !21
  br i1 %t691, label %bb176, label %bb177
bb176:
  %t692 = load ptr, ptr %l42, !tbaa !29
  %t694 = getelementptr { i64, [2 x i64] }, ptr %t692, i32 0, i32 1
  %t695 = getelementptr { ptr }, ptr %t694, i32 0, i32 0
  %t696 = load ptr, ptr %t695
  store ptr %t696, ptr %l43, !tbaa !29
  br label %bb178
bb177:
  br label %bb180
bb178:
  %t698 = load ptr, ptr %l0, !tbaa !29
  %t699 = load ptr, ptr %l43, !tbaa !29
  %t701 = load %"compiler/definit:State", ptr %l38
  %t705 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t698, ptr %t699, %"compiler/definit:State" %t701)
  store %"compiler/definit:State" %t705, ptr %l357
  br label %bb179
bb179:
  %t706 = load %"compiler/definit:State", ptr %l357
  store %"compiler/definit:State" %t706, ptr %l38
  br label %bb185
bb180:
  br i1 true, label %bb181, label %bb182
bb181:
  br label %bb183
bb182:
  br label %bb184
bb183:
  br label %bb185
bb184:
  call void @__olang_check_failed(ptr @olang_loc_156bf6b7f20d7659_5aae6743b02be315)
  unreachable
bb185:
  br label %bb186
bb186:
  %t707 = load i64, ptr %l40, !tbaa !24
  %t709 = add i64 %t707, 1
  store i64 %t709, ptr %l40, !tbaa !24
  br label %bb170
bb187:
  %t711 = load %"compiler/definit:State", ptr %l38
  store %"compiler/definit:State" %t711, ptr %rv
  br label %ret
bb188:
  %t713 = load ptr, ptr %l1, !tbaa !29
  store ptr %t713, ptr %l361, !tbaa !29
  store i1 false, ptr %l362, !tbaa !21
  %t714 = load ptr, ptr %l361, !tbaa !29
  %t715 = icmp ne ptr %t714, null
  br i1 %t715, label %bb189, label %bb190
bb189:
  %t717 = load ptr, ptr %l361, !tbaa !29
  %t718 = load i64, ptr %t717, !range !{i64 0, i64 18}
  %t720 = icmp eq i64 %t718, 17
  store i1 %t720, ptr %l362, !tbaa !21
  br label %bb190
bb190:
  %t721 = load i1, ptr %l362, !tbaa !21
  br i1 %t721, label %bb191, label %bb192
bb191:
  %t722 = load ptr, ptr %l1, !tbaa !29
  %t724 = getelementptr { i64, [5 x i64] }, ptr %t722, i32 0, i32 1
  %t725 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t724, i32 0, i32 2
  %t726 = load ptr, ptr %t725
  store ptr %t726, ptr %l44, !tbaa !29
  br label %bb193
bb192:
  br label %bb195
bb193:
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t729 = load ptr, ptr %l44, !tbaa !29
  %t731 = load %"compiler/definit:State", ptr %l2
  %t735 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t728, ptr %t729, %"compiler/definit:State" %t731)
  store %"compiler/definit:State" %t735, ptr %l371
  br label %bb194
bb194:
  %t736 = load %"compiler/definit:State", ptr %l371
  store %"compiler/definit:State" %t736, ptr %rv
  br label %ret
bb195:
  call void @__olang_check_failed(ptr @olang_loc_304516e39709ae7e_333bbc0782cf3342)
  unreachable
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/definit:State" %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"compiler/definit:State"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l20 = alloca { i64, ptr }
  %l27 = alloca %"compiler/definit:State"
  %rv = alloca %"compiler/definit:State"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %"compiler/definit:State" %a2, ptr %l3
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp eq i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load %"compiler/definit:State", ptr %l3
  store %"compiler/definit:State" %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t25, ptr %l20, !tbaa !27
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  %t36 = load %"compiler/definit:State", ptr %l3
  %t40 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %t31, %"compiler/definit:State" %t36)
  store %"compiler/definit:State" %t40, ptr %l27
  br label %bb8
bb8:
  %t41 = load %"compiler/definit:State", ptr %l27
  store %"compiler/definit:State" %t41, ptr %l3
  br label %bb9
bb9:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l5, !tbaa !24
  br label %bb4
bb10:
  %t46 = load %"compiler/definit:State", ptr %l3
  store %"compiler/definit:State" %t46, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local i1 @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eisL(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
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
  %t19 = getelementptr %"compiler/definit:Walker", ptr %a0, i32 0, i32 1
  %t20 = load i32, ptr %t19, !tbaa !23
  %t23 = icmp eq i32 %t16, %t20
  store i1 %t23, ptr %l3, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_76be02bbb9c5cc0_603b59278fb7a8ac)
  unreachable
bb11:
  %t25 = load i1, ptr %l3, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/definit:State" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/definit:State"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %l12 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l42 = alloca %"compiler/definit:State"
  %l43 = alloca ptr
  %l44 = alloca i1
  %l52 = alloca %"compiler/definit:State"
  %l53 = alloca ptr
  %l54 = alloca i1
  %l59 = alloca ptr
  %l62 = alloca ptr
  %l67 = alloca %"compiler/definit:State"
  %l68 = alloca %"compiler/definit:State"
  %l69 = alloca ptr
  %l70 = alloca i1
  %l79 = alloca %"compiler/definit:State"
  %l80 = alloca ptr
  %l81 = alloca i1
  %l90 = alloca %"compiler/definit:State"
  %l91 = alloca ptr
  %l92 = alloca i1
  %l99 = alloca i64
  %l101 = alloca i1
  %l103 = alloca ptr
  %l106 = alloca i64
  %l108 = alloca i1
  %rv = alloca %"compiler/definit:State"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/definit:State" %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t22 = load i32, ptr %l4, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/definit:Walker", ptr %t23, i32 0, i32 1
  %t26 = load i32, ptr %t25, !tbaa !23
  %t29 = icmp eq i32 %t22, %t26
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/definit:State", ptr %l2
  %t33 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eread(ptr %v0, ptr %t31, %"compiler/definit:State" %t32, %"compiler/source:Span" %t33)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t37 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t37, ptr %rv
  br label %ret
bb10:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t40 = load ptr, ptr %l27, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l27, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 1
  store i1 %t46, ptr %l28, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l28, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t48 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t48, ptr %rv
  br label %ret
bb16:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t51 = load ptr, ptr %l32, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t54 = load ptr, ptr %l32, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 8}
  %t57 = icmp eq i64 %t55, 2
  store i1 %t57, ptr %l33, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l33, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l5, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l5, !tbaa !29
  %t68 = load %"compiler/definit:State", ptr %l2
  %t72 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t65, ptr %t66, %"compiler/definit:State" %t68)
  store %"compiler/definit:State" %t72, ptr %l42
  br label %bb22
bb22:
  %t73 = load %"compiler/definit:State", ptr %l42
  store %"compiler/definit:State" %t73, ptr %rv
  br label %ret
bb23:
  %t74 = load ptr, ptr %l1, !tbaa !29
  store ptr %t74, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t75 = load ptr, ptr %l43, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb24, label %bb25
bb24:
  %t78 = load ptr, ptr %l43, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 8}
  %t81 = icmp eq i64 %t79, 3
  store i1 %t81, ptr %l44, !tbaa !21
  br label %bb25
bb25:
  %t82 = load i1, ptr %l44, !tbaa !21
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t85, i32 0, i32 2
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l6, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t91 = load %"compiler/definit:State", ptr %l2
  %t95 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eplace(ptr %v0, ptr %v1, ptr %t89, ptr %t90, %"compiler/definit:State" %t91)
  store %"compiler/definit:State" %t95, ptr %l52
  br label %bb29
bb29:
  %t96 = load %"compiler/definit:State", ptr %l52
  store %"compiler/definit:State" %t96, ptr %rv
  br label %ret
bb30:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t98 = load ptr, ptr %l53, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb31, label %bb32
bb31:
  %t101 = load ptr, ptr %l53, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 8}
  %t104 = icmp eq i64 %t102, 4
  store i1 %t104, ptr %l54, !tbaa !21
  br label %bb32
bb32:
  %t105 = load i1, ptr %l54, !tbaa !21
  br i1 %t105, label %bb33, label %bb34
bb33:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [4 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t108, i32 0, i32 2
  %t110 = load ptr, ptr %t109
  store ptr %t110, ptr %l7, !tbaa !29
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l59, !tbaa !29
  %t113 = load ptr, ptr %l7, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Elem", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  store ptr %t116, ptr %l62, !tbaa !29
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load ptr, ptr %l7, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Elem", ptr %t119, i32 0, i32 0
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = load %"compiler/definit:State", ptr %l2
  %t127 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eplace(ptr %v0, ptr %v1, ptr %t118, ptr %t122, %"compiler/definit:State" %t123)
  store %"compiler/definit:State" %t127, ptr %l67
  br label %bb36
bb36:
  %t128 = load ptr, ptr %l59, !tbaa !29
  %t129 = load ptr, ptr %l62, !tbaa !29
  %t130 = load %"compiler/definit:State", ptr %l67
  %t131 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t128, ptr %t129, %"compiler/definit:State" %t130)
  store %"compiler/definit:State" %t131, ptr %l68
  br label %bb37
bb37:
  %t132 = load %"compiler/definit:State", ptr %l68
  store %"compiler/definit:State" %t132, ptr %rv
  br label %ret
bb38:
  %t133 = load ptr, ptr %l1, !tbaa !29
  store ptr %t133, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t134 = load ptr, ptr %l69, !tbaa !29
  %t135 = icmp ne ptr %t134, null
  br i1 %t135, label %bb39, label %bb40
bb39:
  %t137 = load ptr, ptr %l69, !tbaa !29
  %t138 = load i64, ptr %t137, !range !{i64 0, i64 8}
  %t140 = icmp eq i64 %t138, 5
  store i1 %t140, ptr %l70, !tbaa !21
  br label %bb40
bb40:
  %t141 = load i1, ptr %l70, !tbaa !21
  br i1 %t141, label %bb41, label %bb42
bb41:
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr { i64, [4 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t144, i32 0, i32 2
  %t146 = load ptr, ptr %t145
  store ptr %t146, ptr %l8, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l8, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Payload", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t153 = load %"compiler/definit:State", ptr %l2
  %t157 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eplace(ptr %v0, ptr %v1, ptr %t148, ptr %t152, %"compiler/definit:State" %t153)
  store %"compiler/definit:State" %t157, ptr %l79
  br label %bb44
bb44:
  %t158 = load %"compiler/definit:State", ptr %l79
  store %"compiler/definit:State" %t158, ptr %rv
  br label %ret
bb45:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t160 = load ptr, ptr %l80, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb46, label %bb47
bb46:
  %t163 = load ptr, ptr %l80, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 8}
  %t166 = icmp eq i64 %t164, 6
  store i1 %t166, ptr %l81, !tbaa !21
  br label %bb47
bb47:
  %t167 = load i1, ptr %l81, !tbaa !21
  br i1 %t167, label %bb48, label %bb49
bb48:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [4 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t170, i32 0, i32 2
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l9, !tbaa !29
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l9, !tbaa !29
  %t177 = load %"compiler/definit:State", ptr %l2
  %t181 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t174, ptr %t175, %"compiler/definit:State" %t177)
  store %"compiler/definit:State" %t181, ptr %l90
  br label %bb51
bb51:
  %t182 = load %"compiler/definit:State", ptr %l90
  store %"compiler/definit:State" %t182, ptr %rv
  br label %ret
bb52:
  %t183 = load ptr, ptr %l1, !tbaa !29
  store ptr %t183, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t184 = load ptr, ptr %l91, !tbaa !29
  %t185 = icmp ne ptr %t184, null
  br i1 %t185, label %bb53, label %bb54
bb53:
  %t187 = load ptr, ptr %l91, !tbaa !29
  %t188 = load i64, ptr %t187, !range !{i64 0, i64 8}
  %t190 = icmp eq i64 %t188, 7
  store i1 %t190, ptr %l92, !tbaa !21
  br label %bb54
bb54:
  %t191 = load i1, ptr %l92, !tbaa !21
  br i1 %t191, label %bb55, label %bb56
bb55:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t194 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 1
  %t195 = getelementptr { %"compiler/source:Span", i32 }, ptr %t194, i32 0, i32 0
  %t196 = load %"compiler/source:Span", ptr %t195
  store %"compiler/source:Span" %t196, ptr %l10
  br label %bb57
bb56:
  br label %bb68
bb57:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/definit:Walker", ptr %t198, i32 0, i32 6
  %t202 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t200)
  store i64 %t202, ptr %l99
  br label %bb58
bb58:
  %t203 = load i64, ptr %l99, !tbaa !24
  %t204 = icmp sgt i64 %t203, 0
  br i1 %t204, label %bb59, label %bb60
bb59:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/definit:Walker", ptr %t206, i32 0, i32 6
  store ptr %t208, ptr %l103, !tbaa !29
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/definit:Walker", ptr %t209, i32 0, i32 6
  %t213 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t211)
  store i64 %t213, ptr %l106
  br label %bb61
bb60:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb63
bb61:
  %t214 = load i64, ptr %l106, !tbaa !24
  %t215 = sub i64 %t214, 1
  %t216 = load ptr, ptr %l103, !tbaa !29
  %t218 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t216, i64 %t215)
  store i1 %t218, ptr %l108
  br label %bb62
bb62:
  %t219 = load i1, ptr %l108, !tbaa !21
  store i1 %t219, ptr %l101, !tbaa !21
  br label %bb63
bb63:
  %t220 = load i1, ptr %l101, !tbaa !21
  br i1 %t220, label %bb64, label %bb65
bb64:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load %"compiler/definit:State", ptr %l2
  %t223 = load %"compiler/source:Span", ptr %l10
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eread(ptr %v0, ptr %t221, %"compiler/definit:State" %t222, %"compiler/source:Span" %t223)
  br label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb67
bb67:
  %t227 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t227, ptr %rv
  br label %ret
bb68:
  call void @__olang_check_failed(ptr @olang_loc_2c3786087cdb93b5_d0365e9ed2e87ce9)
  unreachable
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local void @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eread(ptr %v0, ptr %a0, %"compiler/definit:State" %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/definit:State"
  %l5 = alloca i1
  %l8 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/definit:State" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/definit:Walker", ptr %t1, i32 0, i32 2
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t6 = getelementptr %"compiler/definit:State", ptr %l1, i32 0, i32 0
  %t7 = load i1, ptr %t6, !tbaa !21
  %t9 = xor i1 %t7, true
  store i1 %t9, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l5, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb6
bb5:
  %t12 = getelementptr %"compiler/definit:State", ptr %l1, i32 0, i32 1
  %t13 = load i1, ptr %t12, !tbaa !21
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/definit:Walker", ptr %t16, i32 0, i32 2
  store i1 true, ptr %t18, !tbaa !21
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/definit:Walker", ptr %t19, i32 0, i32 3
  store %"compiler/source:Span" %a2, ptr %t23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/definit:State", ptr %l1, i32 0, i32 2
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 6}
  %t29 = getelementptr %"compiler/definit:Walker", ptr %t24, i32 0, i32 4
  store i32 %t26, ptr %t29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/definit:State", ptr %l1, i32 0, i32 3
  %t32 = load %"compiler/source:Span", ptr %t31
  %t35 = getelementptr %"compiler/definit:Walker", ptr %t30, i32 0, i32 5
  store %"compiler/source:Span" %t32, ptr %t35
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/definit:State" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/definit:State"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca %"compiler/definit:State"
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca %"compiler/definit:State"
  %l11 = alloca %"compiler/definit:State"
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca ptr
  %l15 = alloca %"compiler/definit:State"
  %l16 = alloca i64
  %l17 = alloca %"compiler/definit:State"
  %l18 = alloca %"compiler/definit:State"
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca %"compiler/definit:State"
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca %"compiler/definit:State"
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca %"compiler/definit:State"
  %l33 = alloca ptr
  %l34 = alloca %"compiler/definit:State"
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca i1
  %l59 = alloca %"compiler/definit:State"
  %l66 = alloca %"compiler/definit:State"
  %l68 = alloca ptr
  %l69 = alloca i1
  %l78 = alloca i1
  %l80 = alloca %"compiler/definit:State"
  %l85 = alloca %"compiler/definit:State"
  %l93 = alloca %"compiler/definit:State"
  %l94 = alloca i1
  %l97 = alloca i1
  %l98 = alloca i32
  %l100 = alloca i1
  %l104 = alloca %"compiler/definit:State"
  %l106 = alloca ptr
  %l107 = alloca i1
  %l116 = alloca %"compiler/definit:State"
  %l117 = alloca ptr
  %l118 = alloca i1
  %l130 = alloca %"compiler/definit:State"
  %l133 = alloca i64
  %l141 = alloca %"compiler/definit:State"
  %l148 = alloca %"compiler/definit:State"
  %l154 = alloca %"compiler/definit:State"
  %l158 = alloca %"compiler/definit:State"
  %l164 = alloca %"compiler/definit:State"
  %l165 = alloca %"compiler/definit:State"
  %l170 = alloca %"compiler/definit:State"
  %l171 = alloca %"compiler/definit:State"
  %l172 = alloca %"compiler/definit:State"
  %l173 = alloca %"compiler/definit:State"
  %l174 = alloca i32
  %l178 = alloca %"compiler/source:Span"
  %l179 = alloca %"compiler/definit:State"
  %l180 = alloca %"compiler/definit:State"
  %l181 = alloca %"compiler/definit:State"
  %l182 = alloca %"compiler/definit:State"
  %l183 = alloca i32
  %l184 = alloca ptr
  %l190 = alloca %"compiler/source:Span"
  %l191 = alloca %"compiler/definit:State"
  %l192 = alloca %"compiler/definit:State"
  %l193 = alloca ptr
  %l194 = alloca i1
  %l207 = alloca %"compiler/definit:State"
  %l211 = alloca %"compiler/definit:State"
  %l216 = alloca i1
  %l218 = alloca i1
  %l222 = alloca i1
  %l224 = alloca %"compiler/definit:State"
  %l226 = alloca i1
  %l233 = alloca %"compiler/definit:State"
  %l235 = alloca ptr
  %l236 = alloca i1
  %l239 = alloca %"compiler/definit:State"
  %l240 = alloca ptr
  %l241 = alloca i1
  %l249 = alloca %"compiler/definit:State"
  %l250 = alloca %"compiler/definit:State"
  %l251 = alloca ptr
  %l252 = alloca i1
  %l255 = alloca %"compiler/definit:State"
  %l256 = alloca ptr
  %l257 = alloca i1
  %l266 = alloca %"compiler/definit:State"
  %l267 = alloca %"compiler/definit:State"
  %l268 = alloca ptr
  %l269 = alloca i1
  %l277 = alloca %"compiler/definit:State"
  %l278 = alloca %"compiler/definit:State"
  %l279 = alloca ptr
  %l280 = alloca i1
  %l291 = alloca %"compiler/definit:State"
  %l295 = alloca %"compiler/definit:State"
  %l297 = alloca ptr
  %l298 = alloca i1
  %l307 = alloca %"compiler/definit:State"
  %l308 = alloca ptr
  %l309 = alloca i1
  %l318 = alloca %"compiler/definit:State"
  %l320 = alloca ptr
  %l321 = alloca i1
  %l331 = alloca %"compiler/definit:State"
  %l341 = alloca %"compiler/definit:State"
  %l342 = alloca ptr
  %l343 = alloca i1
  %l357 = alloca { i64, ptr }
  %l363 = alloca i1
  %l366 = alloca i1
  %l371 = alloca %"compiler/definit:State"
  %l379 = alloca %"compiler/definit:State"
  %l388 = alloca { i64, ptr }
  %l395 = alloca %"compiler/definit:State"
  %l399 = alloca ptr
  %l400 = alloca i1
  %l409 = alloca %"compiler/definit:State"
  %l410 = alloca ptr
  %l411 = alloca i1
  %l419 = alloca %"compiler/definit:State"
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca %"compiler/definit:State"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/definit:State" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t2 = load ptr, ptr %l45, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l45, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l46, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l46, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l4, !tbaa !23
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = load %"compiler/definit:State", ptr %l2
  %t35 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t28, ptr %t29, %"compiler/definit:State" %t31)
  store %"compiler/definit:State" %t35, ptr %l59
  br label %bb6
bb6:
  %t36 = load %"compiler/definit:State", ptr %l59
  store %"compiler/definit:State" %t36, ptr %l6
  %t37 = load i32, ptr %l4, !tbaa !23
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/definit:Walker", ptr %t38, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  %t44 = icmp eq i32 %t37, %t41
  br i1 %t44, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load %"compiler/source:Span", ptr %l3
  %t49 = call %"compiler/definit:State" @compiler_2fdefinit_3aState_2ector(ptr %s2, i1 true, i1 false, i32 0, %"compiler/source:Span" %t46)
  store %"compiler/definit:State" %t49, ptr %l66
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  %t50 = load %"compiler/definit:State", ptr %l66
  store %"compiler/definit:State" %t50, ptr %rv
  br label %ret
bb10:
  %t51 = load %"compiler/definit:State", ptr %l6
  store %"compiler/definit:State" %t51, ptr %rv
  br label %ret
bb11:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t54 = load ptr, ptr %l68, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l68, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 17}
  %t60 = icmp eq i64 %t58, 1
  store i1 %t60, ptr %l69, !tbaa !21
  br label %bb13
bb13:
  %t61 = load i1, ptr %l69, !tbaa !21
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l7, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [3 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l8, !tbaa !29
  br label %bb16
bb15:
  br label %bb35
bb16:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l7, !tbaa !29
  %t78 = call i1 @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eisL(ptr %v0, ptr %v1, ptr %t74, ptr %t75)
  store i1 %t78, ptr %l78
  br label %bb17
bb17:
  %t79 = load i1, ptr %l78, !tbaa !21
  store i1 %t79, ptr %l9, !tbaa !21
  %t80 = load i1, ptr %l9, !tbaa !21
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t82 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t82, ptr %l80
  br label %bb21
bb19:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l7, !tbaa !29
  %t86 = load %"compiler/definit:State", ptr %l2
  %t90 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eplace(ptr %v0, ptr %v1, ptr %t84, ptr %t85, %"compiler/definit:State" %t86)
  store %"compiler/definit:State" %t90, ptr %l85
  br label %bb20
bb20:
  %t91 = load %"compiler/definit:State", ptr %l85
  store %"compiler/definit:State" %t91, ptr %l80
  br label %bb21
bb21:
  %t92 = load %"compiler/definit:State", ptr %l80
  store %"compiler/definit:State" %t92, ptr %l10
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/definit:Walker", ptr %t93, i32 0, i32 6
  %t96 = load i1, ptr %l9, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t95, i1 %t96)
  br label %bb22
bb22:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l8, !tbaa !29
  %t102 = load %"compiler/definit:State", ptr %l10
  %t106 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t99, ptr %t100, %"compiler/definit:State" %t102)
  store %"compiler/definit:State" %t106, ptr %l93
  br label %bb23
bb23:
  %t107 = load %"compiler/definit:State", ptr %l93
  store %"compiler/definit:State" %t107, ptr %l11
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/definit:Walker", ptr %t108, i32 0, i32 6
  %t112 = call { i32, i1 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePop_3cBool_3e(ptr %v0, ptr %t110)
  %t113 = extractvalue { i32, i1 } %t112, 1
  %t114 = extractvalue { i32, i1 } %t112, 0
  store i32 %t114, ptr %l98
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb25, label %ok.116, !prof !99
ok.116:
  store i1 %t113, ptr %l97
  br label %bb24
bb24:
  %t117 = load i1, ptr %l97, !tbaa !21
  store i1 %t117, ptr %l94, !tbaa !21
  br label %bb27
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t118 = load i1, ptr %l9, !tbaa !21
  br i1 %t118, label %bb28, label %bb29
bb28:
  %t120 = getelementptr %"compiler/definit:State", ptr %l11, i32 0, i32 0
  %t121 = load i1, ptr %t120, !tbaa !21
  store i1 %t121, ptr %l100, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb30
bb30:
  %t123 = load i1, ptr %l100, !tbaa !21
  br i1 %t123, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t124 = getelementptr %"compiler/definit:State", ptr %l11, i32 0, i32 2
  %t125 = load i32, ptr %t124, !range !{i32 0, i32 6}
  %t126 = getelementptr %"compiler/definit:State", ptr %l11, i32 0, i32 3
  %t127 = load %"compiler/source:Span", ptr %t126
  %t130 = call %"compiler/definit:State" @compiler_2fdefinit_3aState_2ector(ptr %s5, i1 true, i1 true, i32 %t125, %"compiler/source:Span" %t127)
  store %"compiler/definit:State" %t130, ptr %l104
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s5)
  %t131 = load %"compiler/definit:State", ptr %l104
  store %"compiler/definit:State" %t131, ptr %rv
  br label %ret
bb34:
  %t132 = load %"compiler/definit:State", ptr %l11
  store %"compiler/definit:State" %t132, ptr %rv
  br label %ret
bb35:
  %t134 = load ptr, ptr %l1, !tbaa !29
  store ptr %t134, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t135 = load ptr, ptr %l106, !tbaa !29
  %t136 = icmp ne ptr %t135, null
  br i1 %t136, label %bb36, label %bb37
bb36:
  %t138 = load ptr, ptr %l106, !tbaa !29
  %t139 = load i64, ptr %t138, !range !{i64 0, i64 17}
  %t141 = icmp eq i64 %t139, 2
  store i1 %t141, ptr %l107, !tbaa !21
  br label %bb37
bb37:
  %t142 = load i1, ptr %l107, !tbaa !21
  br i1 %t142, label %bb38, label %bb39
bb38:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr { i64, [3 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", ptr }, ptr %t145, i32 0, i32 1
  %t147 = load ptr, ptr %t146
  store ptr %t147, ptr %l12, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l12, !tbaa !29
  %t152 = load %"compiler/definit:State", ptr %l2
  %t156 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t149, ptr %t150, %"compiler/definit:State" %t152)
  store %"compiler/definit:State" %t156, ptr %l116
  br label %bb41
bb41:
  %t157 = load %"compiler/definit:State", ptr %l116
  store %"compiler/definit:State" %t157, ptr %rv
  br label %ret
bb42:
  %t158 = load ptr, ptr %l1, !tbaa !29
  store ptr %t158, ptr %l117, !tbaa !29
  store i1 false, ptr %l118, !tbaa !21
  %t159 = load ptr, ptr %l117, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb43, label %bb44
bb43:
  %t162 = load ptr, ptr %l117, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 17}
  %t165 = icmp eq i64 %t163, 3
  store i1 %t165, ptr %l118, !tbaa !21
  br label %bb44
bb44:
  %t166 = load i1, ptr %l118, !tbaa !21
  br i1 %t166, label %bb45, label %bb46
bb45:
  %t167 = load ptr, ptr %l1, !tbaa !29
  %t169 = getelementptr { i64, [3 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", ptr }, ptr %t169, i32 0, i32 0
  %t171 = load %"compiler/source:Span", ptr %t170
  store %"compiler/source:Span" %t171, ptr %l13
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t175 = getelementptr { i64, [3 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", ptr }, ptr %t175, i32 0, i32 1
  %t177 = load ptr, ptr %t176
  store ptr %t177, ptr %l14, !tbaa !29
  br label %bb47
bb46:
  br label %bb73
bb47:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l14, !tbaa !29
  %t182 = getelementptr %"compiler/typed:If", ptr %t180, i32 0, i32 0
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = load %"compiler/definit:State", ptr %l2
  %t189 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t179, ptr %t183, %"compiler/definit:State" %t185)
  store %"compiler/definit:State" %t189, ptr %l130
  br label %bb48
bb48:
  %t190 = load %"compiler/definit:State", ptr %l130
  store %"compiler/definit:State" %t190, ptr %l15
  %t191 = load ptr, ptr %l14, !tbaa !29
  %t193 = getelementptr %"compiler/typed:If", ptr %t191, i32 0, i32 0
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = call i64 @compiler_2fdefinit_2elitBool(ptr %v1, ptr %t194)
  store i64 %t196, ptr %l133
  br label %bb49
bb49:
  %t197 = load i64, ptr %l133, !tbaa !24
  store i64 %t197, ptr %l16, !tbaa !24
  %t198 = load i64, ptr %l16, !tbaa !24
  %t200 = icmp eq i64 %t198, 1
  br i1 %t200, label %bb50, label %bb51
bb50:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %l14, !tbaa !29
  %t205 = getelementptr %"compiler/typed:If", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = load %"compiler/definit:State", ptr %l15
  %t212 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t202, ptr %t206, %"compiler/definit:State" %t208)
  store %"compiler/definit:State" %t212, ptr %l141
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t213 = load %"compiler/definit:State", ptr %l141
  store %"compiler/definit:State" %t213, ptr %rv
  br label %ret
bb53:
  %t214 = load i64, ptr %l16, !tbaa !24
  %t216 = icmp eq i64 %t214, 0
  br i1 %t216, label %bb54, label %bb55
bb54:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load ptr, ptr %l14, !tbaa !29
  %t221 = getelementptr %"compiler/typed:If", ptr %t219, i32 0, i32 2
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t223 = load %"compiler/definit:State", ptr %l15
  %t227 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t218, ptr %t222, %"compiler/definit:State" %t223)
  store %"compiler/definit:State" %t227, ptr %l148
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t228 = load %"compiler/definit:State", ptr %l148
  store %"compiler/definit:State" %t228, ptr %rv
  br label %ret
bb57:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l14, !tbaa !29
  %t232 = getelementptr %"compiler/typed:If", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t235 = load %"compiler/definit:State", ptr %l15
  %t239 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t229, ptr %t233, %"compiler/definit:State" %t235)
  store %"compiler/definit:State" %t239, ptr %l154
  br label %bb58
bb58:
  %t240 = load %"compiler/definit:State", ptr %l154
  store %"compiler/definit:State" %t240, ptr %l17
  %t241 = load ptr, ptr %l14, !tbaa !29
  %t243 = getelementptr %"compiler/typed:If", ptr %t241, i32 0, i32 2
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t246 = icmp eq ptr %t244, null
  br i1 %t246, label %bb59, label %bb60
bb59:
  %t248 = load %"compiler/definit:State", ptr %l17
  store %"compiler/definit:State" %t248, ptr %l158
  %t249 = load %"compiler/definit:State", ptr %l15
  %t250 = load %"compiler/definit:State", ptr %l15
  %t251 = load %"compiler/definit:State", ptr %l17
  %t252 = load %"compiler/source:Span", ptr %l13
  %t258 = call %"compiler/definit:State" @compiler_2fdefinit_2eretag(%"compiler/definit:State" %t249, %"compiler/definit:State" %t250, %"compiler/definit:State" %t251, i32 1, %"compiler/source:Span" %t252)
  store %"compiler/definit:State" %t258, ptr %l164
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t259 = load %"compiler/definit:State", ptr %l158
  %t260 = load %"compiler/definit:State", ptr %l164
  %t261 = call %"compiler/definit:State" @compiler_2fdefinit_2emeet(%"compiler/definit:State" %t259, %"compiler/definit:State" %t260)
  store %"compiler/definit:State" %t261, ptr %l165
  br label %bb62
bb62:
  %t262 = load %"compiler/definit:State", ptr %l165
  store %"compiler/definit:State" %t262, ptr %rv
  br label %ret
bb63:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l14, !tbaa !29
  %t266 = getelementptr %"compiler/typed:If", ptr %t264, i32 0, i32 2
  %t267 = load ptr, ptr %t266, !tbaa !29
  %t268 = load %"compiler/definit:State", ptr %l15
  %t272 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t263, ptr %t267, %"compiler/definit:State" %t268)
  store %"compiler/definit:State" %t272, ptr %l170
  br label %bb64
bb64:
  %t273 = load %"compiler/definit:State", ptr %l170
  store %"compiler/definit:State" %t273, ptr %l18
  %t274 = load %"compiler/definit:State", ptr %l17
  store %"compiler/definit:State" %t274, ptr %l171
  %t275 = load %"compiler/definit:State", ptr %l15
  store %"compiler/definit:State" %t275, ptr %l172
  %t276 = load %"compiler/definit:State", ptr %l18
  store %"compiler/definit:State" %t276, ptr %l173
  store i32 2, ptr %l174
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load ptr, ptr %l14, !tbaa !29
  %t280 = getelementptr %"compiler/typed:If", ptr %t278, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !29
  %t284 = call %"compiler/source:Span" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblockSp(ptr %v0, ptr %v1, ptr %t277, ptr %t281)
  store %"compiler/source:Span" %t284, ptr %l178
  br label %bb65
bb65:
  %t285 = load %"compiler/definit:State", ptr %l171
  %t286 = load %"compiler/definit:State", ptr %l172
  %t287 = load %"compiler/definit:State", ptr %l173
  %t288 = load i32, ptr %l174, !range !{i32 0, i32 6}
  %t289 = load %"compiler/source:Span", ptr %l178
  %t290 = call %"compiler/definit:State" @compiler_2fdefinit_2eretag(%"compiler/definit:State" %t285, %"compiler/definit:State" %t286, %"compiler/definit:State" %t287, i32 %t288, %"compiler/source:Span" %t289)
  store %"compiler/definit:State" %t290, ptr %l179
  br label %bb66
bb66:
  %t291 = load %"compiler/definit:State", ptr %l18
  store %"compiler/definit:State" %t291, ptr %l180
  %t292 = load %"compiler/definit:State", ptr %l15
  store %"compiler/definit:State" %t292, ptr %l181
  %t293 = load %"compiler/definit:State", ptr %l17
  store %"compiler/definit:State" %t293, ptr %l182
  store i32 2, ptr %l183
  %t294 = load ptr, ptr %l0, !tbaa !29
  store ptr %t294, ptr %l184, !tbaa !29
  %t295 = load ptr, ptr %l14, !tbaa !29
  %t297 = getelementptr %"compiler/typed:If", ptr %t295, i32 0, i32 2
  %t298 = load ptr, ptr %t297, !tbaa !29
  %t300 = icmp eq ptr %t298, null
  br i1 %t300, label %bb67, label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_ac7b00276c8cb33f_f84bfacdca165d83)
  unreachable
bb68:
  br label %bb69
bb69:
  %t302 = load ptr, ptr %l14, !tbaa !29
  %t304 = getelementptr %"compiler/typed:If", ptr %t302, i32 0, i32 2
  %t305 = load ptr, ptr %t304, !tbaa !29
  %t306 = load ptr, ptr %l184, !tbaa !29
  %t308 = call %"compiler/source:Span" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblockSp(ptr %v0, ptr %v1, ptr %t306, ptr %t305)
  store %"compiler/source:Span" %t308, ptr %l190
  br label %bb70
bb70:
  %t309 = load %"compiler/definit:State", ptr %l180
  %t310 = load %"compiler/definit:State", ptr %l181
  %t311 = load %"compiler/definit:State", ptr %l182
  %t312 = load i32, ptr %l183, !range !{i32 0, i32 6}
  %t313 = load %"compiler/source:Span", ptr %l190
  %t314 = call %"compiler/definit:State" @compiler_2fdefinit_2eretag(%"compiler/definit:State" %t309, %"compiler/definit:State" %t310, %"compiler/definit:State" %t311, i32 %t312, %"compiler/source:Span" %t313)
  store %"compiler/definit:State" %t314, ptr %l191
  br label %bb71
bb71:
  %t315 = load %"compiler/definit:State", ptr %l179
  %t316 = load %"compiler/definit:State", ptr %l191
  %t317 = call %"compiler/definit:State" @compiler_2fdefinit_2emeet(%"compiler/definit:State" %t315, %"compiler/definit:State" %t316)
  store %"compiler/definit:State" %t317, ptr %l192
  br label %bb72
bb72:
  %t318 = load %"compiler/definit:State", ptr %l192
  store %"compiler/definit:State" %t318, ptr %rv
  br label %ret
bb73:
  %t319 = load ptr, ptr %l1, !tbaa !29
  store ptr %t319, ptr %l193, !tbaa !29
  store i1 false, ptr %l194, !tbaa !21
  %t320 = load ptr, ptr %l193, !tbaa !29
  %t321 = icmp ne ptr %t320, null
  br i1 %t321, label %bb74, label %bb75
bb74:
  %t323 = load ptr, ptr %l193, !tbaa !29
  %t324 = load i64, ptr %t323, !range !{i64 0, i64 17}
  %t326 = icmp eq i64 %t324, 4
  store i1 %t326, ptr %l194, !tbaa !21
  br label %bb75
bb75:
  %t327 = load i1, ptr %l194, !tbaa !21
  br i1 %t327, label %bb76, label %bb77
bb76:
  %t328 = load ptr, ptr %l1, !tbaa !29
  %t330 = getelementptr { i64, [3 x i64] }, ptr %t328, i32 0, i32 1
  %t331 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t330, i32 0, i32 0
  %t332 = load %"compiler/source:Span", ptr %t331
  store %"compiler/source:Span" %t332, ptr %l19
  %t334 = load ptr, ptr %l1, !tbaa !29
  %t336 = getelementptr { i64, [3 x i64] }, ptr %t334, i32 0, i32 1
  %t337 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t336, i32 0, i32 1
  %t338 = load ptr, ptr %t337
  store ptr %t338, ptr %l20, !tbaa !29
  %t340 = load ptr, ptr %l1, !tbaa !29
  %t342 = getelementptr { i64, [3 x i64] }, ptr %t340, i32 0, i32 1
  %t343 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t342, i32 0, i32 2
  %t344 = load ptr, ptr %t343
  store ptr %t344, ptr %l21, !tbaa !29
  br label %bb78
bb77:
  br label %bb97
bb78:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load ptr, ptr %l20, !tbaa !29
  %t349 = load %"compiler/definit:State", ptr %l2
  %t353 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t346, ptr %t347, %"compiler/definit:State" %t349)
  store %"compiler/definit:State" %t353, ptr %l207
  br label %bb79
bb79:
  %t354 = load %"compiler/definit:State", ptr %l207
  store %"compiler/definit:State" %t354, ptr %l22
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load ptr, ptr %l21, !tbaa !29
  %t357 = load %"compiler/definit:State", ptr %l2
  %t361 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t355, ptr %t356, %"compiler/definit:State" %t357)
  store %"compiler/definit:State" %t361, ptr %l211
  br label %bb80
bb80:
  %t362 = load ptr, ptr %l20, !tbaa !29
  %t364 = load ptr, ptr %l20, !tbaa !29
  %t366 = getelementptr %"compiler/typed:Block", ptr %t364, i32 0, i32 0
  %t367 = load i32, ptr %t366, !tbaa !23
  %t370 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v1, ptr %t362, i32 %t367)
  store i1 %t370, ptr %l216
  br label %bb81
bb81:
  %t371 = load i1, ptr %l216, !tbaa !21
  %t372 = xor i1 %t371, true
  br i1 %t372, label %bb82, label %bb83
bb82:
  %t374 = load ptr, ptr %l21, !tbaa !29
  %t375 = load ptr, ptr %l20, !tbaa !29
  %t377 = getelementptr %"compiler/typed:Block", ptr %t375, i32 0, i32 0
  %t378 = load i32, ptr %t377, !tbaa !23
  %t381 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v1, ptr %t374, i32 %t378)
  store i1 %t381, ptr %l222
  br label %bb84
bb83:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb85
bb84:
  %t382 = load i1, ptr %l222, !tbaa !21
  %t383 = xor i1 %t382, true
  store i1 %t383, ptr %l218, !tbaa !21
  br label %bb85
bb85:
  %t385 = load i1, ptr %l218, !tbaa !21
  br i1 %t385, label %bb86, label %bb87
bb86:
  %t386 = call %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead()
  store %"compiler/definit:State" %t386, ptr %l224
  br label %bb88
bb87:
  br label %bb89
bb88:
  %t387 = load %"compiler/definit:State", ptr %l224
  store %"compiler/definit:State" %t387, ptr %rv
  br label %ret
bb89:
  %t388 = getelementptr %"compiler/definit:State", ptr %l22, i32 0, i32 0
  %t389 = load i1, ptr %t388, !tbaa !21
  br i1 %t389, label %bb90, label %bb91
bb90:
  %t391 = getelementptr %"compiler/definit:State", ptr %l22, i32 0, i32 1
  %t392 = load i1, ptr %t391, !tbaa !21
  store i1 %t392, ptr %l226, !tbaa !21
  br label %bb92
bb91:
  store i1 false, ptr %l226, !tbaa !21
  br label %bb92
bb92:
  %t394 = load i1, ptr %l226, !tbaa !21
  br i1 %t394, label %bb93, label %bb94
bb93:
  %t395 = load %"compiler/definit:State", ptr %l2
  %t396 = load %"compiler/definit:State", ptr %l2
  %t397 = load %"compiler/definit:State", ptr %l22
  %t398 = load %"compiler/source:Span", ptr %l19
  %t404 = call %"compiler/definit:State" @compiler_2fdefinit_2eretag(%"compiler/definit:State" %t395, %"compiler/definit:State" %t396, %"compiler/definit:State" %t397, i32 3, %"compiler/source:Span" %t398)
  store %"compiler/definit:State" %t404, ptr %l233
  br label %bb95
bb94:
  br label %bb96
bb95:
  %t405 = load %"compiler/definit:State", ptr %l233
  store %"compiler/definit:State" %t405, ptr %rv
  br label %ret
bb96:
  %t406 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t406, ptr %rv
  br label %ret
bb97:
  %t408 = load ptr, ptr %l1, !tbaa !29
  store ptr %t408, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t409 = load ptr, ptr %l235, !tbaa !29
  %t410 = icmp ne ptr %t409, null
  br i1 %t410, label %bb98, label %bb99
bb98:
  %t412 = load ptr, ptr %l235, !tbaa !29
  %t413 = load i64, ptr %t412, !range !{i64 0, i64 17}
  %t415 = icmp eq i64 %t413, 5
  store i1 %t415, ptr %l236, !tbaa !21
  br label %bb99
bb99:
  %t416 = load i1, ptr %l236, !tbaa !21
  br i1 %t416, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t417 = call %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead()
  store %"compiler/definit:State" %t417, ptr %l239
  br label %bb103
bb103:
  %t418 = load %"compiler/definit:State", ptr %l239
  store %"compiler/definit:State" %t418, ptr %rv
  br label %ret
bb104:
  %t419 = load ptr, ptr %l1, !tbaa !29
  store ptr %t419, ptr %l240, !tbaa !29
  store i1 false, ptr %l241, !tbaa !21
  %t420 = load ptr, ptr %l240, !tbaa !29
  %t421 = icmp ne ptr %t420, null
  br i1 %t421, label %bb105, label %bb106
bb105:
  %t423 = load ptr, ptr %l240, !tbaa !29
  %t424 = load i64, ptr %t423, !range !{i64 0, i64 17}
  %t426 = icmp eq i64 %t424, 6
  store i1 %t426, ptr %l241, !tbaa !21
  br label %bb106
bb106:
  %t427 = load i1, ptr %l241, !tbaa !21
  br i1 %t427, label %bb107, label %bb108
bb107:
  %t428 = load ptr, ptr %l1, !tbaa !29
  %t430 = getelementptr { i64, [3 x i64] }, ptr %t428, i32 0, i32 1
  %t431 = getelementptr { %"compiler/source:Span", ptr }, ptr %t430, i32 0, i32 1
  %t432 = load ptr, ptr %t431
  store ptr %t432, ptr %l23, !tbaa !29
  br label %bb109
bb108:
  br label %bb112
bb109:
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t435 = load ptr, ptr %l23, !tbaa !29
  %t436 = load %"compiler/definit:State", ptr %l2
  %t440 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t434, ptr %t435, %"compiler/definit:State" %t436)
  store %"compiler/definit:State" %t440, ptr %l249
  br label %bb110
bb110:
  %t441 = call %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead()
  store %"compiler/definit:State" %t441, ptr %l250
  br label %bb111
bb111:
  %t442 = load %"compiler/definit:State", ptr %l250
  store %"compiler/definit:State" %t442, ptr %rv
  br label %ret
bb112:
  %t443 = load ptr, ptr %l1, !tbaa !29
  store ptr %t443, ptr %l251, !tbaa !29
  store i1 false, ptr %l252, !tbaa !21
  %t444 = load ptr, ptr %l251, !tbaa !29
  %t445 = icmp ne ptr %t444, null
  br i1 %t445, label %bb113, label %bb114
bb113:
  %t447 = load ptr, ptr %l251, !tbaa !29
  %t448 = load i64, ptr %t447, !range !{i64 0, i64 17}
  %t450 = icmp eq i64 %t448, 7
  store i1 %t450, ptr %l252, !tbaa !21
  br label %bb114
bb114:
  %t451 = load i1, ptr %l252, !tbaa !21
  br i1 %t451, label %bb115, label %bb116
bb115:
  br label %bb117
bb116:
  br label %bb119
bb117:
  %t452 = call %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead()
  store %"compiler/definit:State" %t452, ptr %l255
  br label %bb118
bb118:
  %t453 = load %"compiler/definit:State", ptr %l255
  store %"compiler/definit:State" %t453, ptr %rv
  br label %ret
bb119:
  %t454 = load ptr, ptr %l1, !tbaa !29
  store ptr %t454, ptr %l256, !tbaa !29
  store i1 false, ptr %l257, !tbaa !21
  %t455 = load ptr, ptr %l256, !tbaa !29
  %t456 = icmp ne ptr %t455, null
  br i1 %t456, label %bb120, label %bb121
bb120:
  %t458 = load ptr, ptr %l256, !tbaa !29
  %t459 = load i64, ptr %t458, !range !{i64 0, i64 17}
  %t461 = icmp eq i64 %t459, 8
  store i1 %t461, ptr %l257, !tbaa !21
  br label %bb121
bb121:
  %t462 = load i1, ptr %l257, !tbaa !21
  br i1 %t462, label %bb122, label %bb123
bb122:
  %t463 = load ptr, ptr %l1, !tbaa !29
  %t465 = getelementptr { i64, [3 x i64] }, ptr %t463, i32 0, i32 1
  %t466 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t465, i32 0, i32 1
  %t467 = load ptr, ptr %t466
  store ptr %t467, ptr %l24, !tbaa !29
  br label %bb124
bb123:
  br label %bb127
bb124:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load ptr, ptr %l24, !tbaa !29
  %t472 = load %"compiler/definit:State", ptr %l2
  %t476 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t469, ptr %t470, %"compiler/definit:State" %t472)
  store %"compiler/definit:State" %t476, ptr %l266
  br label %bb125
bb125:
  %t477 = call %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead()
  store %"compiler/definit:State" %t477, ptr %l267
  br label %bb126
bb126:
  %t478 = load %"compiler/definit:State", ptr %l267
  store %"compiler/definit:State" %t478, ptr %rv
  br label %ret
bb127:
  %t479 = load ptr, ptr %l1, !tbaa !29
  store ptr %t479, ptr %l268, !tbaa !29
  store i1 false, ptr %l269, !tbaa !21
  %t480 = load ptr, ptr %l268, !tbaa !29
  %t481 = icmp ne ptr %t480, null
  br i1 %t481, label %bb128, label %bb129
bb128:
  %t483 = load ptr, ptr %l268, !tbaa !29
  %t484 = load i64, ptr %t483, !range !{i64 0, i64 17}
  %t486 = icmp eq i64 %t484, 9
  store i1 %t486, ptr %l269, !tbaa !21
  br label %bb129
bb129:
  %t487 = load i1, ptr %l269, !tbaa !21
  br i1 %t487, label %bb130, label %bb131
bb130:
  %t488 = load ptr, ptr %l1, !tbaa !29
  %t490 = getelementptr { i64, [3 x i64] }, ptr %t488, i32 0, i32 1
  %t491 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t490, i32 0, i32 2
  %t492 = load ptr, ptr %t491
  store ptr %t492, ptr %l25, !tbaa !29
  br label %bb132
bb131:
  br label %bb135
bb132:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load ptr, ptr %l25, !tbaa !29
  %t496 = load %"compiler/definit:State", ptr %l2
  %t500 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t494, ptr %t495, %"compiler/definit:State" %t496)
  store %"compiler/definit:State" %t500, ptr %l277
  br label %bb133
bb133:
  %t501 = call %"compiler/definit:State" @compiler_2fdefinit_2eState_2edead()
  store %"compiler/definit:State" %t501, ptr %l278
  br label %bb134
bb134:
  %t502 = load %"compiler/definit:State", ptr %l278
  store %"compiler/definit:State" %t502, ptr %rv
  br label %ret
bb135:
  %t503 = load ptr, ptr %l1, !tbaa !29
  store ptr %t503, ptr %l279, !tbaa !29
  store i1 false, ptr %l280, !tbaa !21
  %t504 = load ptr, ptr %l279, !tbaa !29
  %t505 = icmp ne ptr %t504, null
  br i1 %t505, label %bb136, label %bb137
bb136:
  %t507 = load ptr, ptr %l279, !tbaa !29
  %t508 = load i64, ptr %t507, !range !{i64 0, i64 17}
  %t510 = icmp eq i64 %t508, 10
  store i1 %t510, ptr %l280, !tbaa !21
  br label %bb137
bb137:
  %t511 = load i1, ptr %l280, !tbaa !21
  br i1 %t511, label %bb138, label %bb139
bb138:
  %t512 = load ptr, ptr %l1, !tbaa !29
  %t514 = getelementptr { i64, [3 x i64] }, ptr %t512, i32 0, i32 1
  %t515 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t514, i32 0, i32 1
  %t516 = load ptr, ptr %t515
  store ptr %t516, ptr %l26, !tbaa !29
  %t518 = load ptr, ptr %l1, !tbaa !29
  %t520 = getelementptr { i64, [3 x i64] }, ptr %t518, i32 0, i32 1
  %t521 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t520, i32 0, i32 2
  %t522 = load ptr, ptr %t521
  store ptr %t522, ptr %l27, !tbaa !29
  br label %bb140
bb139:
  br label %bb143
bb140:
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load ptr, ptr %l26, !tbaa !29
  %t527 = load %"compiler/definit:State", ptr %l2
  %t531 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t524, ptr %t525, %"compiler/definit:State" %t527)
  store %"compiler/definit:State" %t531, ptr %l291
  br label %bb141
bb141:
  %t532 = load %"compiler/definit:State", ptr %l291
  store %"compiler/definit:State" %t532, ptr %l28
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t534 = load ptr, ptr %l27, !tbaa !29
  %t535 = load %"compiler/definit:State", ptr %l28
  %t539 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t533, ptr %t534, %"compiler/definit:State" %t535)
  store %"compiler/definit:State" %t539, ptr %l295
  br label %bb142
bb142:
  %t540 = load %"compiler/definit:State", ptr %l28
  store %"compiler/definit:State" %t540, ptr %rv
  br label %ret
bb143:
  %t542 = load ptr, ptr %l1, !tbaa !29
  store ptr %t542, ptr %l297, !tbaa !29
  store i1 false, ptr %l298, !tbaa !21
  %t543 = load ptr, ptr %l297, !tbaa !29
  %t544 = icmp ne ptr %t543, null
  br i1 %t544, label %bb144, label %bb145
bb144:
  %t546 = load ptr, ptr %l297, !tbaa !29
  %t547 = load i64, ptr %t546, !range !{i64 0, i64 17}
  %t549 = icmp eq i64 %t547, 11
  store i1 %t549, ptr %l298, !tbaa !21
  br label %bb145
bb145:
  %t550 = load i1, ptr %l298, !tbaa !21
  br i1 %t550, label %bb146, label %bb147
bb146:
  %t551 = load ptr, ptr %l1, !tbaa !29
  %t553 = getelementptr { i64, [3 x i64] }, ptr %t551, i32 0, i32 1
  %t554 = getelementptr { %"compiler/source:Span", ptr }, ptr %t553, i32 0, i32 1
  %t555 = load ptr, ptr %t554
  store ptr %t555, ptr %l29, !tbaa !29
  br label %bb148
bb147:
  br label %bb150
bb148:
  %t557 = load ptr, ptr %l0, !tbaa !29
  %t558 = load ptr, ptr %l29, !tbaa !29
  %t560 = load %"compiler/definit:State", ptr %l2
  %t564 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t557, ptr %t558, %"compiler/definit:State" %t560)
  store %"compiler/definit:State" %t564, ptr %l307
  br label %bb149
bb149:
  %t565 = load %"compiler/definit:State", ptr %l307
  store %"compiler/definit:State" %t565, ptr %rv
  br label %ret
bb150:
  %t566 = load ptr, ptr %l1, !tbaa !29
  store ptr %t566, ptr %l308, !tbaa !29
  store i1 false, ptr %l309, !tbaa !21
  %t567 = load ptr, ptr %l308, !tbaa !29
  %t568 = icmp ne ptr %t567, null
  br i1 %t568, label %bb151, label %bb152
bb151:
  %t570 = load ptr, ptr %l308, !tbaa !29
  %t571 = load i64, ptr %t570, !range !{i64 0, i64 17}
  %t573 = icmp eq i64 %t571, 12
  store i1 %t573, ptr %l309, !tbaa !21
  br label %bb152
bb152:
  %t574 = load i1, ptr %l309, !tbaa !21
  br i1 %t574, label %bb153, label %bb154
bb153:
  %t575 = load ptr, ptr %l1, !tbaa !29
  %t577 = getelementptr { i64, [3 x i64] }, ptr %t575, i32 0, i32 1
  %t578 = getelementptr { %"compiler/source:Span", ptr }, ptr %t577, i32 0, i32 1
  %t579 = load ptr, ptr %t578
  store ptr %t579, ptr %l30, !tbaa !29
  br label %bb155
bb154:
  br label %bb157
bb155:
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t582 = load ptr, ptr %l30, !tbaa !29
  %t584 = load %"compiler/definit:State", ptr %l2
  %t588 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t581, ptr %t582, %"compiler/definit:State" %t584)
  store %"compiler/definit:State" %t588, ptr %l318
  br label %bb156
bb156:
  %t589 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t589, ptr %rv
  br label %ret
bb157:
  %t591 = load ptr, ptr %l1, !tbaa !29
  store ptr %t591, ptr %l320, !tbaa !29
  store i1 false, ptr %l321, !tbaa !21
  %t592 = load ptr, ptr %l320, !tbaa !29
  %t593 = icmp ne ptr %t592, null
  br i1 %t593, label %bb158, label %bb159
bb158:
  %t595 = load ptr, ptr %l320, !tbaa !29
  %t596 = load i64, ptr %t595, !range !{i64 0, i64 17}
  %t598 = icmp eq i64 %t596, 13
  store i1 %t598, ptr %l321, !tbaa !21
  br label %bb159
bb159:
  %t599 = load i1, ptr %l321, !tbaa !21
  br i1 %t599, label %bb160, label %bb161
bb160:
  %t600 = load ptr, ptr %l1, !tbaa !29
  %t602 = getelementptr { i64, [3 x i64] }, ptr %t600, i32 0, i32 1
  %t603 = getelementptr { %"compiler/source:Span", ptr }, ptr %t602, i32 0, i32 1
  %t604 = load ptr, ptr %t603
  store ptr %t604, ptr %l31, !tbaa !29
  br label %bb162
bb161:
  br label %bb168
bb162:
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t607 = load ptr, ptr %l31, !tbaa !29
  %t609 = getelementptr %"compiler/typed:Join", ptr %t607, i32 0, i32 0
  %t610 = load ptr, ptr %t609, !tbaa !29
  %t612 = load %"compiler/definit:State", ptr %l2
  %t616 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eblock(ptr %v0, ptr %v1, ptr %t606, ptr %t610, %"compiler/definit:State" %t612)
  store %"compiler/definit:State" %t616, ptr %l331
  br label %bb163
bb163:
  %t617 = load %"compiler/definit:State", ptr %l331
  store %"compiler/definit:State" %t617, ptr %l32
  %t618 = load ptr, ptr %l31, !tbaa !29
  %t620 = getelementptr %"compiler/typed:Join", ptr %t618, i32 0, i32 1
  %t621 = load i1, ptr %t620, !tbaa !21
  %t623 = xor i1 %t621, true
  br i1 %t623, label %bb164, label %bb165
bb164:
  %t625 = load %"compiler/definit:State", ptr %l32
  store %"compiler/definit:State" %t625, ptr %rv
  br label %ret
bb165:
  br label %bb166
bb166:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t628 = load ptr, ptr %l31, !tbaa !29
  %t630 = getelementptr %"compiler/typed:Join", ptr %t628, i32 0, i32 2
  %t631 = load { i64, ptr }, ptr %t630, !tbaa !27
  %t632 = load %"compiler/definit:State", ptr %l2
  %t633 = load %"compiler/definit:State", ptr %l32
  %t638 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eclauses(ptr %v0, ptr %v1, ptr %t627, { i64, ptr } %t631, %"compiler/definit:State" %t632, %"compiler/definit:State" %t633)
  store %"compiler/definit:State" %t638, ptr %l341
  br label %bb167
bb167:
  %t639 = load %"compiler/definit:State", ptr %l341
  store %"compiler/definit:State" %t639, ptr %rv
  br label %ret
bb168:
  %t640 = load ptr, ptr %l1, !tbaa !29
  store ptr %t640, ptr %l342, !tbaa !29
  store i1 false, ptr %l343, !tbaa !21
  %t641 = load ptr, ptr %l342, !tbaa !29
  %t642 = icmp ne ptr %t641, null
  br i1 %t642, label %bb169, label %bb170
bb169:
  %t644 = load ptr, ptr %l342, !tbaa !29
  %t645 = load i64, ptr %t644, !range !{i64 0, i64 17}
  %t647 = icmp eq i64 %t645, 14
  store i1 %t647, ptr %l343, !tbaa !21
  br label %bb170
bb170:
  %t648 = load i1, ptr %l343, !tbaa !21
  br i1 %t648, label %bb171, label %bb172
bb171:
  %t649 = load ptr, ptr %l1, !tbaa !29
  %t651 = getelementptr { i64, [3 x i64] }, ptr %t649, i32 0, i32 1
  %t652 = getelementptr { %"compiler/source:Span", ptr }, ptr %t651, i32 0, i32 1
  %t653 = load ptr, ptr %t652
  store ptr %t653, ptr %l33, !tbaa !29
  br label %bb173
bb172:
  br label %bb196
bb173:
  %t655 = load %"compiler/definit:State", ptr %l2
  store %"compiler/definit:State" %t655, ptr %l34
  %t657 = load ptr, ptr %l33, !tbaa !29
  %t659 = getelementptr %"compiler/typed:Spawn", ptr %t657, i32 0, i32 0
  %t660 = load { i64, ptr }, ptr %t659, !tbaa !27
  store { i64, ptr } %t660, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t662 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t664 = extractvalue { i64, ptr } %t662, 0
  store i64 %t664, ptr %l37, !tbaa !24
  br label %bb174
bb174:
  %t666 = load i64, ptr %l36, !tbaa !24
  %t667 = load i64, ptr %l37, !tbaa !24
  %t670 = icmp slt i64 %t666, %t667
  %t672 = xor i1 %t670, true
  br i1 %t672, label %bb175, label %bb176
bb175:
  br label %bb187
bb176:
  br label %bb177
bb177:
  %t674 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t674, ptr %l357, !tbaa !27
  %t675 = load i64, ptr %l36, !tbaa !24
  %t677 = getelementptr { i64, ptr }, ptr %l357, i32 0, i32 1
  %t678 = load ptr, ptr %t677, !tbaa !27
  %t679 = getelementptr ptr, ptr %t678, i64 %t675
  %t680 = load ptr, ptr %t679, !tbaa !39
  store ptr %t680, ptr %l38, !tbaa !29
  %t682 = load ptr, ptr %l38, !tbaa !29
  %t684 = icmp eq ptr %t682, null
  %t686 = xor i1 %t684, true
  br i1 %t686, label %bb178, label %bb179
bb178:
  %t688 = load ptr, ptr %l0, !tbaa !29
  %t689 = load ptr, ptr %l38, !tbaa !29
  %t692 = call i1 @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eisL(ptr %v0, ptr %v1, ptr %t688, ptr %t689)
  store i1 %t692, ptr %l366
  br label %bb180
bb179:
  store i1 false, ptr %l363, !tbaa !21
  br label %bb181
bb180:
  %t693 = load i1, ptr %l366, !tbaa !21
  %t694 = xor i1 %t693, true
  store i1 %t694, ptr %l363, !tbaa !21
  br label %bb181
bb181:
  %t696 = load i1, ptr %l363, !tbaa !21
  br i1 %t696, label %bb182, label %bb183
bb182:
  %t697 = load ptr, ptr %l0, !tbaa !29
  %t698 = load ptr, ptr %l38, !tbaa !29
  %t699 = load %"compiler/definit:State", ptr %l34
  %t703 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eplace(ptr %v0, ptr %v1, ptr %t697, ptr %t698, %"compiler/definit:State" %t699)
  store %"compiler/definit:State" %t703, ptr %l371
  br label %bb184
bb183:
  br label %bb185
bb184:
  %t704 = load %"compiler/definit:State", ptr %l371
  store %"compiler/definit:State" %t704, ptr %l34
  br label %bb185
bb185:
  br label %bb186
bb186:
  %t705 = load i64, ptr %l36, !tbaa !24
  %t707 = add i64 %t705, 1
  store i64 %t707, ptr %l36, !tbaa !24
  br label %bb174
bb187:
  %t709 = load ptr, ptr %l0, !tbaa !29
  %t710 = load ptr, ptr %l33, !tbaa !29
  %t712 = getelementptr %"compiler/typed:Spawn", ptr %t710, i32 0, i32 1
  %t713 = load ptr, ptr %t712, !tbaa !29
  %t715 = load %"compiler/definit:State", ptr %l34
  %t719 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t709, ptr %t713, %"compiler/definit:State" %t715)
  store %"compiler/definit:State" %t719, ptr %l379
  br label %bb188
bb188:
  %t720 = load %"compiler/definit:State", ptr %l379
  store %"compiler/definit:State" %t720, ptr %l34
  %t721 = load ptr, ptr %l33, !tbaa !29
  %t723 = getelementptr %"compiler/typed:Spawn", ptr %t721, i32 0, i32 2
  %t724 = load { i64, ptr }, ptr %t723, !tbaa !27
  store { i64, ptr } %t724, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t726 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t728 = extractvalue { i64, ptr } %t726, 0
  store i64 %t728, ptr %l41, !tbaa !24
  br label %bb189
bb189:
  %t730 = load i64, ptr %l40, !tbaa !24
  %t731 = load i64, ptr %l41, !tbaa !24
  %t734 = icmp slt i64 %t730, %t731
  %t736 = xor i1 %t734, true
  br i1 %t736, label %bb190, label %bb191
bb190:
  br label %bb195
bb191:
  br label %bb192
bb192:
  %t738 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t738, ptr %l388, !tbaa !27
  %t739 = load i64, ptr %l40, !tbaa !24
  %t741 = getelementptr { i64, ptr }, ptr %l388, i32 0, i32 1
  %t742 = load ptr, ptr %t741, !tbaa !27
  %t743 = getelementptr ptr, ptr %t742, i64 %t739
  %t744 = load ptr, ptr %t743, !tbaa !39
  %t746 = load ptr, ptr %l0, !tbaa !29
  %t749 = getelementptr %"compiler/typed:TaskClause", ptr %t744, i32 0, i32 3
  %t750 = load ptr, ptr %t749, !tbaa !29
  %t751 = load %"compiler/definit:State", ptr %l34
  %t755 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t746, ptr %t750, %"compiler/definit:State" %t751)
  store %"compiler/definit:State" %t755, ptr %l395
  br label %bb193
bb193:
  br label %bb194
bb194:
  %t756 = load i64, ptr %l40, !tbaa !24
  %t758 = add i64 %t756, 1
  store i64 %t758, ptr %l40, !tbaa !24
  br label %bb189
bb195:
  %t760 = load %"compiler/definit:State", ptr %l34
  store %"compiler/definit:State" %t760, ptr %rv
  br label %ret
bb196:
  %t762 = load ptr, ptr %l1, !tbaa !29
  store ptr %t762, ptr %l399, !tbaa !29
  store i1 false, ptr %l400, !tbaa !21
  %t763 = load ptr, ptr %l399, !tbaa !29
  %t764 = icmp ne ptr %t763, null
  br i1 %t764, label %bb197, label %bb198
bb197:
  %t766 = load ptr, ptr %l399, !tbaa !29
  %t767 = load i64, ptr %t766, !range !{i64 0, i64 17}
  %t769 = icmp eq i64 %t767, 15
  store i1 %t769, ptr %l400, !tbaa !21
  br label %bb198
bb198:
  %t770 = load i1, ptr %l400, !tbaa !21
  br i1 %t770, label %bb199, label %bb200
bb199:
  %t771 = load ptr, ptr %l1, !tbaa !29
  %t773 = getelementptr { i64, [3 x i64] }, ptr %t771, i32 0, i32 1
  %t774 = getelementptr { %"compiler/source:Span", ptr }, ptr %t773, i32 0, i32 1
  %t775 = load ptr, ptr %t774
  store ptr %t775, ptr %l43, !tbaa !29
  br label %bb201
bb200:
  br label %bb203
bb201:
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t778 = load ptr, ptr %l43, !tbaa !29
  %t780 = load %"compiler/definit:State", ptr %l2
  %t784 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t777, ptr %t778, %"compiler/definit:State" %t780)
  store %"compiler/definit:State" %t784, ptr %l409
  br label %bb202
bb202:
  %t785 = load %"compiler/definit:State", ptr %l409
  store %"compiler/definit:State" %t785, ptr %rv
  br label %ret
bb203:
  %t786 = load ptr, ptr %l1, !tbaa !29
  store ptr %t786, ptr %l410, !tbaa !29
  store i1 false, ptr %l411, !tbaa !21
  %t787 = load ptr, ptr %l410, !tbaa !29
  %t788 = icmp ne ptr %t787, null
  br i1 %t788, label %bb204, label %bb205
bb204:
  %t790 = load ptr, ptr %l410, !tbaa !29
  %t791 = load i64, ptr %t790, !range !{i64 0, i64 17}
  %t793 = icmp eq i64 %t791, 16
  store i1 %t793, ptr %l411, !tbaa !21
  br label %bb205
bb205:
  %t794 = load i1, ptr %l411, !tbaa !21
  br i1 %t794, label %bb206, label %bb207
bb206:
  %t795 = load ptr, ptr %l1, !tbaa !29
  %t797 = getelementptr { i64, [3 x i64] }, ptr %t795, i32 0, i32 1
  %t798 = getelementptr { %"compiler/source:Span", ptr }, ptr %t797, i32 0, i32 1
  %t799 = load ptr, ptr %t798
  store ptr %t799, ptr %l44, !tbaa !29
  br label %bb208
bb207:
  br label %bb210
bb208:
  %t801 = load ptr, ptr %l0, !tbaa !29
  %t802 = load ptr, ptr %l44, !tbaa !29
  %t803 = load %"compiler/definit:State", ptr %l2
  %t807 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2eexpr(ptr %v0, ptr %v1, ptr %t801, ptr %t802, %"compiler/definit:State" %t803)
  store %"compiler/definit:State" %t807, ptr %l419
  br label %bb209
bb209:
  %t808 = load %"compiler/definit:State", ptr %l419
  store %"compiler/definit:State" %t808, ptr %rv
  br label %ret
bb210:
  call void @__olang_check_failed(ptr @olang_loc_86e100904f39c567_d61ce50e57b89f1b)
  unreachable
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/definit:State" %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"compiler/definit:State"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l20 = alloca { i64, ptr }
  %l26 = alloca %"compiler/definit:State"
  %rv = alloca %"compiler/definit:State"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %"compiler/definit:State" %a2, ptr %l3
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp eq i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load %"compiler/definit:State", ptr %l3
  store %"compiler/definit:State" %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t25, ptr %l20, !tbaa !27
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  %t35 = load %"compiler/definit:State", ptr %l3
  %t39 = call %"compiler/definit:State" @compiler_2fdefinit_2ecompiler_2fdefinit_3aWalker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t31, %"compiler/definit:State" %t35)
  store %"compiler/definit:State" %t39, ptr %l26
  br label %bb8
bb8:
  %t40 = load %"compiler/definit:State", ptr %l26
  store %"compiler/definit:State" %t40, ptr %l3
  br label %bb9
bb9:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l5, !tbaa !24
  br label %bb4
bb10:
  %t45 = load %"compiler/definit:State", ptr %l3
  store %"compiler/definit:State" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l19 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Arm", ptr %t1, i32 0, i32 1
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
  br label %bb14
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l19, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l6, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Alt", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t26, ptr %t30, i1 %t32)
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Alt", ptr %t36, i32 0, i32 1
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
  %t64 = getelementptr %"compiler/typed:Bind", ptr %t59, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t61, ptr %t65, i1 %t67)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l8, !tbaa !24
  br label %bb6
bb12:
  br label %bb13
bb13:
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l4, !tbaa !24
  br label %bb1
bb14:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Arm", ptr %t80, i32 0, i32 2
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t84 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t79, ptr %t83, i1 %t84)
  br label %bb15
bb15:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Arm", ptr %t89, i32 0, i32 3
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t93 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t88, ptr %t92, i1 %t93)
  br label %bb16
bb16:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Arm", ptr %t98, i32 0, i32 4
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t102 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t97, ptr %t101, i1 %t102)
  br label %bb17
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l38 = alloca i64
  %l47 = alloca i1
  %l49 = alloca i1
  %l52 = alloca i1
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
  store i1 %a2, ptr %l3, !tbaa !21
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Block", ptr %t7, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %bb38
bb6:
  br label %bb7
bb7:
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t24, ptr %l22, !tbaa !27
  %t25 = load i64, ptr %l5, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr ptr, ptr %t28, i64 %t25
  %t30 = load ptr, ptr %t29, !tbaa !39
  store ptr %t30, ptr %l7, !tbaa !29
  %t32 = load ptr, ptr %l7, !tbaa !29
  store ptr %t32, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t33 = load ptr, ptr %l25, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l25, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 17}
  %t39 = icmp eq i64 %t37, 0
  store i1 %t39, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l26, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l7, !tbaa !29
  %t43 = getelementptr { i64, [3 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t43, i32 0, i32 1
  %t45 = load i32, ptr %t44
  store i32 %t45, ptr %l8, !tbaa !23
  %t47 = load ptr, ptr %l7, !tbaa !29
  %t49 = getelementptr { i64, [3 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l9, !tbaa !29
  br label %bb12
bb11:
  br label %bb30
bb12:
  %t53 = load i32, ptr %l8, !tbaa !23
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/definit:heldWalker", ptr %t54, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  %t60 = icmp eq i32 %t53, %t57
  br i1 %t60, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l3, !tbaa !21
  %t62 = load ptr, ptr %l9, !tbaa !29
  %t64 = call i64 @compiler_2ftyped_2eCalledBody(ptr %v1, ptr %t62)
  store i64 %t64, ptr %l38
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t65 = load i64, ptr %l38, !tbaa !24
  store i64 %t65, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l10, !tbaa !24
  %t68 = icmp sge i64 %t66, 0
  br i1 %t68, label %bb16, label %bb17
bb16:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = getelementptr %"compiler/definit:heldWalker", ptr %t70, i32 0, i32 4
  store i64 %t71, ptr %t74, !tbaa !24
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t75 = load i32, ptr %l8, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/definit:heldWalker", ptr %t76, i32 0, i32 1
  %t79 = load i32, ptr %t78, !tbaa !23
  %t82 = icmp eq i32 %t75, %t79
  br i1 %t82, label %bb20, label %bb21
bb20:
  %t84 = load i1, ptr %l3, !tbaa !21
  store i1 %t84, ptr %l47, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l47, !tbaa !21
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l9, !tbaa !29
  %t91 = call i1 @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2ereadsG(ptr %v0, ptr %v1, ptr %t87, ptr %t88)
  store i1 %t91, ptr %l52
  br label %bb25
bb24:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb26
bb25:
  %t92 = load i1, ptr %l52, !tbaa !21
  store i1 %t92, ptr %l49, !tbaa !21
  br label %bb26
bb26:
  %t93 = load i1, ptr %l49, !tbaa !21
  br i1 %t93, label %bb27, label %bb28
bb27:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/definit:heldWalker", ptr %t94, i32 0, i32 3
  store i1 true, ptr %t96, !tbaa !21
  br label %bb29
bb28:
  br label %bb29
bb29:
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
  call void @__olang_check_failed(ptr @olang_loc_d952dfd7a131b942_4ab1800a85b68e5e)
  unreachable
bb35:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t99 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2estmt(ptr %v0, ptr %v1, ptr %t97, ptr %t98, i1 %t99)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t103 = load i64, ptr %l5, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l5, !tbaa !24
  br label %bb4
bb38:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eclauses(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l17 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l17, !tbaa !27
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l6, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l6, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Clause", ptr %t30, i32 0, i32 3
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t34 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t29, ptr %t33, i1 %t34)
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l6, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Clause", ptr %t39, i32 0, i32 4
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t43 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexprs(ptr %v0, ptr %v1, ptr %t38, { i64, ptr } %t42, i1 %t43)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l4, !tbaa !24
  br label %bb4
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca i1
  %l196 = alloca ptr
  %l197 = alloca i1
  %l214 = alloca { i64, ptr }
  %l226 = alloca ptr
  %l233 = alloca ptr
  %l234 = alloca i1
  %l247 = alloca ptr
  %l248 = alloca i1
  %l253 = alloca ptr
  %l254 = alloca i1
  %l257 = alloca ptr
  %l258 = alloca i1
  %l270 = alloca { i64, ptr }
  %l279 = alloca ptr
  %l280 = alloca i1
  %l288 = alloca ptr
  %l289 = alloca i1
  %l302 = alloca { i64, ptr }
  %l305 = alloca ptr
  %l306 = alloca i1
  %l315 = alloca ptr
  %l316 = alloca i1
  %l321 = alloca ptr
  %l322 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
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
  store ptr %t5, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t6 = load ptr, ptr %l37, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l37, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l38, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l38, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t15 = load ptr, ptr %l41, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l41, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 18}
  %t21 = icmp eq i64 %t19, 1
  store i1 %t21, ptr %l42, !tbaa !21
  br label %bb9
bb9:
  %t22 = load i1, ptr %l42, !tbaa !21
  br i1 %t22, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb202
bb13:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t24 = load ptr, ptr %l45, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb14, label %bb15
bb14:
  %t27 = load ptr, ptr %l45, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l46, !tbaa !21
  br label %bb15
bb15:
  %t31 = load i1, ptr %l46, !tbaa !21
  br i1 %t31, label %bb16, label %bb17
bb16:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l3, !tbaa !29
  br label %bb26
bb17:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t39 = load ptr, ptr %l51, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb18, label %bb19
bb18:
  %t42 = load ptr, ptr %l51, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l52, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l52, !tbaa !21
  br i1 %t46, label %bb20, label %bb21
bb20:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l3, !tbaa !29
  br label %bb26
bb21:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t54 = load ptr, ptr %l57, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t57 = load ptr, ptr %l57, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 4
  store i1 %t60, ptr %l58, !tbaa !21
  br label %bb23
bb23:
  %t61 = load i1, ptr %l58, !tbaa !21
  br i1 %t61, label %bb24, label %bb25
bb24:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l3, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t70 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eplace(ptr %v0, ptr %v1, ptr %t68, ptr %t69, i1 %t70)
  br label %bb27
bb27:
  br label %bb202
bb28:
  %t74 = load ptr, ptr %l1, !tbaa !29
  store ptr %t74, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t75 = load ptr, ptr %l66, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb29, label %bb30
bb29:
  %t78 = load ptr, ptr %l66, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 18}
  %t81 = icmp eq i64 %t79, 5
  store i1 %t81, ptr %l67, !tbaa !21
  br label %bb30
bb30:
  %t82 = load i1, ptr %l67, !tbaa !21
  br i1 %t82, label %bb31, label %bb32
bb31:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr { i64, [5 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t85, i32 0, i32 2
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l4, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l4, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Promote", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t89, ptr %t93, i1 %t95)
  br label %bb34
bb34:
  br label %bb202
bb35:
  %t99 = load ptr, ptr %l1, !tbaa !29
  store ptr %t99, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t100 = load ptr, ptr %l77, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb36, label %bb37
bb36:
  %t103 = load ptr, ptr %l77, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 18}
  %t106 = icmp eq i64 %t104, 6
  store i1 %t106, ptr %l78, !tbaa !21
  br label %bb37
bb37:
  %t107 = load i1, ptr %l78, !tbaa !21
  br i1 %t107, label %bb38, label %bb39
bb38:
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [5 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l5, !tbaa !29
  br label %bb40
bb39:
  br label %bb54
bb40:
  %t114 = load ptr, ptr %l5, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Call", ptr %t114, i32 0, i32 0
  %t117 = load ptr, ptr %t116, !tbaa !29
  store ptr %t117, ptr %l6, !tbaa !29
  %t119 = load ptr, ptr %l6, !tbaa !29
  store ptr %t119, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t120 = load ptr, ptr %l85, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb41, label %bb42
bb41:
  %t123 = load ptr, ptr %l85, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 5}
  %t126 = icmp eq i64 %t124, 2
  store i1 %t126, ptr %l86, !tbaa !21
  br label %bb42
bb42:
  %t127 = load i1, ptr %l86, !tbaa !21
  br i1 %t127, label %bb43, label %bb44
bb43:
  %t128 = load ptr, ptr %l6, !tbaa !29
  %t130 = getelementptr { i64, [3 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { ptr }, ptr %t130, i32 0, i32 0
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l7, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l7, !tbaa !29
  %t137 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t134, ptr %t135, i1 %t137)
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
  call void @__olang_check_failed(ptr @olang_loc_8bde8b1b63ea70b6_e30ac43cb3954ed2)
  unreachable
bb52:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l5, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Call", ptr %t142, i32 0, i32 1
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  %t146 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexprs(ptr %v0, ptr %v1, ptr %t141, { i64, ptr } %t145, i1 %t146)
  br label %bb53
bb53:
  br label %bb202
bb54:
  %t150 = load ptr, ptr %l1, !tbaa !29
  store ptr %t150, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t151 = load ptr, ptr %l99, !tbaa !29
  %t152 = icmp ne ptr %t151, null
  br i1 %t152, label %bb55, label %bb56
bb55:
  %t154 = load ptr, ptr %l99, !tbaa !29
  %t155 = load i64, ptr %t154, !range !{i64 0, i64 18}
  %t157 = icmp eq i64 %t155, 7
  store i1 %t157, ptr %l100, !tbaa !21
  br label %bb56
bb56:
  %t158 = load i1, ptr %l100, !tbaa !21
  br i1 %t158, label %bb57, label %bb58
bb57:
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr { i64, [5 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t161, i32 0, i32 2
  %t163 = load ptr, ptr %t162
  store ptr %t163, ptr %l8, !tbaa !29
  br label %bb59
bb58:
  br label %bb62
bb59:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l8, !tbaa !29
  %t168 = getelementptr %"compiler/typed:Make", ptr %t166, i32 0, i32 2
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t170 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexprs(ptr %v0, ptr %v1, ptr %t165, { i64, ptr } %t169, i1 %t170)
  br label %bb60
bb60:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l8, !tbaa !29
  %t177 = getelementptr %"compiler/typed:Make", ptr %t175, i32 0, i32 3
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t179 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t174, ptr %t178, i1 %t179)
  br label %bb61
bb61:
  br label %bb202
bb62:
  %t183 = load ptr, ptr %l1, !tbaa !29
  store ptr %t183, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t184 = load ptr, ptr %l113, !tbaa !29
  %t185 = icmp ne ptr %t184, null
  br i1 %t185, label %bb63, label %bb64
bb63:
  %t187 = load ptr, ptr %l113, !tbaa !29
  %t188 = load i64, ptr %t187, !range !{i64 0, i64 18}
  %t190 = icmp eq i64 %t188, 8
  store i1 %t190, ptr %l114, !tbaa !21
  br label %bb64
bb64:
  %t191 = load i1, ptr %l114, !tbaa !21
  br i1 %t191, label %bb65, label %bb66
bb65:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t194 = getelementptr { i64, [5 x i64] }, ptr %t192, i32 0, i32 1
  %t195 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t194, i32 0, i32 2
  %t196 = load ptr, ptr %t195
  store ptr %t196, ptr %l9, !tbaa !29
  br label %bb67
bb66:
  br label %bb70
bb67:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %l9, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Collect", ptr %t199, i32 0, i32 0
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t203 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t198, ptr %t202, i1 %t203)
  br label %bb68
bb68:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l9, !tbaa !29
  %t210 = getelementptr %"compiler/typed:Collect", ptr %t208, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t213 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t207, ptr %t211, i1 %t213)
  br label %bb69
bb69:
  br label %bb202
bb70:
  %t217 = load ptr, ptr %l1, !tbaa !29
  store ptr %t217, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t218 = load ptr, ptr %l128, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb71, label %bb72
bb71:
  %t221 = load ptr, ptr %l128, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 18}
  %t224 = icmp eq i64 %t222, 9
  store i1 %t224, ptr %l129, !tbaa !21
  br label %bb72
bb72:
  %t225 = load i1, ptr %l129, !tbaa !21
  br i1 %t225, label %bb73, label %bb74
bb73:
  %t226 = load ptr, ptr %l1, !tbaa !29
  %t228 = getelementptr { i64, [5 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t228, i32 0, i32 2
  %t230 = load i32, ptr %t229, !range !{i32 0, i32 52}
  store i32 %t230, ptr %l10
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t234 = getelementptr { i64, [5 x i64] }, ptr %t232, i32 0, i32 1
  %t235 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t234, i32 0, i32 4
  %t236 = load { i64, ptr }, ptr %t235
  store { i64, ptr } %t236, ptr %l11, !tbaa !27
  br label %bb75
bb74:
  br label %bb80
bb75:
  %t238 = load i32, ptr %l10, !range !{i32 0, i32 52}
  %t240 = trunc i64 30 to i32
  %t241 = icmp eq i32 %t238, %t240
  %t243 = xor i1 %t241, true
  br i1 %t243, label %bb76, label %bb77
bb76:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t247 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexprs(ptr %v0, ptr %v1, ptr %t245, { i64, ptr } %t246, i1 %t247)
  br label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb79
bb79:
  br label %bb202
bb80:
  %t251 = load ptr, ptr %l1, !tbaa !29
  store ptr %t251, ptr %l142, !tbaa !29
  store i1 false, ptr %l143, !tbaa !21
  %t252 = load ptr, ptr %l142, !tbaa !29
  %t253 = icmp ne ptr %t252, null
  br i1 %t253, label %bb81, label %bb82
bb81:
  %t255 = load ptr, ptr %l142, !tbaa !29
  %t256 = load i64, ptr %t255, !range !{i64 0, i64 18}
  %t258 = icmp eq i64 %t256, 10
  store i1 %t258, ptr %l143, !tbaa !21
  br label %bb82
bb82:
  %t259 = load i1, ptr %l143, !tbaa !21
  br i1 %t259, label %bb83, label %bb84
bb83:
  %t260 = load ptr, ptr %l1, !tbaa !29
  %t262 = getelementptr { i64, [5 x i64] }, ptr %t260, i32 0, i32 1
  %t263 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t262, i32 0, i32 2
  %t264 = load ptr, ptr %t263
  store ptr %t264, ptr %l12, !tbaa !29
  br label %bb85
bb84:
  br label %bb89
bb85:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load ptr, ptr %l12, !tbaa !29
  %t269 = getelementptr %"compiler/typed:Slice", ptr %t267, i32 0, i32 0
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t271 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eplace(ptr %v0, ptr %v1, ptr %t266, ptr %t270, i1 %t271)
  br label %bb86
bb86:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load ptr, ptr %l12, !tbaa !29
  %t278 = getelementptr %"compiler/typed:Slice", ptr %t276, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t275, ptr %t279, i1 %t281)
  br label %bb87
bb87:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load ptr, ptr %l12, !tbaa !29
  %t288 = getelementptr %"compiler/typed:Slice", ptr %t286, i32 0, i32 2
  %t289 = load ptr, ptr %t288, !tbaa !29
  %t291 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t285, ptr %t289, i1 %t291)
  br label %bb88
bb88:
  br label %bb202
bb89:
  %t295 = load ptr, ptr %l1, !tbaa !29
  store ptr %t295, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t296 = load ptr, ptr %l162, !tbaa !29
  %t297 = icmp ne ptr %t296, null
  br i1 %t297, label %bb90, label %bb91
bb90:
  %t299 = load ptr, ptr %l162, !tbaa !29
  %t300 = load i64, ptr %t299, !range !{i64 0, i64 18}
  %t302 = icmp eq i64 %t300, 11
  store i1 %t302, ptr %l163, !tbaa !21
  br label %bb91
bb91:
  %t303 = load i1, ptr %l163, !tbaa !21
  br i1 %t303, label %bb92, label %bb93
bb92:
  %t304 = load ptr, ptr %l1, !tbaa !29
  %t306 = getelementptr { i64, [5 x i64] }, ptr %t304, i32 0, i32 1
  %t307 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t306, i32 0, i32 2
  %t308 = load ptr, ptr %t307
  store ptr %t308, ptr %l13, !tbaa !29
  br label %bb94
bb93:
  br label %bb98
bb94:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load ptr, ptr %l13, !tbaa !29
  %t313 = getelementptr %"compiler/typed:Cond", ptr %t311, i32 0, i32 0
  %t314 = load ptr, ptr %t313, !tbaa !29
  %t316 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t310, ptr %t314, i1 %t316)
  br label %bb95
bb95:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load ptr, ptr %l13, !tbaa !29
  %t323 = getelementptr %"compiler/typed:Cond", ptr %t321, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t325 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t320, ptr %t324, i1 %t325)
  br label %bb96
bb96:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load ptr, ptr %l13, !tbaa !29
  %t332 = getelementptr %"compiler/typed:Cond", ptr %t330, i32 0, i32 2
  %t333 = load ptr, ptr %t332, !tbaa !29
  %t335 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t329, ptr %t333, i1 %t335)
  br label %bb97
bb97:
  br label %bb202
bb98:
  %t339 = load ptr, ptr %l1, !tbaa !29
  store ptr %t339, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t340 = load ptr, ptr %l182, !tbaa !29
  %t341 = icmp ne ptr %t340, null
  br i1 %t341, label %bb99, label %bb100
bb99:
  %t343 = load ptr, ptr %l182, !tbaa !29
  %t344 = load i64, ptr %t343, !range !{i64 0, i64 18}
  %t346 = icmp eq i64 %t344, 12
  store i1 %t346, ptr %l183, !tbaa !21
  br label %bb100
bb100:
  %t347 = load i1, ptr %l183, !tbaa !21
  br i1 %t347, label %bb101, label %bb102
bb101:
  %t348 = load ptr, ptr %l1, !tbaa !29
  %t350 = getelementptr { i64, [5 x i64] }, ptr %t348, i32 0, i32 1
  %t351 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t350, i32 0, i32 2
  %t352 = load ptr, ptr %t351
  store ptr %t352, ptr %l14, !tbaa !29
  br label %bb103
bb102:
  br label %bb106
bb103:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load ptr, ptr %l14, !tbaa !29
  %t357 = getelementptr %"compiler/typed:Seq", ptr %t355, i32 0, i32 0
  %t358 = load { i64, ptr }, ptr %t357, !tbaa !27
  %t359 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2estmts(ptr %v0, ptr %v1, ptr %t354, { i64, ptr } %t358, i1 %t359)
  br label %bb104
bb104:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load ptr, ptr %l14, !tbaa !29
  %t366 = getelementptr %"compiler/typed:Seq", ptr %t364, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !29
  %t368 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t363, ptr %t367, i1 %t368)
  br label %bb105
bb105:
  br label %bb202
bb106:
  %t372 = load ptr, ptr %l1, !tbaa !29
  store ptr %t372, ptr %l196, !tbaa !29
  store i1 false, ptr %l197, !tbaa !21
  %t373 = load ptr, ptr %l196, !tbaa !29
  %t374 = icmp ne ptr %t373, null
  br i1 %t374, label %bb107, label %bb108
bb107:
  %t376 = load ptr, ptr %l196, !tbaa !29
  %t377 = load i64, ptr %t376, !range !{i64 0, i64 18}
  %t379 = icmp eq i64 %t377, 13
  store i1 %t379, ptr %l197, !tbaa !21
  br label %bb108
bb108:
  %t380 = load i1, ptr %l197, !tbaa !21
  br i1 %t380, label %bb109, label %bb110
bb109:
  %t381 = load ptr, ptr %l1, !tbaa !29
  %t383 = getelementptr { i64, [5 x i64] }, ptr %t381, i32 0, i32 1
  %t384 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t383, i32 0, i32 2
  %t385 = load ptr, ptr %t384
  store ptr %t385, ptr %l15, !tbaa !29
  br label %bb111
bb110:
  br label %bb127
bb111:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load ptr, ptr %l15, !tbaa !29
  %t390 = getelementptr %"compiler/typed:Match", ptr %t388, i32 0, i32 0
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  %t392 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2estmts(ptr %v0, ptr %v1, ptr %t387, { i64, ptr } %t391, i1 %t392)
  br label %bb112
bb112:
  %t396 = load ptr, ptr %l15, !tbaa !29
  %t398 = getelementptr %"compiler/typed:Match", ptr %t396, i32 0, i32 1
  %t399 = load { i64, ptr }, ptr %t398, !tbaa !27
  store { i64, ptr } %t399, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t401 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t403 = extractvalue { i64, ptr } %t401, 0
  store i64 %t403, ptr %l18, !tbaa !24
  br label %bb113
bb113:
  %t405 = load i64, ptr %l17, !tbaa !24
  %t406 = load i64, ptr %l18, !tbaa !24
  %t409 = icmp slt i64 %t405, %t406
  %t411 = xor i1 %t409, true
  br i1 %t411, label %bb114, label %bb115
bb114:
  br label %bb119
bb115:
  br label %bb116
bb116:
  %t413 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t413, ptr %l214, !tbaa !27
  %t414 = load i64, ptr %l17, !tbaa !24
  %t416 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !27
  %t418 = getelementptr ptr, ptr %t417, i64 %t414
  %t419 = load ptr, ptr %t418, !tbaa !39
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2earm(ptr %v0, ptr %v1, ptr %t421, ptr %t419, i1 %t423)
  br label %bb117
bb117:
  br label %bb118
bb118:
  %t427 = load i64, ptr %l17, !tbaa !24
  %t429 = add i64 %t427, 1
  store i64 %t429, ptr %l17, !tbaa !24
  br label %bb113
bb119:
  %t431 = load ptr, ptr %l15, !tbaa !29
  %t433 = getelementptr %"compiler/typed:Match", ptr %t431, i32 0, i32 2
  %t434 = load ptr, ptr %t433, !tbaa !29
  %t436 = icmp eq ptr %t434, null
  %t438 = xor i1 %t436, true
  br i1 %t438, label %bb120, label %bb121
bb120:
  %t440 = load ptr, ptr %l0, !tbaa !29
  store ptr %t440, ptr %l226, !tbaa !29
  %t441 = load ptr, ptr %l15, !tbaa !29
  %t443 = getelementptr %"compiler/typed:Match", ptr %t441, i32 0, i32 2
  %t444 = load ptr, ptr %t443, !tbaa !29
  %t446 = icmp eq ptr %t444, null
  br i1 %t446, label %bb122, label %bb123
bb121:
  br label %bb126
bb122:
  call void @__olang_check_failed(ptr @olang_loc_5ce4535adcc78e10_11db37cbad505f3c)
  unreachable
bb123:
  br label %bb124
bb124:
  %t448 = load ptr, ptr %l15, !tbaa !29
  %t450 = getelementptr %"compiler/typed:Match", ptr %t448, i32 0, i32 2
  %t451 = load ptr, ptr %t450, !tbaa !29
  %t452 = load i1, ptr %l2, !tbaa !21
  %t453 = load ptr, ptr %l226, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2earm(ptr %v0, ptr %v1, ptr %t453, ptr %t451, i1 %t452)
  br label %bb125
bb125:
  br label %bb126
bb126:
  br label %bb202
bb127:
  %t456 = load ptr, ptr %l1, !tbaa !29
  store ptr %t456, ptr %l233, !tbaa !29
  store i1 false, ptr %l234, !tbaa !21
  %t457 = load ptr, ptr %l233, !tbaa !29
  %t458 = icmp ne ptr %t457, null
  br i1 %t458, label %bb128, label %bb129
bb128:
  %t460 = load ptr, ptr %l233, !tbaa !29
  %t461 = load i64, ptr %t460, !range !{i64 0, i64 18}
  %t463 = icmp eq i64 %t461, 14
  store i1 %t463, ptr %l234, !tbaa !21
  br label %bb129
bb129:
  %t464 = load i1, ptr %l234, !tbaa !21
  br i1 %t464, label %bb130, label %bb131
bb130:
  %t465 = load ptr, ptr %l1, !tbaa !29
  %t467 = getelementptr { i64, [5 x i64] }, ptr %t465, i32 0, i32 1
  %t468 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t467, i32 0, i32 2
  %t469 = load ptr, ptr %t468
  store ptr %t469, ptr %l20, !tbaa !29
  br label %bb132
bb131:
  br label %bb135
bb132:
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t472 = load ptr, ptr %l20, !tbaa !29
  %t474 = getelementptr %"compiler/typed:Try", ptr %t472, i32 0, i32 0
  %t475 = load ptr, ptr %t474, !tbaa !29
  %t476 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t471, ptr %t475, i1 %t476)
  br label %bb133
bb133:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load ptr, ptr %l20, !tbaa !29
  %t483 = getelementptr %"compiler/typed:Try", ptr %t481, i32 0, i32 1
  %t484 = load { i64, ptr }, ptr %t483, !tbaa !27
  %t485 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eclauses(ptr %v0, ptr %v1, ptr %t480, { i64, ptr } %t484, i1 %t485)
  br label %bb134
bb134:
  br label %bb202
bb135:
  %t489 = load ptr, ptr %l1, !tbaa !29
  store ptr %t489, ptr %l247, !tbaa !29
  store i1 false, ptr %l248, !tbaa !21
  %t490 = load ptr, ptr %l247, !tbaa !29
  %t491 = icmp ne ptr %t490, null
  br i1 %t491, label %bb136, label %bb137
bb136:
  %t493 = load ptr, ptr %l247, !tbaa !29
  %t494 = load i64, ptr %t493, !range !{i64 0, i64 18}
  %t496 = icmp eq i64 %t494, 15
  store i1 %t496, ptr %l248, !tbaa !21
  br label %bb137
bb137:
  %t497 = load i1, ptr %l248, !tbaa !21
  br i1 %t497, label %bb138, label %bb139
bb138:
  %t498 = load ptr, ptr %l1, !tbaa !29
  %t500 = getelementptr { i64, [5 x i64] }, ptr %t498, i32 0, i32 1
  %t501 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t500, i32 0, i32 2
  %t502 = load ptr, ptr %t501
  store ptr %t502, ptr %l21, !tbaa !29
  br label %bb140
bb139:
  br label %bb168
bb140:
  %t504 = load ptr, ptr %l21, !tbaa !29
  store ptr %t504, ptr %l253, !tbaa !29
  store i1 false, ptr %l254, !tbaa !21
  %t505 = load ptr, ptr %l253, !tbaa !29
  %t506 = icmp ne ptr %t505, null
  br i1 %t506, label %bb141, label %bb142
bb141:
  %t508 = load ptr, ptr %l253, !tbaa !29
  %t509 = load i64, ptr %t508, !range !{i64 0, i64 3}
  %t511 = icmp eq i64 %t509, 0
  store i1 %t511, ptr %l254, !tbaa !21
  br label %bb142
bb142:
  %t512 = load i1, ptr %l254, !tbaa !21
  br i1 %t512, label %bb143, label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb146
bb145:
  br label %bb167
bb146:
  %t513 = load ptr, ptr %l21, !tbaa !29
  store ptr %t513, ptr %l257, !tbaa !29
  store i1 false, ptr %l258, !tbaa !21
  %t514 = load ptr, ptr %l257, !tbaa !29
  %t515 = icmp ne ptr %t514, null
  br i1 %t515, label %bb147, label %bb148
bb147:
  %t517 = load ptr, ptr %l257, !tbaa !29
  %t518 = load i64, ptr %t517, !range !{i64 0, i64 3}
  %t520 = icmp eq i64 %t518, 1
  store i1 %t520, ptr %l258, !tbaa !21
  br label %bb148
bb148:
  %t521 = load i1, ptr %l258, !tbaa !21
  br i1 %t521, label %bb149, label %bb150
bb149:
  %t522 = load ptr, ptr %l21, !tbaa !29
  %t524 = getelementptr { i64, [4 x i64] }, ptr %t522, i32 0, i32 1
  %t525 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t524, i32 0, i32 1
  %t526 = load { i64, ptr }, ptr %t525
  store { i64, ptr } %t526, ptr %l22, !tbaa !27
  br label %bb151
bb150:
  br label %bb159
bb151:
  %t528 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t528, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t530 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t532 = extractvalue { i64, ptr } %t530, 0
  store i64 %t532, ptr %l25, !tbaa !24
  br label %bb152
bb152:
  %t534 = load i64, ptr %l24, !tbaa !24
  %t535 = load i64, ptr %l25, !tbaa !24
  %t538 = icmp slt i64 %t534, %t535
  %t540 = xor i1 %t538, true
  br i1 %t540, label %bb153, label %bb154
bb153:
  br label %bb158
bb154:
  br label %bb155
bb155:
  %t542 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t542, ptr %l270, !tbaa !27
  %t543 = load i64, ptr %l24, !tbaa !24
  %t545 = getelementptr { i64, ptr }, ptr %l270, i32 0, i32 1
  %t546 = load ptr, ptr %t545, !tbaa !27
  %t547 = getelementptr ptr, ptr %t546, i64 %t543
  %t548 = load ptr, ptr %t547, !tbaa !39
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t553 = getelementptr %"compiler/typed:Capture", ptr %t548, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t550, ptr %t554, i1 false)
  br label %bb156
bb156:
  br label %bb157
bb157:
  %t558 = load i64, ptr %l24, !tbaa !24
  %t560 = add i64 %t558, 1
  store i64 %t560, ptr %l24, !tbaa !24
  br label %bb152
bb158:
  br label %bb167
bb159:
  %t562 = load ptr, ptr %l21, !tbaa !29
  store ptr %t562, ptr %l279, !tbaa !29
  store i1 false, ptr %l280, !tbaa !21
  %t563 = load ptr, ptr %l279, !tbaa !29
  %t564 = icmp ne ptr %t563, null
  br i1 %t564, label %bb160, label %bb161
bb160:
  %t566 = load ptr, ptr %l279, !tbaa !29
  %t567 = load i64, ptr %t566, !range !{i64 0, i64 3}
  %t569 = icmp eq i64 %t567, 2
  store i1 %t569, ptr %l280, !tbaa !21
  br label %bb161
bb161:
  %t570 = load i1, ptr %l280, !tbaa !21
  br i1 %t570, label %bb162, label %bb163
bb162:
  %t571 = load ptr, ptr %l21, !tbaa !29
  %t573 = getelementptr { i64, [4 x i64] }, ptr %t571, i32 0, i32 1
  %t574 = getelementptr { i32, ptr, i32 }, ptr %t573, i32 0, i32 1
  %t575 = load ptr, ptr %t574
  store ptr %t575, ptr %l27, !tbaa !29
  br label %bb164
bb163:
  br label %bb166
bb164:
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t578 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t577, ptr %t578, i1 false)
  br label %bb165
bb165:
  br label %bb167
bb166:
  call void @__olang_check_failed(ptr @olang_loc_2da6509b5a768f1c_defe08a34fad40b8)
  unreachable
bb167:
  br label %bb202
bb168:
  %t582 = load ptr, ptr %l1, !tbaa !29
  store ptr %t582, ptr %l288, !tbaa !29
  store i1 false, ptr %l289, !tbaa !21
  %t583 = load ptr, ptr %l288, !tbaa !29
  %t584 = icmp ne ptr %t583, null
  br i1 %t584, label %bb169, label %bb170
bb169:
  %t586 = load ptr, ptr %l288, !tbaa !29
  %t587 = load i64, ptr %t586, !range !{i64 0, i64 18}
  %t589 = icmp eq i64 %t587, 16
  store i1 %t589, ptr %l289, !tbaa !21
  br label %bb170
bb170:
  %t590 = load i1, ptr %l289, !tbaa !21
  br i1 %t590, label %bb171, label %bb172
bb171:
  %t591 = load ptr, ptr %l1, !tbaa !29
  %t593 = getelementptr { i64, [5 x i64] }, ptr %t591, i32 0, i32 1
  %t594 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t593, i32 0, i32 2
  %t595 = load ptr, ptr %t594
  store ptr %t595, ptr %l28, !tbaa !29
  br label %bb173
bb172:
  br label %bb194
bb173:
  %t597 = load ptr, ptr %l28, !tbaa !29
  %t599 = getelementptr %"compiler/typed:Text", ptr %t597, i32 0, i32 0
  %t600 = load { i64, ptr }, ptr %t599, !tbaa !27
  store { i64, ptr } %t600, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t602 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t604 = extractvalue { i64, ptr } %t602, 0
  store i64 %t604, ptr %l31, !tbaa !24
  br label %bb174
bb174:
  %t606 = load i64, ptr %l30, !tbaa !24
  %t607 = load i64, ptr %l31, !tbaa !24
  %t610 = icmp slt i64 %t606, %t607
  %t612 = xor i1 %t610, true
  br i1 %t612, label %bb175, label %bb176
bb175:
  br label %bb193
bb176:
  br label %bb177
bb177:
  %t614 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t614, ptr %l302, !tbaa !27
  %t615 = load i64, ptr %l30, !tbaa !24
  %t617 = getelementptr { i64, ptr }, ptr %l302, i32 0, i32 1
  %t618 = load ptr, ptr %t617, !tbaa !27
  %t619 = getelementptr ptr, ptr %t618, i64 %t615
  %t620 = load ptr, ptr %t619, !tbaa !39
  store ptr %t620, ptr %l32, !tbaa !29
  %t622 = load ptr, ptr %l32, !tbaa !29
  store ptr %t622, ptr %l305, !tbaa !29
  store i1 false, ptr %l306, !tbaa !21
  %t623 = load ptr, ptr %l305, !tbaa !29
  %t624 = icmp ne ptr %t623, null
  br i1 %t624, label %bb178, label %bb179
bb178:
  %t626 = load ptr, ptr %l305, !tbaa !29
  %t627 = load i64, ptr %t626, !range !{i64 0, i64 2}
  %t629 = icmp eq i64 %t627, 1
  store i1 %t629, ptr %l306, !tbaa !21
  br label %bb179
bb179:
  %t630 = load i1, ptr %l306, !tbaa !21
  br i1 %t630, label %bb180, label %bb181
bb180:
  %t631 = load ptr, ptr %l32, !tbaa !29
  %t633 = getelementptr { i64, [2 x i64] }, ptr %t631, i32 0, i32 1
  %t634 = getelementptr { ptr }, ptr %t633, i32 0, i32 0
  %t635 = load ptr, ptr %t634
  store ptr %t635, ptr %l33, !tbaa !29
  br label %bb182
bb181:
  br label %bb184
bb182:
  %t637 = load ptr, ptr %l0, !tbaa !29
  %t638 = load ptr, ptr %l33, !tbaa !29
  %t640 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t637, ptr %t638, i1 %t640)
  br label %bb183
bb183:
  br label %bb191
bb184:
  %t644 = load ptr, ptr %l32, !tbaa !29
  store ptr %t644, ptr %l315, !tbaa !29
  store i1 false, ptr %l316, !tbaa !21
  %t645 = load ptr, ptr %l315, !tbaa !29
  %t646 = icmp ne ptr %t645, null
  br i1 %t646, label %bb185, label %bb186
bb185:
  %t648 = load ptr, ptr %l315, !tbaa !29
  %t649 = load i64, ptr %t648, !range !{i64 0, i64 2}
  %t651 = icmp eq i64 %t649, 0
  store i1 %t651, ptr %l316, !tbaa !21
  br label %bb186
bb186:
  %t652 = load i1, ptr %l316, !tbaa !21
  br i1 %t652, label %bb187, label %bb188
bb187:
  br label %bb189
bb188:
  br label %bb190
bb189:
  br label %bb191
bb190:
  call void @__olang_check_failed(ptr @olang_loc_de3894aecf8d774d_e482dac037566689)
  unreachable
bb191:
  br label %bb192
bb192:
  %t653 = load i64, ptr %l30, !tbaa !24
  %t655 = add i64 %t653, 1
  store i64 %t655, ptr %l30, !tbaa !24
  br label %bb174
bb193:
  br label %bb202
bb194:
  %t657 = load ptr, ptr %l1, !tbaa !29
  store ptr %t657, ptr %l321, !tbaa !29
  store i1 false, ptr %l322, !tbaa !21
  %t658 = load ptr, ptr %l321, !tbaa !29
  %t659 = icmp ne ptr %t658, null
  br i1 %t659, label %bb195, label %bb196
bb195:
  %t661 = load ptr, ptr %l321, !tbaa !29
  %t662 = load i64, ptr %t661, !range !{i64 0, i64 18}
  %t664 = icmp eq i64 %t662, 17
  store i1 %t664, ptr %l322, !tbaa !21
  br label %bb196
bb196:
  %t665 = load i1, ptr %l322, !tbaa !21
  br i1 %t665, label %bb197, label %bb198
bb197:
  %t666 = load ptr, ptr %l1, !tbaa !29
  %t668 = getelementptr { i64, [5 x i64] }, ptr %t666, i32 0, i32 1
  %t669 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t668, i32 0, i32 2
  %t670 = load ptr, ptr %t669
  store ptr %t670, ptr %l34, !tbaa !29
  br label %bb199
bb198:
  br label %bb201
bb199:
  %t672 = load ptr, ptr %l0, !tbaa !29
  %t673 = load ptr, ptr %l34, !tbaa !29
  %t675 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t672, ptr %t673, i1 %t675)
  br label %bb200
bb200:
  br label %bb202
bb201:
  call void @__olang_check_failed(ptr @olang_loc_8eac3767dec4383a_962121fe9d8e312e)
  unreachable
bb202:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l17 = alloca { i64, ptr }
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l17, !tbaa !27
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %t27, i1 %a2)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l4, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eisG(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
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
  %t19 = getelementptr %"compiler/definit:heldWalker", ptr %a0, i32 0, i32 0
  %t20 = load i32, ptr %t19, !tbaa !23
  %t23 = icmp eq i32 %t16, %t20
  store i1 %t23, ptr %l3, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d9e86c57eee4683e_b043e463d27920c2)
  unreachable
bb11:
  %t25 = load i1, ptr %l3, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
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
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t16 = load i32, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/definit:heldWalker", ptr %t17, i32 0, i32 0
  %t20 = load i32, ptr %t19, !tbaa !23
  %t23 = icmp eq i32 %t16, %t20
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l19, !tbaa !29
  %t26 = load ptr, ptr %l19, !tbaa !29
  %t27 = getelementptr %"compiler/definit:heldWalker", ptr %t26, i32 0, i32 2
  %t28 = load i64, ptr %t27, !tbaa !24
  %t30 = add i64 %t28, 1
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = getelementptr %"compiler/definit:heldWalker", ptr %t32, i32 0, i32 2
  store i64 %t30, ptr %t33, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %bb56
bb9:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 8}
  %t41 = icmp eq i64 %t39, 1
  store i1 %t41, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l23, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  br label %bb18
bb13:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t44 = load ptr, ptr %l26, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 7
  store i1 %t50, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t51 = load i1, ptr %l27, !tbaa !21
  br i1 %t51, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb56
bb19:
  %t52 = load ptr, ptr %l1, !tbaa !29
  store ptr %t52, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb20, label %bb21
bb20:
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 8}
  %t59 = icmp eq i64 %t57, 2
  store i1 %t59, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t60 = load i1, ptr %l31, !tbaa !21
  br i1 %t60, label %bb22, label %bb23
bb22:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t63, i32 0, i32 2
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l4, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t67, ptr %t68, i1 %t70)
  br label %bb25
bb25:
  br label %bb56
bb26:
  %t74 = load ptr, ptr %l1, !tbaa !29
  store ptr %t74, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t75 = load ptr, ptr %l40, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb27, label %bb28
bb27:
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 8}
  %t81 = icmp eq i64 %t79, 3
  store i1 %t81, ptr %l41, !tbaa !21
  br label %bb28
bb28:
  %t82 = load i1, ptr %l41, !tbaa !21
  br i1 %t82, label %bb29, label %bb30
bb29:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t85, i32 0, i32 2
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l5, !tbaa !29
  %t91 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eplace(ptr %v0, ptr %v1, ptr %t89, ptr %t90, i1 %t91)
  br label %bb32
bb32:
  br label %bb56
bb33:
  %t95 = load ptr, ptr %l1, !tbaa !29
  store ptr %t95, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t96 = load ptr, ptr %l49, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb34, label %bb35
bb34:
  %t99 = load ptr, ptr %l49, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 8}
  %t102 = icmp eq i64 %t100, 4
  store i1 %t102, ptr %l50, !tbaa !21
  br label %bb35
bb35:
  %t103 = load i1, ptr %l50, !tbaa !21
  br i1 %t103, label %bb36, label %bb37
bb36:
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t106, i32 0, i32 2
  %t108 = load ptr, ptr %t107
  store ptr %t108, ptr %l6, !tbaa !29
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l6, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Elem", ptr %t111, i32 0, i32 0
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t115 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eplace(ptr %v0, ptr %v1, ptr %t110, ptr %t114, i1 %t115)
  br label %bb39
bb39:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %l6, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Elem", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t119, ptr %t123, i1 %t125)
  br label %bb40
bb40:
  br label %bb56
bb41:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t130 = load ptr, ptr %l64, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb42, label %bb43
bb42:
  %t133 = load ptr, ptr %l64, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 8}
  %t136 = icmp eq i64 %t134, 5
  store i1 %t136, ptr %l65, !tbaa !21
  br label %bb43
bb43:
  %t137 = load i1, ptr %l65, !tbaa !21
  br i1 %t137, label %bb44, label %bb45
bb44:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t140, i32 0, i32 2
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l7, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l7, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Payload", ptr %t145, i32 0, i32 0
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t149 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eplace(ptr %v0, ptr %v1, ptr %t144, ptr %t148, i1 %t149)
  br label %bb47
bb47:
  br label %bb56
bb48:
  %t153 = load ptr, ptr %l1, !tbaa !29
  store ptr %t153, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t154 = load ptr, ptr %l74, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb49, label %bb50
bb49:
  %t157 = load ptr, ptr %l74, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 8}
  %t160 = icmp eq i64 %t158, 6
  store i1 %t160, ptr %l75, !tbaa !21
  br label %bb50
bb50:
  %t161 = load i1, ptr %l75, !tbaa !21
  br i1 %t161, label %bb51, label %bb52
bb51:
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t164 = getelementptr { i64, [4 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t164, i32 0, i32 2
  %t166 = load ptr, ptr %t165
  store ptr %t166, ptr %l8, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l8, !tbaa !29
  %t171 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t168, ptr %t169, i1 %t171)
  br label %bb54
bb54:
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_828a4528b8c70060_f45c4a72375fc35c)
  unreachable
bb56:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2ereadsG(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i1 @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eisG(ptr %v0, ptr %v1, ptr %a0, ptr %t17)
  store i1 %t20, ptr %l12
  br label %bb6
bb6:
  %t21 = load i1, ptr %l12, !tbaa !21
  store i1 %t21, ptr %l3, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_9a6d4bf984d4b4b9_118b76f3baa09ee5)
  unreachable
bb12:
  %t22 = load i1, ptr %l3, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
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
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i1
  %l143 = alloca ptr
  %l144 = alloca i1
  %l158 = alloca ptr
  %l159 = alloca i1
  %l168 = alloca ptr
  %l169 = alloca i1
  %l181 = alloca ptr
  %l182 = alloca i1
  %l195 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t2 = load ptr, ptr %l22, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l22, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l23, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l23, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb13
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t17 = load ptr, ptr %l28, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l28, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 17}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l29, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l29, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [3 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l3, !tbaa !29
  br label %bb13
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t32 = load ptr, ptr %l34, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l34, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 17}
  %t38 = icmp eq i64 %t36, 15
  store i1 %t38, ptr %l35, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l35, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr }, ptr %t42, i32 0, i32 1
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l3, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t46, ptr %t47, i1 %t49)
  br label %bb14
bb14:
  br label %bb123
bb15:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t54 = load ptr, ptr %l44, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l44, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 17}
  %t60 = icmp eq i64 %t58, 1
  store i1 %t60, ptr %l45, !tbaa !21
  br label %bb17
bb17:
  %t61 = load i1, ptr %l45, !tbaa !21
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l4, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [3 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l5, !tbaa !29
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t76 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eplace(ptr %v0, ptr %v1, ptr %t74, ptr %t75, i1 %t76)
  br label %bb21
bb21:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t83 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t80, ptr %t81, i1 %t83)
  br label %bb22
bb22:
  br label %bb123
bb23:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t88 = load ptr, ptr %l59, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load ptr, ptr %l59, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 17}
  %t94 = icmp eq i64 %t92, 3
  store i1 %t94, ptr %l60, !tbaa !21
  br label %bb25
bb25:
  %t95 = load i1, ptr %l60, !tbaa !21
  br i1 %t95, label %bb26, label %bb27
bb26:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [3 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", ptr }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l6, !tbaa !29
  br label %bb28
bb27:
  br label %bb32
bb28:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l6, !tbaa !29
  %t105 = getelementptr %"compiler/typed:If", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t102, ptr %t106, i1 %t108)
  br label %bb29
bb29:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t115 = getelementptr %"compiler/typed:If", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t112, ptr %t116, i1 %t118)
  br label %bb30
bb30:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l6, !tbaa !29
  %t125 = getelementptr %"compiler/typed:If", ptr %t123, i32 0, i32 2
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t122, ptr %t126, i1 %t127)
  br label %bb31
bb31:
  br label %bb123
bb32:
  %t131 = load ptr, ptr %l1, !tbaa !29
  store ptr %t131, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t132 = load ptr, ptr %l79, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb33, label %bb34
bb33:
  %t135 = load ptr, ptr %l79, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 17}
  %t138 = icmp eq i64 %t136, 4
  store i1 %t138, ptr %l80, !tbaa !21
  br label %bb34
bb34:
  %t139 = load i1, ptr %l80, !tbaa !21
  br i1 %t139, label %bb35, label %bb36
bb35:
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr { i64, [3 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t142, i32 0, i32 1
  %t144 = load ptr, ptr %t143
  store ptr %t144, ptr %l7, !tbaa !29
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [3 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t148, i32 0, i32 2
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l8, !tbaa !29
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t152, ptr %t153, i1 false)
  br label %bb38
bb38:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t157, ptr %t158, i1 false)
  br label %bb39
bb39:
  br label %bb123
bb40:
  %t161 = load ptr, ptr %l1, !tbaa !29
  store ptr %t161, ptr %l92, !tbaa !29
  store i1 false, ptr %l93, !tbaa !21
  %t162 = load ptr, ptr %l92, !tbaa !29
  %t163 = icmp ne ptr %t162, null
  br i1 %t163, label %bb41, label %bb42
bb41:
  %t165 = load ptr, ptr %l92, !tbaa !29
  %t166 = load i64, ptr %t165, !range !{i64 0, i64 17}
  %t168 = icmp eq i64 %t166, 12
  store i1 %t168, ptr %l93, !tbaa !21
  br label %bb42
bb42:
  %t169 = load i1, ptr %l93, !tbaa !21
  br i1 %t169, label %bb43, label %bb44
bb43:
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr { i64, [3 x i64] }, ptr %t170, i32 0, i32 1
  %t173 = getelementptr { %"compiler/source:Span", ptr }, ptr %t172, i32 0, i32 1
  %t174 = load ptr, ptr %t173
  store ptr %t174, ptr %l9, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t176, ptr %t177, i1 false)
  br label %bb46
bb46:
  br label %bb123
bb47:
  %t181 = load ptr, ptr %l1, !tbaa !29
  store ptr %t181, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t182 = load ptr, ptr %l101, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb48, label %bb49
bb48:
  %t185 = load ptr, ptr %l101, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 17}
  %t188 = icmp eq i64 %t186, 6
  store i1 %t188, ptr %l102, !tbaa !21
  br label %bb49
bb49:
  %t189 = load i1, ptr %l102, !tbaa !21
  br i1 %t189, label %bb50, label %bb51
bb50:
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t192 = getelementptr { i64, [3 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", ptr }, ptr %t192, i32 0, i32 1
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l10, !tbaa !29
  br label %bb56
bb51:
  %t196 = load ptr, ptr %l1, !tbaa !29
  store ptr %t196, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t197 = load ptr, ptr %l107, !tbaa !29
  %t198 = icmp ne ptr %t197, null
  br i1 %t198, label %bb52, label %bb53
bb52:
  %t200 = load ptr, ptr %l107, !tbaa !29
  %t201 = load i64, ptr %t200, !range !{i64 0, i64 17}
  %t203 = icmp eq i64 %t201, 16
  store i1 %t203, ptr %l108, !tbaa !21
  br label %bb53
bb53:
  %t204 = load i1, ptr %l108, !tbaa !21
  br i1 %t204, label %bb54, label %bb55
bb54:
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr { i64, [3 x i64] }, ptr %t205, i32 0, i32 1
  %t208 = getelementptr { %"compiler/source:Span", ptr }, ptr %t207, i32 0, i32 1
  %t209 = load ptr, ptr %t208
  store ptr %t209, ptr %l10, !tbaa !29
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load ptr, ptr %l10, !tbaa !29
  %t213 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t211, ptr %t212, i1 %t213)
  br label %bb57
bb57:
  br label %bb123
bb58:
  %t217 = load ptr, ptr %l1, !tbaa !29
  store ptr %t217, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t218 = load ptr, ptr %l116, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb59, label %bb60
bb59:
  %t221 = load ptr, ptr %l116, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 17}
  %t224 = icmp eq i64 %t222, 7
  store i1 %t224, ptr %l117, !tbaa !21
  br label %bb60
bb60:
  %t225 = load i1, ptr %l117, !tbaa !21
  br i1 %t225, label %bb61, label %bb62
bb61:
  br label %bb67
bb62:
  %t226 = load ptr, ptr %l1, !tbaa !29
  store ptr %t226, ptr %l120, !tbaa !29
  store i1 false, ptr %l121, !tbaa !21
  %t227 = load ptr, ptr %l120, !tbaa !29
  %t228 = icmp ne ptr %t227, null
  br i1 %t228, label %bb63, label %bb64
bb63:
  %t230 = load ptr, ptr %l120, !tbaa !29
  %t231 = load i64, ptr %t230, !range !{i64 0, i64 17}
  %t233 = icmp eq i64 %t231, 5
  store i1 %t233, ptr %l121, !tbaa !21
  br label %bb64
bb64:
  %t234 = load i1, ptr %l121, !tbaa !21
  br i1 %t234, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb123
bb68:
  %t235 = load ptr, ptr %l1, !tbaa !29
  store ptr %t235, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t236 = load ptr, ptr %l124, !tbaa !29
  %t237 = icmp ne ptr %t236, null
  br i1 %t237, label %bb69, label %bb70
bb69:
  %t239 = load ptr, ptr %l124, !tbaa !29
  %t240 = load i64, ptr %t239, !range !{i64 0, i64 17}
  %t242 = icmp eq i64 %t240, 8
  store i1 %t242, ptr %l125, !tbaa !21
  br label %bb70
bb70:
  %t243 = load i1, ptr %l125, !tbaa !21
  br i1 %t243, label %bb71, label %bb72
bb71:
  %t244 = load ptr, ptr %l1, !tbaa !29
  %t246 = getelementptr { i64, [3 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t246, i32 0, i32 1
  %t248 = load ptr, ptr %t247
  store ptr %t248, ptr %l11, !tbaa !29
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load ptr, ptr %l11, !tbaa !29
  %t253 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t250, ptr %t251, i1 %t253)
  br label %bb74
bb74:
  br label %bb123
bb75:
  %t257 = load ptr, ptr %l1, !tbaa !29
  store ptr %t257, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t258 = load ptr, ptr %l134, !tbaa !29
  %t259 = icmp ne ptr %t258, null
  br i1 %t259, label %bb76, label %bb77
bb76:
  %t261 = load ptr, ptr %l134, !tbaa !29
  %t262 = load i64, ptr %t261, !range !{i64 0, i64 17}
  %t264 = icmp eq i64 %t262, 9
  store i1 %t264, ptr %l135, !tbaa !21
  br label %bb77
bb77:
  %t265 = load i1, ptr %l135, !tbaa !21
  br i1 %t265, label %bb78, label %bb79
bb78:
  %t266 = load ptr, ptr %l1, !tbaa !29
  %t268 = getelementptr { i64, [3 x i64] }, ptr %t266, i32 0, i32 1
  %t269 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t268, i32 0, i32 2
  %t270 = load ptr, ptr %t269
  store ptr %t270, ptr %l12, !tbaa !29
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load ptr, ptr %l12, !tbaa !29
  %t274 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t272, ptr %t273, i1 %t274)
  br label %bb81
bb81:
  br label %bb123
bb82:
  %t278 = load ptr, ptr %l1, !tbaa !29
  store ptr %t278, ptr %l143, !tbaa !29
  store i1 false, ptr %l144, !tbaa !21
  %t279 = load ptr, ptr %l143, !tbaa !29
  %t280 = icmp ne ptr %t279, null
  br i1 %t280, label %bb83, label %bb84
bb83:
  %t282 = load ptr, ptr %l143, !tbaa !29
  %t283 = load i64, ptr %t282, !range !{i64 0, i64 17}
  %t285 = icmp eq i64 %t283, 10
  store i1 %t285, ptr %l144, !tbaa !21
  br label %bb84
bb84:
  %t286 = load i1, ptr %l144, !tbaa !21
  br i1 %t286, label %bb85, label %bb86
bb85:
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = getelementptr { i64, [3 x i64] }, ptr %t287, i32 0, i32 1
  %t290 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t289, i32 0, i32 1
  %t291 = load ptr, ptr %t290
  store ptr %t291, ptr %l13, !tbaa !29
  %t293 = load ptr, ptr %l1, !tbaa !29
  %t295 = getelementptr { i64, [3 x i64] }, ptr %t293, i32 0, i32 1
  %t296 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t295, i32 0, i32 2
  %t297 = load ptr, ptr %t296
  store ptr %t297, ptr %l14, !tbaa !29
  br label %bb87
bb86:
  br label %bb90
bb87:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load ptr, ptr %l13, !tbaa !29
  %t302 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t299, ptr %t300, i1 %t302)
  br label %bb88
bb88:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load ptr, ptr %l14, !tbaa !29
  %t308 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t306, ptr %t307, i1 %t308)
  br label %bb89
bb89:
  br label %bb123
bb90:
  %t312 = load ptr, ptr %l1, !tbaa !29
  store ptr %t312, ptr %l158, !tbaa !29
  store i1 false, ptr %l159, !tbaa !21
  %t313 = load ptr, ptr %l158, !tbaa !29
  %t314 = icmp ne ptr %t313, null
  br i1 %t314, label %bb91, label %bb92
bb91:
  %t316 = load ptr, ptr %l158, !tbaa !29
  %t317 = load i64, ptr %t316, !range !{i64 0, i64 17}
  %t319 = icmp eq i64 %t317, 11
  store i1 %t319, ptr %l159, !tbaa !21
  br label %bb92
bb92:
  %t320 = load i1, ptr %l159, !tbaa !21
  br i1 %t320, label %bb93, label %bb94
bb93:
  %t321 = load ptr, ptr %l1, !tbaa !29
  %t323 = getelementptr { i64, [3 x i64] }, ptr %t321, i32 0, i32 1
  %t324 = getelementptr { %"compiler/source:Span", ptr }, ptr %t323, i32 0, i32 1
  %t325 = load ptr, ptr %t324
  store ptr %t325, ptr %l15, !tbaa !29
  br label %bb95
bb94:
  br label %bb97
bb95:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load ptr, ptr %l15, !tbaa !29
  %t330 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t327, ptr %t328, i1 %t330)
  br label %bb96
bb96:
  br label %bb123
bb97:
  %t334 = load ptr, ptr %l1, !tbaa !29
  store ptr %t334, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t335 = load ptr, ptr %l168, !tbaa !29
  %t336 = icmp ne ptr %t335, null
  br i1 %t336, label %bb98, label %bb99
bb98:
  %t338 = load ptr, ptr %l168, !tbaa !29
  %t339 = load i64, ptr %t338, !range !{i64 0, i64 17}
  %t341 = icmp eq i64 %t339, 13
  store i1 %t341, ptr %l169, !tbaa !21
  br label %bb99
bb99:
  %t342 = load i1, ptr %l169, !tbaa !21
  br i1 %t342, label %bb100, label %bb101
bb100:
  %t343 = load ptr, ptr %l1, !tbaa !29
  %t345 = getelementptr { i64, [3 x i64] }, ptr %t343, i32 0, i32 1
  %t346 = getelementptr { %"compiler/source:Span", ptr }, ptr %t345, i32 0, i32 1
  %t347 = load ptr, ptr %t346
  store ptr %t347, ptr %l16, !tbaa !29
  br label %bb102
bb101:
  br label %bb105
bb102:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load ptr, ptr %l16, !tbaa !29
  %t352 = getelementptr %"compiler/typed:Join", ptr %t350, i32 0, i32 0
  %t353 = load ptr, ptr %t352, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %v1, ptr %t349, ptr %t353, i1 false)
  br label %bb103
bb103:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t358 = load ptr, ptr %l16, !tbaa !29
  %t360 = getelementptr %"compiler/typed:Join", ptr %t358, i32 0, i32 2
  %t361 = load { i64, ptr }, ptr %t360, !tbaa !27
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eclauses(ptr %v0, ptr %v1, ptr %t357, { i64, ptr } %t361, i1 false)
  br label %bb104
bb104:
  br label %bb123
bb105:
  %t364 = load ptr, ptr %l1, !tbaa !29
  store ptr %t364, ptr %l181, !tbaa !29
  store i1 false, ptr %l182, !tbaa !21
  %t365 = load ptr, ptr %l181, !tbaa !29
  %t366 = icmp ne ptr %t365, null
  br i1 %t366, label %bb106, label %bb107
bb106:
  %t368 = load ptr, ptr %l181, !tbaa !29
  %t369 = load i64, ptr %t368, !range !{i64 0, i64 17}
  %t371 = icmp eq i64 %t369, 14
  store i1 %t371, ptr %l182, !tbaa !21
  br label %bb107
bb107:
  %t372 = load i1, ptr %l182, !tbaa !21
  br i1 %t372, label %bb108, label %bb109
bb108:
  %t373 = load ptr, ptr %l1, !tbaa !29
  %t375 = getelementptr { i64, [3 x i64] }, ptr %t373, i32 0, i32 1
  %t376 = getelementptr { %"compiler/source:Span", ptr }, ptr %t375, i32 0, i32 1
  %t377 = load ptr, ptr %t376
  store ptr %t377, ptr %l17, !tbaa !29
  br label %bb110
bb109:
  br label %bb122
bb110:
  %t379 = load ptr, ptr %l17, !tbaa !29
  %t381 = getelementptr %"compiler/typed:Spawn", ptr %t379, i32 0, i32 0
  %t382 = load { i64, ptr }, ptr %t381, !tbaa !27
  store { i64, ptr } %t382, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t384 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t384, 0
  store i64 %t386, ptr %l20, !tbaa !24
  br label %bb111
bb111:
  %t388 = load i64, ptr %l19, !tbaa !24
  %t389 = load i64, ptr %l20, !tbaa !24
  %t392 = icmp slt i64 %t388, %t389
  %t394 = xor i1 %t392, true
  br i1 %t394, label %bb112, label %bb113
bb112:
  br label %bb120
bb113:
  br label %bb114
bb114:
  %t396 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t396, ptr %l195, !tbaa !27
  %t397 = load i64, ptr %l19, !tbaa !24
  %t399 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !27
  %t401 = getelementptr ptr, ptr %t400, i64 %t397
  %t402 = load ptr, ptr %t401, !tbaa !39
  store ptr %t402, ptr %l21, !tbaa !29
  %t404 = load ptr, ptr %l21, !tbaa !29
  %t406 = icmp eq ptr %t404, null
  %t408 = xor i1 %t406, true
  br i1 %t408, label %bb115, label %bb116
bb115:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eplace(ptr %v0, ptr %v1, ptr %t410, ptr %t411, i1 false)
  br label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb118
bb118:
  br label %bb119
bb119:
  %t414 = load i64, ptr %l19, !tbaa !24
  %t416 = add i64 %t414, 1
  store i64 %t416, ptr %l19, !tbaa !24
  br label %bb111
bb120:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t419 = load ptr, ptr %l17, !tbaa !29
  %t421 = getelementptr %"compiler/typed:Spawn", ptr %t419, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eexpr(ptr %v0, ptr %v1, ptr %t418, ptr %t422, i1 false)
  br label %bb121
bb121:
  br label %bb123
bb122:
  call void @__olang_check_failed(ptr @olang_loc_5d8eb8e886e7da6d_dfab6a63e03eb449)
  unreachable
bb123:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l8 = alloca %"compiler/typed:Block"
  %s0 = alloca %olang.scope
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  store ptr %a0, ptr %l6, !tbaa !29
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v1, ptr %s0, i32 -1, { i64, ptr } %t8)
  store %"compiler/typed:Block" %t10, ptr %l8
  br label %bb4
bb4:
  %t11 = load %"compiler/typed:Block", ptr %l8
  %t12 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store %"compiler/typed:Block" %t11, ptr %t12
  %t14 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fdefinit_2ecompiler_2fdefinit_3aheldWalker_2eblock(ptr %v0, ptr %s0, ptr %t14, ptr %t12, i1 %a2)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fdefinit_2elitBool(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l15 = alloca i64
  %l18 = alloca i64
  %rv = alloca i64
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l2, !tbaa !24
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t26 = icmp eq i32 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp ne i64 %t28, 0
  br i1 %t30, label %bb8, label %bb9
bb7:
  store i64 -1, ptr %l15, !tbaa !24
  br label %bb11
bb8:
  store i64 1, ptr %l18, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb10
bb10:
  %t32 = load i64, ptr %l18, !tbaa !24
  store i64 %t32, ptr %l15, !tbaa !24
  br label %bb11
bb11:
  %t33 = load i64, ptr %l15, !tbaa !24
  store i64 %t33, ptr %l3, !tbaa !24
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_7935f23fc85db5b5_5a14f220007f8689)
  unreachable
bb17:
  %t34 = load i64, ptr %l3, !tbaa !24
  store i64 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2emeet(%"compiler/definit:State" %a0, %"compiler/definit:State" %a1) #0 {
entry:
  %l0 = alloca %"compiler/definit:State"
  %l1 = alloca %"compiler/definit:State"
  %l9 = alloca i1
  %rv = alloca %"compiler/definit:State"
  store %"compiler/definit:State" %a0, ptr %l0
  store %"compiler/definit:State" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/definit:State", ptr %l0, i32 0, i32 0
  %t2 = load i1, ptr %t1, !tbaa !21
  %t4 = xor i1 %t2, true
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load %"compiler/definit:State", ptr %l1
  store %"compiler/definit:State" %t6, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = getelementptr %"compiler/definit:State", ptr %l1, i32 0, i32 0
  %t9 = load i1, ptr %t8, !tbaa !21
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load %"compiler/definit:State", ptr %l0
  store %"compiler/definit:State" %t13, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t15 = getelementptr %"compiler/definit:State", ptr %l0, i32 0, i32 1
  %t16 = load i1, ptr %t15, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  %t18 = getelementptr %"compiler/definit:State", ptr %l1, i32 0, i32 1
  %t19 = load i1, ptr %t18, !tbaa !21
  store i1 %t19, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t21 = load i1, ptr %l9, !tbaa !21
  br i1 %t21, label %bb10, label %bb11
bb10:
  %t22 = load %"compiler/definit:State", ptr %l0
  store %"compiler/definit:State" %t22, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t24 = getelementptr %"compiler/definit:State", ptr %l0, i32 0, i32 1
  %t25 = load i1, ptr %t24, !tbaa !21
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb13, label %bb14
bb13:
  %t29 = load %"compiler/definit:State", ptr %l0
  store %"compiler/definit:State" %t29, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t31 = load %"compiler/definit:State", ptr %l1
  store %"compiler/definit:State" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_2eretag(%"compiler/definit:State" %a0, %"compiler/definit:State" %a1, %"compiler/definit:State" %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca %"compiler/definit:State"
  %l1 = alloca %"compiler/definit:State"
  %l2 = alloca %"compiler/definit:State"
  %l7 = alloca i1
  %l11 = alloca i1
  %l15 = alloca i32
  %l17 = alloca i32
  %l19 = alloca i1
  %l20 = alloca i1
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/source:Span"
  %l25 = alloca i1
  %l28 = alloca %"compiler/definit:State"
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/definit:State"
  store %"compiler/definit:State" %a0, ptr %l0
  store %"compiler/definit:State" %a1, ptr %l1
  store %"compiler/definit:State" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/definit:State", ptr %l0, i32 0, i32 0
  %t2 = load i1, ptr %t1, !tbaa !21
  %t4 = xor i1 %t2, true
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t6 = getelementptr %"compiler/definit:State", ptr %l0, i32 0, i32 1
  %t7 = load i1, ptr %t6, !tbaa !21
  store i1 %t7, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t10 = load %"compiler/definit:State", ptr %l0
  store %"compiler/definit:State" %t10, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t12 = getelementptr %"compiler/definit:State", ptr %l2, i32 0, i32 0
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = getelementptr %"compiler/definit:State", ptr %l2, i32 0, i32 1
  %t16 = load i1, ptr %t15, !tbaa !21
  %t18 = xor i1 %t16, true
  store i1 %t18, ptr %l11, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t20 = load i1, ptr %l11, !tbaa !21
  br i1 %t20, label %bb10, label %bb11
bb10:
  %t21 = load %"compiler/definit:State", ptr %l0
  store %"compiler/definit:State" %t21, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t23 = getelementptr %"compiler/definit:State", ptr %l0, i32 0, i32 2
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 6}
  store i32 %t24, ptr %l15
  %t25 = getelementptr %"compiler/definit:State", ptr %l1, i32 0, i32 2
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 6}
  store i32 %t26, ptr %l17
  %t29 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fdefinit_3aCause(ptr %l15, ptr %l17)
  store i1 %t29, ptr %l19
  br label %bb13
bb13:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb14, label %bb15
bb14:
  %t31 = getelementptr %"compiler/definit:State", ptr %l0, i32 0, i32 3
  %t32 = load %"compiler/source:Span", ptr %t31
  store %"compiler/source:Span" %t32, ptr %l21
  %t33 = getelementptr %"compiler/definit:State", ptr %l1, i32 0, i32 3
  %t34 = load %"compiler/source:Span", ptr %t33
  store %"compiler/source:Span" %t34, ptr %l23
  %t37 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l21, ptr %l23)
  store i1 %t37, ptr %l25
  br label %bb16
bb15:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb17
bb16:
  %t38 = load i1, ptr %l25, !tbaa !21
  store i1 %t38, ptr %l20, !tbaa !21
  br label %bb17
bb17:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t44 = call %"compiler/definit:State" @compiler_2fdefinit_3aState_2ector(ptr %s3, i1 true, i1 false, i32 %a3, %"compiler/source:Span" %a4)
  store %"compiler/definit:State" %t44, ptr %l28
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  %t45 = load %"compiler/definit:State", ptr %l28
  store %"compiler/definit:State" %t45, ptr %rv
  br label %ret
bb21:
  %t46 = load %"compiler/definit:State", ptr %l0
  store %"compiler/definit:State" %t46, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:State" @compiler_2fdefinit_3aState_2ector(ptr %v0, i1 %a0, i1 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %rv = alloca %"compiler/definit:State"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/definit:State" undef, i1 %a0, 0
  %t12 = insertvalue %"compiler/definit:State" %t10, i1 %a1, 1
  %t14 = insertvalue %"compiler/definit:State" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/definit:State" %t14, %"compiler/source:Span" %a3, 3
  store %"compiler/definit:State" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:State", ptr %rv
  ret %"compiler/definit:State" %rr
}

define dso_local %"compiler/definit:Verdict" @compiler_2fdefinit_3aVerdict_2ector(ptr %v0, i1 %a0, %"compiler/source:Span" %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %rv = alloca %"compiler/definit:Verdict"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/definit:Verdict" undef, i1 %a0, 0
  %t12 = insertvalue %"compiler/definit:Verdict" %t10, %"compiler/source:Span" %a1, 1
  %t14 = insertvalue %"compiler/definit:Verdict" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/definit:Verdict" %t14, %"compiler/source:Span" %a3, 3
  store %"compiler/definit:Verdict" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:Verdict", ptr %rv
  ret %"compiler/definit:Verdict" %rr
}

define dso_local %"compiler/definit:Walker" @compiler_2fdefinit_3aWalker_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i1
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/source:Span"
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/definit:Walker"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i32 %a1, ptr %l3, !tbaa !23
  store i1 false, ptr %l4, !tbaa !21
  %t5 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 0, i32 0)
  store %"compiler/source:Span" %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t6, ptr %l5
  store i32 0, ptr %l6
  %t8 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 0, i32 0)
  store %"compiler/source:Span" %t8, ptr %l13
  br label %bb2
bb2:
  %t9 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t9, ptr %l7
  %t10 = ptrtoint ptr %v1 to i64
  store i64 %t10, ptr %l14, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fdefinit_3aWalker_2e6
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = call ptr @__olang_region_make(ptr %v1)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l14, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l14
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t16, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l16
  br label %bb5
bb5:
  %t18 = load i1, ptr @olang_2esole_2ecompiler_2fdefinit_3aWalker_2e6
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load i64, ptr %l14
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %t22
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = call ptr @__olang_region_or(ptr %t24, ptr null)
  %t26 = icmp ne ptr %t25, null
  %t27 = select i1 %t26, ptr %t25, ptr null
  %t28 = icmp eq ptr %t27, %t21
  call void @__olang_region_settle(ptr %t21, i1 %t28)
  br label %bb7
bb7:
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t31 = insertvalue %"compiler/definit:Walker" undef, ptr %t30, 0
  %t32 = load i32, ptr %l3, !tbaa !23
  %t33 = insertvalue %"compiler/definit:Walker" %t31, i32 %t32, 1
  %t34 = load i1, ptr %l4, !tbaa !21
  %t35 = insertvalue %"compiler/definit:Walker" %t33, i1 %t34, 2
  %t36 = load %"compiler/source:Span", ptr %l5
  %t37 = insertvalue %"compiler/definit:Walker" %t35, %"compiler/source:Span" %t36, 3
  %t38 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t39 = insertvalue %"compiler/definit:Walker" %t37, i32 %t38, 4
  %t40 = load %"compiler/source:Span", ptr %l7
  %t41 = insertvalue %"compiler/definit:Walker" %t39, %"compiler/source:Span" %t40, 5
  %t43 = insertvalue %"compiler/definit:Walker" %t41, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, 6
  store %"compiler/definit:Walker" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:Walker", ptr %rv
  ret %"compiler/definit:Walker" %rr
}

define dso_local %"compiler/definit:heldWalker" @compiler_2fdefinit_3aheldWalker_2ector(ptr %v0, i32 %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/definit:heldWalker"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/definit:heldWalker" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/definit:heldWalker" %t6, i32 %a1, 1
  %t10 = insertvalue %"compiler/definit:heldWalker" %t8, i64 0, 2
  %t12 = insertvalue %"compiler/definit:heldWalker" %t10, i1 false, 3
  %t14 = insertvalue %"compiler/definit:heldWalker" %t12, i64 -1, 4
  store %"compiler/definit:heldWalker" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/definit:heldWalker", ptr %rv
  ret %"compiler/definit:heldWalker" %rr
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
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fdefinit_3aCause(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 6}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 6}
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/source:Span", ptr %t1, i32 0, i32 0
  %t3 = load i32, ptr %t2, !tbaa !23
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/source:Span", ptr %t4, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t9 = icmp eq i32 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb4
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/source:Span", ptr %t11, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/source:Span", ptr %t14, i32 0, i32 1
  %t16 = load i32, ptr %t15, !tbaa !23
  %t19 = icmp eq i32 %t13, %t16
  br i1 %t19, label %bb3, label %bb1
bb3:
  br label %bb4
bb4:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@olang_2esole_2ecompiler_2fdefinit_3aWalker_2e6 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
@olang_loc_98f0ccb4874a0151_2f8f084c984a7dad = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %a0)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@olang_loc_58a9ebc4913c6262_741c23f7607ff1de = external constant [0 x i8]
@olang_loc_84c4d6ea62c85acc_37a8fef9eaee128 = external constant [0 x i8]
@olang_loc_2666e55c871bfc88_11a50ffb28817424 = external constant [0 x i8]
@olang_loc_156bf6b7f20d7659_5aae6743b02be315 = external constant [0 x i8]
@olang_loc_304516e39709ae7e_333bbc0782cf3342 = external constant [0 x i8]
@olang_loc_76be02bbb9c5cc0_603b59278fb7a8ac = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_2c3786087cdb93b5_d0365e9ed2e87ce9 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare { i32, i1 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePop_3cBool_3e(ptr %v0, ptr %a0)
@olang_loc_ac7b00276c8cb33f_f84bfacdca165d83 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_86e100904f39c567_d61ce50e57b89f1b = external constant [0 x i8]
declare i64 @compiler_2ftyped_2eCalledBody(ptr %v0, ptr %a0)
@olang_loc_d952dfd7a131b942_4ab1800a85b68e5e = external constant [0 x i8]
@olang_loc_8bde8b1b63ea70b6_e30ac43cb3954ed2 = external constant [0 x i8]
@olang_loc_5ce4535adcc78e10_11db37cbad505f3c = external constant [0 x i8]
@olang_loc_2da6509b5a768f1c_defe08a34fad40b8 = external constant [0 x i8]
@olang_loc_de3894aecf8d774d_e482dac037566689 = external constant [0 x i8]
@olang_loc_8eac3767dec4383a_962121fe9d8e312e = external constant [0 x i8]
@olang_loc_d9e86c57eee4683e_b043e463d27920c2 = external constant [0 x i8]
@olang_loc_828a4528b8c70060_f45c4a72375fc35c = external constant [0 x i8]
@olang_loc_9a6d4bf984d4b4b9_118b76f3baa09ee5 = external constant [0 x i8]
@olang_loc_5d8eb8e886e7da6d_dfab6a63e03eb449 = external constant [0 x i8]
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@olang_loc_7935f23fc85db5b5_5a14f220007f8689 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)

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
