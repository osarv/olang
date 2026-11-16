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
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr, i64 }
%olang.slotscope = type { %olang.scope, i64, [8 x ptr] }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"compiler/paint:Shade" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
@G_2ecompiler_2fpaint_2ecommentColour = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ecommentColour.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ecommentColour.k2, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ecommentColour.k3 }>, align 32
@G_2ecompiler_2fpaint_2ecommentColour.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\31\36\36\3B\31\37\32\3B\32\30\35" }>, align 8
@G_2ecompiler_2fpaint_2ecommentColour.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\32\35\30" }>, align 8
@G_2ecompiler_2fpaint_2ecommentColour.k3 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\33" }>, align 8
@G_2ecompiler_2fpaint_2eerrorWord = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2eerrorWord.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2eerrorWord.k2, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2eerrorWord.k3 }>, align 32
@G_2ecompiler_2fpaint_2eerrorWord.k1 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\32\35\35\3B\38\33\3B\31\31\32" }>, align 8
@G_2ecompiler_2fpaint_2eerrorWord.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\32\30\33" }>, align 8
@G_2ecompiler_2fpaint_2eerrorWord.k3 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\31" }>, align 8
@G_2ecompiler_2fpaint_2efunctionColour = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2efunctionColour.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2efunctionColour.k2, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2efunctionColour.k3 }>, align 32
@G_2ecompiler_2fpaint_2efunctionColour.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\31\32\37\3B\32\31\39\3B\32\30\32" }>, align 8
@G_2ecompiler_2fpaint_2efunctionColour.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\31\31\36" }>, align 8
@G_2ecompiler_2fpaint_2efunctionColour.k3 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2fpaint_2ehelpWord = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ehelpWord.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ehelpWord.k2, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ehelpWord.k3 }>, align 32
@G_2ecompiler_2fpaint_2ehelpWord.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\31\39\35\3B\32\33\32\3B\31\34\31" }>, align 8
@G_2ecompiler_2fpaint_2ehelpWord.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\31\35\30" }>, align 8
@G_2ecompiler_2fpaint_2ehelpWord.k3 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\31" }>, align 8
@G_2ecompiler_2fpaint_2ekeywordColour = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ekeywordColour.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ekeywordColour.k2, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ekeywordColour.k3 }>, align 32
@G_2ecompiler_2fpaint_2ekeywordColour.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\31\39\39\3B\31\34\36\3B\32\33\34" }>, align 8
@G_2ecompiler_2fpaint_2ekeywordColour.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\31\37\37" }>, align 8
@G_2ecompiler_2fpaint_2ekeywordColour.k3 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2fpaint_2enoteWord = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2enoteWord.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2enoteWord.k2, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2enoteWord.k3 }>, align 32
@G_2ecompiler_2fpaint_2enoteWord.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\31\33\37\3B\32\32\31\3B\32\35\35" }>, align 8
@G_2ecompiler_2fpaint_2enoteWord.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\31\31\37" }>, align 8
@G_2ecompiler_2fpaint_2enoteWord.k3 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\31" }>, align 8
@G_2ecompiler_2fpaint_2enumberColour = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2enumberColour.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2enumberColour.k2, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2enumberColour.k3 }>, align 32
@G_2ecompiler_2fpaint_2enumberColour.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\32\34\37\3B\31\34\30\3B\31\30\38" }>, align 8
@G_2ecompiler_2fpaint_2enumberColour.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\32\30\39" }>, align 8
@G_2ecompiler_2fpaint_2enumberColour.k3 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2fpaint_2eoperatorColour = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2eoperatorColour.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2eoperatorColour.k2, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2eoperatorColour.k3 }>, align 32
@G_2ecompiler_2fpaint_2eoperatorColour.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\31\33\37\3B\32\32\31\3B\32\35\35" }>, align 8
@G_2ecompiler_2fpaint_2eoperatorColour.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\31\31\37" }>, align 8
@G_2ecompiler_2fpaint_2eoperatorColour.k3 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2fpaint_2eplain = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2eplain.k1, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2eplain.k2, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2eplain.k3 }>, align 32
@G_2ecompiler_2fpaint_2eplain.k1 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2fpaint_2eplain.k2 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2fpaint_2eplain.k3 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2fpaint_2etextColour = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2etextColour.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2etextColour.k2, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2etextColour.k3 }>, align 32
@G_2ecompiler_2fpaint_2etextColour.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\31\39\35\3B\32\33\32\3B\31\34\31" }>, align 8
@G_2ecompiler_2fpaint_2etextColour.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\31\35\30" }>, align 8
@G_2ecompiler_2fpaint_2etextColour.k3 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2fpaint_2etypeNameColour = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2etypeNameColour.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2etypeNameColour.k2, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2etypeNameColour.k3 }>, align 32
@G_2ecompiler_2fpaint_2etypeNameColour.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\32\35\35\3B\32\30\33\3B\31\30\37" }>, align 8
@G_2ecompiler_2fpaint_2etypeNameColour.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\32\32\31" }>, align 8
@G_2ecompiler_2fpaint_2etypeNameColour.k3 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2fpaint_2ewarningWord = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ewarningWord.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ewarningWord.k2, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fpaint_2ewarningWord.k3 }>, align 32
@G_2ecompiler_2fpaint_2ewarningWord.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\32\35\35\3B\32\30\33\3B\31\30\37" }>, align 8
@G_2ecompiler_2fpaint_2ewarningWord.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\32\32\31" }>, align 8
@G_2ecompiler_2fpaint_2ewarningWord.k3 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\31" }>, align 8
define dso_local i1 @compiler_2fpaint_2eDeep() #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l5 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d0, i32 0, i32 1) })
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
  br label %bb7
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  store i1 %t10, ptr %l5, !tbaa !21
  %t11 = load i32, ptr %l3, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = call i1 @compiler_2fpaint_2ehas(ptr %s1, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t16, ptr %l8
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t17 = load i1, ptr %l8, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
bb7:
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t18, ptr %l0, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t21, ptr %l10
  br label %bb8
bb8:
  %t22 = load i1, ptr %l10, !tbaa !21
  br i1 %t22, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb12
bb10:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t23, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t25, ptr %l13
  br label %bb11
bb11:
  %t26 = load i1, ptr %l13, !tbaa !21
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb16
bb14:
  %t28 = call i1 @compiler_2fpaint_2ehas(ptr %s0, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t28, ptr %l15
  br label %bb15
bb15:
  %t29 = load i1, ptr %l15, !tbaa !21
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t30 = load i1, ptr %l14, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fpaint_2eDiagnostics(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  %t2 = call i1 @compiler_2fpaint_2eDeep()
  store i1 %t2, ptr %l2
  br label %bb1
bb1:
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = load i1, ptr %l2, !tbaa !21
  %t5 = call { i64, ptr } @compiler_2fpaint_2ediagnostics(ptr %v0, ptr %v1, { i64, ptr } %t3, i1 %t4)
  store { i64, ptr } %t5, ptr %l3
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/paint:Shade" @compiler_2fpaint_2eShade_2eOf(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l3 = alloca i8
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l18 = alloca %"compiler/paint:Shade"
  %l23 = alloca i1
  %l29 = alloca i1
  %l33 = alloca { i64, ptr }
  %l37 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l49 = alloca i1
  %l52 = alloca i1
  %l58 = alloca i1
  %l61 = alloca i1
  %l64 = alloca i1
  %l70 = alloca i1
  %rv = alloca %"compiler/paint:Shade"
  store i32 %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 1 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t6, ptr %l7, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr i8, ptr %t8, i64 0
  %t10 = load i8, ptr %t9, !tbaa !32
  %t12 = icmp uge i8 %t10, 65
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t15, ptr %l11, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 0
  %t19 = load i8, ptr %t18, !tbaa !32
  %t21 = icmp ule i8 %t19, 90
  store i1 %t21, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l10, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2etypeNameColour
  store %"compiler/paint:Shade" %t24, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t28 = trunc i64 1 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb10, label %bb11
bb10:
  br i1 %a2, label %bb12, label %bb13
bb11:
  br label %bb15
bb12:
  %t33 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2efunctionColour
  store %"compiler/paint:Shade" %t33, ptr %l18
  br label %bb14
bb13:
  %t35 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2eplain
  store %"compiler/paint:Shade" %t35, ptr %l18
  br label %bb14
bb14:
  %t37 = load %"compiler/paint:Shade", ptr %l18
  store %"compiler/paint:Shade" %t37, ptr %rv
  br label %ret
bb15:
  %t38 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t40 = trunc i64 2 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb18
bb17:
  %t43 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t45 = trunc i64 3 to i32
  %t46 = icmp eq i32 %t43, %t45
  store i1 %t46, ptr %l23, !tbaa !21
  br label %bb18
bb18:
  %t48 = load i1, ptr %l23, !tbaa !21
  br i1 %t48, label %bb19, label %bb20
bb19:
  %t49 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2enumberColour
  store %"compiler/paint:Shade" %t49, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t53 = trunc i64 5 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb24
bb23:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t58 = trunc i64 4 to i32
  %t59 = icmp eq i32 %t56, %t58
  store i1 %t59, ptr %l29, !tbaa !21
  br label %bb24
bb24:
  %t61 = load i1, ptr %l29, !tbaa !21
  br i1 %t61, label %bb25, label %bb26
bb25:
  %t62 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2etextColour
  store %"compiler/paint:Shade" %t62, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t64, ptr %l33, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i8, ptr %t66, i64 0
  %t68 = load i8, ptr %t67, !tbaa !32
  store i8 %t68, ptr %l3, !tbaa !22
  %t70 = load i8, ptr %l3, !tbaa !22
  %t72 = icmp uge i8 %t70, 97
  br i1 %t72, label %bb28, label %bb29
bb28:
  %t74 = load i8, ptr %l3, !tbaa !22
  %t76 = icmp ule i8 %t74, 122
  store i1 %t76, ptr %l37, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb30
bb30:
  %t78 = load i1, ptr %l37, !tbaa !21
  br i1 %t78, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb36
bb32:
  %t79 = load i8, ptr %l3, !tbaa !22
  %t81 = icmp uge i8 %t79, 65
  br i1 %t81, label %bb33, label %bb34
bb33:
  %t83 = load i8, ptr %l3, !tbaa !22
  %t85 = icmp ule i8 %t83, 90
  store i1 %t85, ptr %l43, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb35
bb35:
  %t87 = load i1, ptr %l43, !tbaa !21
  store i1 %t87, ptr %l40, !tbaa !21
  br label %bb36
bb36:
  %t88 = load i1, ptr %l40, !tbaa !21
  br i1 %t88, label %bb37, label %bb38
bb37:
  %t89 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2ekeywordColour
  store %"compiler/paint:Shade" %t89, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t91 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t93 = trunc i64 74 to i32
  %t94 = icmp eq i32 %t91, %t93
  br i1 %t94, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb42
bb41:
  %t96 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t98 = trunc i64 75 to i32
  %t99 = icmp eq i32 %t96, %t98
  store i1 %t99, ptr %l49, !tbaa !21
  br label %bb42
bb42:
  %t101 = load i1, ptr %l49, !tbaa !21
  br i1 %t101, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb45
bb44:
  %t102 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t104 = trunc i64 78 to i32
  %t105 = icmp eq i32 %t102, %t104
  store i1 %t105, ptr %l52, !tbaa !21
  br label %bb45
bb45:
  %t107 = load i1, ptr %l52, !tbaa !21
  br i1 %t107, label %bb46, label %bb47
bb46:
  %t108 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2eplain
  store %"compiler/paint:Shade" %t108, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t110 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t112 = trunc i64 107 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb51
bb50:
  %t115 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t117 = trunc i64 108 to i32
  %t118 = icmp eq i32 %t115, %t117
  store i1 %t118, ptr %l58, !tbaa !21
  br label %bb51
bb51:
  %t120 = load i1, ptr %l58, !tbaa !21
  br i1 %t120, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb54
bb53:
  %t121 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t123 = trunc i64 109 to i32
  %t124 = icmp eq i32 %t121, %t123
  store i1 %t124, ptr %l61, !tbaa !21
  br label %bb54
bb54:
  %t126 = load i1, ptr %l61, !tbaa !21
  br i1 %t126, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb57
bb56:
  %t127 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t129 = trunc i64 110 to i32
  %t130 = icmp eq i32 %t127, %t129
  store i1 %t130, ptr %l64, !tbaa !21
  br label %bb57
bb57:
  %t132 = load i1, ptr %l64, !tbaa !21
  br i1 %t132, label %bb58, label %bb59
bb58:
  %t133 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2eplain
  store %"compiler/paint:Shade" %t133, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t135 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t137 = trunc i64 111 to i32
  %t138 = icmp eq i32 %t135, %t137
  br i1 %t138, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb63
bb62:
  %t140 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t142 = trunc i64 112 to i32
  %t143 = icmp eq i32 %t140, %t142
  store i1 %t143, ptr %l70, !tbaa !21
  br label %bb63
bb63:
  %t145 = load i1, ptr %l70, !tbaa !21
  br i1 %t145, label %bb64, label %bb65
bb64:
  %t146 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2eplain
  store %"compiler/paint:Shade" %t146, ptr %rv
  br label %ret
bb65:
  br label %bb66
bb66:
  %t148 = load %"compiler/paint:Shade", ptr @G_2ecompiler_2fpaint_2eoperatorColour
  store %"compiler/paint:Shade" %t148, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/paint:Shade", ptr %rv
  ret %"compiler/paint:Shade" %rr
}

define dso_local { i64, ptr } @compiler_2fpaint_2eSource(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  %t2 = call i1 @compiler_2fpaint_2eDeep()
  store i1 %t2, ptr %l2
  br label %bb1
bb1:
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = load i1, ptr %l2, !tbaa !21
  %t5 = call { i64, ptr } @compiler_2fpaint_2esource(ptr %v0, ptr %v1, { i64, ptr } %t3, i1 %t4)
  store { i64, ptr } %t5, ptr %l3
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fpaint_2eWanted(i32 %a0) #0 {
entry:
  %l3 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l10 = alloca i1
  %l15 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i1 @std_2fos_2eIsTerminal(i32 %a0)
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) })
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l8
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb6, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l7
  br label %bb5
bb5:
  %t13 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  br label %bb10
bb6:
  %t14 = load i32, ptr %l8, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l10, !tbaa !21
  %t18 = load i32, ptr %l8, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  br i1 %t21, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb10:
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t27, ptr %l15
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load i1, ptr %l15, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fpaint_2ecoloured(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t5 = extractvalue { i64, ptr } %a0, 1
  %t6 = extractvalue { i64, ptr } %a0, 0
  %t7 = add i64 %t3, %t6
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t10 = add i64 %t7, %t9
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t2, i64 %t3)
  %t12 = getelementptr i8, ptr %t11, i64 %t3
  call void @olang_textcopy(ptr %t12, ptr %t5, i64 %t6)
  %t13 = getelementptr i8, ptr %t12, i64 %t6
  call void @olang_textcopy(ptr %t13, ptr %t8, i64 %t9)
  %t14 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t11, 1
  store { i64, ptr } %t15, ptr %l2, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t21 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t24 = extractvalue { i64, ptr } %t20, 1
  %t25 = extractvalue { i64, ptr } %t20, 0
  %t26 = add i64 %t22, %t25
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t21, i64 %t22)
  %t28 = getelementptr i8, ptr %t27, i64 %t22
  call void @olang_textcopy(ptr %t28, ptr %t24, i64 %t25)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  %t33 = extractvalue { i64, ptr } %t30, 0
  %t34 = extractvalue { i64, ptr } %t30, 1
  %t35 = mul i64 %t33, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  call void @llvm.memcpy.p0.p0.i64(ptr %t36, ptr %t34, i64 %t35, i1 false)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  %t40 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t42 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %a1, { i64, ptr } %t40, { i64, ptr } %t38)
  store { i64, ptr } %t42, ptr %l13
  br label %bb1
bb1:
  %t43 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 0
  store i64 %t44, ptr %l14, !tbaa !24
  %t45 = load i64, ptr %l14, !tbaa !24
  %t46 = mul i64 %t45, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  store { i64, ptr } %t49, ptr %l15, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l14, !tbaa !24
  %t55 = mul i64 %t54, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t51, ptr %t53, i64 %t55, i1 false)
  %t56 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t61 = extractvalue { i64, ptr } %t56, 1
  %t62 = extractvalue { i64, ptr } %t56, 0
  %t63 = add i64 %t59, %t62
  %t64 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t66 = add i64 %t63, %t65
  %t67 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t58, i64 %t59)
  %t68 = getelementptr i8, ptr %t67, i64 %t59
  call void @olang_textcopy(ptr %t68, ptr %t61, i64 %t62)
  %t69 = getelementptr i8, ptr %t68, i64 %t62
  call void @olang_textcopy(ptr %t69, ptr %t64, i64 %t65)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t67, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fpaint_2ediagnostics(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store i1 true, ptr %l3, !tbaa !21
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s1, ptr %s1, { i64, ptr } %a0, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store { i64, ptr } %t5, ptr %l10
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb5:
  br label %bb6
bb6:
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %t23, i64 %t20
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !37
  store { i64, ptr } %t25, ptr %l7, !tbaa !27
  %t27 = load i1, ptr %l3, !tbaa !21
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb7, label %bb8
bb7:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  store i1 false, ptr %l3, !tbaa !21
  store ptr %l2, ptr %l23, !tbaa !29
  %t32 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = call { i64, ptr } @compiler_2fpaint_2erow(ptr %s1, ptr %s2, { i64, ptr } %t32, i1 %a1)
  store { i64, ptr } %t36, ptr %l26
  br label %bb11
bb11:
  %t37 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  %t39 = extractvalue { i64, ptr } %t37, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t44 = load ptr, ptr %l23, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t44, { i64, ptr } %t43)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l5, !tbaa !24
  br label %bb3
bb14:
  call void @__olang_scope_close(ptr %s1)
  %t51 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t51, ptr %l31
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t52 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fpaint_2egap(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1) #0 {
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
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l59 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  br label %bb29
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
  %t54 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = icmp eq i8 %t57, 35
  br i1 %t59, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t61, ptr %l38, !tbaa !27
  %t62 = load i64, ptr %l7, !tbaa !24
  store i64 %t62, ptr %l39, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l40, !tbaa !24
  %t65 = icmp sge i64 0, 0
  br i1 %t65, label %bb13, label %bb14
bb12:
  br label %bb27
bb13:
  %t67 = load i64, ptr %l39, !tbaa !24
  %t68 = icmp sle i64 0, %t67
  br i1 %t68, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_f0fc3cdba7859d2_2ed1a2f2972e1dee)
  unreachable
bb15:
  %t70 = load i64, ptr %l39, !tbaa !24
  %t71 = load i64, ptr %l40, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_f0fc3cdba7859d2_2ed1a2f2972e1dee)
  unreachable
bb17:
  %t74 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = load i64, ptr %l39, !tbaa !24
  %t77 = getelementptr i8, ptr %t75, i64 0
  %t78 = sub i64 %t76, 0
  %t79 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t77, 1
  store { i64, ptr } %t80, ptr %l44, !tbaa !27
  %t82 = load ptr, ptr @__olang_prog_scope
  %t85 = call { i64, ptr } @compiler_2fpaint_2esgr(ptr %t82, ptr %s3, ptr @G_2ecompiler_2fpaint_2ecommentColour, i1 %a1)
  store { i64, ptr } %t85, ptr %l47
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_f0fc3cdba7859d2_2ed1a2f2972e1dee)
  unreachable
bb19:
  %t86 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  store { i64, ptr } %t92, ptr %l48, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t93, ptr %l49, !tbaa !27
  %t94 = load i64, ptr %l7, !tbaa !24
  store i64 %t94, ptr %l50, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t95, 0
  store i64 %t98, ptr %l53, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  store i64 %t100, ptr %l54, !tbaa !24
  %t101 = load i64, ptr %l50, !tbaa !24
  %t102 = icmp sge i64 %t101, 0
  br i1 %t102, label %bb20, label %bb21
bb20:
  %t104 = load i64, ptr %l50, !tbaa !24
  %t105 = load i64, ptr %l53, !tbaa !24
  %t106 = icmp sle i64 %t104, %t105
  br i1 %t106, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_f0fc3cdba7859d2_2ed1a2f2972e1dee)
  unreachable
bb22:
  %t108 = load i64, ptr %l53, !tbaa !24
  %t109 = load i64, ptr %l54, !tbaa !24
  %t110 = icmp sle i64 %t108, %t109
  br i1 %t110, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_f0fc3cdba7859d2_2ed1a2f2972e1dee)
  unreachable
bb24:
  %t112 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = load i64, ptr %l50, !tbaa !24
  %t115 = load i64, ptr %l53, !tbaa !24
  %t116 = getelementptr i8, ptr %t113, i64 %t114
  %t117 = sub i64 %t115, %t114
  %t118 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t116, 1
  %t120 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t122 = call { i64, ptr } @compiler_2fpaint_2ecoloured(ptr %s3, ptr %v0, ptr %s3, { i64, ptr } %t120, { i64, ptr } %t119)
  store { i64, ptr } %t122, ptr %l59
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_f0fc3cdba7859d2_2ed1a2f2972e1dee)
  unreachable
bb26:
  %t123 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 1
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t126 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t129 = add i64 %t125, %t128
  %t130 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t129)
  call void @olang_textcopy(ptr %t130, ptr %t124, i64 %t125)
  %t131 = getelementptr i8, ptr %t130, i64 %t125
  call void @olang_textcopy(ptr %t131, ptr %t127, i64 %t128)
  %t132 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t130, 1
  call void @__olang_scope_close(ptr %s3)
  store { i64, ptr } %t133, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t135 = load i64, ptr %l6, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l6, !tbaa !24
  br label %bb7
bb29:
  %t139 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 1
  %t142 = extractvalue { i64, ptr } %t139, 0
  %t143 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t141, i64 %t142)
  %t144 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  store { i64, ptr } %t145, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fpaint_2ehas(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l7 = alloca i1
  %l12 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %s0, { i64, ptr } %a0)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l7, !tbaa !21
  %t13 = load i32, ptr %l5, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t22, ptr %l12
  br label %bb7
bb7:
  %t23 = load i1, ptr %l12, !tbaa !21
  %t24 = xor i1 %t23, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fpaint_2ekindAt(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i8
  %l17 = alloca i64
  %l20 = alloca i64
  %l41 = alloca i1
  %l43 = alloca { i64, ptr }
  %l51 = alloca i1
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca i1
  %l63 = alloca i1
  %l66 = alloca i1
  %l67 = alloca { i64, ptr }
  %l72 = alloca i1
  %l73 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = sub i64 %t3, %t6
  store i64 %t9, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t37 = load i64, ptr %l20, !tbaa !24
  store i64 %t37, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l17, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb9:
  br label %bb10
bb10:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l7, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t59 = load i64, ptr %l7, !tbaa !24
  %t63 = call i1 @compiler_2fpaint_2estartsAt(ptr %v0, ptr %v1, { i64, ptr } %t57, { i64, ptr } %t58, i64 %t59)
  store i1 %t63, ptr %l41
  br label %bb11
bb11:
  %t64 = load i1, ptr %l41, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb13:
  br label %bb14
bb14:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l43, !tbaa !27
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t74 = add i64 %t68, %t71
  %t76 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i8, ptr %t77, i64 %t74
  %t79 = load i8, ptr %t78, !tbaa !32
  store i8 %t79, ptr %l8, !tbaa !22
  %t81 = load i8, ptr %l8, !tbaa !22
  %t83 = icmp ne i8 %t81, 58
  br i1 %t83, label %bb15, label %bb16
bb15:
  %t85 = load i8, ptr %l8, !tbaa !22
  %t87 = icmp ne i8 %t85, 91
  store i1 %t87, ptr %l51, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb17
bb17:
  %t89 = load i1, ptr %l51, !tbaa !21
  br i1 %t89, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb19:
  br label %bb20
bb20:
  %t90 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t90, ptr %l54, !tbaa !27
  %t91 = load i64, ptr %l7, !tbaa !24
  store i64 %t91, ptr %l55, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l56, !tbaa !24
  %t94 = icmp sge i64 0, 0
  br i1 %t94, label %bb21, label %bb22
bb21:
  %t96 = load i64, ptr %l55, !tbaa !24
  %t97 = icmp sle i64 0, %t96
  br i1 %t97, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_a917ec3cd01cd95d_2d6159e9222ecdd1)
  unreachable
bb23:
  %t99 = load i64, ptr %l55, !tbaa !24
  %t100 = load i64, ptr %l56, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_a917ec3cd01cd95d_2d6159e9222ecdd1)
  unreachable
bb25:
  %t103 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l55, !tbaa !24
  %t106 = getelementptr i8, ptr %t104, i64 0
  %t107 = sub i64 %t105, 0
  %t108 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  %t111 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s2, { i64, ptr } %t109)
  store { i64, ptr } %t111, ptr %l61
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_a917ec3cd01cd95d_2d6159e9222ecdd1)
  unreachable
bb27:
  %t112 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t113 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t112, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t113, ptr %l62
  br label %bb28
bb28:
  %t114 = load i1, ptr %l62, !tbaa !21
  br i1 %t114, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb37
bb30:
  %t115 = load i64, ptr %l7, !tbaa !24
  %t117 = icmp sge i64 %t115, 2
  br i1 %t117, label %bb31, label %bb32
bb31:
  %t119 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t119, ptr %l67, !tbaa !27
  %t120 = load i64, ptr %l7, !tbaa !24
  %t122 = sub i64 %t120, 2
  %t124 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i8, ptr %t125, i64 %t122
  %t127 = load i8, ptr %t126, !tbaa !32
  %t129 = icmp eq i8 %t127, 58
  store i1 %t129, ptr %l66, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb33
bb33:
  %t131 = load i1, ptr %l66, !tbaa !21
  br i1 %t131, label %bb34, label %bb35
bb34:
  %t132 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t132, ptr %l73, !tbaa !27
  %t133 = load i64, ptr %l7, !tbaa !24
  %t135 = sub i64 %t133, 1
  %t137 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t135
  %t140 = load i8, ptr %t139, !tbaa !32
  %t142 = icmp eq i8 %t140, 32
  store i1 %t142, ptr %l72, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb36
bb36:
  %t144 = load i1, ptr %l72, !tbaa !21
  store i1 %t144, ptr %l63, !tbaa !21
  br label %bb37
bb37:
  %t145 = load i1, ptr %l63, !tbaa !21
  br i1 %t145, label %bb38, label %bb39
bb38:
  %t146 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  store i64 %t146, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb41:
  %t148 = load i64, ptr %l6, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l6, !tbaa !24
  br label %bb7
bb42:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fpaint_2epiece(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, %"compiler/paint:Shade" %a1, i1 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"compiler/paint:Shade"
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store %"compiler/paint:Shade" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/paint:Shade", ptr %l1, i32 0, i32 0
  %t2 = load { i64, ptr }, ptr %t1, !tbaa !27
  %t4 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t2, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load i1, ptr %l4, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = extractvalue { i64, ptr } %t6, 0
  %t10 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t9)
  call void @olang_textcopy(ptr %t10, ptr %t8, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l5, !tbaa !27
  br label %bb6
bb3:
  %t17 = call { i64, ptr } @compiler_2fpaint_2esgr(ptr %v1, ptr %s0, ptr %l1, i1 %a2)
  store { i64, ptr } %t17, ptr %l10
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  %t20 = extractvalue { i64, ptr } %t18, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = call { i64, ptr } @compiler_2fpaint_2ecoloured(ptr %s0, ptr %v0, ptr %v2, { i64, ptr } %t24, { i64, ptr } %t25)
  store { i64, ptr } %t28, ptr %l13
  br label %bb5
bb5:
  %t29 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t29, ptr %l5, !tbaa !27
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t30, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fpaint_2erow(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i1
  %l2 = alloca [4 x { i64, ptr }]
  %l3 = alloca [4 x { i64, ptr }]
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l30 = alloca i64
  %l33 = alloca i64
  %l54 = alloca i64
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l63 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l74 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = insertvalue [4 x { i64, ptr }] undef, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t2 = insertvalue [4 x { i64, ptr }] %t1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t3 = insertvalue [4 x { i64, ptr }] %t2, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, 2
  %t4 = insertvalue [4 x { i64, ptr }] %t3, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) }, 3
  store [4 x { i64, ptr }] %t4, ptr %l2
  %t6 = load i1, ptr %l1, !tbaa !21
  %t7 = load ptr, ptr @__olang_prog_scope
  %t10 = call { i64, ptr } @compiler_2fpaint_2esgr(ptr %t7, ptr %s0, ptr @G_2ecompiler_2fpaint_2eerrorWord, i1 %t6)
  store { i64, ptr } %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load i1, ptr %l1, !tbaa !21
  %t12 = load ptr, ptr @__olang_prog_scope
  %t15 = call { i64, ptr } @compiler_2fpaint_2esgr(ptr %t12, ptr %s0, ptr @G_2ecompiler_2fpaint_2ewarningWord, i1 %t11)
  store { i64, ptr } %t15, ptr %l17
  br label %bb2
bb2:
  %t16 = load i1, ptr %l1, !tbaa !21
  %t17 = load ptr, ptr @__olang_prog_scope
  %t20 = call { i64, ptr } @compiler_2fpaint_2esgr(ptr %t17, ptr %s0, ptr @G_2ecompiler_2fpaint_2enoteWord, i1 %t16)
  store { i64, ptr } %t20, ptr %l20
  br label %bb3
bb3:
  %t21 = load i1, ptr %l1, !tbaa !21
  %t22 = load ptr, ptr @__olang_prog_scope
  %t25 = call { i64, ptr } @compiler_2fpaint_2esgr(ptr %t22, ptr %s0, ptr @G_2ecompiler_2fpaint_2ehelpWord, i1 %t21)
  store { i64, ptr } %t25, ptr %l23
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t27 = insertvalue [4 x { i64, ptr }] undef, { i64, ptr } %t26, 0
  %t28 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t29 = insertvalue [4 x { i64, ptr }] %t27, { i64, ptr } %t28, 1
  %t30 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t31 = insertvalue [4 x { i64, ptr }] %t29, { i64, ptr } %t30, 2
  %t32 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t33 = insertvalue [4 x { i64, ptr }] %t31, { i64, ptr } %t32, 3
  store [4 x { i64, ptr }] %t33, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t35 = load [4 x { i64, ptr }], ptr %l2
  store i64 4, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb5, label %bb6
bb5:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb10
bb7:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = sub i64 %t48, %t49
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = sub i64 %t56, 1
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = sdiv i64 %t58, %t59
  store i64 %t62, ptr %l33, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb9
bb9:
  %t64 = load i64, ptr %l33, !tbaa !24
  store i64 %t64, ptr %l30, !tbaa !24
  br label %bb10
bb10:
  %t65 = load i64, ptr %l30, !tbaa !24
  store i64 %t65, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t66 = load i64, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb12, label %bb13
bb12:
  br label %bb33
bb13:
  br label %bb14
bb14:
  %t74 = load i64, ptr %l4, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t76 = load i64, ptr %l6, !tbaa !24
  %t79 = mul i64 %t75, %t76
  %t82 = add i64 %t74, %t79
  store i64 %t82, ptr %l9, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t85 = load i64, ptr %l9, !tbaa !24
  %t87 = getelementptr [4 x { i64, ptr }], ptr %l2, i64 0, i64 %t85
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !37
  %t91 = call i64 @compiler_2fpaint_2ekindAt(ptr %v0, ptr %s0, { i64, ptr } %t84, { i64, ptr } %t88)
  store i64 %t91, ptr %l54
  br label %bb15
bb15:
  %t92 = load i64, ptr %l54, !tbaa !24
  store i64 %t92, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = icmp sge i64 %t93, 0
  br i1 %t95, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t97 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t97, ptr %l57, !tbaa !27
  %t98 = load i64, ptr %l10, !tbaa !24
  store i64 %t98, ptr %l58, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  store i64 %t100, ptr %l59, !tbaa !24
  %t101 = icmp sge i64 0, 0
  br i1 %t101, label %bb18, label %bb19
bb17:
  br label %bb31
bb18:
  %t103 = load i64, ptr %l58, !tbaa !24
  %t104 = icmp sle i64 0, %t103
  br i1 %t104, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_23b292154f7ad816_1d712e0eb8a892aa)
  unreachable
bb20:
  %t106 = load i64, ptr %l58, !tbaa !24
  %t107 = load i64, ptr %l59, !tbaa !24
  %t108 = icmp sle i64 %t106, %t107
  br i1 %t108, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_23b292154f7ad816_1d712e0eb8a892aa)
  unreachable
bb22:
  %t110 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = load i64, ptr %l58, !tbaa !24
  %t113 = getelementptr i8, ptr %t111, i64 0
  %t114 = sub i64 %t112, 0
  %t115 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t113, 1
  store { i64, ptr } %t116, ptr %l63, !tbaa !27
  %t117 = load i64, ptr %l9, !tbaa !24
  %t119 = getelementptr [4 x { i64, ptr }], ptr %l3, i64 0, i64 %t117
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !37
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = getelementptr [4 x { i64, ptr }], ptr %l2, i64 0, i64 %t121
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !37
  %t127 = call { i64, ptr } @compiler_2fpaint_2ecoloured(ptr %s0, ptr %s0, ptr %s3, { i64, ptr } %t120, { i64, ptr } %t124)
  store { i64, ptr } %t127, ptr %l68
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_23b292154f7ad816_1d712e0eb8a892aa)
  unreachable
bb24:
  %t128 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t128, ptr %l69, !tbaa !27
  %t129 = load i64, ptr %l10, !tbaa !24
  %t130 = load i64, ptr %l9, !tbaa !24
  %t132 = getelementptr [4 x { i64, ptr }], ptr %l2, i64 0, i64 %t130
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !37
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t138 = add i64 %t129, %t135
  store i64 %t138, ptr %l74, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t139, 0
  store i64 %t142, ptr %l77, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  store i64 %t144, ptr %l78, !tbaa !24
  %t145 = load i64, ptr %l74, !tbaa !24
  %t146 = icmp sge i64 %t145, 0
  br i1 %t146, label %bb25, label %bb26
bb25:
  %t148 = load i64, ptr %l74, !tbaa !24
  %t149 = load i64, ptr %l77, !tbaa !24
  %t150 = icmp sle i64 %t148, %t149
  br i1 %t150, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_23b292154f7ad816_1d712e0eb8a892aa)
  unreachable
bb27:
  %t152 = load i64, ptr %l77, !tbaa !24
  %t153 = load i64, ptr %l78, !tbaa !24
  %t154 = icmp sle i64 %t152, %t153
  br i1 %t154, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_23b292154f7ad816_1d712e0eb8a892aa)
  unreachable
bb29:
  %t156 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l74, !tbaa !24
  %t159 = load i64, ptr %l77, !tbaa !24
  %t160 = getelementptr i8, ptr %t157, i64 %t158
  %t161 = sub i64 %t159, %t158
  %t162 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t160, 1
  %t164 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t167 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = add i64 %t166, %t169
  %t172 = extractvalue { i64, ptr } %t163, 1
  %t173 = extractvalue { i64, ptr } %t163, 0
  %t174 = add i64 %t170, %t173
  %t175 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t174)
  call void @olang_textcopy(ptr %t175, ptr %t165, i64 %t166)
  %t176 = getelementptr i8, ptr %t175, i64 %t166
  call void @olang_textcopy(ptr %t176, ptr %t168, i64 %t169)
  %t177 = getelementptr i8, ptr %t176, i64 %t169
  call void @olang_textcopy(ptr %t177, ptr %t172, i64 %t173)
  %t178 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t175, 1
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t179, ptr %rv
  br label %ret
bb30:
  call void @__olang_check_failed(ptr @olang_loc_23b292154f7ad816_1d712e0eb8a892aa)
  unreachable
bb31:
  br label %bb32
bb32:
  %t181 = load i64, ptr %l8, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l8, !tbaa !24
  br label %bb11
bb33:
  %t185 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t185, 1
  %t188 = extractvalue { i64, ptr } %t185, 0
  %t189 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t188)
  call void @olang_textcopy(ptr %t189, ptr %t187, i64 %t188)
  %t190 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t191, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fpaint_2esgr(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br i1 %a1, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/paint:Shade", ptr %t3, i32 0, i32 0
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  %t7 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = add i64 %t8, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t7, i64 %t8)
  %t14 = getelementptr i8, ptr %t13, i64 %t8
  call void @olang_textcopy(ptr %t14, ptr %t10, i64 %t11)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t13, 1
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  br label %bb3
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/paint:Shade", ptr %t18, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t22 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t27 = add i64 %t23, %t26
  %t28 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t27)
  call void @olang_textcopy(ptr %t28, ptr %t22, i64 %t23)
  %t29 = getelementptr i8, ptr %t28, i64 %t23
  call void @olang_textcopy(ptr %t29, ptr %t25, i64 %t26)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t28, 1
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  br label %bb3
bb3:
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t33, ptr %lp2
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = load ptr, ptr %lp2
  store { i64, ptr } %t34, ptr %t35, !tbaa !27
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/paint:Shade", ptr %t36, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t41, ptr %l13
  br label %bb4
bb4:
  %t42 = load i1, ptr %l13, !tbaa !21
  br i1 %t42, label %bb5, label %bb6
bb5:
  %t43 = load ptr, ptr %lp2
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  store { i64, ptr } %t44, ptr %l14, !tbaa !27
  br label %bb7
bb6:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/paint:Shade", ptr %t46, i32 0, i32 2
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t50 = load ptr, ptr %lp2
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t49, 1
  %t54 = extractvalue { i64, ptr } %t49, 0
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t59 = extractvalue { i64, ptr } %t51, 1
  %t60 = extractvalue { i64, ptr } %t51, 0
  %t61 = add i64 %t57, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t53, i64 %t54)
  %t63 = getelementptr i8, ptr %t62, i64 %t54
  call void @olang_textcopy(ptr %t63, ptr %t55, i64 %t56)
  %t64 = getelementptr i8, ptr %t63, i64 %t56
  call void @olang_textcopy(ptr %t64, ptr %t59, i64 %t60)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t62, 1
  store { i64, ptr } %t66, ptr %l14, !tbaa !27
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t68 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fpaint_2esource(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i1
  %l2 = alloca %"compiler/scan:Tokens"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/token:Token"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i1
  %l14 = alloca %"compiler/scan:Tokens"
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l24 = alloca { i64, ptr }
  %l34 = alloca i1
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l49 = alloca i1
  %l50 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l67 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l77 = alloca { i64, ptr }
  %l78 = alloca i32
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l88 = alloca %"compiler/paint:Shade"
  %l90 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l100 = alloca i64
  %l101 = alloca i64
  %l107 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %s0, { i64, ptr } %t1)
  store %"compiler/scan:Tokens" %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = load %"compiler/scan:Tokens", ptr %l14
  store %"compiler/scan:Tokens" %t4, ptr %l2
  %t5 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t5, ptr %l15
  br label %bb2
bb2:
  %t6 = load %"std/prelude/text:StringBuilder", ptr %l15
  store %"std/prelude/text:StringBuilder" %t6, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t7 = getelementptr %"compiler/scan:Tokens", ptr %l2, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t14 = load i64, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l7, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb5:
  br label %bb6
bb6:
  %t22 = load i64, ptr %l6, !tbaa !24
  store i64 %t22, ptr %l8, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t24, ptr %l24, !tbaa !27
  %t25 = load i64, ptr %l6, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/token:Token", ptr %t28, i64 %t25
  %t30 = load %"compiler/token:Token", ptr %t29
  store %"compiler/token:Token" %t30, ptr %l9
  %t32 = getelementptr %"compiler/token:Token", ptr %l9, i32 0, i32 2
  %t33 = load i32, ptr %t32, !tbaa !23
  %t35 = sext i32 %t33 to i64
  store i64 %t35, ptr %l10, !tbaa !24
  %t37 = getelementptr %"compiler/token:Token", ptr %l9, i32 0, i32 3
  %t38 = load i32, ptr %t37, !tbaa !23
  %t40 = sext i32 %t38 to i64
  store i64 %t40, ptr %l11, !tbaa !24
  %t42 = load i64, ptr %l11, !tbaa !24
  %t43 = load i64, ptr %l10, !tbaa !24
  %t46 = icmp sle i64 %t42, %t43
  br i1 %t46, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb9
bb8:
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  store i1 %t52, ptr %l34, !tbaa !21
  br label %bb9
bb9:
  %t54 = load i1, ptr %l34, !tbaa !21
  br i1 %t54, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb11:
  br label %bb12
bb12:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t57 = add i64 %t55, 1
  %t58 = getelementptr %"compiler/scan:Tokens", ptr %l2, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t64 = icmp slt i64 %t57, %t61
  br i1 %t64, label %bb13, label %bb14
bb13:
  %t66 = getelementptr %"compiler/scan:Tokens", ptr %l2, i32 0, i32 0
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  store { i64, ptr } %t67, ptr %l44, !tbaa !27
  %t68 = load i64, ptr %l8, !tbaa !24
  %t70 = add i64 %t68, 1
  %t72 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr %"compiler/token:Token", ptr %t73, i64 %t70
  %t75 = getelementptr %"compiler/token:Token", ptr %t74, i32 0, i32 0
  %t76 = load i32, ptr %t75, !range !{i32 0, i32 113}
  %t78 = trunc i64 107 to i32
  %t79 = icmp eq i32 %t76, %t78
  store i1 %t79, ptr %l43, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb15
bb15:
  %t81 = load i1, ptr %l43, !tbaa !21
  br i1 %t81, label %bb16, label %bb17
bb16:
  %t82 = getelementptr %"compiler/scan:Tokens", ptr %l2, i32 0, i32 0
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  store { i64, ptr } %t83, ptr %l50, !tbaa !27
  %t84 = load i64, ptr %l8, !tbaa !24
  %t86 = add i64 %t84, 1
  %t88 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr %"compiler/token:Token", ptr %t89, i64 %t86
  %t91 = getelementptr %"compiler/token:Token", ptr %t90, i32 0, i32 2
  %t92 = load i32, ptr %t91, !tbaa !23
  %t94 = sext i32 %t92 to i64
  %t95 = load i64, ptr %l11, !tbaa !24
  %t98 = icmp eq i64 %t94, %t95
  store i1 %t98, ptr %l49, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb18
bb18:
  %t100 = load i1, ptr %l49, !tbaa !21
  store i1 %t100, ptr %l12, !tbaa !21
  store ptr %l3, ptr %l57, !tbaa !29
  %t101 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t101, ptr %l58, !tbaa !27
  %t102 = load i64, ptr %l4, !tbaa !24
  store i64 %t102, ptr %l59, !tbaa !24
  %t103 = load i64, ptr %l10, !tbaa !24
  store i64 %t103, ptr %l60, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l61, !tbaa !24
  %t106 = load i64, ptr %l59, !tbaa !24
  %t107 = icmp sge i64 %t106, 0
  br i1 %t107, label %bb19, label %bb20
bb19:
  %t109 = load i64, ptr %l59, !tbaa !24
  %t110 = load i64, ptr %l60, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_f980bab18ae34e0b_48fd8714b14f322f)
  unreachable
bb21:
  %t113 = load i64, ptr %l60, !tbaa !24
  %t114 = load i64, ptr %l61, !tbaa !24
  %t115 = icmp sle i64 %t113, %t114
  br i1 %t115, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_f980bab18ae34e0b_48fd8714b14f322f)
  unreachable
bb23:
  %t117 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l59, !tbaa !24
  %t120 = load i64, ptr %l60, !tbaa !24
  %t121 = getelementptr i8, ptr %t118, i64 %t119
  %t122 = sub i64 %t120, %t119
  %t123 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  %t125 = load i1, ptr %l1, !tbaa !21
  %t128 = call { i64, ptr } @compiler_2fpaint_2egap(ptr %v0, ptr %s2, { i64, ptr } %t124, i1 %t125)
  store { i64, ptr } %t128, ptr %l67
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_f980bab18ae34e0b_48fd8714b14f322f)
  unreachable
bb25:
  %t129 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  %t131 = extractvalue { i64, ptr } %t129, 1
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t133, ptr %t131, i64 %t132, i1 false)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  %t136 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t136, { i64, ptr } %t135)
  br label %bb26
bb26:
  store ptr %l3, ptr %l69, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t138, ptr %l70, !tbaa !27
  %t139 = load i64, ptr %l10, !tbaa !24
  store i64 %t139, ptr %l71, !tbaa !24
  %t140 = load i64, ptr %l11, !tbaa !24
  store i64 %t140, ptr %l72, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  store i64 %t142, ptr %l73, !tbaa !24
  %t143 = load i64, ptr %l71, !tbaa !24
  %t144 = icmp sge i64 %t143, 0
  br i1 %t144, label %bb27, label %bb28
bb27:
  %t146 = load i64, ptr %l71, !tbaa !24
  %t147 = load i64, ptr %l72, !tbaa !24
  %t148 = icmp sle i64 %t146, %t147
  br i1 %t148, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_6e107a8020e9020e_de268567c6ddb9b2)
  unreachable
bb29:
  %t150 = load i64, ptr %l72, !tbaa !24
  %t151 = load i64, ptr %l73, !tbaa !24
  %t152 = icmp sle i64 %t150, %t151
  br i1 %t152, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_6e107a8020e9020e_de268567c6ddb9b2)
  unreachable
bb31:
  %t154 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = load i64, ptr %l71, !tbaa !24
  %t157 = load i64, ptr %l72, !tbaa !24
  %t158 = getelementptr i8, ptr %t155, i64 %t156
  %t159 = sub i64 %t157, %t156
  %t160 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t158, 1
  store { i64, ptr } %t161, ptr %l77, !tbaa !27
  %t162 = getelementptr %"compiler/token:Token", ptr %l9, i32 0, i32 0
  %t163 = load i32, ptr %t162, !range !{i32 0, i32 113}
  store i32 %t163, ptr %l78
  %t164 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t164, ptr %l79, !tbaa !27
  %t165 = load i64, ptr %l10, !tbaa !24
  store i64 %t165, ptr %l80, !tbaa !24
  %t166 = load i64, ptr %l11, !tbaa !24
  store i64 %t166, ptr %l81, !tbaa !24
  %t167 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 0
  store i64 %t168, ptr %l82, !tbaa !24
  %t169 = load i64, ptr %l80, !tbaa !24
  %t170 = icmp sge i64 %t169, 0
  br i1 %t170, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_6e107a8020e9020e_de268567c6ddb9b2)
  unreachable
bb33:
  %t172 = load i64, ptr %l80, !tbaa !24
  %t173 = load i64, ptr %l81, !tbaa !24
  %t174 = icmp sle i64 %t172, %t173
  br i1 %t174, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_6e107a8020e9020e_de268567c6ddb9b2)
  unreachable
bb35:
  %t176 = load i64, ptr %l81, !tbaa !24
  %t177 = load i64, ptr %l82, !tbaa !24
  %t178 = icmp sle i64 %t176, %t177
  br i1 %t178, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_6e107a8020e9020e_de268567c6ddb9b2)
  unreachable
bb37:
  %t180 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = load i64, ptr %l80, !tbaa !24
  %t183 = load i64, ptr %l81, !tbaa !24
  %t184 = getelementptr i8, ptr %t181, i64 %t182
  %t185 = sub i64 %t183, %t182
  %t186 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t184, 1
  %t188 = load i1, ptr %l12, !tbaa !21
  %t189 = load i32, ptr %l78, !range !{i32 0, i32 113}
  %t192 = call %"compiler/paint:Shade" @compiler_2fpaint_2eShade_2eOf(ptr %v0, ptr %s2, i32 %t189, { i64, ptr } %t187, i1 %t188)
  store %"compiler/paint:Shade" %t192, ptr %l88
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_6e107a8020e9020e_de268567c6ddb9b2)
  unreachable
bb39:
  %t193 = load i1, ptr %l1, !tbaa !21
  %t194 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t195 = load %"compiler/paint:Shade", ptr %l88
  %t197 = call { i64, ptr } @compiler_2fpaint_2epiece(ptr %v0, ptr %s2, ptr %s2, { i64, ptr } %t194, %"compiler/paint:Shade" %t195, i1 %t193)
  store { i64, ptr } %t197, ptr %l90
  br label %bb40
bb40:
  %t198 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 0
  %t200 = extractvalue { i64, ptr } %t198, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  %t205 = load ptr, ptr %l69, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t205, { i64, ptr } %t204)
  br label %bb41
bb41:
  %t207 = load i64, ptr %l11, !tbaa !24
  store i64 %t207, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb42:
  %t209 = load i64, ptr %l6, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l6, !tbaa !24
  br label %bb3
bb43:
  store ptr %l3, ptr %l95, !tbaa !29
  %t213 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t213, ptr %l96, !tbaa !27
  %t214 = load i64, ptr %l4, !tbaa !24
  store i64 %t214, ptr %l97, !tbaa !24
  %t215 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t215, 0
  store i64 %t218, ptr %l100, !tbaa !24
  %t219 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 0
  store i64 %t220, ptr %l101, !tbaa !24
  %t221 = load i64, ptr %l97, !tbaa !24
  %t222 = icmp sge i64 %t221, 0
  br i1 %t222, label %bb44, label %bb45
bb44:
  %t224 = load i64, ptr %l97, !tbaa !24
  %t225 = load i64, ptr %l100, !tbaa !24
  %t226 = icmp sle i64 %t224, %t225
  br i1 %t226, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_bb301eff2540b46d_975982618388da31)
  unreachable
bb46:
  %t228 = load i64, ptr %l100, !tbaa !24
  %t229 = load i64, ptr %l101, !tbaa !24
  %t230 = icmp sle i64 %t228, %t229
  br i1 %t230, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_bb301eff2540b46d_975982618388da31)
  unreachable
bb48:
  %t232 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = load i64, ptr %l97, !tbaa !24
  %t235 = load i64, ptr %l100, !tbaa !24
  %t236 = getelementptr i8, ptr %t233, i64 %t234
  %t237 = sub i64 %t235, %t234
  %t238 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t236, 1
  %t240 = load i1, ptr %l1, !tbaa !21
  %t243 = call { i64, ptr } @compiler_2fpaint_2egap(ptr %v0, ptr %s0, { i64, ptr } %t239, i1 %t240)
  store { i64, ptr } %t243, ptr %l107
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_bb301eff2540b46d_975982618388da31)
  unreachable
bb50:
  %t244 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 0
  %t246 = extractvalue { i64, ptr } %t244, 1
  %t247 = mul i64 %t245, 1
  %t248 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t247)
  call void @llvm.memcpy.p0.p0.i64(ptr %t248, ptr %t246, i64 %t247, i1 false)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  %t251 = load ptr, ptr %l95, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t251, { i64, ptr } %t250)
  br label %bb51
bb51:
  %t254 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l3)
  store { i64, ptr } %t254, ptr %l110
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s0)
  %t255 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t255, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fpaint_2estartsAt(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l43 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = add i64 %t1, %t4
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp sgt i64 %t7, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb4, label %bb5
bb4:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb9
bb6:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l25, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l25, !tbaa !24
  store i64 %t46, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l22, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l8, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t66, ptr %l43, !tbaa !27
  %t67 = load i64, ptr %l2, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i8, ptr %t74, i64 %t71
  %t76 = load i8, ptr %t75, !tbaa !32
  %t77 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t77, ptr %l48, !tbaa !27
  %t78 = load i64, ptr %l8, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i8, ptr %t81, i64 %t78
  %t83 = load i8, ptr %t82, !tbaa !32
  %t86 = icmp ne i8 %t76, %t83
  br i1 %t86, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l7, !tbaa !24
  br label %bb10
bb18:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/paint:Shade" @compiler_2fpaint_3aShade_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/paint:Shade"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/paint:Shade" undef, { i64, ptr } %a0, 0
  %t10 = insertvalue %"compiler/paint:Shade" %t8, { i64, ptr } %a1, 1
  %t12 = insertvalue %"compiler/paint:Shade" %t10, { i64, ptr } %a2, 2
  store %"compiler/paint:Shade" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/paint:Shade", ptr %rv
  ret %"compiler/paint:Shade" %rr
}

@.d0 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"COLORTERM" }>, align 8
declare void @__olang_errpay_pop()
@.d1 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"WT_SESSION" }>, align 8
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
@.d2 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"truecolor" }>, align 8
@.d3 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"24bit" }>, align 8
@.d4 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"WT_SESSION" }>, align 8
@.d5 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"NO_COLOR" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\1B[" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"m" }>, align 8
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
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\1B[0m\0A" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\1B[0m" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d17 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"warning" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"note" }>, align 8
@.d19 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"help" }>, align 8
@.d20 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"38;2;" }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"38;5;" }>, align 8
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
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c";" }>, align 8
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
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fos_2eIsTerminal(i32 %a0)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_f0fc3cdba7859d2_2ed1a2f2972e1dee = external constant [0 x i8]
@olang_loc_a917ec3cd01cd95d_2d6159e9222ecdd1 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_23b292154f7ad816_1d712e0eb8a892aa = external constant [0 x i8]
declare %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f980bab18ae34e0b_48fd8714b14f322f = external constant [0 x i8]
@olang_loc_6e107a8020e9020e_de268567c6ddb9b2 = external constant [0 x i8]
@olang_loc_bb301eff2540b46d_975982618388da31 = external constant [0 x i8]

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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
