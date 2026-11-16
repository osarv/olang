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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/prompt:Reply" = type { i1, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, i64, i1, { i64, ptr }, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/net:Addr" = type { %"std/net:IP", i16 }
%"std/net:IP" = type { i1, [16 x i8] }
%"compiler/prompt:Session" = type { ptr, i64, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/eval:Snapshot", { ptr, ptr }, i1, i1, %"compiler/cells:Worker", %"compiler/build:Config", { i64, ptr } }
%"compiler/eval:Snapshot" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/cells:Worker" = type { i1, i32, i32, i32, i32, i32, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/jupyter:pending" = type { i64, { i64, ptr } }
%"compiler/jupyter:kernel" = type { { i64, ptr }, { i64, ptr }, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/net:Listener" = type { i32 }
%"std/zmtp:Socket" = type { %"std/net:Conn", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1 }
%"std/net:Conn" = type { i32 }
%"compiler/jupyter:Capture" = type { i32, i32, i32 }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/jupyter:request" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/prompt:Decl" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64 }
%"compiler/prompt:Value" = type { { i64, ptr }, { i64, ptr }, i1, i64, { i64, ptr }, { i64, ptr } }
@G_2ecompiler_2fjupyter_2eControl = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fjupyter_2eDelimiter = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eDelimiter.k1 }>, align 8
@G_2ecompiler_2fjupyter_2eDelimiter.k1 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\3C\49\44\53\7C\4D\53\47\3E" }>, align 8
@G_2ecompiler_2fjupyter_2eHeartbeat = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fjupyter_2eIOPub = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k1, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k2, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k3, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k4, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k5, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k6, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k8, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k9, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k10, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k12, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k13, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k14, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k15, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k16, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k17, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k18, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k19, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k20, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k21, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k22, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k23, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k24, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKeywords.k25 }>, align 64
@G_2ecompiler_2fjupyter_2eKeywords.k1 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\66\6E" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k2 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\79\70\65" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k3 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\69\6D\70\6F\72\74" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k4 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\66\6F\72" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k5 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\69\6E" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k6 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\69\66" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k7 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\65\6C\73\65" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k8 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\72\65\74\75\72\6E" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k9 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6D\61\74\63\68" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k10 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\63\61\73\65" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k11 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\6D\75\74" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k12 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\74\72\79" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k13 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\61\74\63\68" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k14 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\65\72\72\6F\72" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k15 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\6E\64" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k16 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\6F\72" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k17 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\6E\6F\74" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k18 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\72\75\65" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k19 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\61\6C\73\65" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k20 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6E\75\6C\6C" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k21 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\75\63\74" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k22 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\65\6E\75\6D" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k23 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\74\72\61\69\74" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k24 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\64\65\66\65\72" }>, align 8
@G_2ecompiler_2fjupyter_2eKeywords.k25 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\72\61\6E\67\65" }>, align 8
@G_2ecompiler_2fjupyter_2eKinds = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKinds.k1, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKinds.k2, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKinds.k3, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKinds.k4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eKinds.k5 }>, align 64
@G_2ecompiler_2fjupyter_2eKinds.k1 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\52\4F\55\54\45\52" }>, align 8
@G_2ecompiler_2fjupyter_2eKinds.k2 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\52\4F\55\54\45\52" }>, align 8
@G_2ecompiler_2fjupyter_2eKinds.k3 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\52\4F\55\54\45\52" }>, align 8
@G_2ecompiler_2fjupyter_2eKinds.k4 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\50\55\42" }>, align 8
@G_2ecompiler_2fjupyter_2eKinds.k5 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\52\45\50" }>, align 8
@G_2ecompiler_2fjupyter_2ePortKeys = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2ePortKeys.k1, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2ePortKeys.k2, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2ePortKeys.k3, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2ePortKeys.k4, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2ePortKeys.k5 }>, align 64
@G_2ecompiler_2fjupyter_2ePortKeys.k1 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\73\68\65\6C\6C\5F\70\6F\72\74" }>, align 8
@G_2ecompiler_2fjupyter_2ePortKeys.k2 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\63\6F\6E\74\72\6F\6C\5F\70\6F\72\74" }>, align 8
@G_2ecompiler_2fjupyter_2ePortKeys.k3 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\73\74\64\69\6E\5F\70\6F\72\74" }>, align 8
@G_2ecompiler_2fjupyter_2ePortKeys.k4 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\69\6F\70\75\62\5F\70\6F\72\74" }>, align 8
@G_2ecompiler_2fjupyter_2ePortKeys.k5 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\68\62\5F\70\6F\72\74" }>, align 8
@G_2ecompiler_2fjupyter_2eProtocol = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fjupyter_2eProtocol.k1 }>, align 8
@G_2ecompiler_2fjupyter_2eProtocol.k1 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\35\2E\33" }>, align 8
@G_2ecompiler_2fjupyter_2eShell = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fjupyter_2eStdin = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
define dso_local { i64, ptr } @compiler_2fjupyter_2eData(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l12 = alloca i1
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store ptr %l1, ptr %l4, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/prompt:Reply", ptr %t3, i32 0, i32 3
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  %t8 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v0, ptr %s0, { i64, ptr } %t6)
  store { i64, ptr } %t8, ptr %l7
  br label %bb2
bb2:
  %t9 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t11 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = add i64 %t10, %t13
  %t15 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t9, i64 %t10)
  %t16 = getelementptr i8, ptr %t15, i64 %t10
  call void @olang_textcopy(ptr %t16, ptr %t12, i64 %t13)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t15, 1
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = extractvalue { i64, ptr } %t18, 1
  %t22 = mul i64 %t20, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t22)
  call void @llvm.memcpy.p0.p0.i64(ptr %t23, ptr %t21, i64 %t22, i1 false)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t26 = load ptr, ptr %l4, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t26, { i64, ptr } %t25)
  br label %bb3
bb3:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/prompt:Reply", ptr %t28, i32 0, i32 6
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t33, ptr %l12
  br label %bb4
bb4:
  %t34 = load i1, ptr %l12, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/prompt:Reply", ptr %t37, i32 0, i32 6
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t40, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t42, ptr %l16
  br label %bb7
bb6:
  br label %bb15
bb7:
  %t43 = load i1, ptr %l16, !tbaa !21
  br i1 %t43, label %bb8, label %bb9
bb8:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/prompt:Reply", ptr %t44, i32 0, i32 7
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t50 = call { i64, ptr } @std_2fbase64_2eEncode(ptr %v0, ptr %v0, { i64, ptr } %t47)
  store { i64, ptr } %t50, ptr %l21
  br label %bb10
bb9:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/prompt:Reply", ptr %t51, i32 0, i32 7
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l17, !tbaa !27
  br label %bb11
bb10:
  %t56 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 0
  %t58 = extractvalue { i64, ptr } %t56, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  store { i64, ptr } %t62, ptr %l17, !tbaa !27
  br label %bb11
bb11:
  %t64 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t64, ptr %l2, !tbaa !27
  store ptr %l1, ptr %l25, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/prompt:Reply", ptr %t65, i32 0, i32 6
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  %t70 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v0, ptr %s2, { i64, ptr } %t68)
  store { i64, ptr } %t70, ptr %l28
  br label %bb12
bb12:
  %t71 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t73 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v0, ptr %s2, { i64, ptr } %t71)
  store { i64, ptr } %t73, ptr %l30
  br label %bb13
bb13:
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t76 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t83 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = add i64 %t82, %t85
  %t87 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t86)
  call void @olang_textcopy(ptr %t87, ptr %t74, i64 %t75)
  %t88 = getelementptr i8, ptr %t87, i64 %t75
  call void @olang_textcopy(ptr %t88, ptr %t77, i64 %t78)
  %t89 = getelementptr i8, ptr %t88, i64 %t78
  call void @olang_textcopy(ptr %t89, ptr %t80, i64 %t81)
  %t90 = getelementptr i8, ptr %t89, i64 %t81
  call void @olang_textcopy(ptr %t90, ptr %t84, i64 %t85)
  %t91 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t87, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = extractvalue { i64, ptr } %t92, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t100 = load ptr, ptr %l25, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t100, { i64, ptr } %t99)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 125)
  br label %bb16
bb16:
  %t104 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t104, ptr %l35
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t105 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t105, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fjupyter_2eFirstLine(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t2, i8 10)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l9, !tbaa !24
  %t17 = icmp sge i64 0, 0
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = icmp sle i64 0, %t19
  br i1 %t20, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_fe819e7eaa01f559_23eb31b016f9cd4d)
  unreachable
bb7:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t23 = load i64, ptr %l9, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_fe819e7eaa01f559_23eb31b016f9cd4d)
  unreachable
bb9:
  %t26 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l2, !tbaa !24
  %t29 = getelementptr i8, ptr %t27, i64 0
  %t30 = sub i64 %t28, 0
  %t31 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  %t34 = extractvalue { i64, ptr } %t32, 1
  %t35 = extractvalue { i64, ptr } %t32, 0
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  call void @olang_textcopy(ptr %t36, ptr %t34, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_fe819e7eaa01f559_23eb31b016f9cd4d)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fjupyter_2eInstall(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i32, { i64, [2 x i64] } }
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i32, { i64, [2 x i64] } }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %l25 = alloca i32
  %l27 = alloca i1
  %l28 = alloca { i32, { i64, [2 x i64] } }
  %l29 = alloca { i32, { i64, [2 x i64] } }
  %l30 = alloca i32
  %l35 = alloca { i32, { i64, [2 x i64] } }
  %l36 = alloca { i32, { i64, [2 x i64] } }
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i32, { i64, [2 x i64] } }
  %l42 = alloca { i32, { i64, [2 x i64] } }
  %l43 = alloca i32
  %l58 = alloca { i64, ptr }
  %l60 = alloca i32
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l76 = alloca i32
  %l78 = alloca i1
  %l79 = alloca { i32, { i64, [2 x i64] } }
  %l80 = alloca { i32, { i64, [2 x i64] } }
  %l81 = alloca i32
  %l86 = alloca { i32, { i64, [2 x i64] } }
  %l87 = alloca { i32, { i64, [2 x i64] } }
  %l90 = alloca { i64, ptr }
  %l91 = alloca { i32, { i64, [2 x i64] } }
  %l93 = alloca { i32, { i64, [2 x i64] } }
  %l94 = alloca i32
  %l109 = alloca { i64, ptr }
  %l111 = alloca i32
  %l114 = alloca i32
  %l116 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.builder
  %s10room = alloca [64 x i8], align 8
  %rv = alloca i32
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d5, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l10
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l9
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l8, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l10, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l8, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t15, ptr %l14
  br label %bb7
bb7:
  %t16 = load i1, ptr %l14, !tbaa !21
  br i1 %t16, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s1, ptr %s1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) })
  %t18 = extractvalue { i32, { i64, ptr } } %t17, 1
  %t19 = extractvalue { i32, { i64, ptr } } %t17, 0
  store i32 %t19, ptr %l17
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb11, label %ok.21, !prof !99
ok.21:
  store { i64, ptr } %t18, ptr %l16
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t22 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t22, ptr %l15, !tbaa !27
  br label %bb15
bb11:
  %t23 = load i32, ptr %l17, !tbaa !23
  %t24 = ashr i32 %t23, 16
  %t26 = icmp eq i32 %t24, 1
  br i1 %t26, label %bb12, label %bb13
bb12:
  call void @__olang_errpay_pop()
  br label %bb13
bb13:
  br label %bb14
bb14:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l15, !tbaa !27
  br label %bb15
bb15:
  %t28 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t29, i64 %t30)
  %t35 = getelementptr i8, ptr %t34, i64 %t30
  call void @olang_textcopy(ptr %t35, ptr %t31, i64 %t32)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = extractvalue { i64, ptr } %t37, 1
  %t41 = mul i64 %t39, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @llvm.memcpy.p0.p0.i64(ptr %t42, ptr %t40, i64 %t41, i1 false)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb16:
  %t46 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 1
  %t49 = extractvalue { i64, ptr } %t46, 0
  %t50 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  call void @olang_textcopy(ptr %t53, ptr %t48, i64 %t49)
  %t54 = getelementptr i8, ptr %t53, i64 %t49
  call void @olang_textcopy(ptr %t54, ptr %t50, i64 %t51)
  %t55 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t53, 1
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t60 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t58)
  store i32 %t60, ptr %l25
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb18, label %ok.62, !prof !99
ok.62:
  br label %bb17
bb17:
  br label %bb42
bb18:
  %t63 = load i32, ptr %l25, !tbaa !23
  %t64 = ashr i32 %t63, 16
  %t66 = icmp eq i32 %t64, 1
  store i1 %t66, ptr %l27, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l4
  %t67 = load i32, ptr %l25, !tbaa !23
  %t68 = lshr i32 %t67, 16
  %t69 = and i32 %t67, 65535
  %t70 = icmp eq i32 %t68, 1
  %t71 = select i1 %t70, i32 1, i32 0
  %t72 = icmp eq i32 %t67, 0
  %t73 = shl i32 %t71, 16
  %t74 = or i32 %t73, %t69
  %t75 = select i1 %t72, i32 0, i32 %t74
  %t76 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l4, i32 0, i32 0
  store i32 %t75, ptr %t76, !tbaa !23
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t77 = load { i32, { i64, [2 x i64] } }, ptr %l4
  store { i32, { i64, [2 x i64] } } %t77, ptr %l28
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l29
  %t78 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l28, i32 0, i32 0
  %t79 = load i32, ptr %t78, !tbaa !23
  store i32 %t79, ptr %l30, !tbaa !23
  %t80 = load i32, ptr %l30, !tbaa !23
  %t81 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l29, i32 0, i32 0
  store i32 %t80, ptr %t81, !tbaa !23
  %t82 = load i32, ptr %l30, !tbaa !23
  %t83 = ashr i32 %t82, 16
  %t85 = icmp eq i32 %t83, 1
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t87 = call ptr @__olang_errpay_top_get()
  %t89 = load { i64, [2 x i64] }, ptr %t87
  %t90 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l29, i32 0, i32 1
  store { i64, [2 x i64] } %t89, ptr %t90
  br label %bb21
bb21:
  %t92 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s0, ptr %l29)
  store { i32, { i64, [2 x i64] } } %t92, ptr %l35
  br label %bb22
bb22:
  %t93 = load { i32, { i64, [2 x i64] } }, ptr %l35
  store { i32, { i64, [2 x i64] } } %t93, ptr %l4
  %t94 = load { i32, { i64, [2 x i64] } }, ptr %l4
  store { i32, { i64, [2 x i64] } } %t94, ptr %l36
  %t95 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l36, i32 0, i32 0
  %t96 = load i32, ptr %t95, !tbaa !23
  %t97 = ashr i32 %t96, 16
  %t99 = icmp eq i32 %t97, 1
  br i1 %t99, label %bb23, label %bb24
bb23:
  call void @__olang_errpay_pop()
  br label %bb24
bb24:
  %t101 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t101, ptr %l39, !tbaa !27
  %t102 = load { i32, { i64, [2 x i64] } }, ptr %l4
  store { i32, { i64, [2 x i64] } } %t102, ptr %l40
  %t104 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s4, ptr %l40)
  store { i32, { i64, [2 x i64] } } %t104, ptr %l42
  br label %bb25
bb25:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t105 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t105, i64 %t106)
  %t107 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = extractvalue { i64, ptr } %t107, 0
  call void @__olang_sb_put(ptr %s5, ptr %t108, i64 %t109)
  %t110 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t110, i64 %t111)
  %t112 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l42, i32 0, i32 0
  %t113 = load i32, ptr %t112, !tbaa !23
  store i32 %t113, ptr %l43, !tbaa !23
  %t114 = load i32, ptr %l43, !tbaa !23
  %t115 = icmp eq i32 %t114, 0
  br i1 %t115, label %bb27, label %bb28
bb26:
  %t117 = load ptr, ptr %s5
  %t118 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t119 = load i64, ptr %t118
  %t120 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t119)
  call void @olang_textcopy(ptr %t120, ptr %t117, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l58, !tbaa !27
  %t123 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t124 = load ptr, ptr %t123
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %sbgrew.126, label %sbdone.127
sbgrew.126:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.127
sbdone.127:
  %t128 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  %t130 = extractvalue { i64, ptr } %t128, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = call i32 @compiler_2fjupyter_2efail(ptr %s4, { i64, ptr } %t134)
  store i32 %t136, ptr %l60
  br label %bb41
bb27:
  %t137 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t138 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t137, i64 %t138)
  br label %bb26
bb28:
  %t139 = load i32, ptr %l43, !tbaa !23
  %t140 = icmp eq i32 %t139, 65536
  br i1 %t140, label %bb29, label %bb30
bb29:
  %t142 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t142, i64 %t143)
  %t144 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t144, i64 %t145)
  %t146 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l42, i32 0, i32 1
  %t147 = getelementptr { i64, [2 x i64] }, ptr %t146, i32 0, i32 1
  %t148 = getelementptr { { i64, ptr } }, ptr %t147, i32 0, i32 0
  %t149 = load { i64, ptr }, ptr %t148
  %t151 = extractvalue { i64, ptr } %t149, 1
  %t152 = extractvalue { i64, ptr } %t149, 0
  %t153 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t151, i64 %t152, i8 34)
  %t154 = call ptr @__olang_sb_room(ptr %s5, i64 %t153)
  %t155 = call i64 @__olang_rd_quote(ptr %t154, i64 0, ptr %t151, i64 %t152, i8 34)
  call void @__olang_sb_add(ptr %s5, i64 %t153)
  %t156 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t156, i64 %t157)
  br label %bb26
bb30:
  %t158 = load i32, ptr %l43, !tbaa !23
  %t159 = icmp eq i32 %t158, 65537
  br i1 %t159, label %bb31, label %bb32
bb31:
  %t161 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t161, i64 %t162)
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t163, i64 %t164)
  %t165 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l42, i32 0, i32 1
  %t166 = getelementptr { i64, [2 x i64] }, ptr %t165, i32 0, i32 1
  %t167 = getelementptr { { i64, ptr } }, ptr %t166, i32 0, i32 0
  %t168 = load { i64, ptr }, ptr %t167
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = extractvalue { i64, ptr } %t168, 0
  %t172 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t170, i64 %t171, i8 34)
  %t173 = call ptr @__olang_sb_room(ptr %s5, i64 %t172)
  %t174 = call i64 @__olang_rd_quote(ptr %t173, i64 0, ptr %t170, i64 %t171, i8 34)
  call void @__olang_sb_add(ptr %s5, i64 %t172)
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t176 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t175, i64 %t176)
  br label %bb26
bb32:
  %t177 = load i32, ptr %l43, !tbaa !23
  %t178 = icmp eq i32 %t177, 65538
  br i1 %t178, label %bb33, label %bb34
bb33:
  %t180 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t180, i64 %t181)
  %t182 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t182, i64 %t183)
  %t184 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l42, i32 0, i32 1
  %t185 = getelementptr { i64, [2 x i64] }, ptr %t184, i32 0, i32 1
  %t186 = getelementptr { { i64, ptr } }, ptr %t185, i32 0, i32 0
  %t187 = load { i64, ptr }, ptr %t186
  %t189 = extractvalue { i64, ptr } %t187, 1
  %t190 = extractvalue { i64, ptr } %t187, 0
  %t191 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t189, i64 %t190, i8 34)
  %t192 = call ptr @__olang_sb_room(ptr %s5, i64 %t191)
  %t193 = call i64 @__olang_rd_quote(ptr %t192, i64 0, ptr %t189, i64 %t190, i8 34)
  call void @__olang_sb_add(ptr %s5, i64 %t191)
  %t194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t194, i64 %t195)
  br label %bb26
bb34:
  %t196 = load i32, ptr %l43, !tbaa !23
  %t197 = icmp eq i32 %t196, 65539
  br i1 %t197, label %bb35, label %bb36
bb35:
  %t199 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t199, i64 %t200)
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t201, i64 %t202)
  %t203 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l42, i32 0, i32 1
  %t204 = getelementptr { i64, [2 x i64] }, ptr %t203, i32 0, i32 1
  %t205 = getelementptr { { i64, ptr } }, ptr %t204, i32 0, i32 0
  %t206 = load { i64, ptr }, ptr %t205
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = extractvalue { i64, ptr } %t206, 0
  %t210 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t208, i64 %t209, i8 34)
  %t211 = call ptr @__olang_sb_room(ptr %s5, i64 %t210)
  %t212 = call i64 @__olang_rd_quote(ptr %t211, i64 0, ptr %t208, i64 %t209, i8 34)
  call void @__olang_sb_add(ptr %s5, i64 %t210)
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t213, i64 %t214)
  br label %bb26
bb36:
  %t215 = load i32, ptr %l43, !tbaa !23
  %t216 = icmp eq i32 %t215, 65540
  br i1 %t216, label %bb37, label %bb38
bb37:
  %t218 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t218, i64 %t219)
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t220, i64 %t221)
  %t222 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l42, i32 0, i32 1
  %t223 = getelementptr { i64, [2 x i64] }, ptr %t222, i32 0, i32 1
  %t224 = getelementptr { { i64, ptr } }, ptr %t223, i32 0, i32 0
  %t225 = load { i64, ptr }, ptr %t224
  %t227 = extractvalue { i64, ptr } %t225, 1
  %t228 = extractvalue { i64, ptr } %t225, 0
  %t229 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t227, i64 %t228, i8 34)
  %t230 = call ptr @__olang_sb_room(ptr %s5, i64 %t229)
  %t231 = call i64 @__olang_rd_quote(ptr %t230, i64 0, ptr %t227, i64 %t228, i8 34)
  call void @__olang_sb_add(ptr %s5, i64 %t229)
  %t232 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t232, i64 %t233)
  br label %bb26
bb38:
  %t234 = load i32, ptr %l43, !tbaa !23
  %t235 = icmp eq i32 %t234, 65541
  br i1 %t235, label %bb39, label %bb40
bb39:
  %t237 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t237, i64 %t238)
  %t239 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t239, i64 %t240)
  %t241 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l42, i32 0, i32 1
  %t242 = getelementptr { i64, [2 x i64] }, ptr %t241, i32 0, i32 1
  %t243 = getelementptr { { i64, ptr } }, ptr %t242, i32 0, i32 0
  %t244 = load { i64, ptr }, ptr %t243
  %t246 = extractvalue { i64, ptr } %t244, 1
  %t247 = extractvalue { i64, ptr } %t244, 0
  %t248 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t246, i64 %t247, i8 34)
  %t249 = call ptr @__olang_sb_room(ptr %s5, i64 %t248)
  %t250 = call i64 @__olang_rd_quote(ptr %t249, i64 0, ptr %t246, i64 %t247, i8 34)
  call void @__olang_sb_add(ptr %s5, i64 %t248)
  %t251 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t251, i64 %t252)
  br label %bb26
bb40:
  %t253 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t253, i64 %t254)
  %t255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t255, i64 %t256)
  %t257 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l42, i32 0, i32 1
  %t258 = getelementptr { i64, [2 x i64] }, ptr %t257, i32 0, i32 1
  %t259 = getelementptr { { i64, ptr } }, ptr %t258, i32 0, i32 0
  %t260 = load { i64, ptr }, ptr %t259
  %t262 = extractvalue { i64, ptr } %t260, 1
  %t263 = extractvalue { i64, ptr } %t260, 0
  %t264 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t262, i64 %t263, i8 34)
  %t265 = call ptr @__olang_sb_room(ptr %s5, i64 %t264)
  %t266 = call i64 @__olang_rd_quote(ptr %t265, i64 0, ptr %t262, i64 %t263, i8 34)
  call void @__olang_sb_add(ptr %s5, i64 %t264)
  %t267 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t268 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t267, i64 %t268)
  br label %bb26
bb41:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t269 = load i32, ptr %l60, !tbaa !23
  store i32 %t269, ptr %rv
  br label %ret
bb42:
  %t270 = load ptr, ptr %l1, !tbaa !29
  %t272 = getelementptr %"compiler/build:Config", ptr %t270, i32 0, i32 5
  %t273 = load i1, ptr %t272, !tbaa !21
  br i1 %t273, label %bb43, label %bb44
bb43:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l63, !tbaa !27
  br label %bb45
bb44:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l63, !tbaa !27
  br label %bb45
bb45:
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr %"compiler/build:Config", ptr %t275, i32 0, i32 22
  %t278 = load i1, ptr %t277, !tbaa !21
  br i1 %t278, label %bb46, label %bb47
bb46:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l66, !tbaa !27
  br label %bb48
bb47:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l66, !tbaa !27
  br label %bb48
bb48:
  %t280 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t283 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t284 = extractvalue { i64, ptr } %t283, 1
  %t285 = extractvalue { i64, ptr } %t283, 0
  %t286 = add i64 %t282, %t285
  %t287 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t286)
  call void @olang_textcopy(ptr %t287, ptr %t281, i64 %t282)
  %t288 = getelementptr i8, ptr %t287, i64 %t282
  call void @olang_textcopy(ptr %t288, ptr %t284, i64 %t285)
  %t289 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t287, 1
  store { i64, ptr } %t290, ptr %l5, !tbaa !27
  %t294 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t294, ptr %l69
  br label %bb49
bb49:
  %t295 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t296 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t297 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t298 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t298, 1
  %t300 = extractvalue { i64, ptr } %t298, 0
  %t301 = add i64 %t297, %t300
  %t302 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t303 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t304 = add i64 %t301, %t303
  %t306 = extractvalue { i64, ptr } %t295, 1
  %t307 = extractvalue { i64, ptr } %t295, 0
  %t308 = add i64 %t304, %t307
  %t309 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t311 = add i64 %t308, %t310
  %t312 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t313 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t314 = add i64 %t311, %t313
  %t315 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t314)
  call void @olang_textcopy(ptr %t315, ptr %t296, i64 %t297)
  %t316 = getelementptr i8, ptr %t315, i64 %t297
  call void @olang_textcopy(ptr %t316, ptr %t299, i64 %t300)
  %t317 = getelementptr i8, ptr %t316, i64 %t300
  call void @olang_textcopy(ptr %t317, ptr %t302, i64 %t303)
  %t318 = getelementptr i8, ptr %t317, i64 %t303
  call void @olang_textcopy(ptr %t318, ptr %t306, i64 %t307)
  %t319 = getelementptr i8, ptr %t318, i64 %t307
  call void @olang_textcopy(ptr %t319, ptr %t309, i64 %t310)
  %t320 = getelementptr i8, ptr %t319, i64 %t310
  call void @olang_textcopy(ptr %t320, ptr %t312, i64 %t313)
  %t321 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t315, 1
  %t324 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t324, 1
  %t327 = extractvalue { i64, ptr } %t324, 0
  %t328 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t329 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t330 = add i64 %t327, %t329
  %t331 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t330)
  call void @olang_textcopy(ptr %t331, ptr %t326, i64 %t327)
  %t332 = getelementptr i8, ptr %t331, i64 %t327
  call void @olang_textcopy(ptr %t332, ptr %t328, i64 %t329)
  %t333 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t331, 1
  %t336 = extractvalue { i64, ptr } %t334, 0
  %t337 = extractvalue { i64, ptr } %t334, 1
  %t338 = mul i64 %t336, 1
  %t339 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t338)
  call void @llvm.memcpy.p0.p0.i64(ptr %t339, ptr %t337, i64 %t338, i1 false)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t339, 1
  %t345 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t341, { i64, ptr } %t322)
  store i32 %t345, ptr %l76
  %t346 = icmp ne i32 %t345, 0
  br i1 %t346, label %bb51, label %ok.347, !prof !99
ok.347:
  br label %bb50
bb50:
  br label %bb75
bb51:
  %t348 = load i32, ptr %l76, !tbaa !23
  %t349 = ashr i32 %t348, 16
  %t351 = icmp eq i32 %t349, 1
  store i1 %t351, ptr %l78, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l7
  %t352 = load i32, ptr %l76, !tbaa !23
  %t353 = lshr i32 %t352, 16
  %t354 = and i32 %t352, 65535
  %t355 = icmp eq i32 %t353, 1
  %t356 = select i1 %t355, i32 1, i32 0
  %t357 = icmp eq i32 %t352, 0
  %t358 = shl i32 %t356, 16
  %t359 = or i32 %t358, %t354
  %t360 = select i1 %t357, i32 0, i32 %t359
  %t361 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l7, i32 0, i32 0
  store i32 %t360, ptr %t361, !tbaa !23
  br label %bb52
bb52:
  store %olang.scope zeroinitializer, ptr %s9
  %t362 = load { i32, { i64, [2 x i64] } }, ptr %l7
  store { i32, { i64, [2 x i64] } } %t362, ptr %l79
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l80
  %t363 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l79, i32 0, i32 0
  %t364 = load i32, ptr %t363, !tbaa !23
  store i32 %t364, ptr %l81, !tbaa !23
  %t365 = load i32, ptr %l81, !tbaa !23
  %t366 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l80, i32 0, i32 0
  store i32 %t365, ptr %t366, !tbaa !23
  %t367 = load i32, ptr %l81, !tbaa !23
  %t368 = ashr i32 %t367, 16
  %t370 = icmp eq i32 %t368, 1
  br i1 %t370, label %bb53, label %bb54
bb53:
  %t372 = call ptr @__olang_errpay_top_get()
  %t374 = load { i64, [2 x i64] }, ptr %t372
  %t375 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l80, i32 0, i32 1
  store { i64, [2 x i64] } %t374, ptr %t375
  br label %bb54
bb54:
  %t377 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s0, ptr %l80)
  store { i32, { i64, [2 x i64] } } %t377, ptr %l86
  br label %bb55
bb55:
  %t378 = load { i32, { i64, [2 x i64] } }, ptr %l86
  store { i32, { i64, [2 x i64] } } %t378, ptr %l7
  %t379 = load { i32, { i64, [2 x i64] } }, ptr %l7
  store { i32, { i64, [2 x i64] } } %t379, ptr %l87
  %t380 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l87, i32 0, i32 0
  %t381 = load i32, ptr %t380, !tbaa !23
  %t382 = ashr i32 %t381, 16
  %t384 = icmp eq i32 %t382, 1
  br i1 %t384, label %bb56, label %bb57
bb56:
  call void @__olang_errpay_pop()
  br label %bb57
bb57:
  %t386 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t386, ptr %l90, !tbaa !27
  %t387 = load { i32, { i64, [2 x i64] } }, ptr %l7
  store { i32, { i64, [2 x i64] } } %t387, ptr %l91
  %t389 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s9, ptr %l91)
  store { i32, { i64, [2 x i64] } } %t389, ptr %l93
  br label %bb58
bb58:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s10
  store ptr %s10room, ptr %s10
  %t390 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t391 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t390, i64 %t391)
  %t392 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t392, 1
  %t394 = extractvalue { i64, ptr } %t392, 0
  call void @__olang_sb_put(ptr %s10, ptr %t393, i64 %t394)
  %t395 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t396 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t395, i64 %t396)
  %t397 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l93, i32 0, i32 0
  %t398 = load i32, ptr %t397, !tbaa !23
  store i32 %t398, ptr %l94, !tbaa !23
  %t399 = load i32, ptr %l94, !tbaa !23
  %t400 = icmp eq i32 %t399, 0
  br i1 %t400, label %bb60, label %bb61
bb59:
  %t402 = load ptr, ptr %s10
  %t403 = getelementptr %olang.builder, ptr %s10, i32 0, i32 1
  %t404 = load i64, ptr %t403
  %t405 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t404)
  call void @olang_textcopy(ptr %t405, ptr %t402, i64 %t404)
  %t406 = insertvalue { i64, ptr } undef, i64 %t404, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t405, 1
  store { i64, ptr } %t407, ptr %l109, !tbaa !27
  %t408 = getelementptr %olang.builder, ptr %s10, i32 0, i32 3
  %t409 = load ptr, ptr %t408
  %t410 = icmp ne ptr %t409, null
  br i1 %t410, label %sbgrew.411, label %sbdone.412
sbgrew.411:
  call void @__olang_sb_done(ptr %s10)
  br label %sbdone.412
sbdone.412:
  %t413 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t414 = extractvalue { i64, ptr } %t413, 0
  %t415 = extractvalue { i64, ptr } %t413, 1
  %t416 = mul i64 %t414, 1
  %t417 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t416)
  call void @llvm.memcpy.p0.p0.i64(ptr %t417, ptr %t415, i64 %t416, i1 false)
  %t418 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t417, 1
  %t421 = call i32 @compiler_2fjupyter_2efail(ptr %s9, { i64, ptr } %t419)
  store i32 %t421, ptr %l111
  br label %bb74
bb60:
  %t422 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t423 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t422, i64 %t423)
  br label %bb59
bb61:
  %t424 = load i32, ptr %l94, !tbaa !23
  %t425 = icmp eq i32 %t424, 65536
  br i1 %t425, label %bb62, label %bb63
bb62:
  %t427 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t428 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t427, i64 %t428)
  %t429 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t430 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t429, i64 %t430)
  %t431 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l93, i32 0, i32 1
  %t432 = getelementptr { i64, [2 x i64] }, ptr %t431, i32 0, i32 1
  %t433 = getelementptr { { i64, ptr } }, ptr %t432, i32 0, i32 0
  %t434 = load { i64, ptr }, ptr %t433
  %t436 = extractvalue { i64, ptr } %t434, 1
  %t437 = extractvalue { i64, ptr } %t434, 0
  %t438 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t436, i64 %t437, i8 34)
  %t439 = call ptr @__olang_sb_room(ptr %s10, i64 %t438)
  %t440 = call i64 @__olang_rd_quote(ptr %t439, i64 0, ptr %t436, i64 %t437, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t438)
  %t441 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t442 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t441, i64 %t442)
  br label %bb59
bb63:
  %t443 = load i32, ptr %l94, !tbaa !23
  %t444 = icmp eq i32 %t443, 65537
  br i1 %t444, label %bb64, label %bb65
bb64:
  %t446 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t447 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t446, i64 %t447)
  %t448 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t449 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t448, i64 %t449)
  %t450 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l93, i32 0, i32 1
  %t451 = getelementptr { i64, [2 x i64] }, ptr %t450, i32 0, i32 1
  %t452 = getelementptr { { i64, ptr } }, ptr %t451, i32 0, i32 0
  %t453 = load { i64, ptr }, ptr %t452
  %t455 = extractvalue { i64, ptr } %t453, 1
  %t456 = extractvalue { i64, ptr } %t453, 0
  %t457 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t455, i64 %t456, i8 34)
  %t458 = call ptr @__olang_sb_room(ptr %s10, i64 %t457)
  %t459 = call i64 @__olang_rd_quote(ptr %t458, i64 0, ptr %t455, i64 %t456, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t457)
  %t460 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t461 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t460, i64 %t461)
  br label %bb59
bb65:
  %t462 = load i32, ptr %l94, !tbaa !23
  %t463 = icmp eq i32 %t462, 65538
  br i1 %t463, label %bb66, label %bb67
bb66:
  %t465 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t466 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t465, i64 %t466)
  %t467 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t468 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t467, i64 %t468)
  %t469 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l93, i32 0, i32 1
  %t470 = getelementptr { i64, [2 x i64] }, ptr %t469, i32 0, i32 1
  %t471 = getelementptr { { i64, ptr } }, ptr %t470, i32 0, i32 0
  %t472 = load { i64, ptr }, ptr %t471
  %t474 = extractvalue { i64, ptr } %t472, 1
  %t475 = extractvalue { i64, ptr } %t472, 0
  %t476 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t474, i64 %t475, i8 34)
  %t477 = call ptr @__olang_sb_room(ptr %s10, i64 %t476)
  %t478 = call i64 @__olang_rd_quote(ptr %t477, i64 0, ptr %t474, i64 %t475, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t476)
  %t479 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t480 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t479, i64 %t480)
  br label %bb59
bb67:
  %t481 = load i32, ptr %l94, !tbaa !23
  %t482 = icmp eq i32 %t481, 65539
  br i1 %t482, label %bb68, label %bb69
bb68:
  %t484 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t485 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t484, i64 %t485)
  %t486 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t487 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t486, i64 %t487)
  %t488 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l93, i32 0, i32 1
  %t489 = getelementptr { i64, [2 x i64] }, ptr %t488, i32 0, i32 1
  %t490 = getelementptr { { i64, ptr } }, ptr %t489, i32 0, i32 0
  %t491 = load { i64, ptr }, ptr %t490
  %t493 = extractvalue { i64, ptr } %t491, 1
  %t494 = extractvalue { i64, ptr } %t491, 0
  %t495 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t493, i64 %t494, i8 34)
  %t496 = call ptr @__olang_sb_room(ptr %s10, i64 %t495)
  %t497 = call i64 @__olang_rd_quote(ptr %t496, i64 0, ptr %t493, i64 %t494, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t495)
  %t498 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t499 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t498, i64 %t499)
  br label %bb59
bb69:
  %t500 = load i32, ptr %l94, !tbaa !23
  %t501 = icmp eq i32 %t500, 65540
  br i1 %t501, label %bb70, label %bb71
bb70:
  %t503 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t504 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t503, i64 %t504)
  %t505 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t506 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t505, i64 %t506)
  %t507 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l93, i32 0, i32 1
  %t508 = getelementptr { i64, [2 x i64] }, ptr %t507, i32 0, i32 1
  %t509 = getelementptr { { i64, ptr } }, ptr %t508, i32 0, i32 0
  %t510 = load { i64, ptr }, ptr %t509
  %t512 = extractvalue { i64, ptr } %t510, 1
  %t513 = extractvalue { i64, ptr } %t510, 0
  %t514 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t512, i64 %t513, i8 34)
  %t515 = call ptr @__olang_sb_room(ptr %s10, i64 %t514)
  %t516 = call i64 @__olang_rd_quote(ptr %t515, i64 0, ptr %t512, i64 %t513, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t514)
  %t517 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t518 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t517, i64 %t518)
  br label %bb59
bb71:
  %t519 = load i32, ptr %l94, !tbaa !23
  %t520 = icmp eq i32 %t519, 65541
  br i1 %t520, label %bb72, label %bb73
bb72:
  %t522 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t523 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t522, i64 %t523)
  %t524 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t525 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t524, i64 %t525)
  %t526 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l93, i32 0, i32 1
  %t527 = getelementptr { i64, [2 x i64] }, ptr %t526, i32 0, i32 1
  %t528 = getelementptr { { i64, ptr } }, ptr %t527, i32 0, i32 0
  %t529 = load { i64, ptr }, ptr %t528
  %t531 = extractvalue { i64, ptr } %t529, 1
  %t532 = extractvalue { i64, ptr } %t529, 0
  %t533 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t531, i64 %t532, i8 34)
  %t534 = call ptr @__olang_sb_room(ptr %s10, i64 %t533)
  %t535 = call i64 @__olang_rd_quote(ptr %t534, i64 0, ptr %t531, i64 %t532, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t533)
  %t536 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t537 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t536, i64 %t537)
  br label %bb59
bb73:
  %t538 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t539 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t538, i64 %t539)
  %t540 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t541 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t540, i64 %t541)
  %t542 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l93, i32 0, i32 1
  %t543 = getelementptr { i64, [2 x i64] }, ptr %t542, i32 0, i32 1
  %t544 = getelementptr { { i64, ptr } }, ptr %t543, i32 0, i32 0
  %t545 = load { i64, ptr }, ptr %t544
  %t547 = extractvalue { i64, ptr } %t545, 1
  %t548 = extractvalue { i64, ptr } %t545, 0
  %t549 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t547, i64 %t548, i8 34)
  %t550 = call ptr @__olang_sb_room(ptr %s10, i64 %t549)
  %t551 = call i64 @__olang_rd_quote(ptr %t550, i64 0, ptr %t547, i64 %t548, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t549)
  %t552 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t553 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t552, i64 %t553)
  br label %bb59
bb74:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t554 = load i32, ptr %l111, !tbaa !23
  store i32 %t554, ptr %rv
  br label %ret
bb75:
  %t555 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t556 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t557 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t559 = extractvalue { i64, ptr } %t555, 1
  %t560 = extractvalue { i64, ptr } %t555, 0
  %t561 = add i64 %t557, %t560
  %t562 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t563 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t564 = add i64 %t561, %t563
  %t565 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t564)
  call void @olang_textcopy(ptr %t565, ptr %t556, i64 %t557)
  %t566 = getelementptr i8, ptr %t565, i64 %t557
  call void @olang_textcopy(ptr %t566, ptr %t559, i64 %t560)
  %t567 = getelementptr i8, ptr %t566, i64 %t560
  call void @olang_textcopy(ptr %t567, ptr %t562, i64 %t563)
  %t568 = insertvalue { i64, ptr } undef, i64 %t564, 0
  %t569 = insertvalue { i64, ptr } %t568, ptr %t565, 1
  %t571 = call i32 @std_2fio_2ePut_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t569)
  store i32 %t571, ptr %l114
  %t572 = icmp ne i32 %t571, 0
  br i1 %t572, label %bb77, label %ok.573, !prof !99
ok.573:
  br label %bb76
bb76:
  br label %bb81
bb77:
  %t574 = load i32, ptr %l114, !tbaa !23
  %t575 = ashr i32 %t574, 16
  %t577 = icmp eq i32 %t575, 1
  store i1 %t577, ptr %l116, !tbaa !21
  %t578 = load i32, ptr %l114, !tbaa !23
  %t579 = ashr i32 %t578, 16
  %t581 = icmp eq i32 %t579, 1
  br i1 %t581, label %bb78, label %bb79
bb78:
  call void @__olang_errpay_pop()
  br label %bb79
bb79:
  br label %bb80
bb80:
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l2
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %a0)
  br label %bb2
bb2:
  %t7 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t7, ptr %l6
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fjupyter_2eServe(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i32, { i64, [2 x i64] } }
  %l4 = alloca { i32, { i64, [2 x i64] } }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i32, { i64, [2 x i64] } }
  %l16 = alloca { i32, { i64, [2 x i64] } }
  %l17 = alloca %"std/net:Addr"
  %l18 = alloca { i32, { i64, [2 x i64] } }
  %l19 = alloca %"compiler/prompt:Session"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca %"compiler/jupyter:pending"
  %l43 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i32
  %l48 = alloca i1
  %l49 = alloca { i32, { i64, [2 x i64] } }
  %l50 = alloca { i32, { i64, [2 x i64] } }
  %l51 = alloca i32
  %l56 = alloca { i32, { i64, [2 x i64] } }
  %l57 = alloca { i32, { i64, [2 x i64] } }
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i32, { i64, [2 x i64] } }
  %l63 = alloca { i32, { i64, [2 x i64] } }
  %l64 = alloca i32
  %l79 = alloca { i64, ptr }
  %l81 = alloca i32
  %l82 = alloca ptr
  %l84 = alloca ptr
  %l85 = alloca i32
  %l87 = alloca i1
  %l88 = alloca { i32, { i64, [2 x i64] } }
  %l89 = alloca { i32, { i64, [2 x i64] } }
  %l90 = alloca i32
  %l95 = alloca { i32, { i64, [2 x i64] } }
  %l96 = alloca { i32, { i64, [2 x i64] } }
  %l99 = alloca { i32, { i64, [2 x i64] } }
  %l101 = alloca { i32, { i64, [2 x i64] } }
  %l102 = alloca i32
  %l128 = alloca { i64, ptr }
  %l130 = alloca i32
  %l131 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l135 = alloca ptr
  %l136 = alloca i32
  %l138 = alloca i1
  %l141 = alloca { i64, ptr }
  %l142 = alloca i32
  %l144 = alloca i1
  %l147 = alloca i64
  %l149 = alloca { i64, ptr }
  %l151 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l154 = alloca i32
  %l156 = alloca i1
  %l159 = alloca { i64, ptr }
  %l160 = alloca i32
  %l162 = alloca i1
  %l165 = alloca { i64, ptr }
  %l167 = alloca %"compiler/jupyter:kernel"
  %l168 = alloca ptr
  %l169 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l180 = alloca i64
  %l183 = alloca ptr
  %l184 = alloca i32
  %l186 = alloca i1
  %l187 = alloca i64
  %l188 = alloca i32
  %l190 = alloca i1
  %l191 = alloca { i32, { i64, [2 x i64] } }
  %l192 = alloca { i32, { i64, [2 x i64] } }
  %l193 = alloca i32
  %l198 = alloca { i32, { i64, [2 x i64] } }
  %l199 = alloca { i32, { i64, [2 x i64] } }
  %l202 = alloca { i64, ptr }
  %l203 = alloca { i32, { i64, [2 x i64] } }
  %l205 = alloca { i32, { i64, [2 x i64] } }
  %l206 = alloca i32
  %l232 = alloca { i64, ptr }
  %l234 = alloca i32
  %l237 = alloca %"std/net:Addr"
  %l242 = alloca %"std/net:Addr"
  %l243 = alloca i32
  %l245 = alloca i1
  %l246 = alloca { i32, { i64, [2 x i64] } }
  %l247 = alloca { i32, { i64, [2 x i64] } }
  %l248 = alloca i32
  %l253 = alloca { i32, { i64, [2 x i64] } }
  %l254 = alloca { i32, { i64, [2 x i64] } }
  %l257 = alloca { i32, { i64, [2 x i64] } }
  %l259 = alloca { i32, { i64, [2 x i64] } }
  %l263 = alloca { i64, ptr }
  %l265 = alloca i32
  %l268 = alloca ptr
  %l269 = alloca %"std/net:Listener"
  %l271 = alloca %"std/net:Listener"
  %l272 = alloca i32
  %l274 = alloca i1
  %l275 = alloca { i32, { i64, [2 x i64] } }
  %l276 = alloca { i32, { i64, [2 x i64] } }
  %l277 = alloca i32
  %l282 = alloca { i32, { i64, [2 x i64] } }
  %l283 = alloca { i32, { i64, [2 x i64] } }
  %l286 = alloca %"std/net:Addr"
  %l287 = alloca { i32, { i64, [2 x i64] } }
  %l289 = alloca { i32, { i64, [2 x i64] } }
  %l291 = alloca i32
  %l304 = alloca { i64, ptr }
  %l306 = alloca i32
  %l312 = alloca %"compiler/prompt:Session"
  %l320 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l322 = alloca { i64, ptr }
  %l329 = alloca { i64, ptr }
  %l332 = alloca ptr
  %l334 = alloca i32
  %l339 = alloca { i64, ptr }
  %l346 = alloca { i64, ptr }
  %l349 = alloca ptr
  %l351 = alloca i32
  %l355 = alloca { i64, ptr }
  %l356 = alloca { i64, ptr }
  %l358 = alloca i64
  %l362 = alloca i64
  %l365 = alloca i64
  %l385 = alloca ptr
  %l388 = alloca ptr
  %l393 = alloca i64
  %l395 = alloca i64
  %l400 = alloca i64
  %l403 = alloca i64
  %l422 = alloca i64
  %l434 = alloca i1
  %l437 = alloca i64
  %l440 = alloca %"compiler/jupyter:pending"
  %l443 = alloca %"compiler/jupyter:pending"
  %l444 = alloca i32
  %l446 = alloca i1
  %l453 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.builder
  %s9room = alloca [64 x i8], align 8
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.builder
  %s14room = alloca [64 x i8], align 8
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.builder
  %s18room = alloca [64 x i8], align 8
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %rv = alloca i32
  %t590 = alloca %"compiler/jupyter:kernel", align 8
  %t1216 = alloca %"compiler/prompt:Session", align 8
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fsession_2eIgnoreBrokenPipes()
  br label %bb1
bb1:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v1, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l46
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb3, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l45
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t8, ptr %l43, !tbaa !27
  br label %bb27
bb3:
  %t9 = load i32, ptr %l46, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l48, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l2
  %t13 = load i32, ptr %l46, !tbaa !23
  %t14 = lshr i32 %t13, 16
  %t15 = and i32 %t13, 65535
  %t16 = icmp eq i32 %t14, 1
  %t17 = select i1 %t16, i32 1, i32 0
  %t18 = icmp eq i32 %t13, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t15
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t22 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l2, i32 0, i32 0
  store i32 %t21, ptr %t22, !tbaa !23
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load { i32, { i64, [2 x i64] } }, ptr %l2
  store { i32, { i64, [2 x i64] } } %t23, ptr %l49
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l50
  %t24 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l49, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  store i32 %t25, ptr %l51, !tbaa !23
  %t26 = load i32, ptr %l51, !tbaa !23
  %t27 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l50, i32 0, i32 0
  store i32 %t26, ptr %t27, !tbaa !23
  %t28 = load i32, ptr %l51, !tbaa !23
  %t29 = ashr i32 %t28, 16
  %t31 = icmp eq i32 %t29, 1
  br i1 %t31, label %bb5, label %bb6
bb5:
  %t33 = call ptr @__olang_errpay_top_get()
  %t35 = load { i64, [2 x i64] }, ptr %t33
  %t36 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l50, i32 0, i32 1
  store { i64, [2 x i64] } %t35, ptr %t36
  br label %bb6
bb6:
  %t38 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s0, ptr %l50)
  store { i32, { i64, [2 x i64] } } %t38, ptr %l56
  br label %bb7
bb7:
  %t39 = load { i32, { i64, [2 x i64] } }, ptr %l56
  store { i32, { i64, [2 x i64] } } %t39, ptr %l2
  %t40 = load { i32, { i64, [2 x i64] } }, ptr %l2
  store { i32, { i64, [2 x i64] } } %t40, ptr %l57
  %t41 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l57, i32 0, i32 0
  %t42 = load i32, ptr %t41, !tbaa !23
  %t43 = ashr i32 %t42, 16
  %t45 = icmp eq i32 %t43, 1
  br i1 %t45, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t47, ptr %l60, !tbaa !27
  %t48 = load { i32, { i64, [2 x i64] } }, ptr %l2
  store { i32, { i64, [2 x i64] } } %t48, ptr %l61
  %t50 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s1, ptr %l61)
  store { i32, { i64, [2 x i64] } } %t50, ptr %l63
  br label %bb10
bb10:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t51 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t51, i64 %t52)
  %t53 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  call void @__olang_sb_put(ptr %s2, ptr %t54, i64 %t55)
  %t56 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t56, i64 %t57)
  %t58 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l63, i32 0, i32 0
  %t59 = load i32, ptr %t58, !tbaa !23
  store i32 %t59, ptr %l64, !tbaa !23
  %t60 = load i32, ptr %l64, !tbaa !23
  %t61 = icmp eq i32 %t60, 0
  br i1 %t61, label %bb12, label %bb13
bb11:
  %t63 = load ptr, ptr %s2
  %t64 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t65 = load i64, ptr %t64
  %t66 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t65)
  call void @olang_textcopy(ptr %t66, ptr %t63, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l79, !tbaa !27
  %t69 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t70 = load ptr, ptr %t69
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %sbgrew.72, label %sbdone.73
sbgrew.72:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.73
sbdone.73:
  %t74 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  %t76 = extractvalue { i64, ptr } %t74, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  %t82 = call i32 @compiler_2fjupyter_2efail(ptr %s1, { i64, ptr } %t80)
  store i32 %t82, ptr %l81
  br label %bb26
bb12:
  %t83 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t83, i64 %t84)
  br label %bb11
bb13:
  %t85 = load i32, ptr %l64, !tbaa !23
  %t86 = icmp eq i32 %t85, 65536
  br i1 %t86, label %bb14, label %bb15
bb14:
  %t88 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t88, i64 %t89)
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t90, i64 %t91)
  %t92 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l63, i32 0, i32 1
  %t93 = getelementptr { i64, [2 x i64] }, ptr %t92, i32 0, i32 1
  %t94 = getelementptr { { i64, ptr } }, ptr %t93, i32 0, i32 0
  %t95 = load { i64, ptr }, ptr %t94
  %t97 = extractvalue { i64, ptr } %t95, 1
  %t98 = extractvalue { i64, ptr } %t95, 0
  %t99 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t97, i64 %t98, i8 34)
  %t100 = call ptr @__olang_sb_room(ptr %s2, i64 %t99)
  %t101 = call i64 @__olang_rd_quote(ptr %t100, i64 0, ptr %t97, i64 %t98, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t99)
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t102, i64 %t103)
  br label %bb11
bb15:
  %t104 = load i32, ptr %l64, !tbaa !23
  %t105 = icmp eq i32 %t104, 65537
  br i1 %t105, label %bb16, label %bb17
bb16:
  %t107 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t107, i64 %t108)
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t109, i64 %t110)
  %t111 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l63, i32 0, i32 1
  %t112 = getelementptr { i64, [2 x i64] }, ptr %t111, i32 0, i32 1
  %t113 = getelementptr { { i64, ptr } }, ptr %t112, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113
  %t116 = extractvalue { i64, ptr } %t114, 1
  %t117 = extractvalue { i64, ptr } %t114, 0
  %t118 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t116, i64 %t117, i8 34)
  %t119 = call ptr @__olang_sb_room(ptr %s2, i64 %t118)
  %t120 = call i64 @__olang_rd_quote(ptr %t119, i64 0, ptr %t116, i64 %t117, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t118)
  %t121 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t122 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t121, i64 %t122)
  br label %bb11
bb17:
  %t123 = load i32, ptr %l64, !tbaa !23
  %t124 = icmp eq i32 %t123, 65538
  br i1 %t124, label %bb18, label %bb19
bb18:
  %t126 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t126, i64 %t127)
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t128, i64 %t129)
  %t130 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l63, i32 0, i32 1
  %t131 = getelementptr { i64, [2 x i64] }, ptr %t130, i32 0, i32 1
  %t132 = getelementptr { { i64, ptr } }, ptr %t131, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = extractvalue { i64, ptr } %t133, 0
  %t137 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t135, i64 %t136, i8 34)
  %t138 = call ptr @__olang_sb_room(ptr %s2, i64 %t137)
  %t139 = call i64 @__olang_rd_quote(ptr %t138, i64 0, ptr %t135, i64 %t136, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t137)
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t140, i64 %t141)
  br label %bb11
bb19:
  %t142 = load i32, ptr %l64, !tbaa !23
  %t143 = icmp eq i32 %t142, 65539
  br i1 %t143, label %bb20, label %bb21
bb20:
  %t145 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t145, i64 %t146)
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t147, i64 %t148)
  %t149 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l63, i32 0, i32 1
  %t150 = getelementptr { i64, [2 x i64] }, ptr %t149, i32 0, i32 1
  %t151 = getelementptr { { i64, ptr } }, ptr %t150, i32 0, i32 0
  %t152 = load { i64, ptr }, ptr %t151
  %t154 = extractvalue { i64, ptr } %t152, 1
  %t155 = extractvalue { i64, ptr } %t152, 0
  %t156 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t154, i64 %t155, i8 34)
  %t157 = call ptr @__olang_sb_room(ptr %s2, i64 %t156)
  %t158 = call i64 @__olang_rd_quote(ptr %t157, i64 0, ptr %t154, i64 %t155, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t156)
  %t159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t159, i64 %t160)
  br label %bb11
bb21:
  %t161 = load i32, ptr %l64, !tbaa !23
  %t162 = icmp eq i32 %t161, 65540
  br i1 %t162, label %bb22, label %bb23
bb22:
  %t164 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t165 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t164, i64 %t165)
  %t166 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t166, i64 %t167)
  %t168 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l63, i32 0, i32 1
  %t169 = getelementptr { i64, [2 x i64] }, ptr %t168, i32 0, i32 1
  %t170 = getelementptr { { i64, ptr } }, ptr %t169, i32 0, i32 0
  %t171 = load { i64, ptr }, ptr %t170
  %t173 = extractvalue { i64, ptr } %t171, 1
  %t174 = extractvalue { i64, ptr } %t171, 0
  %t175 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t173, i64 %t174, i8 34)
  %t176 = call ptr @__olang_sb_room(ptr %s2, i64 %t175)
  %t177 = call i64 @__olang_rd_quote(ptr %t176, i64 0, ptr %t173, i64 %t174, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t175)
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t178, i64 %t179)
  br label %bb11
bb23:
  %t180 = load i32, ptr %l64, !tbaa !23
  %t181 = icmp eq i32 %t180, 65541
  br i1 %t181, label %bb24, label %bb25
bb24:
  %t183 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t183, i64 %t184)
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t185, i64 %t186)
  %t187 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l63, i32 0, i32 1
  %t188 = getelementptr { i64, [2 x i64] }, ptr %t187, i32 0, i32 1
  %t189 = getelementptr { { i64, ptr } }, ptr %t188, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189
  %t192 = extractvalue { i64, ptr } %t190, 1
  %t193 = extractvalue { i64, ptr } %t190, 0
  %t194 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t192, i64 %t193, i8 34)
  %t195 = call ptr @__olang_sb_room(ptr %s2, i64 %t194)
  %t196 = call i64 @__olang_rd_quote(ptr %t195, i64 0, ptr %t192, i64 %t193, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t194)
  %t197 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t198 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t197, i64 %t198)
  br label %bb11
bb25:
  %t199 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t199, i64 %t200)
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t201, i64 %t202)
  %t203 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l63, i32 0, i32 1
  %t204 = getelementptr { i64, [2 x i64] }, ptr %t203, i32 0, i32 1
  %t205 = getelementptr { { i64, ptr } }, ptr %t204, i32 0, i32 0
  %t206 = load { i64, ptr }, ptr %t205
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = extractvalue { i64, ptr } %t206, 0
  %t210 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t208, i64 %t209, i8 34)
  %t211 = call ptr @__olang_sb_room(ptr %s2, i64 %t210)
  %t212 = call i64 @__olang_rd_quote(ptr %t211, i64 0, ptr %t208, i64 %t209, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t210)
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t213, i64 %t214)
  br label %bb11
bb26:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t215 = load i32, ptr %l81, !tbaa !23
  store i32 %t215, ptr %rv
  br label %ret
bb27:
  %t216 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t219 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %s0, ptr %s0, { i64, ptr } %t216)
  %t220 = extractvalue { i32, ptr } %t219, 1
  %t221 = extractvalue { i32, ptr } %t219, 0
  store i32 %t221, ptr %l85
  %t222 = icmp ne i32 %t221, 0
  br i1 %t222, label %bb29, label %ok.223, !prof !99
ok.223:
  store ptr %t220, ptr %l84
  br label %bb28
bb28:
  %t224 = load ptr, ptr %l84, !tbaa !29
  store ptr %t224, ptr %l82, !tbaa !29
  br label %bb59
bb29:
  %t225 = load i32, ptr %l85, !tbaa !23
  %t226 = ashr i32 %t225, 16
  %t228 = icmp eq i32 %t226, 1
  store i1 %t228, ptr %l87, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l4
  %t229 = load i32, ptr %l85, !tbaa !23
  %t230 = lshr i32 %t229, 16
  %t231 = and i32 %t229, 65535
  %t232 = icmp eq i32 %t230, 1
  %t233 = select i1 %t232, i32 1, i32 0
  %t234 = icmp eq i32 %t229, 0
  %t235 = shl i32 %t233, 16
  %t236 = or i32 %t235, %t231
  %t237 = select i1 %t234, i32 0, i32 %t236
  %t238 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l4, i32 0, i32 0
  store i32 %t237, ptr %t238, !tbaa !23
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s3
  %t239 = load { i32, { i64, [2 x i64] } }, ptr %l4
  store { i32, { i64, [2 x i64] } } %t239, ptr %l88
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l89
  %t240 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l88, i32 0, i32 0
  %t241 = load i32, ptr %t240, !tbaa !23
  store i32 %t241, ptr %l90, !tbaa !23
  %t242 = load i32, ptr %l90, !tbaa !23
  %t243 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l89, i32 0, i32 0
  store i32 %t242, ptr %t243, !tbaa !23
  %t244 = load i32, ptr %l90, !tbaa !23
  %t245 = ashr i32 %t244, 16
  %t247 = icmp eq i32 %t245, 1
  br i1 %t247, label %bb31, label %bb32
bb31:
  %t249 = call ptr @__olang_errpay_top_get()
  %t251 = load { i64, [2 x i64] }, ptr %t249
  %t252 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l89, i32 0, i32 1
  store { i64, [2 x i64] } %t251, ptr %t252
  br label %bb32
bb32:
  %t254 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fjson_3aError_7d(ptr %s0, ptr %l89)
  store { i32, { i64, [2 x i64] } } %t254, ptr %l95
  br label %bb33
bb33:
  %t255 = load { i32, { i64, [2 x i64] } }, ptr %l95
  store { i32, { i64, [2 x i64] } } %t255, ptr %l4
  %t256 = load { i32, { i64, [2 x i64] } }, ptr %l4
  store { i32, { i64, [2 x i64] } } %t256, ptr %l96
  %t257 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l96, i32 0, i32 0
  %t258 = load i32, ptr %t257, !tbaa !23
  %t259 = ashr i32 %t258, 16
  %t261 = icmp eq i32 %t259, 1
  br i1 %t261, label %bb34, label %bb35
bb34:
  call void @__olang_errpay_pop()
  br label %bb35
bb35:
  %t263 = load { i32, { i64, [2 x i64] } }, ptr %l4
  store { i32, { i64, [2 x i64] } } %t263, ptr %l99
  %t265 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fjson_3aError_7d(ptr %s3, ptr %l99)
  store { i32, { i64, [2 x i64] } } %t265, ptr %l101
  br label %bb36
bb36:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t266 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t267 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t266, i64 %t267)
  %t268 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 0
  %t269 = load i32, ptr %t268, !tbaa !23
  store i32 %t269, ptr %l102, !tbaa !23
  %t270 = load i32, ptr %l102, !tbaa !23
  %t271 = icmp eq i32 %t270, 0
  br i1 %t271, label %bb38, label %bb39
bb37:
  %t273 = load ptr, ptr %s4
  %t274 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t275 = load i64, ptr %t274
  %t276 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t275)
  call void @olang_textcopy(ptr %t276, ptr %t273, i64 %t275)
  %t277 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  store { i64, ptr } %t278, ptr %l128, !tbaa !27
  %t279 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t280 = load ptr, ptr %t279
  %t281 = icmp ne ptr %t280, null
  br i1 %t281, label %sbgrew.282, label %sbdone.283
sbgrew.282:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.283
sbdone.283:
  %t284 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t284, 0
  %t286 = extractvalue { i64, ptr } %t284, 1
  %t287 = mul i64 %t285, 1
  %t288 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t288, ptr %t286, i64 %t287, i1 false)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  %t292 = call i32 @compiler_2fjupyter_2efail(ptr %s3, { i64, ptr } %t290)
  store i32 %t292, ptr %l130
  br label %bb58
bb38:
  %t293 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t294 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t293, i64 %t294)
  br label %bb37
bb39:
  %t295 = load i32, ptr %l102, !tbaa !23
  %t296 = icmp eq i32 %t295, 65536
  br i1 %t296, label %bb40, label %bb41
bb40:
  %t298 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t299 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t298, i64 %t299)
  %t300 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t301 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t300, i64 %t301)
  %t302 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t303 = getelementptr { i64, [2 x i64] }, ptr %t302, i32 0, i32 1
  %t304 = getelementptr { i64, i64 }, ptr %t303, i32 0, i32 0
  %t305 = load i64, ptr %t304
  %t307 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t308 = call i64 @__olang_fmt_i64(ptr %t307, i64 %t305)
  call void @__olang_sb_add(ptr %s4, i64 %t308)
  %t309 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t309, i64 %t310)
  %t311 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t312 = getelementptr { i64, [2 x i64] }, ptr %t311, i32 0, i32 1
  %t313 = getelementptr { i64, i64 }, ptr %t312, i32 0, i32 1
  %t314 = load i64, ptr %t313
  %t316 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t317 = call i64 @__olang_fmt_i64(ptr %t316, i64 %t314)
  call void @__olang_sb_add(ptr %s4, i64 %t317)
  %t318 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t319 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t318, i64 %t319)
  br label %bb37
bb41:
  %t320 = load i32, ptr %l102, !tbaa !23
  %t321 = icmp eq i32 %t320, 65537
  br i1 %t321, label %bb42, label %bb43
bb42:
  %t323 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t323, i64 %t324)
  %t325 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t326 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t325, i64 %t326)
  %t327 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t328 = getelementptr { i64, [2 x i64] }, ptr %t327, i32 0, i32 1
  %t329 = getelementptr { i64, i64 }, ptr %t328, i32 0, i32 0
  %t330 = load i64, ptr %t329
  %t332 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t333 = call i64 @__olang_fmt_i64(ptr %t332, i64 %t330)
  call void @__olang_sb_add(ptr %s4, i64 %t333)
  %t334 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t335 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t334, i64 %t335)
  %t336 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t337 = getelementptr { i64, [2 x i64] }, ptr %t336, i32 0, i32 1
  %t338 = getelementptr { i64, i64 }, ptr %t337, i32 0, i32 1
  %t339 = load i64, ptr %t338
  %t341 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t342 = call i64 @__olang_fmt_i64(ptr %t341, i64 %t339)
  call void @__olang_sb_add(ptr %s4, i64 %t342)
  %t343 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t344 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t343, i64 %t344)
  br label %bb37
bb43:
  %t345 = load i32, ptr %l102, !tbaa !23
  %t346 = icmp eq i32 %t345, 65538
  br i1 %t346, label %bb44, label %bb45
bb44:
  %t348 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t349 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t348, i64 %t349)
  %t350 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t351 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t350, i64 %t351)
  %t352 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t353 = getelementptr { i64, [2 x i64] }, ptr %t352, i32 0, i32 1
  %t354 = getelementptr { i64, i64 }, ptr %t353, i32 0, i32 0
  %t355 = load i64, ptr %t354
  %t357 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t358 = call i64 @__olang_fmt_i64(ptr %t357, i64 %t355)
  call void @__olang_sb_add(ptr %s4, i64 %t358)
  %t359 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t360 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t359, i64 %t360)
  %t361 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t362 = getelementptr { i64, [2 x i64] }, ptr %t361, i32 0, i32 1
  %t363 = getelementptr { i64, i64 }, ptr %t362, i32 0, i32 1
  %t364 = load i64, ptr %t363
  %t366 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t367 = call i64 @__olang_fmt_i64(ptr %t366, i64 %t364)
  call void @__olang_sb_add(ptr %s4, i64 %t367)
  %t368 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t369 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t368, i64 %t369)
  br label %bb37
bb45:
  %t370 = load i32, ptr %l102, !tbaa !23
  %t371 = icmp eq i32 %t370, 65539
  br i1 %t371, label %bb46, label %bb47
bb46:
  %t373 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t374 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t373, i64 %t374)
  %t375 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t376 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t375, i64 %t376)
  %t377 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t378 = getelementptr { i64, [2 x i64] }, ptr %t377, i32 0, i32 1
  %t379 = getelementptr { i64, i64 }, ptr %t378, i32 0, i32 0
  %t380 = load i64, ptr %t379
  %t382 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t383 = call i64 @__olang_fmt_i64(ptr %t382, i64 %t380)
  call void @__olang_sb_add(ptr %s4, i64 %t383)
  %t384 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t384, i64 %t385)
  %t386 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t387 = getelementptr { i64, [2 x i64] }, ptr %t386, i32 0, i32 1
  %t388 = getelementptr { i64, i64 }, ptr %t387, i32 0, i32 1
  %t389 = load i64, ptr %t388
  %t391 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t392 = call i64 @__olang_fmt_i64(ptr %t391, i64 %t389)
  call void @__olang_sb_add(ptr %s4, i64 %t392)
  %t393 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t394 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t393, i64 %t394)
  br label %bb37
bb47:
  %t395 = load i32, ptr %l102, !tbaa !23
  %t396 = icmp eq i32 %t395, 65540
  br i1 %t396, label %bb48, label %bb49
bb48:
  %t398 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t399 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t398, i64 %t399)
  %t400 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t401 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t400, i64 %t401)
  %t402 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t403 = getelementptr { i64, [2 x i64] }, ptr %t402, i32 0, i32 1
  %t404 = getelementptr { i64, i64 }, ptr %t403, i32 0, i32 0
  %t405 = load i64, ptr %t404
  %t407 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t408 = call i64 @__olang_fmt_i64(ptr %t407, i64 %t405)
  call void @__olang_sb_add(ptr %s4, i64 %t408)
  %t409 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t410 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t409, i64 %t410)
  %t411 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t412 = getelementptr { i64, [2 x i64] }, ptr %t411, i32 0, i32 1
  %t413 = getelementptr { i64, i64 }, ptr %t412, i32 0, i32 1
  %t414 = load i64, ptr %t413
  %t416 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t417 = call i64 @__olang_fmt_i64(ptr %t416, i64 %t414)
  call void @__olang_sb_add(ptr %s4, i64 %t417)
  %t418 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t418, i64 %t419)
  br label %bb37
bb49:
  %t420 = load i32, ptr %l102, !tbaa !23
  %t421 = icmp eq i32 %t420, 65541
  br i1 %t421, label %bb50, label %bb51
bb50:
  %t423 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t424 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t423, i64 %t424)
  %t425 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t426 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t425, i64 %t426)
  %t427 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t428 = getelementptr { i64, [2 x i64] }, ptr %t427, i32 0, i32 1
  %t429 = getelementptr { i64, i64 }, ptr %t428, i32 0, i32 0
  %t430 = load i64, ptr %t429
  %t432 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t433 = call i64 @__olang_fmt_i64(ptr %t432, i64 %t430)
  call void @__olang_sb_add(ptr %s4, i64 %t433)
  %t434 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t435 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t434, i64 %t435)
  %t436 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t437 = getelementptr { i64, [2 x i64] }, ptr %t436, i32 0, i32 1
  %t438 = getelementptr { i64, i64 }, ptr %t437, i32 0, i32 1
  %t439 = load i64, ptr %t438
  %t441 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t442 = call i64 @__olang_fmt_i64(ptr %t441, i64 %t439)
  call void @__olang_sb_add(ptr %s4, i64 %t442)
  %t443 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t444 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t443, i64 %t444)
  br label %bb37
bb51:
  %t445 = load i32, ptr %l102, !tbaa !23
  %t446 = icmp eq i32 %t445, 65542
  br i1 %t446, label %bb52, label %bb53
bb52:
  %t448 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t449 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t448, i64 %t449)
  %t450 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t450, i64 %t451)
  %t452 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t453 = getelementptr { i64, [2 x i64] }, ptr %t452, i32 0, i32 1
  %t454 = getelementptr { i64, i64 }, ptr %t453, i32 0, i32 0
  %t455 = load i64, ptr %t454
  %t457 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t458 = call i64 @__olang_fmt_i64(ptr %t457, i64 %t455)
  call void @__olang_sb_add(ptr %s4, i64 %t458)
  %t459 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t460 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t459, i64 %t460)
  %t461 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t462 = getelementptr { i64, [2 x i64] }, ptr %t461, i32 0, i32 1
  %t463 = getelementptr { i64, i64 }, ptr %t462, i32 0, i32 1
  %t464 = load i64, ptr %t463
  %t466 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t467 = call i64 @__olang_fmt_i64(ptr %t466, i64 %t464)
  call void @__olang_sb_add(ptr %s4, i64 %t467)
  %t468 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t469 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t468, i64 %t469)
  br label %bb37
bb53:
  %t470 = load i32, ptr %l102, !tbaa !23
  %t471 = icmp eq i32 %t470, 65543
  br i1 %t471, label %bb54, label %bb55
bb54:
  %t473 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t474 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t473, i64 %t474)
  %t475 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t476 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t475, i64 %t476)
  %t477 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l101, i32 0, i32 1
  %t478 = getelementptr { i64, [2 x i64] }, ptr %t477, i32 0, i32 1
  %t479 = getelementptr { { i64, ptr } }, ptr %t478, i32 0, i32 0
  %t480 = load { i64, ptr }, ptr %t479
  %t482 = extractvalue { i64, ptr } %t480, 1
  %t483 = extractvalue { i64, ptr } %t480, 0
  %t484 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t482, i64 %t483, i8 34)
  %t485 = call ptr @__olang_sb_room(ptr %s4, i64 %t484)
  %t486 = call i64 @__olang_rd_quote(ptr %t485, i64 0, ptr %t482, i64 %t483, i8 34)
  call void @__olang_sb_add(ptr %s4, i64 %t484)
  %t487 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t488 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t487, i64 %t488)
  br label %bb37
bb55:
  %t489 = load i32, ptr %l102, !tbaa !23
  %t490 = icmp eq i32 %t489, 65544
  br i1 %t490, label %bb56, label %bb57
bb56:
  %t492 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t493 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t492, i64 %t493)
  br label %bb37
bb57:
  %t494 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t495 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t494, i64 %t495)
  br label %bb37
bb58:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t496 = load i32, ptr %l130, !tbaa !23
  store i32 %t496, ptr %rv
  br label %ret
bb59:
  %t497 = load ptr, ptr %l82, !tbaa !29
  store ptr %t497, ptr %l5, !tbaa !29
  %t498 = load ptr, ptr %l5, !tbaa !29
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %l133, !tbaa !27
  %t499 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t502 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t498, { i64, ptr } %t499)
  %t503 = extractvalue { i32, ptr } %t502, 1
  %t504 = extractvalue { i32, ptr } %t502, 0
  store i32 %t504, ptr %l136
  %t505 = icmp ne i32 %t504, 0
  br i1 %t505, label %bb61, label %ok.506, !prof !99
ok.506:
  store ptr %t503, ptr %l135
  br label %bb60
bb60:
  %t507 = load ptr, ptr %l135, !tbaa !29
  %t508 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %s0, ptr %s0, ptr %t507)
  %t509 = extractvalue { i32, { i64, ptr } } %t508, 1
  %t510 = extractvalue { i32, { i64, ptr } } %t508, 0
  store i32 %t510, ptr %l142
  %t511 = icmp ne i32 %t510, 0
  br i1 %t511, label %bb66, label %ok.512, !prof !99
ok.512:
  store { i64, ptr } %t509, ptr %l141
  br label %bb65
bb61:
  %t513 = load i32, ptr %l136, !tbaa !23
  %t514 = ashr i32 %t513, 16
  %t516 = icmp eq i32 %t514, 1
  store i1 %t516, ptr %l138, !tbaa !21
  %t517 = load i32, ptr %l136, !tbaa !23
  %t518 = ashr i32 %t517, 16
  %t520 = icmp eq i32 %t518, 1
  br i1 %t520, label %bb62, label %bb63
bb62:
  call void @__olang_errpay_pop()
  br label %bb63
bb63:
  br label %bb64
bb64:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l131, !tbaa !27
  br label %bb69
bb65:
  %t522 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t522, ptr %l131, !tbaa !27
  br label %bb69
bb66:
  %t523 = load i32, ptr %l142, !tbaa !23
  %t524 = ashr i32 %t523, 16
  %t526 = icmp eq i32 %t524, 1
  store i1 %t526, ptr %l144, !tbaa !21
  %t527 = load i32, ptr %l142, !tbaa !23
  %t528 = ashr i32 %t527, 16
  %t530 = icmp eq i32 %t528, 1
  br i1 %t530, label %bb67, label %bb68
bb67:
  call void @__olang_errpay_pop()
  br label %bb68
bb68:
  br label %bb64
bb69:
  %t532 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t532, ptr %l6, !tbaa !27
  %t533 = ptrtoint ptr %s0 to i64
  store i64 %t533, ptr %l147, !tbaa !24
  %t534 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3akernel_2e0
  br i1 %t534, label %bb70, label %bb71
bb70:
  %t536 = call ptr @__olang_region_make_part(ptr %s0)
  %t537 = ptrtoint ptr %t536 to i64
  store i64 %t537, ptr %l147, !tbaa !24
  br label %bb71
bb71:
  %t538 = load ptr, ptr %l5, !tbaa !29
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l151, !tbaa !27
  %t539 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t542 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t538, { i64, ptr } %t539)
  %t543 = extractvalue { i32, ptr } %t542, 1
  %t544 = extractvalue { i32, ptr } %t542, 0
  store i32 %t544, ptr %l154
  %t545 = icmp ne i32 %t544, 0
  br i1 %t545, label %bb73, label %ok.546, !prof !99
ok.546:
  store ptr %t543, ptr %l153
  br label %bb72
bb72:
  %t547 = load ptr, ptr %l153, !tbaa !29
  %t548 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %s0, ptr %s0, ptr %t547)
  %t549 = extractvalue { i32, { i64, ptr } } %t548, 1
  %t550 = extractvalue { i32, { i64, ptr } } %t548, 0
  store i32 %t550, ptr %l160
  %t551 = icmp ne i32 %t550, 0
  br i1 %t551, label %bb78, label %ok.552, !prof !99
ok.552:
  store { i64, ptr } %t549, ptr %l159
  br label %bb77
bb73:
  %t553 = load i32, ptr %l154, !tbaa !23
  %t554 = ashr i32 %t553, 16
  %t556 = icmp eq i32 %t554, 1
  store i1 %t556, ptr %l156, !tbaa !21
  %t557 = load i32, ptr %l154, !tbaa !23
  %t558 = ashr i32 %t557, 16
  %t560 = icmp eq i32 %t558, 1
  br i1 %t560, label %bb74, label %bb75
bb74:
  call void @__olang_errpay_pop()
  br label %bb75
bb75:
  br label %bb76
bb76:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) }, ptr %l149, !tbaa !27
  br label %bb81
bb77:
  %t562 = load { i64, ptr }, ptr %l159, !tbaa !27
  store { i64, ptr } %t562, ptr %l149, !tbaa !27
  br label %bb81
bb78:
  %t563 = load i32, ptr %l160, !tbaa !23
  %t564 = ashr i32 %t563, 16
  %t566 = icmp eq i32 %t564, 1
  store i1 %t566, ptr %l162, !tbaa !21
  %t567 = load i32, ptr %l160, !tbaa !23
  %t568 = ashr i32 %t567, 16
  %t570 = icmp eq i32 %t568, 1
  br i1 %t570, label %bb79, label %bb80
bb79:
  call void @__olang_errpay_pop()
  br label %bb80
bb80:
  br label %bb76
bb81:
  %t572 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t573 = extractvalue { i64, ptr } %t572, 1
  %t574 = extractvalue { i64, ptr } %t572, 0
  %t575 = load i64, ptr %l147
  %t576 = inttoptr i64 %t575 to ptr
  %t577 = call ptr @__olang_scope_alloc(ptr %t576, i64 %t574)
  call void @olang_textcopy(ptr %t577, ptr %t573, i64 %t574)
  %t578 = insertvalue { i64, ptr } undef, i64 %t574, 0
  %t579 = insertvalue { i64, ptr } %t578, ptr %t577, 1
  store { i64, ptr } %t579, ptr %l165, !tbaa !27
  %t580 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3akernel_2e0
  br i1 %t580, label %bb82, label %bb83
bb82:
  %t582 = load i64, ptr %l147
  %t583 = inttoptr i64 %t582 to ptr
  %t584 = load { i64, ptr }, ptr %l165
  %t585 = extractvalue { i64, ptr } %t584, 1
  %t586 = call ptr @__olang_region_or(ptr %t585, ptr null)
  %t587 = icmp ne ptr %t586, null
  %t588 = select i1 %t587, ptr %t586, ptr null
  %t589 = icmp eq ptr %t588, %t583
  call void @__olang_region_settle(ptr %t583, i1 %t589)
  br label %bb83
bb83:
  %t591 = load { i64, ptr }, ptr %l165, !tbaa !27
  call void @compiler_2fjupyter_3akernel_2ector(ptr %t590, ptr %s0, { i64, ptr } %t591)
  call void @llvm.memmove.p0.p0.i64(ptr %l167, ptr %t590, i64 152, i1 false)
  br label %bb84
bb84:
  %t592 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 152, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t592, ptr %l167, i64 152, i1 false)
  store ptr %t592, ptr %l168, !tbaa !29
  %t593 = load ptr, ptr %l168, !tbaa !29
  call void @__olang_scope_register_dtor(ptr %s0, ptr %t593, ptr @olang_2emir_2eHelperKind_2eDrop_2ecompiler_2fjupyter_3akernel_rt)
  %t594 = load ptr, ptr %l168, !tbaa !29
  store ptr %t594, ptr %l7, !tbaa !29
  %t595 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t595, ptr %l169
  br label %bb85
bb85:
  %t596 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l169
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t596, ptr %l8
  store i1 true, ptr %l9, !tbaa !21
  store ptr @G_2ecompiler_2fjupyter_2ePortKeys, ptr %l10
  store i64 0, ptr %l11, !tbaa !24
  %t598 = load ptr, ptr %l10
  store i64 5, ptr %l12, !tbaa !24
  br label %bb86
bb86:
  store %olang.scope zeroinitializer, ptr %s7
  %t601 = load i64, ptr %l11, !tbaa !24
  %t602 = load i64, ptr %l12, !tbaa !24
  %t605 = icmp slt i64 %t601, %t602
  %t607 = xor i1 %t605, true
  br i1 %t607, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s7)
  br label %bb185
bb88:
  br label %bb89
bb89:
  %t609 = load ptr, ptr %l10
  %t610 = load i64, ptr %l11, !tbaa !24
  %t613 = getelementptr [5 x { i64, ptr }], ptr %t609, i64 0, i64 %t610
  %t614 = load { i64, ptr }, ptr %t613, !tbaa !37
  store { i64, ptr } %t614, ptr %l13, !tbaa !27
  %t616 = load ptr, ptr %l5, !tbaa !29
  %t617 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t618 = load ptr, ptr @__olang_prog_scope
  %t621 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s0, ptr %t618, ptr %s0, ptr %t616, { i64, ptr } %t617)
  %t622 = extractvalue { i32, ptr } %t621, 1
  %t623 = extractvalue { i32, ptr } %t621, 0
  store i32 %t623, ptr %l184
  %t624 = icmp ne i32 %t623, 0
  br i1 %t624, label %bb91, label %ok.625, !prof !99
ok.625:
  store ptr %t622, ptr %l183
  br label %bb90
bb90:
  %t626 = load ptr, ptr %l183, !tbaa !29
  %t627 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s0, ptr %t626)
  %t628 = extractvalue { i32, i64 } %t627, 1
  %t629 = extractvalue { i32, i64 } %t627, 0
  store i32 %t629, ptr %l188
  %t630 = icmp ne i32 %t629, 0
  br i1 %t630, label %bb94, label %ok.631, !prof !99
ok.631:
  store i64 %t628, ptr %l187
  br label %bb93
bb91:
  %t632 = load i32, ptr %l184, !tbaa !23
  %t633 = ashr i32 %t632, 16
  %t635 = icmp eq i32 %t633, 1
  store i1 %t635, ptr %l186, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l14
  %t636 = load i32, ptr %l184, !tbaa !23
  %t637 = lshr i32 %t636, 16
  %t638 = and i32 %t636, 65535
  %t639 = icmp eq i32 %t637, 1
  %t640 = select i1 %t639, i32 1, i32 0
  %t641 = icmp eq i32 %t636, 0
  %t642 = shl i32 %t640, 16
  %t643 = or i32 %t642, %t638
  %t644 = select i1 %t641, i32 0, i32 %t643
  %t645 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l14, i32 0, i32 0
  store i32 %t644, ptr %t645, !tbaa !23
  br label %bb92
bb92:
  store %olang.scope zeroinitializer, ptr %s8
  %t646 = load { i32, { i64, [2 x i64] } }, ptr %l14
  store { i32, { i64, [2 x i64] } } %t646, ptr %l191
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l192
  %t647 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l191, i32 0, i32 0
  %t648 = load i32, ptr %t647, !tbaa !23
  store i32 %t648, ptr %l193, !tbaa !23
  %t649 = load i32, ptr %l193, !tbaa !23
  %t650 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l192, i32 0, i32 0
  store i32 %t649, ptr %t650, !tbaa !23
  %t651 = load i32, ptr %l193, !tbaa !23
  %t652 = ashr i32 %t651, 16
  %t654 = icmp eq i32 %t652, 1
  br i1 %t654, label %bb95, label %bb96
bb93:
  %t656 = load i64, ptr %l187, !tbaa !24
  store i64 %t656, ptr %l180, !tbaa !24
  br label %bb127
bb94:
  %t657 = load i32, ptr %l188, !tbaa !23
  %t658 = ashr i32 %t657, 16
  %t660 = icmp eq i32 %t658, 1
  store i1 %t660, ptr %l190, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l14
  %t661 = load i32, ptr %l188, !tbaa !23
  %t662 = lshr i32 %t661, 16
  %t663 = and i32 %t661, 65535
  %t664 = icmp eq i32 %t662, 1
  %t665 = select i1 %t664, i32 1, i32 0
  %t666 = icmp eq i32 %t661, 0
  %t667 = shl i32 %t665, 16
  %t668 = or i32 %t667, %t663
  %t669 = select i1 %t666, i32 0, i32 %t668
  %t670 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l14, i32 0, i32 0
  store i32 %t669, ptr %t670, !tbaa !23
  br label %bb92
bb95:
  %t671 = call ptr @__olang_errpay_top_get()
  %t673 = load { i64, [2 x i64] }, ptr %t671
  %t674 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l192, i32 0, i32 1
  store { i64, [2 x i64] } %t673, ptr %t674
  br label %bb96
bb96:
  %t676 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fjson_3aError_7d(ptr %s7, ptr %l192)
  store { i32, { i64, [2 x i64] } } %t676, ptr %l198
  br label %bb97
bb97:
  %t677 = load { i32, { i64, [2 x i64] } }, ptr %l198
  store { i32, { i64, [2 x i64] } } %t677, ptr %l14
  %t678 = load { i32, { i64, [2 x i64] } }, ptr %l14
  store { i32, { i64, [2 x i64] } } %t678, ptr %l199
  %t679 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l199, i32 0, i32 0
  %t680 = load i32, ptr %t679, !tbaa !23
  %t681 = ashr i32 %t680, 16
  %t683 = icmp eq i32 %t681, 1
  br i1 %t683, label %bb98, label %bb99
bb98:
  call void @__olang_errpay_pop()
  br label %bb99
bb99:
  %t685 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t685, ptr %l202, !tbaa !27
  %t686 = load { i32, { i64, [2 x i64] } }, ptr %l14
  store { i32, { i64, [2 x i64] } } %t686, ptr %l203
  %t688 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fjson_3aError_7d(ptr %s8, ptr %l203)
  store { i32, { i64, [2 x i64] } } %t688, ptr %l205
  br label %bb100
bb100:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s9
  store ptr %s9room, ptr %s9
  %t689 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t690 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t689, i64 %t690)
  %t691 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t692 = extractvalue { i64, ptr } %t691, 1
  %t693 = extractvalue { i64, ptr } %t691, 0
  call void @__olang_sb_put(ptr %s9, ptr %t692, i64 %t693)
  %t694 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t695 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t694, i64 %t695)
  %t696 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 0
  %t697 = load i32, ptr %t696, !tbaa !23
  store i32 %t697, ptr %l206, !tbaa !23
  %t698 = load i32, ptr %l206, !tbaa !23
  %t699 = icmp eq i32 %t698, 0
  br i1 %t699, label %bb102, label %bb103
bb101:
  %t701 = load ptr, ptr %s9
  %t702 = getelementptr %olang.builder, ptr %s9, i32 0, i32 1
  %t703 = load i64, ptr %t702
  %t704 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t703)
  call void @olang_textcopy(ptr %t704, ptr %t701, i64 %t703)
  %t705 = insertvalue { i64, ptr } undef, i64 %t703, 0
  %t706 = insertvalue { i64, ptr } %t705, ptr %t704, 1
  store { i64, ptr } %t706, ptr %l232, !tbaa !27
  %t707 = getelementptr %olang.builder, ptr %s9, i32 0, i32 3
  %t708 = load ptr, ptr %t707
  %t709 = icmp ne ptr %t708, null
  br i1 %t709, label %sbgrew.710, label %sbdone.711
sbgrew.710:
  call void @__olang_sb_done(ptr %s9)
  br label %sbdone.711
sbdone.711:
  %t712 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t713 = extractvalue { i64, ptr } %t712, 0
  %t714 = extractvalue { i64, ptr } %t712, 1
  %t715 = mul i64 %t713, 1
  %t716 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t715)
  call void @llvm.memcpy.p0.p0.i64(ptr %t716, ptr %t714, i64 %t715, i1 false)
  %t717 = insertvalue { i64, ptr } undef, i64 %t713, 0
  %t718 = insertvalue { i64, ptr } %t717, ptr %t716, 1
  %t720 = call i32 @compiler_2fjupyter_2efail(ptr %s8, { i64, ptr } %t718)
  store i32 %t720, ptr %l234
  br label %bb122
bb102:
  %t721 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t722 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t721, i64 %t722)
  br label %bb101
bb103:
  %t723 = load i32, ptr %l206, !tbaa !23
  %t724 = icmp eq i32 %t723, 65536
  br i1 %t724, label %bb104, label %bb105
bb104:
  %t726 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t727 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t726, i64 %t727)
  %t728 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t729 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t728, i64 %t729)
  %t730 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t731 = getelementptr { i64, [2 x i64] }, ptr %t730, i32 0, i32 1
  %t732 = getelementptr { i64, i64 }, ptr %t731, i32 0, i32 0
  %t733 = load i64, ptr %t732
  %t735 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t736 = call i64 @__olang_fmt_i64(ptr %t735, i64 %t733)
  call void @__olang_sb_add(ptr %s9, i64 %t736)
  %t737 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t738 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t737, i64 %t738)
  %t739 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t740 = getelementptr { i64, [2 x i64] }, ptr %t739, i32 0, i32 1
  %t741 = getelementptr { i64, i64 }, ptr %t740, i32 0, i32 1
  %t742 = load i64, ptr %t741
  %t744 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t745 = call i64 @__olang_fmt_i64(ptr %t744, i64 %t742)
  call void @__olang_sb_add(ptr %s9, i64 %t745)
  %t746 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t747 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t746, i64 %t747)
  br label %bb101
bb105:
  %t748 = load i32, ptr %l206, !tbaa !23
  %t749 = icmp eq i32 %t748, 65537
  br i1 %t749, label %bb106, label %bb107
bb106:
  %t751 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t752 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t751, i64 %t752)
  %t753 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t754 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t753, i64 %t754)
  %t755 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t756 = getelementptr { i64, [2 x i64] }, ptr %t755, i32 0, i32 1
  %t757 = getelementptr { i64, i64 }, ptr %t756, i32 0, i32 0
  %t758 = load i64, ptr %t757
  %t760 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t761 = call i64 @__olang_fmt_i64(ptr %t760, i64 %t758)
  call void @__olang_sb_add(ptr %s9, i64 %t761)
  %t762 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t763 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t762, i64 %t763)
  %t764 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t765 = getelementptr { i64, [2 x i64] }, ptr %t764, i32 0, i32 1
  %t766 = getelementptr { i64, i64 }, ptr %t765, i32 0, i32 1
  %t767 = load i64, ptr %t766
  %t769 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t770 = call i64 @__olang_fmt_i64(ptr %t769, i64 %t767)
  call void @__olang_sb_add(ptr %s9, i64 %t770)
  %t771 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t772 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t771, i64 %t772)
  br label %bb101
bb107:
  %t773 = load i32, ptr %l206, !tbaa !23
  %t774 = icmp eq i32 %t773, 65538
  br i1 %t774, label %bb108, label %bb109
bb108:
  %t776 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t777 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t776, i64 %t777)
  %t778 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t779 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t778, i64 %t779)
  %t780 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t781 = getelementptr { i64, [2 x i64] }, ptr %t780, i32 0, i32 1
  %t782 = getelementptr { i64, i64 }, ptr %t781, i32 0, i32 0
  %t783 = load i64, ptr %t782
  %t785 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t786 = call i64 @__olang_fmt_i64(ptr %t785, i64 %t783)
  call void @__olang_sb_add(ptr %s9, i64 %t786)
  %t787 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t788 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t787, i64 %t788)
  %t789 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t790 = getelementptr { i64, [2 x i64] }, ptr %t789, i32 0, i32 1
  %t791 = getelementptr { i64, i64 }, ptr %t790, i32 0, i32 1
  %t792 = load i64, ptr %t791
  %t794 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t795 = call i64 @__olang_fmt_i64(ptr %t794, i64 %t792)
  call void @__olang_sb_add(ptr %s9, i64 %t795)
  %t796 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t797 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t796, i64 %t797)
  br label %bb101
bb109:
  %t798 = load i32, ptr %l206, !tbaa !23
  %t799 = icmp eq i32 %t798, 65539
  br i1 %t799, label %bb110, label %bb111
bb110:
  %t801 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t802 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t801, i64 %t802)
  %t803 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t804 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t803, i64 %t804)
  %t805 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t806 = getelementptr { i64, [2 x i64] }, ptr %t805, i32 0, i32 1
  %t807 = getelementptr { i64, i64 }, ptr %t806, i32 0, i32 0
  %t808 = load i64, ptr %t807
  %t810 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t811 = call i64 @__olang_fmt_i64(ptr %t810, i64 %t808)
  call void @__olang_sb_add(ptr %s9, i64 %t811)
  %t812 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t813 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t812, i64 %t813)
  %t814 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t815 = getelementptr { i64, [2 x i64] }, ptr %t814, i32 0, i32 1
  %t816 = getelementptr { i64, i64 }, ptr %t815, i32 0, i32 1
  %t817 = load i64, ptr %t816
  %t819 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t820 = call i64 @__olang_fmt_i64(ptr %t819, i64 %t817)
  call void @__olang_sb_add(ptr %s9, i64 %t820)
  %t821 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t822 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t821, i64 %t822)
  br label %bb101
bb111:
  %t823 = load i32, ptr %l206, !tbaa !23
  %t824 = icmp eq i32 %t823, 65540
  br i1 %t824, label %bb112, label %bb113
bb112:
  %t826 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t827 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t826, i64 %t827)
  %t828 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t829 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t828, i64 %t829)
  %t830 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t831 = getelementptr { i64, [2 x i64] }, ptr %t830, i32 0, i32 1
  %t832 = getelementptr { i64, i64 }, ptr %t831, i32 0, i32 0
  %t833 = load i64, ptr %t832
  %t835 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t836 = call i64 @__olang_fmt_i64(ptr %t835, i64 %t833)
  call void @__olang_sb_add(ptr %s9, i64 %t836)
  %t837 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t838 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t837, i64 %t838)
  %t839 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t840 = getelementptr { i64, [2 x i64] }, ptr %t839, i32 0, i32 1
  %t841 = getelementptr { i64, i64 }, ptr %t840, i32 0, i32 1
  %t842 = load i64, ptr %t841
  %t844 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t845 = call i64 @__olang_fmt_i64(ptr %t844, i64 %t842)
  call void @__olang_sb_add(ptr %s9, i64 %t845)
  %t846 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t847 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t846, i64 %t847)
  br label %bb101
bb113:
  %t848 = load i32, ptr %l206, !tbaa !23
  %t849 = icmp eq i32 %t848, 65541
  br i1 %t849, label %bb114, label %bb115
bb114:
  %t851 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t852 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t851, i64 %t852)
  %t853 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t854 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t853, i64 %t854)
  %t855 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t856 = getelementptr { i64, [2 x i64] }, ptr %t855, i32 0, i32 1
  %t857 = getelementptr { i64, i64 }, ptr %t856, i32 0, i32 0
  %t858 = load i64, ptr %t857
  %t860 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t861 = call i64 @__olang_fmt_i64(ptr %t860, i64 %t858)
  call void @__olang_sb_add(ptr %s9, i64 %t861)
  %t862 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t863 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t862, i64 %t863)
  %t864 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t865 = getelementptr { i64, [2 x i64] }, ptr %t864, i32 0, i32 1
  %t866 = getelementptr { i64, i64 }, ptr %t865, i32 0, i32 1
  %t867 = load i64, ptr %t866
  %t869 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t870 = call i64 @__olang_fmt_i64(ptr %t869, i64 %t867)
  call void @__olang_sb_add(ptr %s9, i64 %t870)
  %t871 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t872 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t871, i64 %t872)
  br label %bb101
bb115:
  %t873 = load i32, ptr %l206, !tbaa !23
  %t874 = icmp eq i32 %t873, 65542
  br i1 %t874, label %bb116, label %bb117
bb116:
  %t876 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t877 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t876, i64 %t877)
  %t878 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t879 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t878, i64 %t879)
  %t880 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t881 = getelementptr { i64, [2 x i64] }, ptr %t880, i32 0, i32 1
  %t882 = getelementptr { i64, i64 }, ptr %t881, i32 0, i32 0
  %t883 = load i64, ptr %t882
  %t885 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t886 = call i64 @__olang_fmt_i64(ptr %t885, i64 %t883)
  call void @__olang_sb_add(ptr %s9, i64 %t886)
  %t887 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t888 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t887, i64 %t888)
  %t889 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t890 = getelementptr { i64, [2 x i64] }, ptr %t889, i32 0, i32 1
  %t891 = getelementptr { i64, i64 }, ptr %t890, i32 0, i32 1
  %t892 = load i64, ptr %t891
  %t894 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t895 = call i64 @__olang_fmt_i64(ptr %t894, i64 %t892)
  call void @__olang_sb_add(ptr %s9, i64 %t895)
  %t896 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t897 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t896, i64 %t897)
  br label %bb101
bb117:
  %t898 = load i32, ptr %l206, !tbaa !23
  %t899 = icmp eq i32 %t898, 65543
  br i1 %t899, label %bb118, label %bb119
bb118:
  %t901 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t902 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t901, i64 %t902)
  %t903 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t904 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t903, i64 %t904)
  %t905 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l205, i32 0, i32 1
  %t906 = getelementptr { i64, [2 x i64] }, ptr %t905, i32 0, i32 1
  %t907 = getelementptr { { i64, ptr } }, ptr %t906, i32 0, i32 0
  %t908 = load { i64, ptr }, ptr %t907
  %t910 = extractvalue { i64, ptr } %t908, 1
  %t911 = extractvalue { i64, ptr } %t908, 0
  %t912 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t910, i64 %t911, i8 34)
  %t913 = call ptr @__olang_sb_room(ptr %s9, i64 %t912)
  %t914 = call i64 @__olang_rd_quote(ptr %t913, i64 0, ptr %t910, i64 %t911, i8 34)
  call void @__olang_sb_add(ptr %s9, i64 %t912)
  %t915 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t916 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t915, i64 %t916)
  br label %bb101
bb119:
  %t917 = load i32, ptr %l206, !tbaa !23
  %t918 = icmp eq i32 %t917, 65544
  br i1 %t918, label %bb120, label %bb121
bb120:
  %t920 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t921 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t920, i64 %t921)
  br label %bb101
bb121:
  %t922 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t923 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t922, i64 %t923)
  br label %bb101
bb122:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s7)
  %t924 = load i1, ptr %l9, !tbaa !21
  br i1 %t924, label %bb123, label %bb124
bb123:
  store %olang.scope zeroinitializer, ptr %s11
  call void @olang_2emir_2eHelperKind_2eDrop_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e(ptr %s11, ptr %l8)
  br label %bb125
bb124:
  br label %bb126
bb125:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s11)
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s0)
  %t927 = load i32, ptr %l234, !tbaa !23
  store i32 %t927, ptr %rv
  br label %ret
bb127:
  %t928 = load i64, ptr %l180, !tbaa !24
  %t929 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t932 = extractvalue { i64, ptr } %t929, 1
  %t933 = extractvalue { i64, ptr } %t929, 0
  %t934 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t935 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t936 = add i64 %t933, %t935
  %t938 = call i64 @__olang_fmt_i64(ptr null, i64 %t928)
  %t939 = add i64 %t936, %t938
  %t940 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t939)
  call void @olang_textcopy(ptr %t940, ptr %t932, i64 %t933)
  %t941 = getelementptr i8, ptr %t940, i64 %t933
  call void @olang_textcopy(ptr %t941, ptr %t934, i64 %t935)
  %t942 = getelementptr i8, ptr %t941, i64 %t935
  %t943 = call i64 @__olang_fmt_i64(ptr %t942, i64 %t928)
  %t944 = insertvalue { i64, ptr } undef, i64 %t939, 0
  %t945 = insertvalue { i64, ptr } %t944, ptr %t940, 1
  %t947 = extractvalue { i64, ptr } %t945, 0
  %t948 = extractvalue { i64, ptr } %t945, 1
  %t949 = mul i64 %t947, 1
  %t950 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t949)
  call void @llvm.memcpy.p0.p0.i64(ptr %t950, ptr %t948, i64 %t949, i1 false)
  %t951 = insertvalue { i64, ptr } undef, i64 %t947, 0
  %t952 = insertvalue { i64, ptr } %t951, ptr %t950, 1
  %t954 = call { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2eParse(ptr %s7, { i64, ptr } %t952)
  %t955 = extractvalue { i32, %"std/net:Addr" } %t954, 1
  %t956 = extractvalue { i32, %"std/net:Addr" } %t954, 0
  store i32 %t956, ptr %l243
  %t957 = icmp ne i32 %t956, 0
  br i1 %t957, label %bb129, label %ok.958, !prof !99
ok.958:
  store %"std/net:Addr" %t955, ptr %l242
  br label %bb128
bb128:
  %t959 = load %"std/net:Addr", ptr %l242
  store %"std/net:Addr" %t959, ptr %l237
  br label %bb145
bb129:
  %t960 = load i32, ptr %l243, !tbaa !23
  %t961 = ashr i32 %t960, 16
  %t963 = icmp eq i32 %t961, 1
  store i1 %t963, ptr %l245, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l16
  %t964 = load i32, ptr %l243, !tbaa !23
  %t965 = lshr i32 %t964, 16
  %t966 = and i32 %t964, 65535
  %t967 = icmp eq i32 %t965, 1
  %t968 = select i1 %t967, i32 1, i32 0
  %t969 = icmp eq i32 %t964, 0
  %t970 = shl i32 %t968, 16
  %t971 = or i32 %t970, %t966
  %t972 = select i1 %t969, i32 0, i32 %t971
  %t973 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l16, i32 0, i32 0
  store i32 %t972, ptr %t973, !tbaa !23
  br label %bb130
bb130:
  store %olang.scope zeroinitializer, ptr %s13
  %t974 = load { i32, { i64, [2 x i64] } }, ptr %l16
  store { i32, { i64, [2 x i64] } } %t974, ptr %l246
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l247
  %t975 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l246, i32 0, i32 0
  %t976 = load i32, ptr %t975, !tbaa !23
  store i32 %t976, ptr %l248, !tbaa !23
  %t977 = load i32, ptr %l248, !tbaa !23
  %t978 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l247, i32 0, i32 0
  store i32 %t977, ptr %t978, !tbaa !23
  %t979 = load i32, ptr %l248, !tbaa !23
  %t980 = ashr i32 %t979, 16
  %t982 = icmp eq i32 %t980, 1
  br i1 %t982, label %bb131, label %bb132
bb131:
  %t984 = call ptr @__olang_errpay_top_get()
  %t986 = load { i64, [2 x i64] }, ptr %t984
  %t987 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l247, i32 0, i32 1
  store { i64, [2 x i64] } %t986, ptr %t987
  br label %bb132
bb132:
  %t989 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fnet_3aError_2e_2332_7d(ptr %s7, ptr %l247)
  store { i32, { i64, [2 x i64] } } %t989, ptr %l253
  br label %bb133
bb133:
  %t990 = load { i32, { i64, [2 x i64] } }, ptr %l253
  store { i32, { i64, [2 x i64] } } %t990, ptr %l16
  %t991 = load { i32, { i64, [2 x i64] } }, ptr %l16
  store { i32, { i64, [2 x i64] } } %t991, ptr %l254
  %t992 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l254, i32 0, i32 0
  %t993 = load i32, ptr %t992, !tbaa !23
  %t994 = ashr i32 %t993, 16
  %t996 = icmp eq i32 %t994, 1
  br i1 %t996, label %bb134, label %bb135
bb134:
  call void @__olang_errpay_pop()
  br label %bb135
bb135:
  %t998 = load { i32, { i64, [2 x i64] } }, ptr %l16
  store { i32, { i64, [2 x i64] } } %t998, ptr %l257
  %t1000 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fnet_3aError_2e_2332_7d(ptr %s13, ptr %l257)
  store { i32, { i64, [2 x i64] } } %t1000, ptr %l259
  br label %bb136
bb136:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s14
  store ptr %s14room, ptr %s14
  %t1001 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l259, i32 0, i32 0
  %t1002 = load i32, ptr %t1001, !tbaa !23
  %t1004 = icmp eq i32 %t1002, 0
  br i1 %t1004, label %bb138, label %bb139
bb137:
  %t1006 = load ptr, ptr %s14
  %t1007 = getelementptr %olang.builder, ptr %s14, i32 0, i32 1
  %t1008 = load i64, ptr %t1007
  %t1009 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t1008)
  call void @olang_textcopy(ptr %t1009, ptr %t1006, i64 %t1008)
  %t1010 = insertvalue { i64, ptr } undef, i64 %t1008, 0
  %t1011 = insertvalue { i64, ptr } %t1010, ptr %t1009, 1
  store { i64, ptr } %t1011, ptr %l263, !tbaa !27
  %t1012 = getelementptr %olang.builder, ptr %s14, i32 0, i32 3
  %t1013 = load ptr, ptr %t1012
  %t1014 = icmp ne ptr %t1013, null
  br i1 %t1014, label %sbgrew.1015, label %sbdone.1016
sbgrew.1015:
  call void @__olang_sb_done(ptr %s14)
  br label %sbdone.1016
sbdone.1016:
  %t1017 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t1018 = extractvalue { i64, ptr } %t1017, 0
  %t1019 = extractvalue { i64, ptr } %t1017, 1
  %t1020 = mul i64 %t1018, 1
  %t1021 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t1020)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1021, ptr %t1019, i64 %t1020, i1 false)
  %t1022 = insertvalue { i64, ptr } undef, i64 %t1018, 0
  %t1023 = insertvalue { i64, ptr } %t1022, ptr %t1021, 1
  %t1025 = call i32 @compiler_2fjupyter_2efail(ptr %s13, { i64, ptr } %t1023)
  store i32 %t1025, ptr %l265
  br label %bb140
bb138:
  %t1026 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t1027 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t1026, i64 %t1027)
  br label %bb137
bb139:
  %t1028 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t1029 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t1028, i64 %t1029)
  %t1030 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t1031 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t1030, i64 %t1031)
  %t1032 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l259, i32 0, i32 1
  %t1033 = getelementptr { i64, [2 x i64] }, ptr %t1032, i32 0, i32 1
  %t1034 = getelementptr { { i64, ptr } }, ptr %t1033, i32 0, i32 0
  %t1035 = load { i64, ptr }, ptr %t1034
  %t1037 = extractvalue { i64, ptr } %t1035, 1
  %t1038 = extractvalue { i64, ptr } %t1035, 0
  %t1039 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1037, i64 %t1038, i8 34)
  %t1040 = call ptr @__olang_sb_room(ptr %s14, i64 %t1039)
  %t1041 = call i64 @__olang_rd_quote(ptr %t1040, i64 0, ptr %t1037, i64 %t1038, i8 34)
  call void @__olang_sb_add(ptr %s14, i64 %t1039)
  %t1042 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t1043 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t1042, i64 %t1043)
  br label %bb137
bb140:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s7)
  %t1044 = load i1, ptr %l9, !tbaa !21
  br i1 %t1044, label %bb141, label %bb142
bb141:
  store %olang.scope zeroinitializer, ptr %s16
  call void @olang_2emir_2eHelperKind_2eDrop_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e(ptr %s16, ptr %l8)
  br label %bb143
bb142:
  br label %bb144
bb143:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s16)
  br label %bb144
bb144:
  call void @__olang_scope_close(ptr %s0)
  %t1047 = load i32, ptr %l265, !tbaa !23
  store i32 %t1047, ptr %rv
  br label %ret
bb145:
  %t1048 = load %"std/net:Addr", ptr %l237
  store %"std/net:Addr" %t1048, ptr %l17
  store ptr %l8, ptr %l268, !tbaa !29
  %t1050 = call { i32, %"std/net:Listener" } @std_2fnet_2eListener_2eListen(ptr %s7, ptr %l17, i32 128)
  %t1051 = extractvalue { i32, %"std/net:Listener" } %t1050, 1
  %t1052 = extractvalue { i32, %"std/net:Listener" } %t1050, 0
  store i32 %t1052, ptr %l272
  %t1053 = icmp ne i32 %t1052, 0
  br i1 %t1053, label %bb147, label %ok.1054, !prof !99
ok.1054:
  store %"std/net:Listener" %t1051, ptr %l271
  br label %bb146
bb146:
  %t1055 = load %"std/net:Listener", ptr %l271
  store %"std/net:Listener" %t1055, ptr %l269
  br label %bb182
bb147:
  %t1056 = load i32, ptr %l272, !tbaa !23
  %t1057 = ashr i32 %t1056, 16
  %t1059 = icmp eq i32 %t1057, 1
  store i1 %t1059, ptr %l274, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l18
  %t1060 = load i32, ptr %l272, !tbaa !23
  %t1061 = lshr i32 %t1060, 16
  %t1062 = and i32 %t1060, 65535
  %t1063 = icmp eq i32 %t1061, 1
  %t1064 = select i1 %t1063, i32 1, i32 0
  %t1065 = icmp eq i32 %t1060, 0
  %t1066 = shl i32 %t1064, 16
  %t1067 = or i32 %t1066, %t1062
  %t1068 = select i1 %t1065, i32 0, i32 %t1067
  %t1069 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l18, i32 0, i32 0
  store i32 %t1068, ptr %t1069, !tbaa !23
  br label %bb148
bb148:
  store %olang.scope zeroinitializer, ptr %s17
  %t1070 = load { i32, { i64, [2 x i64] } }, ptr %l18
  store { i32, { i64, [2 x i64] } } %t1070, ptr %l275
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l276
  %t1071 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l275, i32 0, i32 0
  %t1072 = load i32, ptr %t1071, !tbaa !23
  store i32 %t1072, ptr %l277, !tbaa !23
  %t1073 = load i32, ptr %l277, !tbaa !23
  %t1074 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l276, i32 0, i32 0
  store i32 %t1073, ptr %t1074, !tbaa !23
  %t1075 = load i32, ptr %l277, !tbaa !23
  %t1076 = ashr i32 %t1075, 16
  %t1078 = icmp eq i32 %t1076, 1
  br i1 %t1078, label %bb149, label %bb150
bb149:
  %t1080 = call ptr @__olang_errpay_top_get()
  %t1082 = load { i64, [2 x i64] }, ptr %t1080
  %t1083 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l276, i32 0, i32 1
  store { i64, [2 x i64] } %t1082, ptr %t1083
  br label %bb150
bb150:
  %t1085 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fnet_3aError_7d(ptr %s7, ptr %l276)
  store { i32, { i64, [2 x i64] } } %t1085, ptr %l282
  br label %bb151
bb151:
  %t1086 = load { i32, { i64, [2 x i64] } }, ptr %l282
  store { i32, { i64, [2 x i64] } } %t1086, ptr %l18
  %t1087 = load { i32, { i64, [2 x i64] } }, ptr %l18
  store { i32, { i64, [2 x i64] } } %t1087, ptr %l283
  %t1088 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l283, i32 0, i32 0
  %t1089 = load i32, ptr %t1088, !tbaa !23
  %t1090 = ashr i32 %t1089, 16
  %t1092 = icmp eq i32 %t1090, 1
  br i1 %t1092, label %bb152, label %bb153
bb152:
  call void @__olang_errpay_pop()
  br label %bb153
bb153:
  %t1094 = load %"std/net:Addr", ptr %l17
  store %"std/net:Addr" %t1094, ptr %l286
  %t1095 = load { i32, { i64, [2 x i64] } }, ptr %l18
  store { i32, { i64, [2 x i64] } } %t1095, ptr %l287
  %t1097 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fnet_3aError_7d(ptr %s17, ptr %l287)
  store { i32, { i64, [2 x i64] } } %t1097, ptr %l289
  br label %bb154
bb154:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s18
  store ptr %s18room, ptr %s18
  %t1098 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t1099 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1098, i64 %t1099)
  call void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aAddr(ptr %s18, ptr %l286, i64 0)
  br label %bb155
bb155:
  %t1101 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t1102 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1101, i64 %t1102)
  %t1103 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l289, i32 0, i32 0
  %t1104 = load i32, ptr %t1103, !tbaa !23
  store i32 %t1104, ptr %l291, !tbaa !23
  %t1105 = load i32, ptr %l291, !tbaa !23
  %t1106 = icmp eq i32 %t1105, 0
  br i1 %t1106, label %bb157, label %bb158
bb156:
  %t1108 = load ptr, ptr %s18
  %t1109 = getelementptr %olang.builder, ptr %s18, i32 0, i32 1
  %t1110 = load i64, ptr %t1109
  %t1111 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t1110)
  call void @olang_textcopy(ptr %t1111, ptr %t1108, i64 %t1110)
  %t1112 = insertvalue { i64, ptr } undef, i64 %t1110, 0
  %t1113 = insertvalue { i64, ptr } %t1112, ptr %t1111, 1
  store { i64, ptr } %t1113, ptr %l304, !tbaa !27
  %t1114 = getelementptr %olang.builder, ptr %s18, i32 0, i32 3
  %t1115 = load ptr, ptr %t1114
  %t1116 = icmp ne ptr %t1115, null
  br i1 %t1116, label %sbgrew.1117, label %sbdone.1118
sbgrew.1117:
  call void @__olang_sb_done(ptr %s18)
  br label %sbdone.1118
sbdone.1118:
  %t1119 = load { i64, ptr }, ptr %l304, !tbaa !27
  %t1120 = extractvalue { i64, ptr } %t1119, 0
  %t1121 = extractvalue { i64, ptr } %t1119, 1
  %t1122 = mul i64 %t1120, 1
  %t1123 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t1122)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1123, ptr %t1121, i64 %t1122, i1 false)
  %t1124 = insertvalue { i64, ptr } undef, i64 %t1120, 0
  %t1125 = insertvalue { i64, ptr } %t1124, ptr %t1123, 1
  %t1127 = call i32 @compiler_2fjupyter_2efail(ptr %s17, { i64, ptr } %t1125)
  store i32 %t1127, ptr %l306
  br label %bb177
bb157:
  %t1128 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t1129 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1128, i64 %t1129)
  br label %bb156
bb158:
  %t1130 = load i32, ptr %l291, !tbaa !23
  %t1131 = icmp eq i32 %t1130, 65536
  br i1 %t1131, label %bb159, label %bb160
bb159:
  %t1133 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t1134 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1133, i64 %t1134)
  br label %bb156
bb160:
  %t1135 = load i32, ptr %l291, !tbaa !23
  %t1136 = icmp eq i32 %t1135, 65537
  br i1 %t1136, label %bb161, label %bb162
bb161:
  %t1138 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t1139 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1138, i64 %t1139)
  br label %bb156
bb162:
  %t1140 = load i32, ptr %l291, !tbaa !23
  %t1141 = icmp eq i32 %t1140, 65538
  br i1 %t1141, label %bb163, label %bb164
bb163:
  %t1143 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t1144 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1143, i64 %t1144)
  br label %bb156
bb164:
  %t1145 = load i32, ptr %l291, !tbaa !23
  %t1146 = icmp eq i32 %t1145, 65539
  br i1 %t1146, label %bb165, label %bb166
bb165:
  %t1148 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t1149 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1148, i64 %t1149)
  br label %bb156
bb166:
  %t1150 = load i32, ptr %l291, !tbaa !23
  %t1151 = icmp eq i32 %t1150, 65540
  br i1 %t1151, label %bb167, label %bb168
bb167:
  %t1153 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t1154 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1153, i64 %t1154)
  br label %bb156
bb168:
  %t1155 = load i32, ptr %l291, !tbaa !23
  %t1156 = icmp eq i32 %t1155, 65541
  br i1 %t1156, label %bb169, label %bb170
bb169:
  %t1158 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t1159 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1158, i64 %t1159)
  %t1160 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t1161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1160, i64 %t1161)
  %t1162 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l289, i32 0, i32 1
  %t1163 = getelementptr { i64, [2 x i64] }, ptr %t1162, i32 0, i32 1
  %t1164 = getelementptr { { i64, ptr } }, ptr %t1163, i32 0, i32 0
  %t1165 = load { i64, ptr }, ptr %t1164
  %t1167 = extractvalue { i64, ptr } %t1165, 1
  %t1168 = extractvalue { i64, ptr } %t1165, 0
  %t1169 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1167, i64 %t1168, i8 34)
  %t1170 = call ptr @__olang_sb_room(ptr %s18, i64 %t1169)
  %t1171 = call i64 @__olang_rd_quote(ptr %t1170, i64 0, ptr %t1167, i64 %t1168, i8 34)
  call void @__olang_sb_add(ptr %s18, i64 %t1169)
  %t1172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t1173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1172, i64 %t1173)
  br label %bb156
bb170:
  %t1174 = load i32, ptr %l291, !tbaa !23
  %t1175 = icmp eq i32 %t1174, 65542
  br i1 %t1175, label %bb171, label %bb172
bb171:
  %t1177 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t1178 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1177, i64 %t1178)
  %t1179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t1180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1179, i64 %t1180)
  %t1181 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l289, i32 0, i32 1
  %t1182 = getelementptr { i64, [2 x i64] }, ptr %t1181, i32 0, i32 1
  %t1183 = getelementptr { { i64, ptr } }, ptr %t1182, i32 0, i32 0
  %t1184 = load { i64, ptr }, ptr %t1183
  %t1186 = extractvalue { i64, ptr } %t1184, 1
  %t1187 = extractvalue { i64, ptr } %t1184, 0
  %t1188 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1186, i64 %t1187, i8 34)
  %t1189 = call ptr @__olang_sb_room(ptr %s18, i64 %t1188)
  %t1190 = call i64 @__olang_rd_quote(ptr %t1189, i64 0, ptr %t1186, i64 %t1187, i8 34)
  call void @__olang_sb_add(ptr %s18, i64 %t1188)
  %t1191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t1192 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1191, i64 %t1192)
  br label %bb156
bb172:
  %t1193 = load i32, ptr %l291, !tbaa !23
  %t1194 = icmp eq i32 %t1193, 65543
  br i1 %t1194, label %bb173, label %bb174
bb173:
  %t1196 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t1197 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1196, i64 %t1197)
  br label %bb156
bb174:
  %t1198 = load i32, ptr %l291, !tbaa !23
  %t1199 = icmp eq i32 %t1198, 65544
  br i1 %t1199, label %bb175, label %bb176
bb175:
  %t1201 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t1202 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1201, i64 %t1202)
  br label %bb156
bb176:
  %t1203 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t1204 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1203, i64 %t1204)
  br label %bb156
bb177:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s7)
  %t1205 = load i1, ptr %l9, !tbaa !21
  br i1 %t1205, label %bb178, label %bb179
bb178:
  store %olang.scope zeroinitializer, ptr %s20
  call void @olang_2emir_2eHelperKind_2eDrop_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e(ptr %s20, ptr %l8)
  br label %bb180
bb179:
  br label %bb181
bb180:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s20)
  br label %bb181
bb181:
  call void @__olang_scope_close(ptr %s0)
  %t1208 = load i32, ptr %l306, !tbaa !23
  store i32 %t1208, ptr %rv
  br label %ret
bb182:
  %t1209 = load ptr, ptr %l268, !tbaa !29
  %t1210 = load %"std/net:Listener", ptr %l269
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2ePush_3cstd_2fnet_3aListener_3e(ptr %s0, ptr %t1209, %"std/net:Listener" %t1210)
  br label %bb183
bb183:
  call void @__olang_scope_close(ptr %s7)
  br label %bb184
bb184:
  %t1211 = load i64, ptr %l11, !tbaa !24
  %t1213 = add i64 %t1211, 1
  store i64 %t1213, ptr %l11, !tbaa !24
  br label %bb86
bb185:
  call void @compiler_2fprompt_3aSession_2ector(ptr %t1216, ptr %v0, ptr %s0, ptr %a0)
  call void @llvm.memmove.p0.p0.i64(ptr %l312, ptr %t1216, i64 1072, i1 false)
  br label %bb186
bb186:
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %l312, i64 1072, i1 false)
  %t1218 = getelementptr %"compiler/prompt:Session", ptr %l19, i32 0, i32 8
  store i1 true, ptr %t1218, !tbaa !21
  %t1219 = load ptr, ptr %l7, !tbaa !29
  %t1220 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t1221 = ptrtoint ptr %t1220 to i64
  %t1222 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 %t1221, i64 8)
  %t1223 = getelementptr { ptr, ptr }, ptr %t1222, i32 0, i32 0
  store ptr %t1219, ptr %t1223, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t1225 = getelementptr { ptr, ptr }, ptr %t1222, i32 0, i32 1
  store ptr %s0, ptr %t1225, !tbaa !28
  %t1226 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_114, 0
  %t1227 = insertvalue { ptr, ptr } %t1226, ptr %t1222, 1
  %t1230 = getelementptr %"compiler/prompt:Session", ptr %l19, i32 0, i32 6
  store { ptr, ptr } %t1227, ptr %t1230
  br label %bb187
bb187:
  store %olang.scope zeroinitializer, ptr %s22
  %t1231 = load ptr, ptr %l7, !tbaa !29
  %t1233 = getelementptr %"compiler/jupyter:kernel", ptr %t1231, i32 0, i32 6
  %t1234 = load i1, ptr %t1233, !tbaa !21
  %t1236 = xor i1 %t1234, true
  %t1238 = xor i1 %t1236, true
  br i1 %t1238, label %bb188, label %bb189
bb188:
  call void @__olang_scope_close(ptr %s22)
  br label %bb265
bb189:
  br label %bb190
bb190:
  %t1240 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %s22, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1240, ptr %l320
  br label %bb191
bb191:
  %t1241 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l320
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1241, ptr %l20
  %t1243 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2eView_3cstd_2fnet_3aListener_3e(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t1243, ptr %l322
  br label %bb192
bb192:
  %t1244 = load { i64, ptr }, ptr %l322, !tbaa !27
  store { i64, ptr } %t1244, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t1245 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1247 = extractvalue { i64, ptr } %t1245, 0
  store i64 %t1247, ptr %l23, !tbaa !24
  br label %bb193
bb193:
  %t1249 = load i64, ptr %l22, !tbaa !24
  %t1250 = load i64, ptr %l23, !tbaa !24
  %t1253 = icmp slt i64 %t1249, %t1250
  %t1255 = xor i1 %t1253, true
  br i1 %t1255, label %bb194, label %bb195
bb194:
  br label %bb200
bb195:
  br label %bb196
bb196:
  %t1257 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t1257, ptr %l329, !tbaa !27
  %t1258 = load i64, ptr %l22, !tbaa !24
  %t1260 = getelementptr { i64, ptr }, ptr %l329, i32 0, i32 1
  %t1261 = load ptr, ptr %t1260, !tbaa !27
  %t1262 = getelementptr %"std/net:Listener", ptr %t1261, i64 %t1258
  store ptr %l20, ptr %l332, !tbaa !29
  %t1266 = call i32 @std_2fnet_2estd_2fnet_3aListener_2eFd(ptr %s0, ptr %t1262)
  store i32 %t1266, ptr %l334
  br label %bb197
bb197:
  %t1267 = load ptr, ptr %l332, !tbaa !29
  %t1268 = load i32, ptr %l334, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %s22, ptr %t1267, i32 %t1268)
  br label %bb198
bb198:
  br label %bb199
bb199:
  %t1269 = load i64, ptr %l22, !tbaa !24
  %t1271 = add i64 %t1269, 1
  store i64 %t1271, ptr %l22, !tbaa !24
  br label %bb193
bb200:
  %t1273 = load ptr, ptr %l7, !tbaa !29
  %t1275 = getelementptr %"compiler/jupyter:kernel", ptr %t1273, i32 0, i32 4
  %t1277 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eView_3cstd_2fzmtp_3aSocket_3e(ptr %s0, ptr %s0, ptr %t1275)
  store { i64, ptr } %t1277, ptr %l339
  br label %bb201
bb201:
  %t1278 = load { i64, ptr }, ptr %l339, !tbaa !27
  store { i64, ptr } %t1278, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t1279 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t1281 = extractvalue { i64, ptr } %t1279, 0
  store i64 %t1281, ptr %l27, !tbaa !24
  br label %bb202
bb202:
  %t1283 = load i64, ptr %l26, !tbaa !24
  %t1284 = load i64, ptr %l27, !tbaa !24
  %t1287 = icmp slt i64 %t1283, %t1284
  %t1289 = xor i1 %t1287, true
  br i1 %t1289, label %bb203, label %bb204
bb203:
  br label %bb209
bb204:
  br label %bb205
bb205:
  %t1291 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t1291, ptr %l346, !tbaa !27
  %t1292 = load i64, ptr %l26, !tbaa !24
  %t1294 = getelementptr { i64, ptr }, ptr %l346, i32 0, i32 1
  %t1295 = load ptr, ptr %t1294, !tbaa !27
  %t1296 = getelementptr %"std/zmtp:Socket", ptr %t1295, i64 %t1292
  store ptr %l20, ptr %l349, !tbaa !29
  %t1300 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eFd(ptr %s0, ptr %t1296)
  store i32 %t1300, ptr %l351
  br label %bb206
bb206:
  %t1301 = load ptr, ptr %l349, !tbaa !29
  %t1302 = load i32, ptr %l351, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %s22, ptr %t1301, i32 %t1302)
  br label %bb207
bb207:
  br label %bb208
bb208:
  %t1303 = load i64, ptr %l26, !tbaa !24
  %t1305 = add i64 %t1303, 1
  store i64 %t1305, ptr %l26, !tbaa !24
  br label %bb202
bb209:
  %t1308 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eView_3cI32_3e(ptr %s22, ptr %s22, ptr %l20)
  store { i64, ptr } %t1308, ptr %l355
  br label %bb210
bb210:
  %t1309 = load { i64, ptr }, ptr %l355, !tbaa !27
  %t1310 = call { i64, ptr } @std_2fnet_2eReadable(ptr %s22, ptr %s22, { i64, ptr } %t1309, i64 -1)
  store { i64, ptr } %t1310, ptr %l356
  br label %bb211
bb211:
  %t1311 = load { i64, ptr }, ptr %l356, !tbaa !27
  store { i64, ptr } %t1311, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t1313 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2eLen_3cstd_2fnet_3aListener_3e(ptr %s0, ptr %l8)
  store i64 %t1313, ptr %l358
  br label %bb212
bb212:
  %t1314 = load i64, ptr %l358, !tbaa !24
  store i64 %t1314, ptr %l31, !tbaa !24
  store i64 1, ptr %l32, !tbaa !24
  %t1315 = load i64, ptr %l31, !tbaa !24
  %t1316 = load i64, ptr %l30, !tbaa !24
  %t1319 = icmp sgt i64 %t1315, %t1316
  br i1 %t1319, label %bb213, label %bb214
bb213:
  %t1321 = load i64, ptr %l32, !tbaa !24
  %t1323 = icmp sgt i64 %t1321, 0
  br i1 %t1323, label %bb215, label %bb216
bb214:
  store i64 0, ptr %l362, !tbaa !24
  br label %bb218
bb215:
  %t1325 = load i64, ptr %l31, !tbaa !24
  %t1326 = load i64, ptr %l30, !tbaa !24
  %t1329 = sub i64 %t1325, %t1326
  %t1330 = load i64, ptr %l32, !tbaa !24
  %t1333 = add i64 %t1329, %t1330
  %t1335 = sub i64 %t1333, 1
  %t1336 = load i64, ptr %l32, !tbaa !24
  %t1339 = sdiv i64 %t1335, %t1336
  store i64 %t1339, ptr %l365, !tbaa !24
  br label %bb217
bb216:
  store i64 0, ptr %l365, !tbaa !24
  br label %bb217
bb217:
  %t1341 = load i64, ptr %l365, !tbaa !24
  store i64 %t1341, ptr %l362, !tbaa !24
  br label %bb218
bb218:
  %t1342 = load i64, ptr %l362, !tbaa !24
  store i64 %t1342, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  br label %bb219
bb219:
  %t1343 = load i64, ptr %l34, !tbaa !24
  %t1344 = load i64, ptr %l33, !tbaa !24
  %t1347 = icmp slt i64 %t1343, %t1344
  %t1349 = xor i1 %t1347, true
  br i1 %t1349, label %bb220, label %bb221
bb220:
  br label %bb229
bb221:
  br label %bb222
bb222:
  %t1351 = load i64, ptr %l30, !tbaa !24
  %t1352 = load i64, ptr %l34, !tbaa !24
  %t1353 = load i64, ptr %l32, !tbaa !24
  %t1356 = mul i64 %t1352, %t1353
  %t1359 = add i64 %t1351, %t1356
  store i64 %t1359, ptr %l35, !tbaa !24
  %t1361 = load i64, ptr %l35, !tbaa !24
  %t1363 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t1364 = load ptr, ptr %t1363, !tbaa !27
  %t1365 = getelementptr i1, ptr %t1364, i64 %t1361
  %t1366 = load i1, ptr %t1365, !tbaa !31
  br i1 %t1366, label %bb223, label %bb224
bb223:
  %t1368 = load ptr, ptr %l7, !tbaa !29
  store ptr %t1368, ptr %l385, !tbaa !29
  %t1369 = load i64, ptr %l35, !tbaa !24
  %t1372 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2eRefMut_3cstd_2fnet_3aListener_3e(ptr %s0, ptr %s0, ptr %l8, i64 %t1369)
  store ptr %t1372, ptr %l388
  br label %bb225
bb224:
  br label %bb227
bb225:
  %t1373 = load i64, ptr %l35, !tbaa !24
  %t1374 = load ptr, ptr %l385, !tbaa !29
  %t1375 = load ptr, ptr %l388, !tbaa !29
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eaccept(ptr %s0, ptr %s0, ptr %t1374, ptr %t1375, i64 %t1373)
  br label %bb226
bb226:
  br label %bb227
bb227:
  br label %bb228
bb228:
  %t1377 = load i64, ptr %l34, !tbaa !24
  %t1379 = add i64 %t1377, 1
  store i64 %t1379, ptr %l34, !tbaa !24
  br label %bb219
bb229:
  store i64 0, ptr %l36, !tbaa !24
  %t1381 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t1383 = extractvalue { i64, ptr } %t1381, 0
  store i64 %t1383, ptr %l393, !tbaa !24
  %t1385 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2eLen_3cstd_2fnet_3aListener_3e(ptr %s0, ptr %l8)
  store i64 %t1385, ptr %l395
  br label %bb230
bb230:
  %t1386 = load i64, ptr %l393, !tbaa !24
  %t1387 = load i64, ptr %l395, !tbaa !24
  %t1388 = sub i64 %t1386, %t1387
  store i64 %t1388, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t1390 = load i64, ptr %l37, !tbaa !24
  %t1391 = load i64, ptr %l36, !tbaa !24
  %t1394 = icmp sgt i64 %t1390, %t1391
  br i1 %t1394, label %bb231, label %bb232
bb231:
  %t1396 = load i64, ptr %l38, !tbaa !24
  %t1398 = icmp sgt i64 %t1396, 0
  br i1 %t1398, label %bb233, label %bb234
bb232:
  store i64 0, ptr %l400, !tbaa !24
  br label %bb236
bb233:
  %t1400 = load i64, ptr %l37, !tbaa !24
  %t1401 = load i64, ptr %l36, !tbaa !24
  %t1404 = sub i64 %t1400, %t1401
  %t1405 = load i64, ptr %l38, !tbaa !24
  %t1408 = add i64 %t1404, %t1405
  %t1410 = sub i64 %t1408, 1
  %t1411 = load i64, ptr %l38, !tbaa !24
  %t1414 = sdiv i64 %t1410, %t1411
  store i64 %t1414, ptr %l403, !tbaa !24
  br label %bb235
bb234:
  store i64 0, ptr %l403, !tbaa !24
  br label %bb235
bb235:
  %t1416 = load i64, ptr %l403, !tbaa !24
  store i64 %t1416, ptr %l400, !tbaa !24
  br label %bb236
bb236:
  %t1417 = load i64, ptr %l400, !tbaa !24
  store i64 %t1417, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb237
bb237:
  %t1418 = load i64, ptr %l40, !tbaa !24
  %t1419 = load i64, ptr %l39, !tbaa !24
  %t1422 = icmp slt i64 %t1418, %t1419
  %t1424 = xor i1 %t1422, true
  br i1 %t1424, label %bb238, label %bb239
bb238:
  br label %bb247
bb239:
  br label %bb240
bb240:
  %t1426 = load i64, ptr %l36, !tbaa !24
  %t1427 = load i64, ptr %l40, !tbaa !24
  %t1428 = load i64, ptr %l38, !tbaa !24
  %t1431 = mul i64 %t1427, %t1428
  %t1434 = add i64 %t1426, %t1431
  store i64 %t1434, ptr %l41, !tbaa !24
  %t1437 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2eLen_3cstd_2fnet_3aListener_3e(ptr %s0, ptr %l8)
  store i64 %t1437, ptr %l422
  br label %bb241
bb241:
  %t1438 = load i64, ptr %l41, !tbaa !24
  %t1439 = load i64, ptr %l422, !tbaa !24
  %t1441 = add i64 %t1439, %t1438
  %t1443 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t1444 = load ptr, ptr %t1443, !tbaa !27
  %t1445 = getelementptr i1, ptr %t1444, i64 %t1441
  %t1446 = load i1, ptr %t1445, !tbaa !31
  br i1 %t1446, label %bb242, label %bb243
bb242:
  %t1448 = load ptr, ptr %l7, !tbaa !29
  %t1449 = load i64, ptr %l41, !tbaa !24
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eserve(ptr %s0, ptr %s0, ptr %v0, ptr %t1448, ptr %l19, i64 %t1449)
  br label %bb244
bb243:
  br label %bb245
bb244:
  br label %bb245
bb245:
  br label %bb246
bb246:
  %t1453 = load i64, ptr %l40, !tbaa !24
  %t1455 = add i64 %t1453, 1
  store i64 %t1455, ptr %l40, !tbaa !24
  br label %bb237
bb247:
  br label %bb248
bb248:
  store %olang.scope zeroinitializer, ptr %s37
  %t1457 = load ptr, ptr %l7, !tbaa !29
  %t1459 = getelementptr %"compiler/jupyter:kernel", ptr %t1457, i32 0, i32 6
  %t1460 = load i1, ptr %t1459, !tbaa !21
  %t1462 = xor i1 %t1460, true
  br i1 %t1462, label %bb249, label %bb250
bb249:
  %t1464 = load ptr, ptr %l7, !tbaa !29
  %t1466 = getelementptr %"compiler/jupyter:kernel", ptr %t1464, i32 0, i32 7
  %t1468 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2eLen__H3ed9013f6604c7fc0e46a0318571cb25(ptr %s0, ptr %t1466)
  store i64 %t1468, ptr %l437
  br label %bb251
bb250:
  store i1 false, ptr %l434, !tbaa !21
  br label %bb252
bb251:
  %t1469 = load i64, ptr %l437, !tbaa !24
  %t1470 = icmp sgt i64 %t1469, 0
  store i1 %t1470, ptr %l434, !tbaa !21
  br label %bb252
bb252:
  %t1472 = load i1, ptr %l434, !tbaa !21
  %t1473 = xor i1 %t1472, true
  br i1 %t1473, label %bb253, label %bb254
bb253:
  call void @__olang_scope_close(ptr %s37)
  br label %bb262
bb254:
  br label %bb255
bb255:
  %t1475 = load ptr, ptr %l7, !tbaa !29
  %t1477 = getelementptr %"compiler/jupyter:kernel", ptr %t1475, i32 0, i32 7
  %t1479 = call { i32, %"compiler/jupyter:pending" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2eTake_H6fdf3e54d655bfcfaddc15fb1412c3ad(ptr %s0, ptr %s0, ptr %t1477, i64 0)
  %t1480 = extractvalue { i32, %"compiler/jupyter:pending" } %t1479, 1
  %t1481 = extractvalue { i32, %"compiler/jupyter:pending" } %t1479, 0
  store i32 %t1481, ptr %l444
  %t1482 = icmp ne i32 %t1481, 0
  br i1 %t1482, label %bb257, label %ok.1483, !prof !99
ok.1483:
  store %"compiler/jupyter:pending" %t1480, ptr %l443
  br label %bb256
bb256:
  %t1484 = load %"compiler/jupyter:pending", ptr %l443
  store %"compiler/jupyter:pending" %t1484, ptr %l440
  br label %bb259
bb257:
  %t1485 = load i32, ptr %l444, !tbaa !23
  %t1486 = ashr i32 %t1485, 16
  %t1488 = icmp eq i32 %t1486, 1
  store i1 %t1488, ptr %l446, !tbaa !21
  br label %bb258
bb258:
  call void @__olang_scope_close(ptr %s37)
  br label %bb262
bb259:
  %t1489 = load %"compiler/jupyter:pending", ptr %l440
  store %"compiler/jupyter:pending" %t1489, ptr %l42
  %t1490 = load ptr, ptr %l7, !tbaa !29
  %t1491 = getelementptr %"compiler/jupyter:pending", ptr %l42, i32 0, i32 0
  %t1492 = load i64, ptr %t1491, !tbaa !24
  %t1493 = getelementptr %"compiler/jupyter:pending", ptr %l42, i32 0, i32 1
  %t1494 = load { i64, ptr }, ptr %t1493, !tbaa !27
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ehandle(ptr %s0, ptr %s0, ptr %s37, ptr %v0, ptr %t1490, ptr %l19, i64 %t1492, { i64, ptr } %t1494)
  br label %bb260
bb260:
  call void @__olang_scope_close(ptr %s37)
  br label %bb261
bb261:
  br label %bb248
bb262:
  %t1499 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2esweep(ptr %s0, ptr %t1499)
  br label %bb263
bb263:
  call void @__olang_scope_close(ptr %s22)
  br label %bb264
bb264:
  br label %bb187
bb265:
  call void @compiler_2fprompt_2ecompiler_2fprompt_3aSession_2eEnd(ptr %s0, ptr %v0, ptr %l19)
  br label %bb266
bb266:
  store i32 0, ptr %l453, !tbaa !23
  %t1502 = load i1, ptr %l9, !tbaa !21
  br i1 %t1502, label %bb267, label %bb268
bb267:
  store %olang.scope zeroinitializer, ptr %s40
  call void @olang_2emir_2eHelperKind_2eDrop_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e(ptr %s40, ptr %l8)
  br label %bb269
bb268:
  br label %bb270
bb269:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s40)
  br label %bb270
bb270:
  call void @__olang_scope_close(ptr %s0)
  %t1505 = load i32, ptr %l453, !tbaa !23
  store i32 %t1505, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, i64, i64 } @compiler_2fjupyter_2ecivil(i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l51 = alloca i64
  %l59 = alloca i64
  %l62 = alloca i64
  %rv = alloca { i64, i64, i64 }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = add i64 %a0, 719468
  store i64 %t3, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = sdiv i64 %t5, 146097
  store i64 %t7, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = mul i64 %t10, 146097
  %t15 = sub i64 %t9, %t12
  store i64 %t15, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = sdiv i64 %t18, 1460
  %t23 = sub i64 %t17, %t20
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = sdiv i64 %t24, 36524
  %t29 = add i64 %t23, %t26
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = sdiv i64 %t30, 146096
  %t35 = sub i64 %t29, %t32
  %t37 = sdiv i64 %t35, 365
  store i64 %t37, ptr %l4, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t42 = mul i64 365, %t40
  %t43 = load i64, ptr %l4, !tbaa !24
  %t45 = sdiv i64 %t43, 4
  %t48 = add i64 %t42, %t45
  %t49 = load i64, ptr %l4, !tbaa !24
  %t51 = sdiv i64 %t49, 100
  %t54 = sub i64 %t48, %t51
  %t57 = sub i64 %t39, %t54
  store i64 %t57, ptr %l5, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = mul i64 5, %t59
  %t63 = add i64 %t61, 2
  %t65 = sdiv i64 %t63, 153
  store i64 %t65, ptr %l6, !tbaa !24
  %t67 = load i64, ptr %l5, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = mul i64 153, %t68
  %t72 = add i64 %t70, 2
  %t74 = sdiv i64 %t72, 5
  %t77 = sub i64 %t67, %t74
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l7, !tbaa !24
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = icmp slt i64 %t81, 10
  br i1 %t83, label %bb1, label %bb2
bb1:
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = add i64 %t85, 3
  store i64 %t87, ptr %l51, !tbaa !24
  br label %bb3
bb2:
  %t89 = load i64, ptr %l6, !tbaa !24
  %t91 = sub i64 %t89, 9
  store i64 %t91, ptr %l51, !tbaa !24
  br label %bb3
bb3:
  %t93 = load i64, ptr %l51, !tbaa !24
  store i64 %t93, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l4, !tbaa !24
  %t95 = load i64, ptr %l2, !tbaa !24
  %t97 = mul i64 %t95, 400
  %t100 = add i64 %t94, %t97
  store i64 %t100, ptr %l59, !tbaa !24
  %t101 = load i64, ptr %l8, !tbaa !24
  %t103 = icmp sle i64 %t101, 2
  br i1 %t103, label %bb4, label %bb5
bb4:
  store i64 1, ptr %l62, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb6
bb6:
  %t105 = load i64, ptr %l59, !tbaa !24
  %t106 = load i64, ptr %l62, !tbaa !24
  %t107 = add i64 %t105, %t106
  %t108 = load i64, ptr %l8, !tbaa !24
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = insertvalue { i64, i64, i64 } undef, i64 %t107, 0
  %t113 = insertvalue { i64, i64, i64 } %t111, i64 %t108, 1
  %t115 = insertvalue { i64, i64, i64 } %t113, i64 %t109, 2
  store { i64, i64, i64 } %t115, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64, i64 }, ptr %rv
  ret { i64, i64, i64 } %rr
}

define dso_local { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3aCapture_2eEnd(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l31 = alloca i32
  %l32 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l45 = alloca i64
  %l53 = alloca i32
  %l54 = alloca i64
  %l55 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/jupyter:Capture", ptr %t1, i32 0, i32 1
  %t4 = load i32, ptr %t3, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/jupyter:Capture", ptr %t5, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t11 = call i32 @dup2(i32 %t4, i32 %t8)
  store i32 %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/jupyter:Capture", ptr %t12, i32 0, i32 1
  %t15 = load i32, ptr %t14, !tbaa !23
  %t17 = call i32 @close(i32 %t15)
  store i32 %t17, ptr %l12
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/jupyter:Capture", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %t20, !tbaa !23
  %t23 = call i64 @lseek(i32 %t21, i64 0, i32 2)
  store i64 %t23, ptr %l15
  br label %bb3
bb3:
  %t24 = load i64, ptr %l15, !tbaa !24
  store i64 %t24, ptr %l1, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/jupyter:Capture", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %t27, !tbaa !23
  %t30 = call i64 @lseek(i32 %t28, i64 0, i32 0)
  store i64 %t30, ptr %l18
  br label %bb4
bb4:
  %t31 = load i64, ptr %l1, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb5, label %bb6
bb5:
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l21, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l21, !tbaa !24
  %t38 = icmp sge i64 %t37, 0
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load i64, ptr %l21, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_c63743b1fec4c0d4_43198d06044e4ff0)
  unreachable
bb10:
  %t46 = load i64, ptr %l3, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t52 = icmp slt i64 %t46, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/jupyter:Capture", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %t58, !tbaa !23
  store i32 %t59, ptr %l31, !tbaa !23
  %t60 = load i64, ptr %l3, !tbaa !24
  store i64 %t60, ptr %l32, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l34, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l35, !tbaa !24
  %t66 = load i64, ptr %l32, !tbaa !24
  %t67 = icmp sge i64 %t66, 0
  br i1 %t67, label %bb14, label %bb15
bb14:
  %t69 = load i64, ptr %l32, !tbaa !24
  %t70 = load i64, ptr %l34, !tbaa !24
  %t71 = icmp sle i64 %t69, %t70
  br i1 %t71, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_69a6c85b3d3b36f9_8c1f3e3900689b5d)
  unreachable
bb16:
  %t73 = load i64, ptr %l34, !tbaa !24
  %t74 = load i64, ptr %l35, !tbaa !24
  %t75 = icmp sle i64 %t73, %t74
  br i1 %t75, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_69a6c85b3d3b36f9_8c1f3e3900689b5d)
  unreachable
bb18:
  %t77 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = load i64, ptr %l32, !tbaa !24
  %t80 = load i64, ptr %l34, !tbaa !24
  %t81 = getelementptr i8, ptr %t78, i64 %t79
  %t82 = sub i64 %t80, %t79
  %t83 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t81, 1
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = load i64, ptr %l3, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t93 = load i32, ptr %l31, !tbaa !23
  %t95 = extractvalue { i64, ptr } %t84, 1
  %t96 = extractvalue { i64, ptr } %t84, 0
  %t98 = call i64 @read(i32 %t93, ptr %t95, i64 %t91)
  store i64 %t98, ptr %l45
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_69a6c85b3d3b36f9_8c1f3e3900689b5d)
  unreachable
bb20:
  %t99 = load i64, ptr %l45, !tbaa !24
  store i64 %t99, ptr %l4, !tbaa !24
  %t100 = load i64, ptr %l4, !tbaa !24
  %t102 = icmp sle i64 %t100, 0
  br i1 %t102, label %bb21, label %bb22
bb21:
  br label %bb25
bb22:
  br label %bb23
bb23:
  %t104 = load i64, ptr %l3, !tbaa !24
  %t105 = load i64, ptr %l4, !tbaa !24
  %t108 = add i64 %t104, %t105
  store i64 %t108, ptr %l3, !tbaa !24
  br label %bb24
bb24:
  br label %bb10
bb25:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/jupyter:Capture", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %t112, !tbaa !23
  %t115 = call i32 @close(i32 %t113)
  store i32 %t115, ptr %l53
  br label %bb26
bb26:
  %t116 = load i64, ptr %l3, !tbaa !24
  store i64 %t116, ptr %l54, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  store i64 %t118, ptr %l55, !tbaa !24
  %t119 = icmp sge i64 0, 0
  br i1 %t119, label %bb27, label %bb28
bb27:
  %t121 = load i64, ptr %l54, !tbaa !24
  %t122 = icmp sle i64 0, %t121
  br i1 %t122, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_df7b1c0fb7414e5a_53e9012a4cdfda7e)
  unreachable
bb29:
  %t124 = load i64, ptr %l54, !tbaa !24
  %t125 = load i64, ptr %l55, !tbaa !24
  %t126 = icmp sle i64 %t124, %t125
  br i1 %t126, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_df7b1c0fb7414e5a_53e9012a4cdfda7e)
  unreachable
bb31:
  %t128 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = load i64, ptr %l54, !tbaa !24
  %t131 = getelementptr i8, ptr %t129, i64 0
  %t132 = sub i64 %t130, 0
  %t133 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t131, 1
  store { i64, ptr } %t134, ptr %l60, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  store i64 %t137, ptr %l61, !tbaa !24
  %t138 = load i64, ptr %l61, !tbaa !24
  %t139 = mul i64 %t138, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t139)
  %t141 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  store { i64, ptr } %t142, ptr %l62, !tbaa !27
  %t143 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = load i64, ptr %l61, !tbaa !24
  %t148 = mul i64 %t147, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t144, ptr %t146, i64 %t148, i1 false)
  %t149 = load { i64, ptr }, ptr %l62, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t149, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_df7b1c0fb7414e5a_53e9012a4cdfda7e)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eaccept(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"std/zmtp:Socket"
  %l9 = alloca %"std/zmtp:Socket"
  %l10 = alloca i32
  %l12 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/jupyter:kernel", ptr %t1, i32 0, i32 4
  store ptr %t3, ptr %l4, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = getelementptr [5 x { i64, ptr }], ptr @G_2ecompiler_2fjupyter_2eKinds, i64 0, i64 %t5
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !37
  %t9 = load ptr, ptr @__olang_prog_scope
  %t12 = call { i32, %"std/zmtp:Socket" } @std_2fzmtp_2eSocket_2eAccept(ptr %v1, ptr %t9, ptr %v0, ptr %a1, { i64, ptr } %t8)
  %t13 = extractvalue { i32, %"std/zmtp:Socket" } %t12, 1
  %t14 = extractvalue { i32, %"std/zmtp:Socket" } %t12, 0
  store i32 %t14, ptr %l10
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb2, label %ok.16, !prof !99
ok.16:
  store %"std/zmtp:Socket" %t13, ptr %l9
  br label %bb1
bb1:
  %t17 = load %"std/zmtp:Socket", ptr %l9
  store %"std/zmtp:Socket" %t17, ptr %l5
  br label %bb6
bb2:
  %t18 = load i32, ptr %l10, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  store i1 %t21, ptr %l12, !tbaa !21
  %t22 = load i32, ptr %l10, !tbaa !23
  %t23 = ashr i32 %t22, 16
  %t25 = icmp eq i32 %t23, 1
  br i1 %t25, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %ret
bb6:
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t28 = load %"std/zmtp:Socket", ptr %l5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2ePush_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v0, ptr %t27, %"std/zmtp:Socket" %t28)
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/jupyter:kernel", ptr %t29, i32 0, i32 5
  %t32 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t31, i64 %t32)
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eexecute(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i64 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca %"compiler/jupyter:Capture"
  %l9 = alloca %"compiler/jupyter:Capture"
  %l10 = alloca %"compiler/prompt:Reply"
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/text:LineIter"
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %l24 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca i32
  %l29 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i32
  %l35 = alloca i1
  %l40 = alloca ptr
  %l47 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l55 = alloca %"compiler/jupyter:Capture"
  %l56 = alloca %"compiler/jupyter:Capture"
  %l57 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l65 = alloca %"compiler/prompt:Reply"
  %l67 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l86 = alloca i1
  %l89 = alloca ptr
  %l91 = alloca { i64, ptr }
  %l92 = alloca i64
  %l94 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l102 = alloca i1
  %l110 = alloca { i64, ptr }
  %l111 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca { i64, ptr }
  %l114 = alloca %"std/prelude/text:LineIter"
  %l115 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l118 = alloca i32
  %l120 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i64
  %l125 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %t137 = alloca %"compiler/prompt:Reply", align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fjupyter_2estr(ptr %v3, ptr %s0, ptr %v3, ptr %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store { i64, ptr } %t3, ptr %l21
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l4, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d116, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t9 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v3, ptr %v3, ptr %t5, { i64, ptr } %t6)
  %t10 = extractvalue { i32, ptr } %t9, 1
  %t11 = extractvalue { i32, ptr } %t9, 0
  store i32 %t11, ptr %l27
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb3, label %ok.13, !prof !99
ok.13:
  store ptr %t10, ptr %l26
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l26, !tbaa !29
  %t15 = call { i32, i1 } @std_2fjson_2estd_2fjson_3aJson_2eAsBool(ptr %v3, ptr %t14)
  %t16 = extractvalue { i32, i1 } %t15, 1
  %t17 = extractvalue { i32, i1 } %t15, 0
  store i32 %t17, ptr %l33
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb8, label %ok.19, !prof !99
ok.19:
  store i1 %t16, ptr %l32
  br label %bb7
bb3:
  %t20 = load i32, ptr %l27, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  store i1 %t23, ptr %l29, !tbaa !21
  %t24 = load i32, ptr %l27, !tbaa !23
  %t25 = ashr i32 %t24, 16
  %t27 = icmp eq i32 %t25, 1
  br i1 %t27, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb11
bb7:
  %t29 = load i1, ptr %l32, !tbaa !21
  store i1 %t29, ptr %l22, !tbaa !21
  br label %bb11
bb8:
  %t30 = load i32, ptr %l33, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  store i1 %t33, ptr %l35, !tbaa !21
  %t34 = load i32, ptr %l33, !tbaa !23
  %t35 = ashr i32 %t34, 16
  %t37 = icmp eq i32 %t35, 1
  br i1 %t37, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb6
bb11:
  %t39 = load i1, ptr %l22, !tbaa !21
  store i1 %t39, ptr %l6, !tbaa !21
  %t40 = load i1, ptr %l6, !tbaa !21
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l40, !tbaa !29
  %t45 = load ptr, ptr %l40, !tbaa !29
  %t46 = getelementptr %"compiler/jupyter:kernel", ptr %t45, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = load ptr, ptr %l40, !tbaa !29
  %t52 = getelementptr %"compiler/jupyter:kernel", ptr %t51, i32 0, i32 2
  store i64 %t49, ptr %t52, !tbaa !24
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/jupyter:kernel", ptr %t53, i32 0, i32 2
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l7, !tbaa !24
  %t58 = load i1, ptr %l6, !tbaa !21
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l47, !tbaa !29
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr %"compiler/jupyter:request", ptr %t63, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l49, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t69 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v3, ptr %s2, { i64, ptr } %t67)
  store { i64, ptr } %t69, ptr %l51
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t73 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = add i64 %t72, %t75
  %t77 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t81 = call i64 @__olang_fmt_i64(ptr null, i64 %t70)
  %t82 = add i64 %t79, %t81
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t85)
  call void @olang_textcopy(ptr %t86, ptr %t71, i64 %t72)
  %t87 = getelementptr i8, ptr %t86, i64 %t72
  call void @olang_textcopy(ptr %t87, ptr %t74, i64 %t75)
  %t88 = getelementptr i8, ptr %t87, i64 %t75
  call void @olang_textcopy(ptr %t88, ptr %t77, i64 %t78)
  %t89 = getelementptr i8, ptr %t88, i64 %t78
  %t90 = call i64 @__olang_fmt_i64(ptr %t89, i64 %t70)
  %t91 = getelementptr i8, ptr %t89, i64 %t81
  call void @olang_textcopy(ptr %t91, ptr %t83, i64 %t84)
  %t92 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t86, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = extractvalue { i64, ptr } %t93, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t101 = load ptr, ptr %l47, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l49, !tbaa !27
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2epublish(ptr %v0, ptr %s2, ptr %v2, ptr %s2, ptr %t101, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d120, i32 0, i32 1) }, { i64, ptr } %t102, { i64, ptr } %t100)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t104 = call %"compiler/jupyter:Capture" @compiler_2fjupyter_3aCapture_2ector(ptr %s0, i32 1)
  store %"compiler/jupyter:Capture" %t104, ptr %l55
  br label %bb20
bb20:
  %t105 = load %"compiler/jupyter:Capture", ptr %l55
  store %"compiler/jupyter:Capture" %t105, ptr %l8
  %t106 = call %"compiler/jupyter:Capture" @compiler_2fjupyter_3aCapture_2ector(ptr %s0, i32 2)
  store %"compiler/jupyter:Capture" %t106, ptr %l56
  br label %bb21
bb21:
  %t107 = load %"compiler/jupyter:Capture", ptr %l56
  store %"compiler/jupyter:Capture" %t107, ptr %l9
  store ptr %a1, ptr %l57, !tbaa !29
  %t109 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t109, ptr %l58, !tbaa !27
  %t110 = load i1, ptr %l6, !tbaa !21
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb22, label %bb23
bb22:
  %t114 = load i64, ptr %l7, !tbaa !24
  %t115 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t118 = call i64 @__olang_fmt_i64(ptr null, i64 %t114)
  %t119 = add i64 %t116, %t118
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t122 = add i64 %t119, %t121
  %t123 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t122)
  call void @olang_textcopy(ptr %t123, ptr %t115, i64 %t116)
  %t124 = getelementptr i8, ptr %t123, i64 %t116
  %t125 = call i64 @__olang_fmt_i64(ptr %t124, i64 %t114)
  %t126 = getelementptr i8, ptr %t124, i64 %t118
  call void @olang_textcopy(ptr %t126, ptr %t120, i64 %t121)
  %t127 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t123, 1
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t131 = extractvalue { i64, ptr } %t128, 1
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t133, ptr %t131, i64 %t132, i1 false)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l61, !tbaa !27
  br label %bb24
bb23:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d123, i32 0, i32 1) }, ptr %l61, !tbaa !27
  br label %bb24
bb24:
  %t138 = load ptr, ptr %l57, !tbaa !29
  %t139 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t140 = load { i64, ptr }, ptr %l61, !tbaa !27
  call void @compiler_2fprompt_2ecompiler_2fprompt_3aSession_2eCell(ptr %t137, ptr %v1, ptr %v3, ptr %s0, ptr %v1, ptr %v4, ptr %t138, { i64, ptr } %t139, { i64, ptr } %t140)
  call void @llvm.memmove.p0.p0.i64(ptr %l65, ptr %t137, i64 144, i1 false)
  br label %bb25
bb25:
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %l65, i64 144, i1 false)
  %t142 = call { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3aCapture_2eEnd(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t142, ptr %l67
  br label %bb26
bb26:
  %t143 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t143, ptr %l11, !tbaa !27
  %t145 = call { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3aCapture_2eEnd(ptr %s0, ptr %s0, ptr %l9)
  store { i64, ptr } %t145, ptr %l69
  br label %bb27
bb27:
  %t146 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t146, ptr %l12, !tbaa !27
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t150 = getelementptr %"compiler/jupyter:request", ptr %t148, i32 0, i32 1
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2estream(ptr %v0, ptr %v2, ptr %s0, ptr %s0, ptr %t147, { i64, ptr } %t151, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d124, i32 0, i32 1) }, { i64, ptr } %t152)
  br label %bb28
bb28:
  %t156 = getelementptr %"compiler/prompt:Reply", ptr %l10, i32 0, i32 0
  %t157 = load i1, ptr %t156, !tbaa !21
  br i1 %t157, label %bb29, label %bb30
bb29:
  %t159 = getelementptr %"compiler/prompt:Reply", ptr %l10, i32 0, i32 1
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  store { i64, ptr } %t160, ptr %l75, !tbaa !27
  br label %bb31
bb30:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l75, !tbaa !27
  br label %bb31
bb31:
  %t162 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l3, !tbaa !29
  %t166 = getelementptr %"compiler/jupyter:request", ptr %t164, i32 0, i32 1
  %t167 = load { i64, ptr }, ptr %t166, !tbaa !27
  %t168 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t170 = getelementptr %"compiler/prompt:Reply", ptr %l10, i32 0, i32 5
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t168, 1
  %t174 = extractvalue { i64, ptr } %t168, 0
  %t176 = extractvalue { i64, ptr } %t162, 1
  %t177 = extractvalue { i64, ptr } %t162, 0
  %t178 = add i64 %t174, %t177
  %t180 = extractvalue { i64, ptr } %t171, 1
  %t181 = extractvalue { i64, ptr } %t171, 0
  %t182 = add i64 %t178, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t173, i64 %t174)
  %t184 = getelementptr i8, ptr %t183, i64 %t174
  call void @olang_textcopy(ptr %t184, ptr %t176, i64 %t177)
  %t185 = getelementptr i8, ptr %t184, i64 %t177
  call void @olang_textcopy(ptr %t185, ptr %t180, i64 %t181)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t183, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = extractvalue { i64, ptr } %t187, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2estream(ptr %v0, ptr %v2, ptr %s0, ptr %s0, ptr %t163, { i64, ptr } %t167, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d126, i32 0, i32 1) }, { i64, ptr } %t194)
  br label %bb32
bb32:
  %t198 = getelementptr %"compiler/prompt:Reply", ptr %l10, i32 0, i32 2
  %t199 = load i1, ptr %t198, !tbaa !21
  br i1 %t199, label %bb33, label %bb34
bb33:
  %t201 = load i1, ptr %l6, !tbaa !21
  %t203 = xor i1 %t201, true
  store i1 %t203, ptr %l86, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb35
bb35:
  %t205 = load i1, ptr %l86, !tbaa !21
  br i1 %t205, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l89, !tbaa !29
  %t207 = load ptr, ptr %l3, !tbaa !29
  %t209 = getelementptr %"compiler/jupyter:request", ptr %t207, i32 0, i32 1
  %t210 = load { i64, ptr }, ptr %t209, !tbaa !27
  store { i64, ptr } %t210, ptr %l91, !tbaa !27
  %t211 = load i64, ptr %l7, !tbaa !24
  store i64 %t211, ptr %l92, !tbaa !24
  %t213 = call { i64, ptr } @compiler_2fjupyter_2eData(ptr %v1, ptr %s6, ptr %l10)
  store { i64, ptr } %t213, ptr %l94
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t214 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t215 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t216 = load i64, ptr %l92, !tbaa !24
  %t217 = call i64 @__olang_fmt_i64(ptr null, i64 %t216)
  %t218 = add i64 %t215, %t217
  %t219 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t221 = add i64 %t218, %t220
  %t222 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = extractvalue { i64, ptr } %t222, 0
  %t225 = add i64 %t221, %t224
  %t226 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t228 = add i64 %t225, %t227
  %t229 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t228)
  call void @olang_textcopy(ptr %t229, ptr %t214, i64 %t215)
  %t230 = getelementptr i8, ptr %t229, i64 %t215
  %t231 = call i64 @__olang_fmt_i64(ptr %t230, i64 %t216)
  %t232 = getelementptr i8, ptr %t230, i64 %t217
  call void @olang_textcopy(ptr %t232, ptr %t219, i64 %t220)
  %t233 = getelementptr i8, ptr %t232, i64 %t220
  call void @olang_textcopy(ptr %t233, ptr %t223, i64 %t224)
  %t234 = getelementptr i8, ptr %t233, i64 %t224
  call void @olang_textcopy(ptr %t234, ptr %t226, i64 %t227)
  %t235 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t229, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = extractvalue { i64, ptr } %t236, 1
  %t240 = mul i64 %t238, 1
  %t241 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t240)
  call void @llvm.memcpy.p0.p0.i64(ptr %t241, ptr %t239, i64 %t240, i1 false)
  %t242 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t241, 1
  %t244 = load ptr, ptr %l89, !tbaa !29
  %t245 = load { i64, ptr }, ptr %l91, !tbaa !27
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2epublish(ptr %v0, ptr %s6, ptr %v2, ptr %s6, ptr %t244, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d130, i32 0, i32 1) }, { i64, ptr } %t245, { i64, ptr } %t243)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s6)
  br label %bb40
bb40:
  %t247 = getelementptr %"compiler/prompt:Reply", ptr %l10, i32 0, i32 0
  %t248 = load i1, ptr %t247, !tbaa !21
  br i1 %t248, label %bb41, label %bb42
bb41:
  %t250 = getelementptr %"compiler/prompt:Reply", ptr %l10, i32 0, i32 4
  %t251 = load { i64, ptr }, ptr %t250, !tbaa !27
  store { i64, ptr } %t251, ptr %l98, !tbaa !27
  br label %bb43
bb42:
  %t253 = getelementptr %"compiler/prompt:Reply", ptr %l10, i32 0, i32 1
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  store { i64, ptr } %t254, ptr %l98, !tbaa !27
  br label %bb43
bb43:
  %t256 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t256, ptr %l14, !tbaa !27
  %t257 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t259 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t257, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) })
  store i1 %t259, ptr %l102
  br label %bb44
bb44:
  %t260 = load i1, ptr %l102, !tbaa !21
  br i1 %t260, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s8
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i64, ptr %l2, !tbaa !24
  %t263 = load ptr, ptr %l3, !tbaa !29
  %t264 = load i64, ptr %l7, !tbaa !24
  %t265 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t266 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t268 = call i64 @__olang_fmt_i64(ptr null, i64 %t264)
  %t269 = add i64 %t266, %t268
  %t270 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t272 = add i64 %t269, %t271
  %t273 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t272)
  call void @olang_textcopy(ptr %t273, ptr %t265, i64 %t266)
  %t274 = getelementptr i8, ptr %t273, i64 %t266
  %t275 = call i64 @__olang_fmt_i64(ptr %t274, i64 %t264)
  %t276 = getelementptr i8, ptr %t274, i64 %t268
  call void @olang_textcopy(ptr %t276, ptr %t270, i64 %t271)
  %t277 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t273, 1
  %t280 = extractvalue { i64, ptr } %t278, 0
  %t281 = extractvalue { i64, ptr } %t278, 1
  %t282 = mul i64 %t280, 1
  %t283 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t282)
  call void @llvm.memcpy.p0.p0.i64(ptr %t283, ptr %t281, i64 %t282, i1 false)
  %t284 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t283, 1
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %v2, ptr %s8, ptr %s8, ptr %t261, i64 %t262, ptr %t263, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d134, i32 0, i32 1) }, { i64, ptr } %t285)
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb48:
  %t290 = getelementptr %"compiler/prompt:Reply", ptr %l10, i32 0, i32 0
  %t291 = load i1, ptr %t290, !tbaa !21
  br i1 %t291, label %bb49, label %bb50
bb49:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d135, i32 0, i32 1) }, ptr %l110, !tbaa !27
  br label %bb51
bb50:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d136, i32 0, i32 1) }, ptr %l110, !tbaa !27
  br label %bb51
bb51:
  %t293 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t293, ptr %l15, !tbaa !27
  %t294 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %l111
  br label %bb52
bb52:
  %t295 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l111
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t295, ptr %l16
  %t296 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t298 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v1, ptr %v1, { i64, ptr } %t296)
  store { i64, ptr } %t298, ptr %l113
  br label %bb53
bb53:
  %t299 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t300 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v1, ptr %v1, { i64, ptr } %t299)
  store %"std/prelude/text:LineIter" %t300, ptr %l114
  br label %bb54
bb54:
  %t301 = load %"std/prelude/text:LineIter", ptr %l114
  store %"std/prelude/text:LineIter" %t301, ptr %l17
  br label %bb55
bb55:
  %t303 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v1, ptr %v1, ptr %l17)
  %t304 = extractvalue { i32, { i64, ptr } } %t303, 1
  %t305 = extractvalue { i32, { i64, ptr } } %t303, 0
  store i32 %t305, ptr %l118
  %t306 = icmp ne i32 %t305, 0
  br i1 %t306, label %bb57, label %ok.307, !prof !99
ok.307:
  store { i64, ptr } %t304, ptr %l117
  br label %bb56
bb56:
  %t308 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t308, ptr %l115, !tbaa !27
  br label %bb59
bb57:
  %t309 = load i32, ptr %l118, !tbaa !23
  %t310 = ashr i32 %t309, 16
  %t312 = icmp eq i32 %t310, 1
  store i1 %t312, ptr %l120, !tbaa !21
  br label %bb58
bb58:
  br label %bb65
bb59:
  %t313 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t313, ptr %l18, !tbaa !27
  store ptr %l16, ptr %l121, !tbaa !29
  %t314 = ptrtoint ptr %s0 to i64
  store i64 %t314, ptr %l122, !tbaa !24
  %t315 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t315, label %bb60, label %bb61
bb60:
  %t317 = call ptr @__olang_region_make(ptr %s0)
  %t318 = ptrtoint ptr %t317 to i64
  store i64 %t318, ptr %l122, !tbaa !24
  br label %bb61
bb61:
  %t319 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t320 = load i64, ptr %l122
  %t321 = inttoptr i64 %t320 to ptr
  %t323 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v1, ptr %t321, { i64, ptr } %t319)
  store { i64, ptr } %t323, ptr %l125
  br label %bb62
bb62:
  %t324 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t325 = load i64, ptr %l122
  %t326 = inttoptr i64 %t325 to ptr
  %t327 = extractvalue { i64, ptr } %t324, 0
  %t328 = extractvalue { i64, ptr } %t324, 1
  %t329 = mul i64 %t327, 1
  %t330 = call ptr @__olang_scope_alloc(ptr %t326, i64 %t329)
  call void @llvm.memcpy.p0.p0.i64(ptr %t330, ptr %t328, i64 %t329, i1 false)
  %t331 = insertvalue { i64, ptr } undef, i64 %t327, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t330, 1
  %t333 = load ptr, ptr %l121, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t333, { i64, ptr } %t332)
  br label %bb63
bb63:
  br label %bb64
bb64:
  br label %bb55
bb65:
  %t335 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t335, ptr %l127, !tbaa !27
  %t336 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t338 = call { i64, ptr } @compiler_2fjupyter_2eFirstLine(ptr %v1, ptr %s0, { i64, ptr } %t336)
  store { i64, ptr } %t338, ptr %l129
  br label %bb66
bb66:
  %t339 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t339, 0
  %t341 = extractvalue { i64, ptr } %t339, 1
  %t342 = mul i64 %t340, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t342)
  call void @llvm.memcpy.p0.p0.i64(ptr %t343, ptr %t341, i64 %t342, i1 false)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  %t347 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %s0, ptr %s0, { i64, ptr } %t345)
  store { i64, ptr } %t347, ptr %l131
  br label %bb67
bb67:
  %t349 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %s0, ptr %l16, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d137, i32 0, i32 1) })
  store { i64, ptr } %t349, ptr %l133
  br label %bb68
bb68:
  %t350 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t351 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t352 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t352, 1
  %t354 = extractvalue { i64, ptr } %t352, 0
  %t355 = add i64 %t351, %t354
  %t356 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t357 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t358 = add i64 %t355, %t357
  %t359 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t360 = extractvalue { i64, ptr } %t359, 1
  %t361 = extractvalue { i64, ptr } %t359, 0
  %t362 = add i64 %t358, %t361
  %t363 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t364 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t365 = add i64 %t362, %t364
  %t366 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t367 = extractvalue { i64, ptr } %t366, 1
  %t368 = extractvalue { i64, ptr } %t366, 0
  %t369 = add i64 %t365, %t368
  %t370 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t371 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t372 = add i64 %t369, %t371
  %t373 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t372)
  call void @olang_textcopy(ptr %t373, ptr %t350, i64 %t351)
  %t374 = getelementptr i8, ptr %t373, i64 %t351
  call void @olang_textcopy(ptr %t374, ptr %t353, i64 %t354)
  %t375 = getelementptr i8, ptr %t374, i64 %t354
  call void @olang_textcopy(ptr %t375, ptr %t356, i64 %t357)
  %t376 = getelementptr i8, ptr %t375, i64 %t357
  call void @olang_textcopy(ptr %t376, ptr %t360, i64 %t361)
  %t377 = getelementptr i8, ptr %t376, i64 %t361
  call void @olang_textcopy(ptr %t377, ptr %t363, i64 %t364)
  %t378 = getelementptr i8, ptr %t377, i64 %t364
  call void @olang_textcopy(ptr %t378, ptr %t367, i64 %t368)
  %t379 = getelementptr i8, ptr %t378, i64 %t368
  call void @olang_textcopy(ptr %t379, ptr %t370, i64 %t371)
  %t380 = insertvalue { i64, ptr } undef, i64 %t372, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t373, 1
  store { i64, ptr } %t381, ptr %l19, !tbaa !27
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load ptr, ptr %l3, !tbaa !29
  %t386 = getelementptr %"compiler/jupyter:request", ptr %t384, i32 0, i32 1
  %t387 = load { i64, ptr }, ptr %t386, !tbaa !27
  %t388 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t389 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t392 = extractvalue { i64, ptr } %t388, 1
  %t393 = extractvalue { i64, ptr } %t388, 0
  %t394 = add i64 %t390, %t393
  %t395 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t396 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t397 = add i64 %t394, %t396
  %t398 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t397)
  call void @olang_textcopy(ptr %t398, ptr %t389, i64 %t390)
  %t399 = getelementptr i8, ptr %t398, i64 %t390
  call void @olang_textcopy(ptr %t399, ptr %t392, i64 %t393)
  %t400 = getelementptr i8, ptr %t399, i64 %t393
  call void @olang_textcopy(ptr %t400, ptr %t395, i64 %t396)
  %t401 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t398, 1
  %t404 = extractvalue { i64, ptr } %t402, 0
  %t405 = extractvalue { i64, ptr } %t402, 1
  %t406 = mul i64 %t404, 1
  %t407 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t406)
  call void @llvm.memcpy.p0.p0.i64(ptr %t407, ptr %t405, i64 %t406, i1 false)
  %t408 = insertvalue { i64, ptr } undef, i64 %t404, 0
  %t409 = insertvalue { i64, ptr } %t408, ptr %t407, 1
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2epublish(ptr %v0, ptr %s0, ptr %v2, ptr %s0, ptr %t383, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d144, i32 0, i32 1) }, { i64, ptr } %t387, { i64, ptr } %t409)
  br label %bb69
bb69:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t414 = load i64, ptr %l2, !tbaa !24
  %t415 = load ptr, ptr %l3, !tbaa !29
  %t416 = load i64, ptr %l7, !tbaa !24
  %t417 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t418 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t421 = call i64 @__olang_fmt_i64(ptr null, i64 %t416)
  %t422 = add i64 %t419, %t421
  %t423 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t424 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t425 = add i64 %t422, %t424
  %t427 = extractvalue { i64, ptr } %t417, 1
  %t428 = extractvalue { i64, ptr } %t417, 0
  %t429 = add i64 %t425, %t428
  %t430 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t431 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t432 = add i64 %t429, %t431
  %t433 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t432)
  call void @olang_textcopy(ptr %t433, ptr %t418, i64 %t419)
  %t434 = getelementptr i8, ptr %t433, i64 %t419
  %t435 = call i64 @__olang_fmt_i64(ptr %t434, i64 %t416)
  %t436 = getelementptr i8, ptr %t434, i64 %t421
  call void @olang_textcopy(ptr %t436, ptr %t423, i64 %t424)
  %t437 = getelementptr i8, ptr %t436, i64 %t424
  call void @olang_textcopy(ptr %t437, ptr %t427, i64 %t428)
  %t438 = getelementptr i8, ptr %t437, i64 %t428
  call void @olang_textcopy(ptr %t438, ptr %t430, i64 %t431)
  %t439 = insertvalue { i64, ptr } undef, i64 %t432, 0
  %t440 = insertvalue { i64, ptr } %t439, ptr %t433, 1
  %t442 = extractvalue { i64, ptr } %t440, 0
  %t443 = extractvalue { i64, ptr } %t440, 1
  %t444 = mul i64 %t442, 1
  %t445 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t444)
  call void @llvm.memcpy.p0.p0.i64(ptr %t445, ptr %t443, i64 %t444, i1 false)
  %t446 = insertvalue { i64, ptr } undef, i64 %t442, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t445, 1
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %v2, ptr %s0, ptr %s0, ptr %t413, i64 %t414, ptr %t415, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d148, i32 0, i32 1) }, { i64, ptr } %t447)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eframes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %lp10 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l34 = alloca i64
  %l40 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eheader(ptr %v0, ptr %v2, ptr %v5, ptr %t1, { i64, ptr } %a2)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 16, i64 8)
  store ptr %t6, ptr %lp5
  %t7 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t8 = load ptr, ptr %lp5
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store ptr %t10, ptr %lp6
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  %t12 = load ptr, ptr %lp6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  store { i64, ptr } %a1, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l9, !tbaa !24
  br label %bb3
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l9, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t27, ptr %l22, !tbaa !27
  %t28 = load i64, ptr %l8, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %t31, i64 %t28
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !37
  store { i64, ptr } %t33, ptr %l24, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l25, !tbaa !24
  %t36 = load i64, ptr %l25, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l26, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l25, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 16, i64 8)
  store ptr %t47, ptr %lp10
  %t48 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t49 = load ptr, ptr %lp10
  store { i64, ptr } %t48, ptr %t49, !tbaa !27
  %t50 = load ptr, ptr %lp6
  %t51 = load ptr, ptr %lp10
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v5, ptr %v5, ptr %t50, { i64, ptr } %t52)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l8, !tbaa !24
  br label %bb3
bb9:
  %t59 = load ptr, ptr %lp6
  %t60 = load { i64, ptr }, ptr @G_2ecompiler_2fjupyter_2eDelimiter, !tbaa !27
  %t61 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v5, ptr %t61, ptr %t59, { i64, ptr } %t60)
  br label %bb10
bb10:
  %t64 = load ptr, ptr %lp6
  store ptr %t64, ptr %l33, !tbaa !29
  %t65 = ptrtoint ptr %v5 to i64
  store i64 %t65, ptr %l34, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = call ptr @__olang_region_make(ptr %v5)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %lp5
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t75 = load i64, ptr %l34
  %t76 = inttoptr i64 %t75 to ptr
  %t81 = call { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2esign(ptr %v0, ptr %v5, ptr %v3, ptr %s0, ptr %v4, ptr %t76, ptr %t70, { i64, ptr } %t72, { i64, ptr } %t73, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d149, i32 0, i32 1) }, { i64, ptr } %t74)
  store { i64, ptr } %t81, ptr %l40
  br label %bb13
bb13:
  %t82 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t83 = load i64, ptr %l34
  %t84 = inttoptr i64 %t83 to ptr
  %t85 = extractvalue { i64, ptr } %t82, 0
  %t86 = extractvalue { i64, ptr } %t82, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %t84, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = load ptr, ptr %l33, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v5, ptr %v5, ptr %t91, { i64, ptr } %t90)
  br label %bb14
bb14:
  %t93 = load ptr, ptr %lp6
  %t94 = load ptr, ptr %lp5
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v5, ptr %v5, ptr %t93, { i64, ptr } %t95)
  br label %bb15
bb15:
  %t98 = load ptr, ptr %lp6
  %t99 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v5, ptr %v3, ptr %t98, { i64, ptr } %t99)
  br label %bb16
bb16:
  %t102 = load ptr, ptr %lp6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v5, ptr %v5, ptr %t102, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d150, i32 0, i32 1) })
  br label %bb17
bb17:
  %t104 = load ptr, ptr %lp6
  %t105 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v5, ptr %v4, ptr %t104, { i64, ptr } %t105)
  br label %bb18
bb18:
  %t108 = load ptr, ptr %lp6
  %t110 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v5, ptr %v5, ptr %t108)
  store { i64, ptr } %t110, ptr %l50
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t111 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t111, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ehandle(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca %"compiler/jupyter:request"
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l17 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l44 = alloca i32
  %l46 = alloca i1
  %l55 = alloca i1
  %l59 = alloca %"compiler/jupyter:request"
  %l62 = alloca %"compiler/jupyter:request"
  %l63 = alloca i32
  %l65 = alloca i1
  %l67 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i32
  %l73 = alloca i1
  %l81 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i64
  %l84 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l88 = alloca i1
  %l95 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i64
  %l98 = alloca ptr
  %l100 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l104 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i64
  %l107 = alloca ptr
  %l110 = alloca { i64, ptr }
  %l113 = alloca i1
  %l118 = alloca i1
  %l123 = alloca i1
  %l128 = alloca i1
  %l133 = alloca i1
  %l134 = alloca i1
  %l136 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l139 = alloca i32
  %l141 = alloca i1
  %l144 = alloca i1
  %l145 = alloca i32
  %l147 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %t137 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/jupyter:kernel", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l17
  br label %bb1
bb1:
  %t8 = load i64, ptr %l17, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2fjupyter_2eHeartbeat, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l21
  br label %bb4
bb3:
  br label %bb21
bb4:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l5
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  store i64 %t21, ptr %l8, !tbaa !24
  br label %bb5
bb5:
  %t23 = load i64, ptr %l7, !tbaa !24
  %t24 = load i64, ptr %l8, !tbaa !24
  %t27 = icmp slt i64 %t23, %t24
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t31 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t31, ptr %l29, !tbaa !27
  %t32 = load i64, ptr %l7, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %t35, i64 %t32
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !37
  store { i64, ptr } %t37, ptr %l31, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l32, !tbaa !24
  %t40 = load i64, ptr %l32, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l33, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l32, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l33, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s1, ptr %s1, ptr %l5, { i64, ptr } %t51)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t55 = load i64, ptr %l7, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l7, !tbaa !24
  br label %bb5
bb11:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/jupyter:kernel", ptr %t59, i32 0, i32 4
  %t62 = load i64, ptr %l2, !tbaa !24
  %t65 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRefMut_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l41
  br label %bb12
bb12:
  %t67 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s1, ptr %s1, ptr %l5)
  store { i64, ptr } %t67, ptr %l43
  br label %bb13
bb13:
  %t68 = load ptr, ptr %l41, !tbaa !29
  %t69 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t70 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eSend(ptr %v0, ptr %s1, ptr %t68, { i64, ptr } %t69)
  store i32 %t70, ptr %l44
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb15, label %ok.72, !prof !99
ok.72:
  br label %bb14
bb14:
  br label %bb20
bb15:
  %t73 = load i32, ptr %l44, !tbaa !23
  %t74 = ashr i32 %t73, 16
  %t76 = icmp eq i32 %t74, 1
  store i1 %t76, ptr %l46, !tbaa !21
  %t77 = load i32, ptr %l44, !tbaa !23
  %t78 = ashr i32 %t77, 16
  %t80 = icmp eq i32 %t78, 1
  br i1 %t80, label %bb16, label %bb17
bb16:
  call void @__olang_errpay_pop()
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/jupyter:kernel", ptr %t82, i32 0, i32 5
  %t85 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t84, i64 %t85, i64 -1)
  br label %bb19
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb21:
  %t88 = load i64, ptr %l4, !tbaa !24
  %t89 = load i64, ptr @G_2ecompiler_2fjupyter_2eShell, !tbaa !24
  %t92 = icmp ne i64 %t88, %t89
  br i1 %t92, label %bb22, label %bb23
bb22:
  %t94 = load i64, ptr %l4, !tbaa !24
  %t95 = load i64, ptr @G_2ecompiler_2fjupyter_2eControl, !tbaa !24
  %t98 = icmp ne i64 %t94, %t95
  store i1 %t98, ptr %l55, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t100 = load i1, ptr %l55, !tbaa !21
  br i1 %t100, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  br label %bb27
bb27:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t105 = call { i32, %"compiler/jupyter:request" } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eread(ptr %v0, ptr %v2, ptr %s0, ptr %t101, { i64, ptr } %t102)
  %t106 = extractvalue { i32, %"compiler/jupyter:request" } %t105, 1
  %t107 = extractvalue { i32, %"compiler/jupyter:request" } %t105, 0
  store i32 %t107, ptr %l63
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb29, label %ok.109, !prof !99
ok.109:
  store %"compiler/jupyter:request" %t106, ptr %l62
  br label %bb28
bb28:
  %t110 = load %"compiler/jupyter:request", ptr %l62
  store %"compiler/jupyter:request" %t110, ptr %l59
  br label %bb31
bb29:
  %t111 = load i32, ptr %l63, !tbaa !23
  %t112 = ashr i32 %t111, 16
  %t114 = icmp eq i32 %t112, 1
  store i1 %t114, ptr %l65, !tbaa !21
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  %t115 = load %"compiler/jupyter:request", ptr %l59
  store %"compiler/jupyter:request" %t115, ptr %l10
  %t117 = call { i64, ptr } @compiler_2fjupyter_2ekindOf(ptr %s0, ptr %s0, ptr %l10)
  store { i64, ptr } %t117, ptr %l67
  br label %bb32
bb32:
  %t118 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t118, ptr %l11, !tbaa !27
  %t119 = getelementptr %"compiler/jupyter:request", ptr %l10, i32 0, i32 2
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  %t122 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %s0, ptr %s0, { i64, ptr } %t120)
  %t123 = extractvalue { i32, ptr } %t122, 1
  %t124 = extractvalue { i32, ptr } %t122, 0
  store i32 %t124, ptr %l71
  %t125 = icmp ne i32 %t124, 0
  br i1 %t125, label %bb34, label %ok.126, !prof !99
ok.126:
  store ptr %t123, ptr %l70
  br label %bb33
bb33:
  %t127 = load ptr, ptr %l70, !tbaa !29
  store ptr %t127, ptr %l68, !tbaa !29
  br label %bb38
bb34:
  %t128 = load i32, ptr %l71, !tbaa !23
  %t129 = ashr i32 %t128, 16
  %t131 = icmp eq i32 %t129, 1
  store i1 %t131, ptr %l73, !tbaa !21
  %t132 = load i32, ptr %l71, !tbaa !23
  %t133 = ashr i32 %t132, 16
  %t135 = icmp eq i32 %t133, 1
  br i1 %t135, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  store { i64, [2 x i64] } zeroinitializer, ptr %t137
  %t138 = getelementptr { i64, [2 x i64] }, ptr %t137, i32 0, i32 0
  store i64 0, ptr %t138
  %t139 = load { i64, [2 x i64] }, ptr %t137
  %t141 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t139, ptr %t141
  store ptr %t141, ptr %l68, !tbaa !29
  br label %bb38
bb38:
  %t143 = load ptr, ptr %l68, !tbaa !29
  store ptr %t143, ptr %l12, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/jupyter:request", ptr %l10, i32 0, i32 1
  %t146 = load { i64, ptr }, ptr %t145, !tbaa !27
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2epublish(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t144, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d151, i32 0, i32 1) }, { i64, ptr } %t146, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d152, i32 0, i32 1) })
  br label %bb39
bb39:
  %t149 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t151 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t149, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d153, i32 0, i32 1) })
  store i1 %t151, ptr %l81
  br label %bb40
bb40:
  %t152 = load i1, ptr %l81, !tbaa !21
  br i1 %t152, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb46
bb43:
  store %olang.scope zeroinitializer, ptr %s8
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l82, !tbaa !29
  %t154 = load i64, ptr %l2, !tbaa !24
  store i64 %t154, ptr %l83, !tbaa !24
  store ptr %l10, ptr %l84, !tbaa !29
  %t155 = call { i64, ptr } @compiler_2fjupyter_2ekernelInfo(ptr %s8)
  store { i64, ptr } %t155, ptr %l85
  br label %bb44
bb44:
  %t156 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t163 = load ptr, ptr %l82, !tbaa !29
  %t164 = load i64, ptr %l83, !tbaa !24
  %t165 = load ptr, ptr %l84, !tbaa !29
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %s0, ptr %s8, ptr %s8, ptr %t163, i64 %t164, ptr %t165, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d154, i32 0, i32 1) }, { i64, ptr } %t162)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s8)
  br label %bb112
bb46:
  %t167 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t169 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t167, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d155, i32 0, i32 1) })
  store i1 %t169, ptr %l88
  br label %bb47
bb47:
  %t170 = load i1, ptr %l88, !tbaa !21
  br i1 %t170, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t173 = load i64, ptr %l2, !tbaa !24
  %t174 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eexecute(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %v3, ptr %t171, ptr %t172, i64 %t173, ptr %l10, ptr %t174)
  br label %bb51
bb51:
  br label %bb112
bb52:
  %t180 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t182 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t180, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d156, i32 0, i32 1) })
  store i1 %t182, ptr %l95
  br label %bb53
bb53:
  %t183 = load i1, ptr %l95, !tbaa !21
  br i1 %t183, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb60
bb56:
  store %olang.scope zeroinitializer, ptr %s10
  %t184 = load ptr, ptr %l0, !tbaa !29
  store ptr %t184, ptr %l96, !tbaa !29
  %t185 = load i64, ptr %l2, !tbaa !24
  store i64 %t185, ptr %l97, !tbaa !24
  store ptr %l10, ptr %l98, !tbaa !29
  %t186 = load ptr, ptr %l12, !tbaa !29
  %t188 = call { i64, ptr } @compiler_2fjupyter_2estr(ptr %s0, ptr %s10, ptr %s0, ptr %t186, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d157, i32 0, i32 1) })
  store { i64, ptr } %t188, ptr %l100
  br label %bb57
bb57:
  %t189 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t190 = call { i64, ptr } @compiler_2fjupyter_2eisComplete(ptr %s0, ptr %s10, { i64, ptr } %t189)
  store { i64, ptr } %t190, ptr %l101
  br label %bb58
bb58:
  %t191 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  %t193 = extractvalue { i64, ptr } %t191, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t198 = load ptr, ptr %l96, !tbaa !29
  %t199 = load i64, ptr %l97, !tbaa !24
  %t200 = load ptr, ptr %l98, !tbaa !29
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %s0, ptr %s10, ptr %s10, ptr %t198, i64 %t199, ptr %t200, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d158, i32 0, i32 1) }, { i64, ptr } %t197)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s10)
  br label %bb112
bb60:
  %t202 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t204 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t202, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d159, i32 0, i32 1) })
  store i1 %t204, ptr %l104
  br label %bb61
bb61:
  %t205 = load i1, ptr %l104, !tbaa !21
  br i1 %t205, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb67
bb64:
  store %olang.scope zeroinitializer, ptr %s11
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l105, !tbaa !29
  %t207 = load i64, ptr %l2, !tbaa !24
  store i64 %t207, ptr %l106, !tbaa !24
  store ptr %l10, ptr %l107, !tbaa !29
  %t208 = load ptr, ptr %l1, !tbaa !29
  %t209 = load ptr, ptr %l12, !tbaa !29
  %t212 = call { i64, ptr } @compiler_2fjupyter_2ecomplete(ptr %v1, ptr %s0, ptr %s11, ptr %t208, ptr %t209)
  store { i64, ptr } %t212, ptr %l110
  br label %bb65
bb65:
  %t213 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 0
  %t215 = extractvalue { i64, ptr } %t213, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  %t220 = load ptr, ptr %l105, !tbaa !29
  %t221 = load i64, ptr %l106, !tbaa !24
  %t222 = load ptr, ptr %l107, !tbaa !29
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %s0, ptr %s11, ptr %s11, ptr %t220, i64 %t221, ptr %t222, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d160, i32 0, i32 1) }, { i64, ptr } %t219)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s11)
  br label %bb112
bb67:
  %t224 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t226 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t224, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d161, i32 0, i32 1) })
  store i1 %t226, ptr %l113
  br label %bb68
bb68:
  %t227 = load i1, ptr %l113, !tbaa !21
  br i1 %t227, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb73
bb71:
  store %olang.scope zeroinitializer, ptr %s12
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %s0, ptr %s12, ptr %s12, ptr %t228, i64 %t229, ptr %l10, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d162, i32 0, i32 1) }, { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d163, i32 0, i32 1) })
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s12)
  br label %bb112
bb73:
  %t233 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t235 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t233, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d164, i32 0, i32 1) })
  store i1 %t235, ptr %l118
  br label %bb74
bb74:
  %t236 = load i1, ptr %l118, !tbaa !21
  br i1 %t236, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb79
bb77:
  store %olang.scope zeroinitializer, ptr %s13
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %s0, ptr %s13, ptr %s13, ptr %t237, i64 %t238, ptr %l10, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d165, i32 0, i32 1) }, { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d166, i32 0, i32 1) })
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s13)
  br label %bb112
bb79:
  %t242 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t244 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t242, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d167, i32 0, i32 1) })
  store i1 %t244, ptr %l123
  br label %bb80
bb80:
  %t245 = load i1, ptr %l123, !tbaa !21
  br i1 %t245, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb85
bb83:
  store %olang.scope zeroinitializer, ptr %s14
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %s0, ptr %s14, ptr %s14, ptr %t246, i64 %t247, ptr %l10, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d168, i32 0, i32 1) }, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d169, i32 0, i32 1) })
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s14)
  br label %bb112
bb85:
  %t251 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t253 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t251, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d170, i32 0, i32 1) })
  store i1 %t253, ptr %l128
  br label %bb86
bb86:
  %t254 = load i1, ptr %l128, !tbaa !21
  br i1 %t254, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb91
bb89:
  store %olang.scope zeroinitializer, ptr %s15
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %s0, ptr %s15, ptr %s15, ptr %t255, i64 %t256, ptr %l10, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d171, i32 0, i32 1) }, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d172, i32 0, i32 1) })
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s15)
  br label %bb112
bb91:
  %t260 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t262 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t260, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store i1 %t262, ptr %l133
  br label %bb92
bb92:
  %t263 = load i1, ptr %l133, !tbaa !21
  br i1 %t263, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb107
bb95:
  store %olang.scope zeroinitializer, ptr %s16
  %t264 = load ptr, ptr %l12, !tbaa !29
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d174, i32 0, i32 1) }, ptr %l136, !tbaa !27
  %t265 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t268 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t264, { i64, ptr } %t265)
  %t269 = extractvalue { i32, ptr } %t268, 1
  %t270 = extractvalue { i32, ptr } %t268, 0
  store i32 %t270, ptr %l139
  %t271 = icmp ne i32 %t270, 0
  br i1 %t271, label %bb97, label %ok.272, !prof !99
ok.272:
  store ptr %t269, ptr %l138
  br label %bb96
bb96:
  %t273 = load ptr, ptr %l138, !tbaa !29
  %t274 = call { i32, i1 } @std_2fjson_2estd_2fjson_3aJson_2eAsBool(ptr %s0, ptr %t273)
  %t275 = extractvalue { i32, i1 } %t274, 1
  %t276 = extractvalue { i32, i1 } %t274, 0
  store i32 %t276, ptr %l145
  %t277 = icmp ne i32 %t276, 0
  br i1 %t277, label %bb102, label %ok.278, !prof !99
ok.278:
  store i1 %t275, ptr %l144
  br label %bb101
bb97:
  %t279 = load i32, ptr %l139, !tbaa !23
  %t280 = ashr i32 %t279, 16
  %t282 = icmp eq i32 %t280, 1
  store i1 %t282, ptr %l141, !tbaa !21
  %t283 = load i32, ptr %l139, !tbaa !23
  %t284 = ashr i32 %t283, 16
  %t286 = icmp eq i32 %t284, 1
  br i1 %t286, label %bb98, label %bb99
bb98:
  call void @__olang_errpay_pop()
  br label %bb99
bb99:
  br label %bb100
bb100:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb105
bb101:
  %t288 = load i1, ptr %l144, !tbaa !21
  store i1 %t288, ptr %l134, !tbaa !21
  br label %bb105
bb102:
  %t289 = load i32, ptr %l145, !tbaa !23
  %t290 = ashr i32 %t289, 16
  %t292 = icmp eq i32 %t290, 1
  store i1 %t292, ptr %l147, !tbaa !21
  %t293 = load i32, ptr %l145, !tbaa !23
  %t294 = ashr i32 %t293, 16
  %t296 = icmp eq i32 %t294, 1
  br i1 %t296, label %bb103, label %bb104
bb103:
  call void @__olang_errpay_pop()
  br label %bb104
bb104:
  br label %bb100
bb105:
  %t298 = load i1, ptr %l134, !tbaa !21
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load i64, ptr %l2, !tbaa !24
  %t302 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t303 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t305 = select i1 %t298, ptr @.c176, ptr @.c177
  %t306 = select i1 %t298, i64 4, i64 5
  %t307 = add i64 %t303, %t306
  %t308 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t309 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t310 = add i64 %t307, %t309
  %t311 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t310)
  call void @olang_textcopy(ptr %t311, ptr %t302, i64 %t303)
  %t312 = getelementptr i8, ptr %t311, i64 %t303
  call void @olang_textcopy(ptr %t312, ptr %t305, i64 %t306)
  %t313 = getelementptr i8, ptr %t312, i64 %t306
  call void @olang_textcopy(ptr %t313, ptr %t308, i64 %t309)
  %t314 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t311, 1
  %t317 = extractvalue { i64, ptr } %t315, 0
  %t318 = extractvalue { i64, ptr } %t315, 1
  %t319 = mul i64 %t317, 1
  %t320 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t319)
  call void @llvm.memcpy.p0.p0.i64(ptr %t320, ptr %t318, i64 %t319, i1 false)
  %t321 = insertvalue { i64, ptr } undef, i64 %t317, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t320, 1
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %s0, ptr %s16, ptr %s16, ptr %t299, i64 %t300, ptr %l10, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d179, i32 0, i32 1) }, { i64, ptr } %t322)
  br label %bb106
bb106:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/jupyter:kernel", ptr %t327, i32 0, i32 6
  store i1 true, ptr %t329, !tbaa !21
  call void @__olang_scope_close(ptr %s16)
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
  call void @__olang_check_failed(ptr @olang_loc_62bbb1ef982cce0d_1ddca4bbad92f791)
  unreachable
bb112:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/jupyter:request", ptr %l10, i32 0, i32 1
  %t332 = load { i64, ptr }, ptr %t331, !tbaa !27
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2epublish(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t330, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d180, i32 0, i32 1) }, { i64, ptr } %t332, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d181, i32 0, i32 1) })
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eheader(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca ptr
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/jupyter:kernel", ptr %t2, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t9 = getelementptr %"compiler/jupyter:kernel", ptr %t8, i32 0, i32 3
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t11, ptr %l2
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/jupyter:kernel", ptr %t12, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/jupyter:kernel", ptr %t16, i32 0, i32 3
  %t19 = load i64, ptr %t18, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/jupyter:kernel", ptr %t20, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t24 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t27 = extractvalue { i64, ptr } %t15, 1
  %t28 = extractvalue { i64, ptr } %t15, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = call i64 @__olang_fmt_i64(ptr null, i64 %t19)
  %t35 = add i64 %t32, %t34
  %t36 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t40 = extractvalue { i64, ptr } %t23, 1
  %t41 = extractvalue { i64, ptr } %t23, 0
  %t42 = add i64 %t38, %t41
  %t43 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t24, i64 %t25)
  %t47 = getelementptr i8, ptr %t46, i64 %t25
  call void @olang_textcopy(ptr %t47, ptr %t27, i64 %t28)
  %t48 = getelementptr i8, ptr %t47, i64 %t28
  call void @olang_textcopy(ptr %t48, ptr %t30, i64 %t31)
  %t49 = getelementptr i8, ptr %t48, i64 %t31
  %t50 = call i64 @__olang_fmt_i64(ptr %t49, i64 %t19)
  %t51 = getelementptr i8, ptr %t49, i64 %t34
  call void @olang_textcopy(ptr %t51, ptr %t36, i64 %t37)
  %t52 = getelementptr i8, ptr %t51, i64 %t37
  call void @olang_textcopy(ptr %t52, ptr %t40, i64 %t41)
  %t53 = getelementptr i8, ptr %t52, i64 %t41
  call void @olang_textcopy(ptr %t53, ptr %t43, i64 %t44)
  %t54 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t46, 1
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t58 = extractvalue { i64, ptr } %t55, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t62)
  br label %bb2
bb2:
  store ptr %l2, ptr %l16, !tbaa !29
  %t65 = call { i64, ptr } @compiler_2fjupyter_2eisoNow(ptr %s0)
  store { i64, ptr } %t65, ptr %l17
  br label %bb3
bb3:
  %t67 = load { i64, ptr }, ptr @G_2ecompiler_2fjupyter_2eProtocol, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t75 = extractvalue { i64, ptr } %a1, 1
  %t76 = extractvalue { i64, ptr } %a1, 0
  %t77 = add i64 %t73, %t76
  %t78 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t80 = add i64 %t77, %t79
  %t82 = extractvalue { i64, ptr } %t67, 1
  %t83 = extractvalue { i64, ptr } %t67, 0
  %t84 = add i64 %t80, %t83
  %t85 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t87 = add i64 %t84, %t86
  %t88 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t87)
  call void @olang_textcopy(ptr %t88, ptr %t69, i64 %t70)
  %t89 = getelementptr i8, ptr %t88, i64 %t70
  call void @olang_textcopy(ptr %t89, ptr %t71, i64 %t72)
  %t90 = getelementptr i8, ptr %t89, i64 %t72
  call void @olang_textcopy(ptr %t90, ptr %t75, i64 %t76)
  %t91 = getelementptr i8, ptr %t90, i64 %t76
  call void @olang_textcopy(ptr %t91, ptr %t78, i64 %t79)
  %t92 = getelementptr i8, ptr %t91, i64 %t79
  call void @olang_textcopy(ptr %t92, ptr %t82, i64 %t83)
  %t93 = getelementptr i8, ptr %t92, i64 %t83
  call void @olang_textcopy(ptr %t93, ptr %t85, i64 %t86)
  %t94 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t88, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = extractvalue { i64, ptr } %t95, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %l16, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t103, { i64, ptr } %t102)
  br label %bb4
bb4:
  %t106 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t106, ptr %l23
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t107 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t107, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2einterrupted(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca %"compiler/jupyter:request"
  %l16 = alloca { i64, ptr }
  %l19 = alloca i64
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l67 = alloca i32
  %l69 = alloca i1
  %l75 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l81 = alloca i32
  %l85 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i64
  %l89 = alloca i64
  %l92 = alloca { i64, ptr }
  %l93 = alloca i64
  %l95 = alloca i64
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l101 = alloca { i64, ptr }
  %l102 = alloca i64
  %l103 = alloca { i64, ptr }
  %l105 = alloca %"compiler/jupyter:pending"
  %l107 = alloca %"compiler/jupyter:pending"
  %l113 = alloca i64
  %l117 = alloca i64
  %l120 = alloca i64
  %l138 = alloca %"compiler/jupyter:request"
  %l139 = alloca ptr
  %l143 = alloca ptr
  %l146 = alloca %"compiler/jupyter:request"
  %l147 = alloca i32
  %l149 = alloca i1
  %l151 = alloca { i64, ptr }
  %l153 = alloca i1
  %l154 = alloca i1
  %l156 = alloca i1
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca i1
  %t162 = alloca %olang.slotscope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/jupyter:kernel", ptr %t1, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2eLen__H3ed9013f6604c7fc0e46a0318571cb25(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i64, ptr %l19, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/jupyter:kernel", ptr %t7, i32 0, i32 4
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eLen_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l22
  br label %bb2
bb2:
  %t12 = load i64, ptr %l22, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l29, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l29, !tbaa !24
  store i64 %t39, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l26, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb58
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/jupyter:kernel", ptr %t59, i32 0, i32 5
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l50
  br label %bb13
bb13:
  %t66 = load i64, ptr @G_2ecompiler_2fjupyter_2eControl, !tbaa !24
  %t67 = load i64, ptr %l50, !tbaa !24
  %t69 = icmp ne i64 %t67, %t66
  br i1 %t69, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb19
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/jupyter:kernel", ptr %t71, i32 0, i32 4
  %t74 = load i64, ptr %l7, !tbaa !24
  %t77 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRef_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v0, ptr %t73, i64 %t74)
  store ptr %t77, ptr %l57
  br label %bb16
bb16:
  %t78 = load ptr, ptr %l57, !tbaa !29
  %t79 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eFd(ptr %v0, ptr %t78)
  store i32 %t79, ptr %l58
  br label %bb17
bb17:
  %t80 = mul i64 1, 4
  %t81 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t80)
  %t82 = insertvalue { i64, ptr } undef, i64 1, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  store { i64, ptr } %t83, ptr %l59, !tbaa !27
  %t84 = load i32, ptr %l58, !tbaa !23
  %t85 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 0
  store i32 %t84, ptr %t87, !tbaa !33
  %t88 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t89 = call { i64, ptr } @std_2fnet_2eReadable(ptr %s2, ptr %s2, { i64, ptr } %t88, i64 0)
  store { i64, ptr } %t89, ptr %l60
  br label %bb18
bb18:
  %t90 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i1, ptr %t91, i64 0
  %t93 = load i1, ptr %t92, !tbaa !31
  %t95 = xor i1 %t93, true
  store i1 %t95, ptr %l53, !tbaa !21
  br label %bb19
bb19:
  %t97 = load i1, ptr %l53, !tbaa !21
  br i1 %t97, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb57
bb21:
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/jupyter:kernel", ptr %t98, i32 0, i32 4
  %t101 = load i64, ptr %l7, !tbaa !24
  %t104 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRefMut_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v0, ptr %t100, i64 %t101)
  store ptr %t104, ptr %l66
  br label %bb23
bb23:
  %t105 = load ptr, ptr %l66, !tbaa !29
  %t106 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eFill(ptr %v0, ptr %t105)
  store i32 %t106, ptr %l67
  %t107 = icmp ne i32 %t106, 0
  br i1 %t107, label %bb25, label %ok.108, !prof !99
ok.108:
  br label %bb24
bb24:
  br label %bb30
bb25:
  %t109 = load i32, ptr %l67, !tbaa !23
  %t110 = ashr i32 %t109, 16
  %t112 = icmp eq i32 %t110, 1
  store i1 %t112, ptr %l69, !tbaa !21
  %t113 = load i32, ptr %l67, !tbaa !23
  %t114 = ashr i32 %t113, 16
  %t116 = icmp eq i32 %t114, 1
  br i1 %t116, label %bb26, label %bb27
bb26:
  call void @__olang_errpay_pop()
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/jupyter:kernel", ptr %t118, i32 0, i32 5
  %t121 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t120, i64 %t121, i64 -1)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb57
bb30:
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/jupyter:kernel", ptr %t124, i32 0, i32 4
  %t127 = load i64, ptr %l7, !tbaa !24
  %t130 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRefMut_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v0, ptr %t126, i64 %t127)
  store ptr %t130, ptr %l79
  br label %bb32
bb32:
  %t131 = load ptr, ptr %l79, !tbaa !29
  %t132 = call { i32, { i64, ptr } } @std_2fzmtp_2estd_2fzmtp_3aSocket_2eNext(ptr %v0, ptr %s5, ptr %t131)
  %t133 = extractvalue { i32, { i64, ptr } } %t132, 1
  %t134 = extractvalue { i32, { i64, ptr } } %t132, 0
  store i32 %t134, ptr %l81
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb34, label %ok.136, !prof !99
ok.136:
  store { i64, ptr } %t133, ptr %l80
  br label %bb33
bb33:
  %t137 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t137, ptr %l75, !tbaa !27
  br label %bb39
bb34:
  %t138 = load i32, ptr %l81, !tbaa !23
  %t139 = ashr i32 %t138, 16
  %t141 = icmp eq i32 %t139, 1
  br i1 %t141, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  %t143 = load i32, ptr %l81, !tbaa !23
  %t144 = ashr i32 %t143, 16
  %t146 = icmp eq i32 %t144, 2
  store i1 %t146, ptr %l85, !tbaa !21
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s5)
  br label %bb56
bb38:
  call void @__olang_scope_close(ptr %s5)
  br label %bb56
bb39:
  %t147 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t147, ptr %l8, !tbaa !27
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/jupyter:kernel", ptr %t148, i32 0, i32 7
  store ptr %t150, ptr %l87, !tbaa !29
  %t151 = load i64, ptr %l7, !tbaa !24
  store i64 %t151, ptr %l88, !tbaa !24
  %t152 = ptrtoint ptr %s5 to i64
  store i64 %t152, ptr %l89, !tbaa !24
  %t153 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3apending_2e1
  br i1 %t153, label %bb40, label %bb41
bb40:
  %t155 = call ptr @__olang_region_make_part(ptr %s5)
  %t156 = ptrtoint ptr %t155 to i64
  store i64 %t156, ptr %l89, !tbaa !24
  br label %bb41
bb41:
  %t157 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t157, ptr %l92, !tbaa !27
  %t159 = ptrtoint ptr %s5 to i64
  store i64 %t159, ptr %l93, !tbaa !24
  %t160 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_3e_2e_2d1
  br i1 %t160, label %bb42, label %bb43
bb42:
  store %olang.slotscope zeroinitializer, ptr %t162
  store ptr @__olang_slot_chunk, ptr %t162
  %t163 = getelementptr %olang.scope, ptr %t162, i32 0, i32 2
  store ptr %s5, ptr %t163
  %t164 = ptrtoint ptr %t162 to i64
  store i64 %t164, ptr %l93, !tbaa !24
  br label %bb43
bb43:
  %t165 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  store i64 %t166, ptr %l95, !tbaa !24
  %t167 = load i64, ptr %l95, !tbaa !24
  %t168 = mul i64 %t167, 16
  %t169 = load i64, ptr %l89
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = call ptr @__olang_scope_alloc(ptr %t170, i64 %t168)
  %t172 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  store { i64, ptr } %t173, ptr %l96, !tbaa !27
  store i64 0, ptr %l97, !tbaa !24
  br label %bb44
bb44:
  %t174 = load i64, ptr %l97, !tbaa !24
  %t175 = load i64, ptr %l95, !tbaa !24
  %t176 = icmp slt i64 %t174, %t175
  br i1 %t176, label %bb45, label %bb46
bb45:
  %t178 = load i64, ptr %l97, !tbaa !24
  %t179 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr { i64, ptr }, ptr %t180, i64 %t178
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !37
  %t183 = extractvalue { i64, ptr } %t182, 0
  %t185 = icmp sgt i64 %t183, 0
  br i1 %t185, label %bb49, label %bb47
bb46:
  %t187 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t187, ptr %l92, !tbaa !27
  %t188 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3apending_2e1
  br i1 %t188, label %bb50, label %bb51
bb47:
  %t190 = load i64, ptr %l97, !tbaa !24
  %t191 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr { i64, ptr }, ptr %t192, i64 %t190
  store { i64, ptr } zeroinitializer, ptr %t193, !tbaa !37
  br label %bb48
bb48:
  %t194 = load i64, ptr %l97, !tbaa !24
  %t195 = add i64 %t194, 1
  store i64 %t195, ptr %l97, !tbaa !24
  br label %bb44
bb49:
  %t196 = load i64, ptr %l97, !tbaa !24
  %t197 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %t198, i64 %t196
  %t200 = load { i64, ptr }, ptr %t199, !tbaa !37
  store { i64, ptr } %t200, ptr %l101, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t201, 0
  store i64 %t202, ptr %l102, !tbaa !24
  %t203 = load i64, ptr %l102, !tbaa !24
  %t204 = mul i64 %t203, 1
  %t205 = load i64, ptr %l93
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = call ptr @__olang_scope_alloc(ptr %t206, i64 %t204)
  %t208 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  store { i64, ptr } %t209, ptr %l103, !tbaa !27
  %t210 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = load i64, ptr %l102, !tbaa !24
  %t215 = mul i64 %t214, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t211, ptr %t213, i64 %t215, i1 false)
  %t216 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t217 = load i64, ptr %l97, !tbaa !24
  %t218 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr { i64, ptr }, ptr %t219, i64 %t217
  store { i64, ptr } %t216, ptr %t220, !tbaa !37
  br label %bb48
bb50:
  %t221 = load i64, ptr %l89
  %t222 = inttoptr i64 %t221 to ptr
  %t223 = load { i64, ptr }, ptr %l92
  %t224 = extractvalue { i64, ptr } %t223, 1
  %t225 = call ptr @__olang_region_or(ptr %t224, ptr null)
  %t226 = icmp ne ptr %t225, null
  %t227 = select i1 %t226, ptr %t225, ptr null
  %t228 = icmp eq ptr %t227, %t222
  call void @__olang_region_settle(ptr %t222, i1 %t228)
  br label %bb51
bb51:
  %t229 = load i64, ptr %l88, !tbaa !24
  %t230 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t231 = call %"compiler/jupyter:pending" @compiler_2fjupyter_3apending_2ector(ptr %s5, ptr %s5, i64 %t229, { i64, ptr } %t230)
  store %"compiler/jupyter:pending" %t231, ptr %l105
  br label %bb52
bb52:
  %t233 = call %"compiler/jupyter:pending" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fjupyter_3apending(ptr %s5, ptr %l105)
  store %"compiler/jupyter:pending" %t233, ptr %l107
  br label %bb53
bb53:
  %t234 = load ptr, ptr %l87, !tbaa !29
  %t235 = load %"compiler/jupyter:pending", ptr %l107
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2ePush_H6843df326b132ec5af167b6d6aa0ee91(ptr %v0, ptr %s5, ptr %t234, %"compiler/jupyter:pending" %t235)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s5)
  br label %bb55
bb55:
  br label %bb31
bb56:
  call void @__olang_scope_close(ptr %s2)
  br label %bb57
bb57:
  %t236 = load i64, ptr %l6, !tbaa !24
  %t238 = add i64 %t236, 1
  store i64 %t238, ptr %l6, !tbaa !24
  br label %bb9
bb58:
  %t240 = load i64, ptr %l1, !tbaa !24
  store i64 %t240, ptr %l9, !tbaa !24
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/jupyter:kernel", ptr %t242, i32 0, i32 7
  %t246 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2eLen__H3ed9013f6604c7fc0e46a0318571cb25(ptr %v0, ptr %t244)
  store i64 %t246, ptr %l113
  br label %bb59
bb59:
  %t247 = load i64, ptr %l113, !tbaa !24
  store i64 %t247, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t248 = load i64, ptr %l10, !tbaa !24
  %t249 = load i64, ptr %l9, !tbaa !24
  %t252 = icmp sgt i64 %t248, %t249
  br i1 %t252, label %bb60, label %bb61
bb60:
  %t254 = load i64, ptr %l11, !tbaa !24
  %t256 = icmp sgt i64 %t254, 0
  br i1 %t256, label %bb62, label %bb63
bb61:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb65
bb62:
  %t258 = load i64, ptr %l10, !tbaa !24
  %t259 = load i64, ptr %l9, !tbaa !24
  %t262 = sub i64 %t258, %t259
  %t263 = load i64, ptr %l11, !tbaa !24
  %t266 = add i64 %t262, %t263
  %t268 = sub i64 %t266, 1
  %t269 = load i64, ptr %l11, !tbaa !24
  %t272 = sdiv i64 %t268, %t269
  store i64 %t272, ptr %l120, !tbaa !24
  br label %bb64
bb63:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb64
bb64:
  %t274 = load i64, ptr %l120, !tbaa !24
  store i64 %t274, ptr %l117, !tbaa !24
  br label %bb65
bb65:
  %t275 = load i64, ptr %l117, !tbaa !24
  store i64 %t275, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb66
bb66:
  store %olang.scope zeroinitializer, ptr %s10
  %t276 = load i64, ptr %l13, !tbaa !24
  %t277 = load i64, ptr %l12, !tbaa !24
  %t280 = icmp slt i64 %t276, %t277
  %t282 = xor i1 %t280, true
  br i1 %t282, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s10)
  br label %bb85
bb68:
  br label %bb69
bb69:
  %t284 = load i64, ptr %l9, !tbaa !24
  %t285 = load i64, ptr %l13, !tbaa !24
  %t286 = load i64, ptr %l11, !tbaa !24
  %t289 = mul i64 %t285, %t286
  %t292 = add i64 %t284, %t289
  %t294 = load ptr, ptr %l0, !tbaa !29
  store ptr %t294, ptr %l139, !tbaa !29
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/jupyter:kernel", ptr %t295, i32 0, i32 7
  %t301 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2eRef__H00d3a79bbb7d8106151b81913e117b7b(ptr %v0, ptr %v0, ptr %t297, i64 %t292)
  store ptr %t301, ptr %l143
  br label %bb70
bb70:
  %t302 = load ptr, ptr %l143, !tbaa !29
  %t304 = getelementptr %"compiler/jupyter:pending", ptr %t302, i32 0, i32 1
  %t305 = load { i64, ptr }, ptr %t304, !tbaa !27
  %t306 = load ptr, ptr %l139, !tbaa !29
  %t308 = call { i32, %"compiler/jupyter:request" } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eread(ptr %v0, ptr %v0, ptr %s10, ptr %t306, { i64, ptr } %t305)
  %t309 = extractvalue { i32, %"compiler/jupyter:request" } %t308, 1
  %t310 = extractvalue { i32, %"compiler/jupyter:request" } %t308, 0
  store i32 %t310, ptr %l147
  %t311 = icmp ne i32 %t310, 0
  br i1 %t311, label %bb72, label %ok.312, !prof !99
ok.312:
  store %"compiler/jupyter:request" %t309, ptr %l146
  br label %bb71
bb71:
  %t313 = load %"compiler/jupyter:request", ptr %l146
  store %"compiler/jupyter:request" %t313, ptr %l138
  br label %bb74
bb72:
  %t314 = load i32, ptr %l147, !tbaa !23
  %t315 = ashr i32 %t314, 16
  %t317 = icmp eq i32 %t315, 1
  store i1 %t317, ptr %l149, !tbaa !21
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s10)
  br label %bb84
bb74:
  %t318 = load %"compiler/jupyter:request", ptr %l138
  store %"compiler/jupyter:request" %t318, ptr %l15
  %t320 = call { i64, ptr } @compiler_2fjupyter_2ekindOf(ptr %s10, ptr %s10, ptr %l15)
  store { i64, ptr } %t320, ptr %l151
  br label %bb75
bb75:
  %t321 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t321, ptr %l16, !tbaa !27
  %t322 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t324 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t322, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d189, i32 0, i32 1) })
  store i1 %t324, ptr %l153
  br label %bb76
bb76:
  %t325 = load i1, ptr %l153, !tbaa !21
  br i1 %t325, label %bb77, label %bb78
bb77:
  store i1 true, ptr %l154, !tbaa !21
  br label %bb80
bb78:
  %t326 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t328 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t326, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d190, i32 0, i32 1) })
  store i1 %t328, ptr %l156
  br label %bb79
bb79:
  %t329 = load i1, ptr %l156, !tbaa !21
  store i1 %t329, ptr %l154, !tbaa !21
  br label %bb80
bb80:
  %t330 = load i1, ptr %l154, !tbaa !21
  br i1 %t330, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s10)
  store i1 true, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s10)
  br label %bb84
bb84:
  %t332 = load i64, ptr %l13, !tbaa !24
  %t334 = add i64 %t332, 1
  store i64 %t334, ptr %l13, !tbaa !24
  br label %bb66
bb85:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2epublish(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l18 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l25 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l53 = alloca i64
  %l59 = alloca ptr
  %l61 = alloca i32
  %l63 = alloca i1
  %s0 = alloca %olang.scope
  %t5 = alloca %olang.slotscope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  %t2 = ptrtoint ptr %s0 to i64
  store i64 %t2, ptr %l12, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_2c_201_3e_2e_2d1
  br i1 %t3, label %bb1, label %bb2
bb1:
  store %olang.slotscope zeroinitializer, ptr %t5
  store ptr @__olang_slot_chunk, ptr %t5
  %t6 = getelementptr %olang.scope, ptr %t5, i32 0, i32 2
  store ptr %s0, ptr %t6
  %t7 = ptrtoint ptr %t5 to i64
  store i64 %t7, ptr %l12, !tbaa !24
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/jupyter:kernel", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t16 = extractvalue { i64, ptr } %t11, 1
  %t17 = extractvalue { i64, ptr } %t11, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t12, 1
  %t24 = extractvalue { i64, ptr } %t12, 0
  %t25 = add i64 %t21, %t24
  %t26 = load i64, ptr %l12
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t13, i64 %t14)
  %t29 = getelementptr i8, ptr %t28, i64 %t14
  call void @olang_textcopy(ptr %t29, ptr %t16, i64 %t17)
  %t30 = getelementptr i8, ptr %t29, i64 %t17
  call void @olang_textcopy(ptr %t30, ptr %t19, i64 %t20)
  %t31 = getelementptr i8, ptr %t30, i64 %t20
  call void @olang_textcopy(ptr %t31, ptr %t23, i64 %t24)
  %t32 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t28, 1
  %t34 = mul i64 1, 16
  %t35 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 1, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l18, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %t40, i64 0
  store { i64, ptr } %t33, ptr %t41, !tbaa !37
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t45 = load ptr, ptr %l11, !tbaa !29
  %t46 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t50 = call { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eframes(ptr %v0, ptr %s0, ptr %v1, ptr %v2, ptr %v3, ptr %s0, ptr %t45, { i64, ptr } %t46, { i64, ptr } %t42, { i64, ptr } %a2, { i64, ptr } %a3)
  store { i64, ptr } %t50, ptr %l22
  br label %bb3
bb3:
  %t51 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t51, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/jupyter:kernel", ptr %t52, i32 0, i32 4
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eLen_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %t54)
  store i64 %t56, ptr %l25
  br label %bb4
bb4:
  %t57 = load i64, ptr %l25, !tbaa !24
  store i64 %t57, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = icmp sgt i64 %t58, %t59
  br i1 %t62, label %bb5, label %bb6
bb5:
  %t64 = load i64, ptr %l7, !tbaa !24
  %t66 = icmp sgt i64 %t64, 0
  br i1 %t66, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb10
bb7:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = sub i64 %t68, %t69
  %t73 = load i64, ptr %l7, !tbaa !24
  %t76 = add i64 %t72, %t73
  %t78 = sub i64 %t76, 1
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = sdiv i64 %t78, %t79
  store i64 %t82, ptr %l32, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb9
bb9:
  %t84 = load i64, ptr %l32, !tbaa !24
  store i64 %t84, ptr %l29, !tbaa !24
  br label %bb10
bb10:
  %t85 = load i64, ptr %l29, !tbaa !24
  store i64 %t85, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t87 = load i64, ptr %l8, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb12, label %bb13
bb12:
  br label %bb28
bb13:
  br label %bb14
bb14:
  %t94 = load i64, ptr %l5, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l7, !tbaa !24
  %t99 = mul i64 %t95, %t96
  %t102 = add i64 %t94, %t99
  store i64 %t102, ptr %l10, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/jupyter:kernel", ptr %t104, i32 0, i32 5
  %t107 = load i64, ptr %l10, !tbaa !24
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t106, i64 %t107)
  store i64 %t110, ptr %l53
  br label %bb15
bb15:
  %t111 = load i64, ptr @G_2ecompiler_2fjupyter_2eIOPub, !tbaa !24
  %t112 = load i64, ptr %l53, !tbaa !24
  %t114 = icmp ne i64 %t112, %t111
  br i1 %t114, label %bb16, label %bb17
bb16:
  br label %bb27
bb17:
  br label %bb18
bb18:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/jupyter:kernel", ptr %t116, i32 0, i32 4
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRefMut_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v0, ptr %t118, i64 %t119)
  store ptr %t122, ptr %l59
  br label %bb19
bb19:
  %t123 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t124 = load ptr, ptr %l59, !tbaa !29
  %t126 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eSend(ptr %v0, ptr %s0, ptr %t124, { i64, ptr } %t123)
  store i32 %t126, ptr %l61
  %t127 = icmp ne i32 %t126, 0
  br i1 %t127, label %bb21, label %ok.128, !prof !99
ok.128:
  br label %bb20
bb20:
  br label %bb26
bb21:
  %t129 = load i32, ptr %l61, !tbaa !23
  %t130 = ashr i32 %t129, 16
  %t132 = icmp eq i32 %t130, 1
  store i1 %t132, ptr %l63, !tbaa !21
  %t133 = load i32, ptr %l61, !tbaa !23
  %t134 = ashr i32 %t133, 16
  %t136 = icmp eq i32 %t134, 1
  br i1 %t136, label %bb22, label %bb23
bb22:
  call void @__olang_errpay_pop()
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/jupyter:kernel", ptr %t138, i32 0, i32 5
  %t141 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t140, i64 %t141, i64 -1)
  br label %bb25
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t144 = load i64, ptr %l9, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l9, !tbaa !24
  br label %bb11
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"compiler/jupyter:request" } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %lp14 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca i1
  %l39 = alloca i1
  %l47 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l69 = alloca i1
  %l76 = alloca i64
  %l79 = alloca i64
  %l89 = alloca { i64, ptr }
  %l90 = alloca i64
  %l100 = alloca i64
  %l102 = alloca { i64, ptr }
  %l108 = alloca i64
  %l111 = alloca { i64, ptr }
  %l112 = alloca i64
  %l114 = alloca i64
  %l115 = alloca { i64, ptr }
  %l116 = alloca i64
  %l120 = alloca { i64, ptr }
  %l121 = alloca i64
  %l122 = alloca { i64, ptr }
  %l124 = alloca i64
  %l126 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l132 = alloca i64
  %l134 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l140 = alloca %"compiler/jupyter:request"
  %l142 = alloca %"compiler/jupyter:request"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/jupyter:request" }
  %t197 = alloca %olang.slotscope
  %t240 = alloca %olang.slotscope
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 -1, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  store i64 %t15, ptr %l6, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l23, !tbaa !27
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %t21, i64 %t18
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !37
  store { i64, ptr } %t23, ptr %l25, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  store i64 %t25, ptr %l26, !tbaa !24
  %t26 = load i64, ptr %l26, !tbaa !24
  %t27 = mul i64 %t26, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l27, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l26, !tbaa !24
  %t36 = mul i64 %t35, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %t34, i64 %t36, i1 false)
  %t37 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t39 = load { i64, ptr }, ptr @G_2ecompiler_2fjupyter_2eDelimiter, !tbaa !27
  %t40 = load ptr, ptr @__olang_prog_scope
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %t40, { i64, ptr } %t37, { i64, ptr } %t39)
  store i1 %t43, ptr %l30
  br label %bb5
bb5:
  %t44 = load i1, ptr %l30, !tbaa !21
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = icmp slt i64 %t45, 0
  store i1 %t47, ptr %l31, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb8
bb8:
  %t49 = load i1, ptr %l31, !tbaa !21
  br i1 %t49, label %bb9, label %bb10
bb9:
  %t50 = load i64, ptr %l6, !tbaa !24
  store i64 %t50, ptr %l2, !tbaa !24
  br label %bb11
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l4, !tbaa !24
  br label %bb1
bb13:
  %t56 = load i64, ptr %l2, !tbaa !24
  %t58 = icmp slt i64 %t56, 0
  br i1 %t58, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb16
bb15:
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = load i64, ptr %l2, !tbaa !24
  %t65 = add i64 %t63, 6
  %t68 = icmp slt i64 %t62, %t65
  store i1 %t68, ptr %l39, !tbaa !21
  br label %bb16
bb16:
  %t70 = load i1, ptr %l39, !tbaa !21
  br i1 %t70, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t72 = insertvalue { i32, %"compiler/jupyter:request" } zeroinitializer, i32 65537, 0
  store { i32, %"compiler/jupyter:request" } %t72, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t74 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t74, ptr %l47, !tbaa !27
  %t75 = load i64, ptr %l2, !tbaa !24
  %t77 = add i64 %t75, 2
  %t79 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %t80, i64 %t77
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !37
  %t83 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t83, ptr %l51, !tbaa !27
  %t84 = load i64, ptr %l2, !tbaa !24
  %t86 = add i64 %t84, 3
  %t88 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %t89, i64 %t86
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !37
  %t92 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t92, ptr %l55, !tbaa !27
  %t93 = load i64, ptr %l2, !tbaa !24
  %t95 = add i64 %t93, 4
  %t97 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %t98, i64 %t95
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !37
  %t101 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t101, ptr %l59, !tbaa !27
  %t102 = load i64, ptr %l2, !tbaa !24
  %t104 = add i64 %t102, 5
  %t106 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %t107, i64 %t104
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !37
  %t115 = call { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2esign(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %s0, ptr %a0, { i64, ptr } %t82, { i64, ptr } %t91, { i64, ptr } %t100, { i64, ptr } %t109)
  store { i64, ptr } %t115, ptr %l63
  br label %bb20
bb20:
  %t116 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  %t118 = extractvalue { i64, ptr } %t116, 1
  %t119 = mul i64 %t117, 1
  %t120 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t119)
  call void @llvm.memcpy.p0.p0.i64(ptr %t120, ptr %t118, i64 %t119, i1 false)
  %t121 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  %t123 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t123, ptr %l65, !tbaa !27
  %t124 = load i64, ptr %l2, !tbaa !24
  %t126 = add i64 %t124, 1
  %t128 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %t129, i64 %t126
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !37
  %t134 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v1, { i64, ptr } %t122, { i64, ptr } %t131)
  store i1 %t134, ptr %l69
  br label %bb21
bb21:
  %t135 = load i1, ptr %l69, !tbaa !21
  %t136 = xor i1 %t135, true
  br i1 %t136, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t139 = insertvalue { i32, %"compiler/jupyter:request" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/jupyter:request" } %t139, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  store i64 0, ptr %l8, !tbaa !24
  %t140 = load i64, ptr %l2, !tbaa !24
  store i64 %t140, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t142 = load i64, ptr %l9, !tbaa !24
  %t143 = load i64, ptr %l8, !tbaa !24
  %t146 = icmp sgt i64 %t142, %t143
  br i1 %t146, label %bb25, label %bb26
bb25:
  %t148 = load i64, ptr %l10, !tbaa !24
  %t150 = icmp sgt i64 %t148, 0
  br i1 %t150, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb30
bb27:
  %t152 = load i64, ptr %l9, !tbaa !24
  %t153 = load i64, ptr %l8, !tbaa !24
  %t156 = sub i64 %t152, %t153
  %t157 = load i64, ptr %l10, !tbaa !24
  %t160 = add i64 %t156, %t157
  %t162 = sub i64 %t160, 1
  %t163 = load i64, ptr %l10, !tbaa !24
  %t166 = sdiv i64 %t162, %t163
  store i64 %t166, ptr %l79, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb29
bb29:
  %t168 = load i64, ptr %l79, !tbaa !24
  store i64 %t168, ptr %l76, !tbaa !24
  br label %bb30
bb30:
  %t169 = load i64, ptr %l76, !tbaa !24
  store i64 %t169, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t170 = load i64, ptr %l11, !tbaa !24
  %t172 = mul i64 %t170, 16
  %t173 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t172)
  %t174 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t173, 1
  store { i64, ptr } %t175, ptr %l89, !tbaa !27
  store i64 0, ptr %l90, !tbaa !24
  br label %bb31
bb31:
  %t176 = load i64, ptr %l12, !tbaa !24
  %t177 = load i64, ptr %l11, !tbaa !24
  %t180 = icmp slt i64 %t176, %t177
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb32, label %bb33
bb32:
  br label %bb38
bb33:
  br label %bb34
bb34:
  %t184 = load i64, ptr %l8, !tbaa !24
  %t185 = load i64, ptr %l12, !tbaa !24
  %t186 = load i64, ptr %l10, !tbaa !24
  %t189 = mul i64 %t185, %t186
  %t192 = add i64 %t184, %t189
  store i64 %t192, ptr %l13, !tbaa !24
  %t194 = ptrtoint ptr %v2 to i64
  store i64 %t194, ptr %l100, !tbaa !24
  %t195 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_3e_2e_2d1
  br i1 %t195, label %bb35, label %bb36
bb35:
  store %olang.slotscope zeroinitializer, ptr %t197
  store ptr @__olang_slot_chunk, ptr %t197
  %t198 = getelementptr %olang.scope, ptr %t197, i32 0, i32 2
  store ptr %v2, ptr %t198
  %t199 = ptrtoint ptr %t197 to i64
  store i64 %t199, ptr %l100, !tbaa !24
  br label %bb36
bb36:
  %t200 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t200, ptr %l102, !tbaa !27
  %t201 = load i64, ptr %l13, !tbaa !24
  %t203 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr { i64, ptr }, ptr %t204, i64 %t201
  %t206 = load { i64, ptr }, ptr %t205, !tbaa !37
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = extractvalue { i64, ptr } %t206, 0
  %t210 = load i64, ptr %l100
  %t211 = inttoptr i64 %t210 to ptr
  %t212 = call ptr @__olang_scope_alloc(ptr %t211, i64 %t209)
  call void @olang_textcopy(ptr %t212, ptr %t208, i64 %t209)
  %t213 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t212, 1
  %t216 = load i64, ptr %l90, !tbaa !24
  %t217 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !27
  %t219 = getelementptr { i64, ptr }, ptr %t218, i64 %t216
  store { i64, ptr } %t214, ptr %t219, !tbaa !37
  %t220 = load i64, ptr %l90, !tbaa !24
  %t221 = add i64 %t220, 1
  store i64 %t221, ptr %l90, !tbaa !24
  br label %bb37
bb37:
  %t222 = load i64, ptr %l12, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l12, !tbaa !24
  br label %bb31
bb38:
  %t226 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t226, ptr %lp14
  %t227 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t228 = load ptr, ptr %lp14
  store { i64, ptr } %t227, ptr %t228, !tbaa !27
  %t229 = ptrtoint ptr %v2 to i64
  store i64 %t229, ptr %l108, !tbaa !24
  %t230 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3arequest_2e0
  br i1 %t230, label %bb39, label %bb40
bb39:
  %t232 = call ptr @__olang_region_make_part(ptr %v2)
  %t233 = ptrtoint ptr %t232 to i64
  store i64 %t233, ptr %l108, !tbaa !24
  br label %bb40
bb40:
  %t234 = load ptr, ptr %lp14
  %t235 = load { i64, ptr }, ptr %t234, !tbaa !27
  store { i64, ptr } %t235, ptr %l111, !tbaa !27
  %t237 = ptrtoint ptr %v2 to i64
  store i64 %t237, ptr %l112, !tbaa !24
  %t238 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_3e_2e_2d1
  br i1 %t238, label %bb41, label %bb42
bb41:
  store %olang.slotscope zeroinitializer, ptr %t240
  store ptr @__olang_slot_chunk, ptr %t240
  %t241 = getelementptr %olang.scope, ptr %t240, i32 0, i32 2
  store ptr %v2, ptr %t241
  %t242 = ptrtoint ptr %t240 to i64
  store i64 %t242, ptr %l112, !tbaa !24
  br label %bb42
bb42:
  %t243 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 0
  store i64 %t244, ptr %l114, !tbaa !24
  %t245 = load i64, ptr %l114, !tbaa !24
  %t246 = mul i64 %t245, 16
  %t247 = load i64, ptr %l108
  %t248 = inttoptr i64 %t247 to ptr
  %t249 = call ptr @__olang_scope_alloc(ptr %t248, i64 %t246)
  %t250 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  store { i64, ptr } %t251, ptr %l115, !tbaa !27
  store i64 0, ptr %l116, !tbaa !24
  br label %bb43
bb43:
  %t252 = load i64, ptr %l116, !tbaa !24
  %t253 = load i64, ptr %l114, !tbaa !24
  %t254 = icmp slt i64 %t252, %t253
  br i1 %t254, label %bb44, label %bb45
bb44:
  %t256 = load i64, ptr %l116, !tbaa !24
  %t257 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = getelementptr { i64, ptr }, ptr %t258, i64 %t256
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !37
  %t261 = extractvalue { i64, ptr } %t260, 0
  %t263 = icmp sgt i64 %t261, 0
  br i1 %t263, label %bb48, label %bb46
bb45:
  %t265 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t265, ptr %l111, !tbaa !27
  %t266 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3arequest_2e0
  br i1 %t266, label %bb49, label %bb50
bb46:
  %t268 = load i64, ptr %l116, !tbaa !24
  %t269 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr { i64, ptr }, ptr %t270, i64 %t268
  store { i64, ptr } zeroinitializer, ptr %t271, !tbaa !37
  br label %bb47
bb47:
  %t272 = load i64, ptr %l116, !tbaa !24
  %t273 = add i64 %t272, 1
  store i64 %t273, ptr %l116, !tbaa !24
  br label %bb43
bb48:
  %t274 = load i64, ptr %l116, !tbaa !24
  %t275 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !27
  %t277 = getelementptr { i64, ptr }, ptr %t276, i64 %t274
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !37
  store { i64, ptr } %t278, ptr %l120, !tbaa !27
  %t279 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t279, 0
  store i64 %t280, ptr %l121, !tbaa !24
  %t281 = load i64, ptr %l121, !tbaa !24
  %t282 = mul i64 %t281, 1
  %t283 = load i64, ptr %l112
  %t284 = inttoptr i64 %t283 to ptr
  %t285 = call ptr @__olang_scope_alloc(ptr %t284, i64 %t282)
  %t286 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t285, 1
  store { i64, ptr } %t287, ptr %l122, !tbaa !27
  %t288 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !27
  %t290 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = load i64, ptr %l121, !tbaa !24
  %t293 = mul i64 %t292, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t289, ptr %t291, i64 %t293, i1 false)
  %t294 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t295 = load i64, ptr %l116, !tbaa !24
  %t296 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr { i64, ptr }, ptr %t297, i64 %t295
  store { i64, ptr } %t294, ptr %t298, !tbaa !37
  br label %bb47
bb49:
  %t299 = load i64, ptr %l108
  %t300 = inttoptr i64 %t299 to ptr
  %t301 = load { i64, ptr }, ptr %l111
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = call ptr @__olang_region_or(ptr %t302, ptr null)
  %t304 = icmp ne ptr %t303, null
  %t305 = select i1 %t304, ptr %t303, ptr null
  %t306 = icmp eq ptr %t305, %t300
  call void @__olang_region_settle(ptr %t300, i1 %t306)
  br label %bb50
bb50:
  %t307 = ptrtoint ptr %s0 to i64
  store i64 %t307, ptr %l124, !tbaa !24
  %t308 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3arequest_2e1
  br i1 %t308, label %bb51, label %bb52
bb51:
  %t310 = call ptr @__olang_region_make_part(ptr %s0)
  %t311 = ptrtoint ptr %t310 to i64
  store i64 %t311, ptr %l124, !tbaa !24
  br label %bb52
bb52:
  %t312 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t312, ptr %l126, !tbaa !27
  %t313 = load i64, ptr %l2, !tbaa !24
  %t315 = add i64 %t313, 2
  %t317 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = getelementptr { i64, ptr }, ptr %t318, i64 %t315
  %t320 = load { i64, ptr }, ptr %t319, !tbaa !37
  %t322 = extractvalue { i64, ptr } %t320, 1
  %t323 = extractvalue { i64, ptr } %t320, 0
  %t324 = load i64, ptr %l124
  %t325 = inttoptr i64 %t324 to ptr
  %t326 = call ptr @__olang_scope_alloc(ptr %t325, i64 %t323)
  call void @olang_textcopy(ptr %t326, ptr %t322, i64 %t323)
  %t327 = insertvalue { i64, ptr } undef, i64 %t323, 0
  %t328 = insertvalue { i64, ptr } %t327, ptr %t326, 1
  store { i64, ptr } %t328, ptr %l130, !tbaa !27
  %t329 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3arequest_2e1
  br i1 %t329, label %bb53, label %bb54
bb53:
  %t331 = load i64, ptr %l124
  %t332 = inttoptr i64 %t331 to ptr
  %t333 = load { i64, ptr }, ptr %l130
  %t334 = extractvalue { i64, ptr } %t333, 1
  %t335 = call ptr @__olang_region_or(ptr %t334, ptr null)
  %t336 = icmp ne ptr %t335, null
  %t337 = select i1 %t336, ptr %t335, ptr null
  %t338 = icmp eq ptr %t337, %t332
  call void @__olang_region_settle(ptr %t332, i1 %t338)
  br label %bb54
bb54:
  %t339 = ptrtoint ptr %s0 to i64
  store i64 %t339, ptr %l132, !tbaa !24
  %t340 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3arequest_2e2
  br i1 %t340, label %bb55, label %bb56
bb55:
  %t342 = call ptr @__olang_region_make_part(ptr %s0)
  %t343 = ptrtoint ptr %t342 to i64
  store i64 %t343, ptr %l132, !tbaa !24
  br label %bb56
bb56:
  %t344 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t344, ptr %l134, !tbaa !27
  %t345 = load i64, ptr %l2, !tbaa !24
  %t347 = add i64 %t345, 5
  %t349 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr { i64, ptr }, ptr %t350, i64 %t347
  %t352 = load { i64, ptr }, ptr %t351, !tbaa !37
  %t354 = extractvalue { i64, ptr } %t352, 1
  %t355 = extractvalue { i64, ptr } %t352, 0
  %t356 = load i64, ptr %l132
  %t357 = inttoptr i64 %t356 to ptr
  %t358 = call ptr @__olang_scope_alloc(ptr %t357, i64 %t355)
  call void @olang_textcopy(ptr %t358, ptr %t354, i64 %t355)
  %t359 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t360 = insertvalue { i64, ptr } %t359, ptr %t358, 1
  store { i64, ptr } %t360, ptr %l138, !tbaa !27
  %t361 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3arequest_2e2
  br i1 %t361, label %bb57, label %bb58
bb57:
  %t363 = load i64, ptr %l132
  %t364 = inttoptr i64 %t363 to ptr
  %t365 = load { i64, ptr }, ptr %l138
  %t366 = extractvalue { i64, ptr } %t365, 1
  %t367 = call ptr @__olang_region_or(ptr %t366, ptr null)
  %t368 = icmp ne ptr %t367, null
  %t369 = select i1 %t368, ptr %t367, ptr null
  %t370 = icmp eq ptr %t369, %t364
  call void @__olang_region_settle(ptr %t364, i1 %t370)
  br label %bb58
bb58:
  %t371 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t372 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t373 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t374 = call %"compiler/jupyter:request" @compiler_2fjupyter_3arequest_2ector(ptr %v2, ptr %v2, { i64, ptr } %t371, { i64, ptr } %t372, { i64, ptr } %t373)
  store %"compiler/jupyter:request" %t374, ptr %l140
  br label %bb59
bb59:
  %t376 = call %"compiler/jupyter:request" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fjupyter_3arequest(ptr %v2, ptr %l140)
  store %"compiler/jupyter:request" %t376, ptr %l142
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  %t377 = load %"compiler/jupyter:request", ptr %l142
  %t378 = insertvalue { i32, %"compiler/jupyter:request" } zeroinitializer, %"compiler/jupyter:request" %t377, 1
  store { i32, %"compiler/jupyter:request" } %t378, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/jupyter:request" }, ptr %rv
  ret { i32, %"compiler/jupyter:request" } %rr
}

define dso_local void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ereply(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l19 = alloca i32
  %l21 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/jupyter:request", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/jupyter:request", ptr %t7, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t17 = call { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eframes(ptr %v0, ptr %v1, ptr %v2, ptr %v1, ptr %v3, ptr %s0, ptr %t1, { i64, ptr } %t5, { i64, ptr } %a3, { i64, ptr } %t10, { i64, ptr } %a4)
  store { i64, ptr } %t17, ptr %l13
  br label %bb1
bb1:
  %t18 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t18, ptr %l5, !tbaa !27
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/jupyter:kernel", ptr %t19, i32 0, i32 4
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRefMut_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store ptr %t25, ptr %l17
  br label %bb2
bb2:
  %t26 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t29 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eSend(ptr %v0, ptr %s0, ptr %t27, { i64, ptr } %t26)
  store i32 %t29, ptr %l19
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb4, label %ok.31, !prof !99
ok.31:
  br label %bb3
bb3:
  br label %bb9
bb4:
  %t32 = load i32, ptr %l19, !tbaa !23
  %t33 = ashr i32 %t32, 16
  %t35 = icmp eq i32 %t33, 1
  store i1 %t35, ptr %l21, !tbaa !21
  %t36 = load i32, ptr %l19, !tbaa !23
  %t37 = ashr i32 %t36, 16
  %t39 = icmp eq i32 %t37, 1
  br i1 %t39, label %bb5, label %bb6
bb5:
  call void @__olang_errpay_pop()
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/jupyter:kernel", ptr %t41, i32 0, i32 5
  %t44 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t43, i64 %t44, i64 -1)
  br label %bb8
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2eserve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i32
  %l10 = alloca i1
  %l20 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca i32
  %l30 = alloca i1
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/jupyter:kernel", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRefMut_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t9 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eFill(ptr %v0, ptr %t8)
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb3, label %ok.11, !prof !99
ok.11:
  br label %bb2
bb2:
  br label %bb8
bb3:
  %t12 = load i32, ptr %l8, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l10, !tbaa !21
  %t16 = load i32, ptr %l8, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  br i1 %t19, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/jupyter:kernel", ptr %t21, i32 0, i32 5
  %t24 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t23, i64 %t24, i64 -1)
  br label %bb7
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/jupyter:kernel", ptr %t27, i32 0, i32 6
  %t30 = load i1, ptr %t29, !tbaa !21
  %t32 = xor i1 %t30, true
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb11:
  br label %bb12
bb12:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/jupyter:kernel", ptr %t36, i32 0, i32 4
  %t39 = load i64, ptr %l2, !tbaa !24
  %t42 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRefMut_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v0, ptr %t38, i64 %t39)
  store ptr %t42, ptr %l24
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t44 = call { i32, { i64, ptr } } @std_2fzmtp_2estd_2fzmtp_3aSocket_2eNext(ptr %v0, ptr %s2, ptr %t43)
  %t45 = extractvalue { i32, { i64, ptr } } %t44, 1
  %t46 = extractvalue { i32, { i64, ptr } } %t44, 0
  store i32 %t46, ptr %l26
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %bb15, label %ok.48, !prof !99
ok.48:
  store { i64, ptr } %t45, ptr %l25
  br label %bb14
bb14:
  %t49 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t49, ptr %l20, !tbaa !27
  br label %bb21
bb15:
  %t50 = load i32, ptr %l26, !tbaa !23
  %t51 = ashr i32 %t50, 16
  %t53 = icmp eq i32 %t51, 1
  br i1 %t53, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  %t55 = load i32, ptr %l26, !tbaa !23
  %t56 = ashr i32 %t55, 16
  %t58 = icmp eq i32 %t56, 2
  store i1 %t58, ptr %l30, !tbaa !21
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/jupyter:kernel", ptr %t59, i32 0, i32 5
  %t62 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t61, i64 %t62, i64 -1)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb21:
  %t65 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2ehandle(ptr %v0, ptr %v1, ptr %s2, ptr %v2, ptr %t66, ptr %a1, i64 %t68, { i64, ptr } %t65)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb23:
  br label %bb9
bb24:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2esign(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca [4 x { i64, ptr }]
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/jupyter:kernel", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d193, i32 0, i32 1) })
  store i1 %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = load i1, ptr %l9, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d194, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t8, ptr %l11, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l12, !tbaa !24
  %t11 = load i64, ptr %l12, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l12, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t22, ptr %l11, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/jupyter:kernel", ptr %t24, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t38 = insertvalue [4 x { i64, ptr }] undef, { i64, ptr } %a1, 0
  %t40 = insertvalue [4 x { i64, ptr }] %t38, { i64, ptr } %a2, 1
  %t42 = insertvalue [4 x { i64, ptr }] %t40, { i64, ptr } %a3, 2
  %t44 = insertvalue [4 x { i64, ptr }] %t42, { i64, ptr } %a4, 3
  store [4 x { i64, ptr }] %t44, ptr %l6
  %t48 = insertvalue { i64, ptr } undef, i64 4, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %l6, 1
  %t52 = call { i64, ptr } @std_2fsha256_2eHmac(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t27, { i64, ptr } %t49)
  store { i64, ptr } %t52, ptr %l28
  br label %bb5
bb5:
  %t53 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  %t55 = extractvalue { i64, ptr } %t53, 1
  %t56 = mul i64 %t54, 1
  %t57 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t56)
  call void @llvm.memcpy.p0.p0.i64(ptr %t57, ptr %t55, i64 %t56, i1 false)
  %t58 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  %t61 = call { i64, ptr } @std_2fhex_2eEncode(ptr %s0, ptr %v5, { i64, ptr } %t59)
  store { i64, ptr } %t61, ptr %l30
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t62 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t62, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2estream(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d195, i32 0, i32 1) })
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  store ptr %a0, ptr %l6, !tbaa !29
  store { i64, ptr } %a1, ptr %l7, !tbaa !27
  store { i64, ptr } %a2, ptr %l8, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v3, ptr %s0, { i64, ptr } %t8)
  store { i64, ptr } %t10, ptr %l10
  br label %bb5
bb5:
  %t11 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d196, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d196, i32 0, i32 1) }, 0
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 1
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t16 = add i64 %t12, %t15
  %t17 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t20 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t23 = add i64 %t19, %t22
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t11, i64 %t12)
  %t28 = getelementptr i8, ptr %t27, i64 %t12
  call void @olang_textcopy(ptr %t28, ptr %t14, i64 %t15)
  %t29 = getelementptr i8, ptr %t28, i64 %t15
  call void @olang_textcopy(ptr %t29, ptr %t17, i64 %t18)
  %t30 = getelementptr i8, ptr %t29, i64 %t18
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = getelementptr i8, ptr %t30, i64 %t22
  call void @olang_textcopy(ptr %t31, ptr %t24, i64 %t25)
  %t32 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t27, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = extractvalue { i64, ptr } %t33, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t41 = load ptr, ptr %l6, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2epublish(ptr %v0, ptr %s0, ptr %v1, ptr %s0, ptr %t41, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d199, i32 0, i32 1) }, { i64, ptr } %t42, { i64, ptr } %t40)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2esweep(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l37 = alloca i64
  %l44 = alloca i64
  %l49 = alloca i32
  %l51 = alloca i1
  %l55 = alloca i32
  %l57 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/jupyter:kernel", ptr %t1, i32 0, i32 5
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l17, !tbaa !24
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l14, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb26
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l6, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/jupyter:kernel", ptr %t53, i32 0, i32 5
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t55)
  store i64 %t57, ptr %l37
  br label %bb12
bb12:
  %t58 = load i64, ptr %l37, !tbaa !24
  %t59 = sub i64 %t58, 1
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = sub i64 %t59, %t60
  store i64 %t63, ptr %l7, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/jupyter:kernel", ptr %t65, i32 0, i32 5
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t67, i64 %t68)
  store i64 %t71, ptr %l44
  br label %bb13
bb13:
  %t72 = load i64, ptr %l44, !tbaa !24
  %t73 = icmp sge i64 %t72, 0
  br i1 %t73, label %bb14, label %bb15
bb14:
  br label %bb25
bb15:
  br label %bb16
bb16:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/jupyter:kernel", ptr %t75, i32 0, i32 4
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRemoveAt_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %t77, i64 %t78)
  store i32 %t81, ptr %l49
  %t82 = icmp ne i32 %t81, 0
  br i1 %t82, label %bb18, label %ok.83, !prof !99
ok.83:
  br label %bb17
bb17:
  br label %bb20
bb18:
  %t84 = load i32, ptr %l49, !tbaa !23
  %t85 = ashr i32 %t84, 16
  %t87 = icmp eq i32 %t85, 1
  store i1 %t87, ptr %l51, !tbaa !21
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/jupyter:kernel", ptr %t88, i32 0, i32 5
  %t91 = load i64, ptr %l7, !tbaa !24
  %t94 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %t90, i64 %t91)
  store i32 %t94, ptr %l55
  %t95 = icmp ne i32 %t94, 0
  br i1 %t95, label %bb22, label %ok.96, !prof !99
ok.96:
  br label %bb21
bb21:
  br label %bb24
bb22:
  %t97 = load i32, ptr %l55, !tbaa !23
  %t98 = ashr i32 %t97, 16
  %t100 = icmp eq i32 %t98, 1
  store i1 %t100, ptr %l57, !tbaa !21
  br label %bb23
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t101 = load i64, ptr %l5, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l5, !tbaa !24
  br label %bb8
bb26:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fjupyter_2ecomplete(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/prompt:Decl"
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/prompt:Value"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l34 = alloca i32
  %l36 = alloca i1
  %l39 = alloca i64
  %l40 = alloca i32
  %l42 = alloca i1
  %l51 = alloca i1
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca i1
  %l66 = alloca { i64, ptr }
  %l70 = alloca i1
  %l71 = alloca i1
  %l72 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l82 = alloca i64
  %l83 = alloca i64
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l102 = alloca i1
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l107 = alloca i64
  %l108 = alloca i64
  %l115 = alloca i1
  %l117 = alloca i1
  %l120 = alloca { i64, ptr }
  %l121 = alloca i1
  %l129 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l157 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l158 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l160 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l172 = alloca i1
  %l174 = alloca i1
  %l178 = alloca i1
  %l181 = alloca ptr
  %l182 = alloca i64
  %l185 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fjupyter_2estr(ptr %v1, ptr %s0, ptr %v1, ptr %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d200, i32 0, i32 1) })
  store { i64, ptr } %t3, ptr %l28
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load ptr, ptr %l1, !tbaa !29
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d201, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t9 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t5, { i64, ptr } %t6)
  %t10 = extractvalue { i32, ptr } %t9, 1
  %t11 = extractvalue { i32, ptr } %t9, 0
  store i32 %t11, ptr %l34
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb3, label %ok.13, !prof !99
ok.13:
  store ptr %t10, ptr %l33
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l33, !tbaa !29
  %t15 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %v1, ptr %t14)
  %t16 = extractvalue { i32, i64 } %t15, 1
  %t17 = extractvalue { i32, i64 } %t15, 0
  store i32 %t17, ptr %l40
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb8, label %ok.19, !prof !99
ok.19:
  store i64 %t16, ptr %l39
  br label %bb7
bb3:
  %t20 = load i32, ptr %l34, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  store i1 %t23, ptr %l36, !tbaa !21
  %t24 = load i32, ptr %l34, !tbaa !23
  %t25 = ashr i32 %t24, 16
  %t27 = icmp eq i32 %t25, 1
  br i1 %t27, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l29, !tbaa !24
  br label %bb11
bb7:
  %t33 = load i64, ptr %l39, !tbaa !24
  store i64 %t33, ptr %l29, !tbaa !24
  br label %bb11
bb8:
  %t34 = load i32, ptr %l40, !tbaa !23
  %t35 = ashr i32 %t34, 16
  %t37 = icmp eq i32 %t35, 1
  store i1 %t37, ptr %l42, !tbaa !21
  %t38 = load i32, ptr %l40, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb6
bb11:
  %t43 = load i64, ptr %l29, !tbaa !24
  store i64 %t43, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l3, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t50 = icmp sgt i64 %t44, %t47
  br i1 %t50, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb14
bb13:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = icmp slt i64 %t52, 0
  store i1 %t54, ptr %l51, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l51, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  store i64 %t59, ptr %l3, !tbaa !24
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t61 = load i64, ptr %l3, !tbaa !24
  store i64 %t61, ptr %l4, !tbaa !24
  br label %bb18
bb18:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t67, ptr %l60, !tbaa !27
  %t68 = load i64, ptr %l4, !tbaa !24
  %t70 = sub i64 %t68, 1
  %t72 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i8, ptr %t73, i64 %t70
  %t75 = load i8, ptr %t74, !tbaa !32
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t75)
  store i1 %t77, ptr %l64
  br label %bb21
bb20:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb29
bb21:
  %t78 = load i1, ptr %l64, !tbaa !21
  br i1 %t78, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb25
bb23:
  %t79 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t79, ptr %l66, !tbaa !27
  %t80 = load i64, ptr %l4, !tbaa !24
  %t82 = sub i64 %t80, 1
  %t84 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i8, ptr %t85, i64 %t82
  %t87 = load i8, ptr %t86, !tbaa !32
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t87)
  store i1 %t89, ptr %l70
  br label %bb24
bb24:
  %t90 = load i1, ptr %l70, !tbaa !21
  store i1 %t90, ptr %l65, !tbaa !21
  br label %bb25
bb25:
  %t91 = load i1, ptr %l65, !tbaa !21
  br i1 %t91, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb28
bb27:
  %t92 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t92, ptr %l72, !tbaa !27
  %t93 = load i64, ptr %l4, !tbaa !24
  %t95 = sub i64 %t93, 1
  %t97 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i8, ptr %t98, i64 %t95
  %t100 = load i8, ptr %t99, !tbaa !32
  %t102 = icmp eq i8 %t100, 95
  store i1 %t102, ptr %l71, !tbaa !21
  br label %bb28
bb28:
  %t104 = load i1, ptr %l71, !tbaa !21
  store i1 %t104, ptr %l59, !tbaa !21
  br label %bb29
bb29:
  %t105 = load i1, ptr %l59, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  br label %bb32
bb32:
  %t108 = load i64, ptr %l4, !tbaa !24
  %t110 = sub i64 %t108, 1
  store i64 %t110, ptr %l4, !tbaa !24
  br label %bb33
bb33:
  br label %bb18
bb34:
  %t112 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t112, ptr %l80, !tbaa !27
  %t113 = load i64, ptr %l4, !tbaa !24
  store i64 %t113, ptr %l81, !tbaa !24
  %t114 = load i64, ptr %l3, !tbaa !24
  store i64 %t114, ptr %l82, !tbaa !24
  %t115 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  store i64 %t116, ptr %l83, !tbaa !24
  %t117 = load i64, ptr %l81, !tbaa !24
  %t118 = icmp sge i64 %t117, 0
  br i1 %t118, label %bb35, label %bb36
bb35:
  %t120 = load i64, ptr %l81, !tbaa !24
  %t121 = load i64, ptr %l82, !tbaa !24
  %t122 = icmp sle i64 %t120, %t121
  br i1 %t122, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_a3bb6ba411f5318_f8f719f7dabe5f3c)
  unreachable
bb37:
  %t124 = load i64, ptr %l82, !tbaa !24
  %t125 = load i64, ptr %l83, !tbaa !24
  %t126 = icmp sle i64 %t124, %t125
  br i1 %t126, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_a3bb6ba411f5318_f8f719f7dabe5f3c)
  unreachable
bb39:
  %t128 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = load i64, ptr %l81, !tbaa !24
  %t131 = load i64, ptr %l82, !tbaa !24
  %t132 = getelementptr i8, ptr %t129, i64 %t130
  %t133 = sub i64 %t131, %t130
  %t134 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t132, 1
  store { i64, ptr } %t135, ptr %l5, !tbaa !27
  %t137 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t137, ptr %l88
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_a3bb6ba411f5318_f8f719f7dabe5f3c)
  unreachable
bb41:
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %l6
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/prompt:Session", ptr %t139, i32 0, i32 3
  %t143 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprompt_3aDecl_3e_2eView_3ccompiler_2fprompt_3aDecl_3e(ptr %v0, ptr %v0, ptr %t141)
  store { i64, ptr } %t143, ptr %l91
  br label %bb42
bb42:
  %t144 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t144, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t145, 0
  store i64 %t147, ptr %l9, !tbaa !24
  br label %bb43
bb43:
  store %olang.scope zeroinitializer, ptr %s4
  %t149 = load i64, ptr %l8, !tbaa !24
  %t150 = load i64, ptr %l9, !tbaa !24
  %t153 = icmp slt i64 %t149, %t150
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s4)
  br label %bb67
bb45:
  br label %bb46
bb46:
  %t157 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t157, ptr %l98, !tbaa !27
  %t158 = load i64, ptr %l8, !tbaa !24
  %t160 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr %"compiler/prompt:Decl", ptr %t161, i64 %t158
  %t163 = load %"compiler/prompt:Decl", ptr %t162
  store %"compiler/prompt:Decl" %t163, ptr %l10
  %t165 = getelementptr %"compiler/prompt:Decl", ptr %l10, i32 0, i32 0
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  %t168 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s4, { i64, ptr } %t166, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d202, i32 0, i32 1) })
  store i1 %t168, ptr %l102
  br label %bb47
bb47:
  %t169 = load i1, ptr %l102, !tbaa !21
  br i1 %t169, label %bb48, label %bb49
bb48:
  %t170 = getelementptr %"compiler/prompt:Decl", ptr %l10, i32 0, i32 0
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  store { i64, ptr } %t171, ptr %l104, !tbaa !27
  %t172 = getelementptr %"compiler/prompt:Decl", ptr %l10, i32 0, i32 0
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t173, 0
  store i64 %t176, ptr %l107, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 0
  store i64 %t178, ptr %l108, !tbaa !24
  %t179 = icmp sge i64 7, 0
  br i1 %t179, label %bb50, label %bb51
bb49:
  %t181 = getelementptr %"compiler/prompt:Decl", ptr %l10, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  store { i64, ptr } %t182, ptr %l103, !tbaa !27
  br label %bb56
bb50:
  %t184 = load i64, ptr %l107, !tbaa !24
  %t185 = icmp sle i64 7, %t184
  br i1 %t185, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_a638196a2ff6a75_60555f0a368b3729)
  unreachable
bb52:
  %t187 = load i64, ptr %l107, !tbaa !24
  %t188 = load i64, ptr %l108, !tbaa !24
  %t189 = icmp sle i64 %t187, %t188
  br i1 %t189, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_a638196a2ff6a75_60555f0a368b3729)
  unreachable
bb54:
  %t191 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = load i64, ptr %l107, !tbaa !24
  %t194 = getelementptr i8, ptr %t192, i64 7
  %t195 = sub i64 %t193, 7
  %t196 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t194, 1
  store { i64, ptr } %t197, ptr %l103, !tbaa !27
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_a638196a2ff6a75_60555f0a368b3729)
  unreachable
bb56:
  %t199 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t199, ptr %l11, !tbaa !27
  %t200 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t202 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s4, { i64, ptr } %t200, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d203, i32 0, i32 1) })
  store i1 %t202, ptr %l115
  br label %bb57
bb57:
  %t203 = load i1, ptr %l115, !tbaa !21
  %t204 = xor i1 %t203, true
  br i1 %t204, label %bb58, label %bb59
bb58:
  %t206 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d204, i32 0, i32 1) }, ptr %l120, !tbaa !27
  %t209 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t210 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s4, { i64, ptr } %t206, { i64, ptr } %t209)
  store i1 %t210, ptr %l121
  br label %bb60
bb59:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb61
bb60:
  %t211 = load i1, ptr %l121, !tbaa !21
  %t212 = xor i1 %t211, true
  store i1 %t212, ptr %l117, !tbaa !21
  br label %bb61
bb61:
  %t214 = load i1, ptr %l117, !tbaa !21
  br i1 %t214, label %bb62, label %bb63
bb62:
  %t215 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l6, { i64, ptr } %t215)
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s4)
  br label %bb66
bb66:
  %t218 = load i64, ptr %l8, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l8, !tbaa !24
  br label %bb43
bb67:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/prompt:Session", ptr %t222, i32 0, i32 4
  %t226 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprompt_3aValue_3e_2eView_3ccompiler_2fprompt_3aValue_3e(ptr %v0, ptr %v0, ptr %t224)
  store { i64, ptr } %t226, ptr %l129
  br label %bb68
bb68:
  %t227 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t227, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 0
  store i64 %t230, ptr %l14, !tbaa !24
  br label %bb69
bb69:
  %t232 = load i64, ptr %l13, !tbaa !24
  %t233 = load i64, ptr %l14, !tbaa !24
  %t236 = icmp slt i64 %t232, %t233
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb70, label %bb71
bb70:
  br label %bb75
bb71:
  br label %bb72
bb72:
  %t240 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t240, ptr %l136, !tbaa !27
  %t241 = load i64, ptr %l13, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr %"compiler/prompt:Value", ptr %t244, i64 %t241
  %t246 = load %"compiler/prompt:Value", ptr %t245
  store %"compiler/prompt:Value" %t246, ptr %l15
  %t248 = getelementptr %"compiler/prompt:Value", ptr %l15, i32 0, i32 0
  %t249 = load { i64, ptr }, ptr %t248, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l6, { i64, ptr } %t249)
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t252 = load i64, ptr %l13, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l13, !tbaa !24
  br label %bb69
bb75:
  store ptr @G_2ecompiler_2fjupyter_2eKeywords, ptr %l16
  store i64 0, ptr %l17, !tbaa !24
  %t257 = load ptr, ptr %l16
  store i64 25, ptr %l18, !tbaa !24
  br label %bb76
bb76:
  %t260 = load i64, ptr %l17, !tbaa !24
  %t261 = load i64, ptr %l18, !tbaa !24
  %t264 = icmp slt i64 %t260, %t261
  %t266 = xor i1 %t264, true
  br i1 %t266, label %bb77, label %bb78
bb77:
  br label %bb82
bb78:
  br label %bb79
bb79:
  %t268 = load ptr, ptr %l16
  %t269 = load i64, ptr %l17, !tbaa !24
  %t272 = getelementptr [25 x { i64, ptr }], ptr %t268, i64 0, i64 %t269
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !37
  %t276 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %t276, ptr %l6, { i64, ptr } %t273)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t279 = load i64, ptr %l17, !tbaa !24
  %t281 = add i64 %t279, 1
  store i64 %t281, ptr %l17, !tbaa !24
  br label %bb76
bb82:
  %t283 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t283, ptr %l157
  br label %bb83
bb83:
  %t284 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l157
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t284, ptr %l20
  %t285 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t285, ptr %l158
  br label %bb84
bb84:
  %t286 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l158
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %l21
  %t288 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H563b551a62b57e684177c5454e33a204(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t288, ptr %l160
  br label %bb85
bb85:
  %t289 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t289, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t290 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  store i64 %t292, ptr %l24, !tbaa !24
  br label %bb86
bb86:
  %t294 = load i64, ptr %l23, !tbaa !24
  %t295 = load i64, ptr %l24, !tbaa !24
  %t298 = icmp slt i64 %t294, %t295
  %t300 = xor i1 %t298, true
  br i1 %t300, label %bb87, label %bb88
bb87:
  br label %bb104
bb88:
  br label %bb89
bb89:
  %t302 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t302, ptr %l167, !tbaa !27
  %t303 = load i64, ptr %l23, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr { i64, ptr }, ptr %t306, i64 %t303
  %t308 = load { i64, ptr }, ptr %t307, !tbaa !37
  store { i64, ptr } %t308, ptr %l25, !tbaa !27
  %t310 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t311 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t314 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %v1, { i64, ptr } %t310, { i64, ptr } %t311)
  store i1 %t314, ptr %l172
  br label %bb90
bb90:
  %t315 = load i1, ptr %l172, !tbaa !21
  %t316 = xor i1 %t315, true
  br i1 %t316, label %bb91, label %bb92
bb91:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb94
bb92:
  %t318 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t323 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %s0, ptr %s0, ptr %l20, { i64, ptr } %t318)
  store i1 %t323, ptr %l178
  br label %bb93
bb93:
  %t324 = load i1, ptr %l178, !tbaa !21
  store i1 %t324, ptr %l174, !tbaa !21
  br label %bb94
bb94:
  %t325 = load i1, ptr %l174, !tbaa !21
  br i1 %t325, label %bb95, label %bb96
bb95:
  br label %bb103
bb96:
  br label %bb97
bb97:
  %t326 = load { i64, ptr }, ptr %l25, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %s0, ptr %s0, ptr %l20, { i64, ptr } %t326, i1 true)
  br label %bb98
bb98:
  store ptr %l21, ptr %l181, !tbaa !29
  %t329 = ptrtoint ptr %s0 to i64
  store i64 %t329, ptr %l182, !tbaa !24
  %t330 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t330, label %bb99, label %bb100
bb99:
  %t332 = call ptr @__olang_region_make(ptr %s0)
  %t333 = ptrtoint ptr %t332 to i64
  store i64 %t333, ptr %l182, !tbaa !24
  br label %bb100
bb100:
  %t334 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t335 = load i64, ptr %l182
  %t336 = inttoptr i64 %t335 to ptr
  %t338 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %s0, ptr %t336, { i64, ptr } %t334)
  store { i64, ptr } %t338, ptr %l185
  br label %bb101
bb101:
  %t339 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t340 = load i64, ptr %l182
  %t341 = inttoptr i64 %t340 to ptr
  %t342 = extractvalue { i64, ptr } %t339, 0
  %t343 = extractvalue { i64, ptr } %t339, 1
  %t344 = mul i64 %t342, 1
  %t345 = call ptr @__olang_scope_alloc(ptr %t341, i64 %t344)
  call void @llvm.memcpy.p0.p0.i64(ptr %t345, ptr %t343, i64 %t344, i1 false)
  %t346 = insertvalue { i64, ptr } undef, i64 %t342, 0
  %t347 = insertvalue { i64, ptr } %t346, ptr %t345, 1
  %t348 = load ptr, ptr %l181, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t348, { i64, ptr } %t347)
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t350 = load i64, ptr %l23, !tbaa !24
  %t352 = add i64 %t350, 1
  store i64 %t352, ptr %l23, !tbaa !24
  br label %bb86
bb104:
  %t355 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %s0, ptr %l21, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d205, i32 0, i32 1) })
  store { i64, ptr } %t355, ptr %l190
  br label %bb105
bb105:
  %t356 = load i64, ptr %l4, !tbaa !24
  %t357 = load i64, ptr %l3, !tbaa !24
  %t358 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t359 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t360 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t361 = extractvalue { i64, ptr } %t360, 1
  %t362 = extractvalue { i64, ptr } %t360, 0
  %t363 = add i64 %t359, %t362
  %t364 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t365 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t366 = add i64 %t363, %t365
  %t368 = call i64 @__olang_fmt_i64(ptr null, i64 %t356)
  %t369 = add i64 %t366, %t368
  %t370 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t371 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t372 = add i64 %t369, %t371
  %t374 = call i64 @__olang_fmt_i64(ptr null, i64 %t357)
  %t375 = add i64 %t372, %t374
  %t376 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t377 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  %t378 = add i64 %t375, %t377
  %t379 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t378)
  call void @olang_textcopy(ptr %t379, ptr %t358, i64 %t359)
  %t380 = getelementptr i8, ptr %t379, i64 %t359
  call void @olang_textcopy(ptr %t380, ptr %t361, i64 %t362)
  %t381 = getelementptr i8, ptr %t380, i64 %t362
  call void @olang_textcopy(ptr %t381, ptr %t364, i64 %t365)
  %t382 = getelementptr i8, ptr %t381, i64 %t365
  %t383 = call i64 @__olang_fmt_i64(ptr %t382, i64 %t356)
  %t384 = getelementptr i8, ptr %t382, i64 %t368
  call void @olang_textcopy(ptr %t384, ptr %t370, i64 %t371)
  %t385 = getelementptr i8, ptr %t384, i64 %t371
  %t386 = call i64 @__olang_fmt_i64(ptr %t385, i64 %t357)
  %t387 = getelementptr i8, ptr %t385, i64 %t374
  call void @olang_textcopy(ptr %t387, ptr %t376, i64 %t377)
  %t388 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t379, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t389, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fjupyter_2efail(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l3 = alloca i32
  %l5 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
  %t5 = extractvalue { i64, ptr } %a0, 1
  %t6 = extractvalue { i64, ptr } %a0, 0
  %t7 = add i64 %t3, %t6
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t10 = add i64 %t7, %t9
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t2, i64 %t3)
  %t12 = getelementptr i8, ptr %t11, i64 %t3
  call void @olang_textcopy(ptr %t12, ptr %t5, i64 %t6)
  %t13 = getelementptr i8, ptr %t12, i64 %t6
  call void @olang_textcopy(ptr %t13, ptr %t8, i64 %t9)
  %t14 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t11, 1
  %t17 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t15)
  store i32 %t17, ptr %l3
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb2, label %ok.19, !prof !99
ok.19:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t20 = load i32, ptr %l3, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  store i1 %t23, ptr %l5, !tbaa !21
  %t24 = load i32, ptr %l3, !tbaa !23
  %t25 = ashr i32 %t24, 16
  %t27 = icmp eq i32 %t25, 1
  br i1 %t27, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fjupyter_2eisComplete(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2fprompt_2eOpen(ptr %v0, { i64, ptr } %a0)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d212, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t5, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d213, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t21, ptr %l8, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l9, !tbaa !24
  %t24 = load i64, ptr %l9, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l10, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l9, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t35, ptr %l8, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fjupyter_2eisoNow(ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca { i64, i64, i64 }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca { i64, i64, i64 }
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call i64 @std_2ftime_2eWall()
  store i64 %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load i64, ptr %l8, !tbaa !24
  store i64 %t2, ptr %l0, !tbaa !24
  %t3 = load i64, ptr %l0, !tbaa !24
  %t5 = sdiv i64 %t3, 1000000000
  store i64 %t5, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = sdiv i64 %t7, 86400
  %t11 = call { i64, i64, i64 } @compiler_2fjupyter_2ecivil(i64 %t9)
  store { i64, i64, i64 } %t11, ptr %l13
  br label %bb2
bb2:
  %t12 = load { i64, i64, i64 }, ptr %l13
  store { i64, i64, i64 } %t12, ptr %l2
  %t13 = getelementptr { i64, i64, i64 }, ptr %l2, i32 0, i32 0
  %t14 = load i64, ptr %t13, !tbaa !24
  %t16 = getelementptr { i64, i64, i64 }, ptr %l2, i32 0, i32 1
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = getelementptr { i64, i64, i64 }, ptr %l2, i32 0, i32 2
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l1, !tbaa !24
  %t24 = srem i64 %t22, 86400
  store i64 %t24, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l0, !tbaa !24
  %t28 = srem i64 %t26, 1000000000
  %t30 = sdiv i64 %t28, 1000
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t30)
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  %t34 = call i64 @__olang_fmt_i64(ptr %t33, i64 %t30)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t33, 1
  store { i64, ptr } %t36, ptr %l7, !tbaa !27
  store i64 %t14, ptr %l23, !tbaa !24
  %t41 = call { i64, ptr } @compiler_2fjupyter_2etwo(ptr %s0, i64 %t17)
  store { i64, ptr } %t41, ptr %l25
  br label %bb3
bb3:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = call { i64, ptr } @compiler_2fjupyter_2etwo(ptr %s0, i64 %t42)
  store { i64, ptr } %t44, ptr %l27
  br label %bb4
bb4:
  %t45 = load i64, ptr %l6, !tbaa !24
  %t47 = sdiv i64 %t45, 3600
  %t49 = call { i64, ptr } @compiler_2fjupyter_2etwo(ptr %s0, i64 %t47)
  store { i64, ptr } %t49, ptr %l30
  br label %bb5
bb5:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t52 = sdiv i64 %t50, 60
  %t54 = srem i64 %t52, 60
  %t56 = call { i64, ptr } @compiler_2fjupyter_2etwo(ptr %s0, i64 %t54)
  store { i64, ptr } %t56, ptr %l34
  br label %bb6
bb6:
  %t57 = load i64, ptr %l6, !tbaa !24
  %t59 = srem i64 %t57, 60
  %t61 = call { i64, ptr } @compiler_2fjupyter_2etwo(ptr %s0, i64 %t59)
  store { i64, ptr } %t61, ptr %l37
  br label %bb7
bb7:
  %t62 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t64 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s0, ptr %s0, { i64, ptr } %t62, i64 6, i8 48)
  store { i64, ptr } %t64, ptr %l39
  br label %bb8
bb8:
  %t65 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  store i64 %t66, ptr %l40, !tbaa !24
  %t67 = load i64, ptr %l40, !tbaa !24
  %t68 = mul i64 %t67, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t68)
  %t70 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  store { i64, ptr } %t71, ptr %l41, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = load i64, ptr %l40, !tbaa !24
  %t77 = mul i64 %t76, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t73, ptr %t75, i64 %t77, i1 false)
  %t78 = load i64, ptr %l23, !tbaa !24
  %t79 = call i64 @__olang_fmt_i64(ptr null, i64 %t78)
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t83 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = add i64 %t82, %t85
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t90 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t93 = add i64 %t89, %t92
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t96 = add i64 %t93, %t95
  %t97 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 1
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t100 = add i64 %t96, %t99
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t103 = add i64 %t100, %t102
  %t104 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = add i64 %t103, %t106
  %t108 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t110 = add i64 %t107, %t109
  %t111 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 1
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t114 = add i64 %t110, %t113
  %t115 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t117 = add i64 %t114, %t116
  %t118 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t121 = add i64 %t117, %t120
  %t122 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  %t124 = add i64 %t121, %t123
  %t125 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t124)
  %t126 = call i64 @__olang_fmt_i64(ptr %t125, i64 %t78)
  %t127 = getelementptr i8, ptr %t125, i64 %t79
  call void @olang_textcopy(ptr %t127, ptr %t80, i64 %t81)
  %t128 = getelementptr i8, ptr %t127, i64 %t81
  call void @olang_textcopy(ptr %t128, ptr %t84, i64 %t85)
  %t129 = getelementptr i8, ptr %t128, i64 %t85
  call void @olang_textcopy(ptr %t129, ptr %t87, i64 %t88)
  %t130 = getelementptr i8, ptr %t129, i64 %t88
  call void @olang_textcopy(ptr %t130, ptr %t91, i64 %t92)
  %t131 = getelementptr i8, ptr %t130, i64 %t92
  call void @olang_textcopy(ptr %t131, ptr %t94, i64 %t95)
  %t132 = getelementptr i8, ptr %t131, i64 %t95
  call void @olang_textcopy(ptr %t132, ptr %t98, i64 %t99)
  %t133 = getelementptr i8, ptr %t132, i64 %t99
  call void @olang_textcopy(ptr %t133, ptr %t101, i64 %t102)
  %t134 = getelementptr i8, ptr %t133, i64 %t102
  call void @olang_textcopy(ptr %t134, ptr %t105, i64 %t106)
  %t135 = getelementptr i8, ptr %t134, i64 %t106
  call void @olang_textcopy(ptr %t135, ptr %t108, i64 %t109)
  %t136 = getelementptr i8, ptr %t135, i64 %t109
  call void @olang_textcopy(ptr %t136, ptr %t112, i64 %t113)
  %t137 = getelementptr i8, ptr %t136, i64 %t113
  call void @olang_textcopy(ptr %t137, ptr %t115, i64 %t116)
  %t138 = getelementptr i8, ptr %t137, i64 %t116
  call void @olang_textcopy(ptr %t138, ptr %t119, i64 %t120)
  %t139 = getelementptr i8, ptr %t138, i64 %t120
  call void @olang_textcopy(ptr %t139, ptr %t122, i64 %t123)
  %t140 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t125, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t141, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fjupyter_2ekernelInfo(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l1
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l1
  store %"std/prelude/text:StringBuilder" %t2, ptr %l0
  %t3 = load { i64, ptr }, ptr @G_2ecompiler_2fjupyter_2eProtocol, !tbaa !27
  %t4 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  %t7 = extractvalue { i64, ptr } %t3, 1
  %t8 = extractvalue { i64, ptr } %t3, 0
  %t9 = add i64 %t5, %t8
  %t10 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t4, i64 %t5)
  %t14 = getelementptr i8, ptr %t13, i64 %t5
  call void @olang_textcopy(ptr %t14, ptr %t7, i64 %t8)
  %t15 = getelementptr i8, ptr %t14, i64 %t8
  call void @olang_textcopy(ptr %t15, ptr %t10, i64 %t11)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t13, 1
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = extractvalue { i64, ptr } %t17, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l0, { i64, ptr } %t24)
  br label %bb2
bb2:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l0, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d221, i32 0, i32 1) })
  br label %bb3
bb3:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l0, { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d222, i32 0, i32 1) })
  br label %bb4
bb4:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l0, { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d223, i32 0, i32 1) })
  br label %bb5
bb5:
  %t31 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l0)
  store { i64, ptr } %t31, ptr %l10
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fjupyter_2ekindOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l7 = alloca i1
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t21 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/jupyter:request", ptr %a0, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %v0, { i64, ptr } %t4)
  %t7 = extractvalue { i32, ptr } %t6, 1
  %t8 = extractvalue { i32, ptr } %t6, 0
  store i32 %t8, ptr %l5
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store ptr %t7, ptr %l4
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l4, !tbaa !29
  store ptr %t11, ptr %l1, !tbaa !29
  br label %bb6
bb2:
  %t12 = load i32, ptr %l5, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l7, !tbaa !21
  %t16 = load i32, ptr %l5, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  br i1 %t19, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, [2 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 0
  store i64 0, ptr %t22
  %t23 = load { i64, [2 x i64] }, ptr %t21
  %t25 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t23, ptr %t25
  store ptr %t25, ptr %l1, !tbaa !29
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t28 = call { i64, ptr } @compiler_2fjupyter_2estr(ptr %v0, ptr %s0, ptr %s0, ptr %t27, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d224, i32 0, i32 1) })
  store { i64, ptr } %t28, ptr %l12
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t30, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fjupyter_2enewId(ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i32
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call i64 @std_2ftime_2eWall()
  store i64 %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = call i64 @std_2ftime_2eNow()
  store i64 %t2, ptr %l1
  br label %bb2
bb2:
  %t3 = call i32 @getpid()
  store i32 %t3, ptr %l2
  br label %bb3
bb3:
  %t4 = load i64, ptr %l0, !tbaa !24
  %t5 = call i64 @__olang_fmt_i64(ptr null, i64 %t4)
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = call i64 @__olang_fmt_i64(ptr null, i64 %t9)
  %t11 = add i64 %t8, %t10
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t15 = load i32, ptr %l2, !tbaa !23
  %t16 = sext i32 %t15 to i64
  %t17 = call i64 @__olang_fmt_i64(ptr null, i64 %t16)
  %t18 = add i64 %t14, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  %t20 = call i64 @__olang_fmt_i64(ptr %t19, i64 %t4)
  %t21 = getelementptr i8, ptr %t19, i64 %t5
  call void @olang_textcopy(ptr %t21, ptr %t6, i64 %t7)
  %t22 = getelementptr i8, ptr %t21, i64 %t7
  %t23 = call i64 @__olang_fmt_i64(ptr %t22, i64 %t9)
  %t24 = getelementptr i8, ptr %t22, i64 %t10
  call void @olang_textcopy(ptr %t24, ptr %t12, i64 %t13)
  %t25 = getelementptr i8, ptr %t24, i64 %t13
  %t26 = call i64 @__olang_fmt_i64(ptr %t25, i64 %t16)
  %t27 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t19, 1
  %t31 = extractvalue { i64, ptr } %t28, 0
  %t32 = extractvalue { i64, ptr } %t28, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t38 = call { i64, ptr } @std_2fsha256_2eSum(ptr %s0, ptr %s0, { i64, ptr } %t36)
  store { i64, ptr } %t38, ptr %l6
  br label %bb4
bb4:
  %t39 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  %t41 = extractvalue { i64, ptr } %t39, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  %t47 = call { i64, ptr } @std_2fhex_2eEncode(ptr %s0, ptr %s0, { i64, ptr } %t45)
  store { i64, ptr } %t47, ptr %l8
  br label %bb5
bb5:
  %t48 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l9, !tbaa !24
  %t50 = icmp sge i64 0, 0
  br i1 %t50, label %bb6, label %bb7
bb6:
  %t52 = icmp sle i64 0, 32
  br i1 %t52, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_66bf4c979bf9bab0_63292861daf5748c)
  unreachable
bb8:
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = icmp sle i64 32, %t54
  br i1 %t55, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_66bf4c979bf9bab0_63292861daf5748c)
  unreachable
bb10:
  %t57 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i8, ptr %t58, i64 0
  %t60 = sub i64 32, 0
  %t61 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t59, 1
  store { i64, ptr } %t62, ptr %l14, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l15, !tbaa !24
  %t66 = load i64, ptr %l15, !tbaa !24
  %t67 = mul i64 %t66, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l16, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = load i64, ptr %l15, !tbaa !24
  %t76 = mul i64 %t75, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t72, ptr %t74, i64 %t76, i1 false)
  %t77 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t77, ptr %l14, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t78 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t78, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_66bf4c979bf9bab0_63292861daf5748c)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fjupyter_2estr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d226, i32 0, i32 1) }, ptr %l2, !tbaa !27
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

define dso_local { i64, ptr } @compiler_2fjupyter_2etwo(ptr %v0, i64 %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2eI64_2ePadStart(ptr %s0, i64 %a0, i64 2, i8 48)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 1
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t7 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t6)
  call void @olang_textcopy(ptr %t7, ptr %t5, i64 %t6)
  %t8 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t9 = insertvalue { i64, ptr } %t8, ptr %t7, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/jupyter:Capture" @compiler_2fjupyter_3aCapture_2ector(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l9 = alloca i32
  %l12 = alloca i32
  %rv = alloca %"compiler/jupyter:Capture"
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  store i32 %t1, ptr %l1, !tbaa !23
  %t3 = load i32, ptr %l0, !tbaa !23
  %t5 = call i32 @dup(i32 %t3)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d227, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = call i32 @memfd_create(ptr %t9, i32 1)
  store i32 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i32, ptr %l9, !tbaa !23
  store i32 %t12, ptr %l3, !tbaa !23
  %t13 = load i32, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l0, !tbaa !23
  %t17 = call i32 @dup2(i32 %t13, i32 %t14)
  store i32 %t17, ptr %l12
  br label %bb3
bb3:
  %t18 = load i32, ptr %l1, !tbaa !23
  %t19 = insertvalue %"compiler/jupyter:Capture" undef, i32 %t18, 0
  %t20 = load i32, ptr %l2, !tbaa !23
  %t21 = insertvalue %"compiler/jupyter:Capture" %t19, i32 %t20, 1
  %t22 = load i32, ptr %l3, !tbaa !23
  %t23 = insertvalue %"compiler/jupyter:Capture" %t21, i32 %t22, 2
  store %"compiler/jupyter:Capture" %t23, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/jupyter:Capture", ptr %rv
  ret %"compiler/jupyter:Capture" %rr
}

define dso_local void @compiler_2fjupyter_3akernel_2ector(ptr %out, ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"compiler/jupyter:kernel"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  %t3 = call { i64, ptr } @compiler_2fjupyter_2enewId(ptr %v0)
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l11
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l5
  %t7 = ptrtoint ptr %v0 to i64
  store i64 %t7, ptr %l12, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3akernel_2e5
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t10 = call ptr @__olang_region_make(ptr %v0)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l12, !tbaa !24
  br label %bb4
bb4:
  %t12 = load i64, ptr %l12
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t13, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l14
  br label %bb5
bb5:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3akernel_2e5
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load i64, ptr %l12
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = call ptr @__olang_region_home(ptr %t22)
  %t24 = icmp ne ptr %t23, null
  %t25 = select i1 %t24, ptr %t23, ptr null
  %t26 = icmp eq ptr %t25, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t26)
  br label %bb7
bb7:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l6
  store i1 false, ptr %l7, !tbaa !21
  %t28 = ptrtoint ptr %v0 to i64
  store i64 %t28, ptr %l16, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3akernel_2e7
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t31 = call ptr @__olang_region_make(ptr %v0)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l16, !tbaa !24
  br label %bb9
bb9:
  %t33 = load i64, ptr %l16
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2ector(ptr %t34, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l18
  br label %bb10
bb10:
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2fjupyter_3akernel_2e7
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load i64, ptr %l16
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = call ptr @__olang_region_or(ptr %t42, ptr null)
  %t44 = call ptr @__olang_region_home(ptr %t43)
  %t45 = icmp ne ptr %t44, null
  %t46 = select i1 %t45, ptr %t44, ptr null
  %t47 = icmp eq ptr %t46, %t39
  call void @__olang_region_settle(ptr %t39, i1 %t47)
  br label %bb12
bb12:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  %t49 = getelementptr %"compiler/jupyter:kernel", ptr %l20, i32 0, i32 0
  %t50 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t50, ptr %t49, !tbaa !27
  %t51 = getelementptr %"compiler/jupyter:kernel", ptr %l20, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t52, ptr %t51, !tbaa !27
  %t53 = getelementptr %"compiler/jupyter:kernel", ptr %l20, i32 0, i32 2
  %t54 = load i64, ptr %l3, !tbaa !24
  store i64 %t54, ptr %t53, !tbaa !24
  %t55 = getelementptr %"compiler/jupyter:kernel", ptr %l20, i32 0, i32 3
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %t55, !tbaa !24
  %t57 = getelementptr %"compiler/jupyter:kernel", ptr %l20, i32 0, i32 4
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %t57
  %t59 = getelementptr %"compiler/jupyter:kernel", ptr %l20, i32 0, i32 5
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t59
  %t61 = getelementptr %"compiler/jupyter:kernel", ptr %l20, i32 0, i32 6
  %t62 = load i1, ptr %l7, !tbaa !21
  store i1 %t62, ptr %t61, !tbaa !21
  %t63 = getelementptr %"compiler/jupyter:kernel", ptr %l20, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %t63
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l20, i64 152, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/jupyter:pending" @compiler_2fjupyter_3apending_2ector(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/jupyter:pending"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/jupyter:pending" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/jupyter:pending" %t6, { i64, ptr } %a1, 1
  store %"compiler/jupyter:pending" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/jupyter:pending", ptr %rv
  ret %"compiler/jupyter:pending" %rr
}

define dso_local %"compiler/jupyter:request" @compiler_2fjupyter_3arequest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/jupyter:request"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/jupyter:request" undef, { i64, ptr } %a0, 0
  %t10 = insertvalue %"compiler/jupyter:request" %t8, { i64, ptr } %a1, 1
  %t12 = insertvalue %"compiler/jupyter:request" %t10, { i64, ptr } %a2, 2
  store %"compiler/jupyter:request" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/jupyter:request", ptr %rv
  ret %"compiler/jupyter:request" %rr
}

@.d0 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"{\22text/plain\22:" }>, align 8
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
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"image/png" }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
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
@.d5 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"JUPYTER_DATA_DIR" }>, align 8
declare void @__olang_errpay_pop()
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"HOME" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d10 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"/.local/share/jupyter" }>, align 8
@.d11 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/kernels/olang" }>, align 8
declare ptr @__olang_errpay_top_get()
define linkonce_odr { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i32, { i64, [2 x i64] } }
  %l3 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, { i64, [2 x i64] } }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i32, { i64, [2 x i64] } }, ptr %a0
  store { i32, { i64, [2 x i64] } } %t2, ptr %l1
  %t3 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  %t5 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %v0, ptr %t3)
  store { i64, [2 x i64] } %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t7 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  store { i64, [2 x i64] } %t6, ptr %t7
  %t8 = load { i32, { i64, [2 x i64] } }, ptr %l1
  store { i32, { i64, [2 x i64] } } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [2 x i64] } }, ptr %rv
  ret { i32, { i64, [2 x i64] } } %rr
}

@.d12 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"cannot make " }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
declare void @__olang_sb_done(ptr)
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d15 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
declare i64 @__olang_rd_quote(ptr, i64, ptr, i64, i8)
define available_externally ptr @__olang_sb_room(ptr %sb, i64 %need) alwaysinline {
entry:
  %lenp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 1
  %capp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 2
  %len = load i64, ptr %lenp
  %cap = load i64, ptr %capp
  %want = add i64 %len, %need
  %fits = icmp ule i64 %want, %cap
  br i1 %fits, label %ok, label %grow
ok:
  %data = load ptr, ptr %sb
  %p = getelementptr i8, ptr %data, i64 %len
  ret ptr %p
grow:
  %g = call ptr @__olang_sb_grow(ptr %sb, i64 %need)
  ret ptr %g
}
declare void @__olang_sb_add(ptr, i64)
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d18 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d19 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d20 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d21 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d22 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d23 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
@.d24 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", \22-quick\22" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", \22-checked\22" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"{\0A  \22argv\22: [" }>, align 8
@.d29 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", \22jupyter\22" }>, align 8
@.d30 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c", \22{connection_file}\22],\0A  \22display_name\22: \22olang\22,\0A" }>, align 8
@.d31 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"  \22language\22: \22olang\22,\0A  \22interrupt_mode\22: \22message\22\0A}\0A" }>, align 8
@.d32 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"/kernel.json" }>, align 8
@.d33 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"cannot write " }>, align 8
@.d34 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/kernel.json: " }>, align 8
@.d35 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d36 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d39 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d40 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d41 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d42 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d43 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d44 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
@.d45 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"olang jupyter: the kernel is installed at " }>, align 8
@.d46 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"/kernel.json - pick \22olang\22 in a notebook\0A" }>, align 8
@.d47 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"cannot read the connection file " }>, align 8
@.d48 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d50 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d53 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d54 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d55 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d56 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d57 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d58 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
define linkonce_odr { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fjson_3aError_7d(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i32, { i64, [2 x i64] } }
  %l3 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, { i64, [2 x i64] } }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i32, { i64, [2 x i64] } }, ptr %a0
  store { i32, { i64, [2 x i64] } } %t2, ptr %l1
  %t3 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  %t5 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %v0, ptr %t3)
  store { i64, [2 x i64] } %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t7 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  store { i64, [2 x i64] } %t6, ptr %t7
  %t8 = load { i32, { i64, [2 x i64] } }, ptr %l1
  store { i32, { i64, [2 x i64] } } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [2 x i64] } }, ptr %rv
  ret { i32, { i64, [2 x i64] } } %rr
}

@.d59 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"the connection file is no JSON: " }>, align 8
@.d60 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d61 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"json.Error.Unexpected" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d63 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d65 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"json.Error.Unterminated" }>, align 8
@.d66 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"json.Error.BadEscape" }>, align 8
@.d67 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"json.Error.BadNumber" }>, align 8
@.d68 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"json.Error.BadUtf8" }>, align 8
@.d69 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"json.Error.Trailing" }>, align 8
@.d70 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"json.Error.Depth" }>, align 8
@.d71 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"json.Error.Missing" }>, align 8
@.d72 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"json.Error.WrongKind" }>, align 8
@.d73 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"json.Error.Uneven" }>, align 8
@.d74 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ip" }>, align 8
@.d75 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"127.0.0.1" }>, align 8
@olang_2esole_2ecompiler_2fjupyter_3akernel_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make_part(ptr) noinline
@.d76 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"key" }>, align 8
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
declare void @__olang_scope_register_dtor(ptr, ptr, ptr)
define linkonce_odr void @olang_2emir_2eHelperKind_2eDrop_2ecompiler_2fjupyter_3akernel_rt(ptr %inst, ptr %scope) #0 {
entry:
  call void @olang_2emir_2eHelperKind_2eDrop_2ecompiler_2fjupyter_3akernel(ptr %scope, ptr %inst)
  ret void
}

@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d78 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the connection file has no " }>, align 8
@.d79 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d80 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d81 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"json.Error.Unexpected" }>, align 8
@.d82 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d84 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d85 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"json.Error.Unterminated" }>, align 8
@.d86 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"json.Error.BadEscape" }>, align 8
@.d87 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"json.Error.BadNumber" }>, align 8
@.d88 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"json.Error.BadUtf8" }>, align 8
@.d89 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"json.Error.Trailing" }>, align 8
@.d90 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"json.Error.Depth" }>, align 8
@.d91 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"json.Error.Missing" }>, align 8
@.d92 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"json.Error.WrongKind" }>, align 8
@.d93 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"json.Error.Uneven" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eDrop_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @std_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2edtor(ptr %v0, ptr %a0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
define linkonce_odr { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fnet_3aError_2e_2332_7d(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i32, { i64, [2 x i64] } }
  %l3 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, { i64, [2 x i64] } }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i32, { i64, [2 x i64] } }, ptr %a0
  store { i32, { i64, [2 x i64] } } %t2, ptr %l1
  %t3 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  %t5 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %v0, ptr %t3)
  store { i64, [2 x i64] } %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t7 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  store { i64, [2 x i64] } %t6, ptr %t7
  %t8 = load { i32, { i64, [2 x i64] } }, ptr %l1
  store { i32, { i64, [2 x i64] } } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [2 x i64] } }, ptr %rv
  ret { i32, { i64, [2 x i64] } } %rr
}

@.d95 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d96 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"net.Error.Address" }>, align 8
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
define linkonce_odr { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fnet_3aError_7d(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i32, { i64, [2 x i64] } }
  %l3 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, { i64, [2 x i64] } }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i32, { i64, [2 x i64] } }, ptr %a0
  store { i32, { i64, [2 x i64] } } %t2, ptr %l1
  %t3 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  %t5 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %v0, ptr %t3)
  store { i64, [2 x i64] } %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t7 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  store { i64, [2 x i64] } %t6, ptr %t7
  %t8 = load { i32, { i64, [2 x i64] } }, ptr %l1
  store { i32, { i64, [2 x i64] } } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [2 x i64] } }, ptr %rv
  ret { i32, { i64, [2 x i64] } } %rr
}

@.d99 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"cannot listen at " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aAddr(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s1
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = call ptr @__olang_scope_of(ptr %t2, ptr null)
  %t4 = ptrtoint ptr %t3 to i64
  %t6 = inttoptr i64 %t4 to ptr
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = call { i64, ptr } @std_2fnet_2estd_2fnet_3aAddr_2eStr(ptr %t6, ptr %s1, ptr %t7)
  store { i64, ptr } %t8, ptr %l3
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 1
  %t11 = extractvalue { i64, ptr } %t9, 0
  call void @__olang_sb_put(ptr %v0, ptr %t10, i64 %t11)
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
}

@.d100 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d101 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d102 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"net.Error.Refused" }>, align 8
@.d103 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"net.Error.InUse" }>, align 8
@.d104 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"net.Error.Timeout" }>, align 8
@.d105 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"net.Error.Reset" }>, align 8
@.d106 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"net.Error.Unreachable" }>, align 8
@.d107 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"net.Error.Address" }>, align 8
@.d108 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d109 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d110 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"net.Error.UnknownHost" }>, align 8
@.d111 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"net.Error.Closed" }>, align 8
@.d112 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"net.Error.Denied" }>, align 8
@.d113 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"net.Error.Failed" }>, align 8
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
define internal i1 @olang_lambda_114(ptr %env) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2fjupyter_2ecompiler_2fjupyter_3akernel_2einterrupted(ptr %vc0, ptr %cv0)
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

declare i32 @dup2(i32, i32)
declare i32 @close(i32)
declare i64 @lseek(i32, i64, i32)
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare i64 @read(i32, ptr, i64)
@.d115 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"code" }>, align 8
@.d116 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"silent" }>, align 8
@.d117 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"{\22code\22:" }>, align 8
@.d118 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c",\22execution_count\22:" }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d120 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"execute_input" }>, align 8
@.d121 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"In[" }>, align 8
@.d122 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d123 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"silent" }>, align 8
@.d124 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"stdout" }>, align 8
@.d125 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d126 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"stderr" }>, align 8
@.d127 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"{\22execution_count\22:" }>, align 8
@.d128 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c",\22data\22:" }>, align 8
@.d129 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c",\22metadata\22:{}}" }>, align 8
@.d130 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"execute_result" }>, align 8
@.d131 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d132 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"{\22status\22:\22ok\22,\22execution_count\22:" }>, align 8
@.d133 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c",\22user_expressions\22:{},\22payload\22:[]}" }>, align 8
@.d134 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"execute_reply" }>, align 8
@.d135 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"RuntimeError" }>, align 8
@.d136 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"CompileError" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d137 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d138 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\22ename\22:\22" }>, align 8
@.d139 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"\22,\22evalue\22:" }>, align 8
@.d140 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c",\22traceback\22:[" }>, align 8
@.d141 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d142 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@.d143 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d144 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d145 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"{\22status\22:\22error\22,\22execution_count\22:" }>, align 8
@.d146 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d147 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d148 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"execute_reply" }>, align 8
@.d149 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{}" }>, align 8
@.d150 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{}" }>, align 8
@.d151 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"status" }>, align 8
@.d152 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"{\22execution_state\22:\22busy\22}" }>, align 8
@.d153 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"kernel_info_request" }>, align 8
@.d154 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"kernel_info_reply" }>, align 8
@.d155 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"execute_request" }>, align 8
@.d156 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"is_complete_request" }>, align 8
@.d157 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"code" }>, align 8
@.d158 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"is_complete_reply" }>, align 8
@.d159 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"complete_request" }>, align 8
@.d160 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"complete_reply" }>, align 8
@.d161 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"inspect_request" }>, align 8
@.d162 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"inspect_reply" }>, align 8
@.d163 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"{\22status\22:\22ok\22,\22found\22:false,\22data\22:{},\22metadata\22:{}}" }>, align 8
@.d164 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"history_request" }>, align 8
@.d165 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"history_reply" }>, align 8
@.d166 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"{\22status\22:\22ok\22,\22history\22:[]}" }>, align 8
@.d167 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"comm_info_request" }>, align 8
@.d168 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"comm_info_reply" }>, align 8
@.d169 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"{\22status\22:\22ok\22,\22comms\22:{}}" }>, align 8
@.d170 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"interrupt_request" }>, align 8
@.d171 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"interrupt_reply" }>, align 8
@.d172 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"{\22status\22:\22ok\22}" }>, align 8
@.d173 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"shutdown_request" }>, align 8
@.d174 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"restart" }>, align 8
@.d175 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"{\22status\22:\22ok\22,\22restart\22:" }>, align 8
@.c176 = private unnamed_addr constant [5 x i8] c"true\00"
@.c177 = private unnamed_addr constant [6 x i8] c"false\00"
@.d178 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d179 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"shutdown_reply" }>, align 8
@.d180 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"status" }>, align 8
@.d181 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"{\22execution_state\22:\22idle\22}" }>, align 8
@.d182 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"{\22msg_id\22:\22" }>, align 8
@.d183 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d184 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"\22,\22session\22:\22" }>, align 8
@.d185 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"\22,\22username\22:\22olang\22,\22date\22:\22" }>, align 8
@.d186 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22,\22msg_type\22:\22" }>, align 8
@.d187 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"\22,\22version\22:\22" }>, align 8
@.d188 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22}" }>, align 8
@olang_2esole_2ecompiler_2fjupyter_3apending_2e1 = weak hidden constant i1 false
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_3e_2e_2d1 = weak hidden constant i1 false
@__olang_slot_chunk = external global %olang.chunk
define linkonce_odr %"compiler/jupyter:pending" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fjupyter_3apending(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/jupyter:pending"
  %l3 = alloca { i64, ptr }
  %rv = alloca %"compiler/jupyter:pending"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/jupyter:pending", ptr %a0
  store %"compiler/jupyter:pending" %t2, ptr %l1
  %t3 = getelementptr %"compiler/jupyter:pending", ptr %l1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"compiler/jupyter:pending", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load %"compiler/jupyter:pending", ptr %l1
  store %"compiler/jupyter:pending" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/jupyter:pending", ptr %rv
  ret %"compiler/jupyter:pending" %rr
}

@.d189 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"interrupt_request" }>, align 8
@.d190 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"shutdown_request" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_2c_201_3e_2e_2d1 = weak hidden constant i1 false
@.d191 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"kernel." }>, align 8
@.d192 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2ecompiler_2fjupyter_3arequest_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fjupyter_3arequest_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fjupyter_3arequest_2e2 = weak hidden constant i1 false
define linkonce_odr %"compiler/jupyter:request" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fjupyter_3arequest(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/jupyter:request"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %rv = alloca %"compiler/jupyter:request"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/jupyter:request", ptr %a0
  store %"compiler/jupyter:request" %t2, ptr %l1
  %t3 = getelementptr %"compiler/jupyter:request", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"compiler/jupyter:request", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = getelementptr %"compiler/jupyter:request", ptr %l1, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = mul i64 %t22, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = getelementptr %"compiler/jupyter:request", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t24, ptr %t25, !tbaa !27
  %t26 = getelementptr %"compiler/jupyter:request", ptr %l1, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l9, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t42 = getelementptr %"compiler/jupyter:request", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t41, ptr %t42, !tbaa !27
  %t43 = load %"compiler/jupyter:request", ptr %l1
  store %"compiler/jupyter:request" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/jupyter:request", ptr %rv
  ret %"compiler/jupyter:request" %rr
}

@.d193 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d194 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d195 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d196 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22name\22:\22" }>, align 8
@.d197 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\22,\22text\22:" }>, align 8
@.d198 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d199 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"stream" }>, align 8
@.d200 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"code" }>, align 8
@.d201 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"cursor_pos" }>, align 8
@.d202 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"import " }>, align 8
@.d203 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"text " }>, align 8
@.d204 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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

@.d205 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d206 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"{\22status\22:\22ok\22,\22matches\22:[" }>, align 8
@.d207 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"],\22cursor_start\22:" }>, align 8
@.d208 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c",\22cursor_end\22:" }>, align 8
@.d209 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c",\22metadata\22:{}}" }>, align 8
@.d210 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang jupyter: " }>, align 8
@.d211 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d212 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"{\22status\22:\22incomplete\22,\22indent\22:\22    \22}" }>, align 8
@.d213 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"{\22status\22:\22complete\22}" }>, align 8
@.d214 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d215 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"T" }>, align 8
@.d216 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d217 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d218 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"Z" }>, align 8
@.d219 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"{\22status\22:\22ok\22,\22protocol_version\22:\22" }>, align 8
@.d220 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"\22,\22implementation\22:\22olang\22," }>, align 8
@.d221 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"\22implementation_version\22:\221\22,\22language_info\22:{\22name\22:\22olang\22,\22version\22:\221\22," }>, align 8
@.d222 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"\22mimetype\22:\22text/x-olang\22,\22file_extension\22:\22.olang\22}," }>, align 8
@.d223 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"\22banner\22:\22olang - each cell runs in one session, as at the prompt (B22)\22,\22help_links\22:[]}" }>, align 8
@.d224 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"msg_type" }>, align 8
declare i32 @getpid()
@.d225 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d226 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i32 @dup(i32)
@.d227 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang-cell\00" }>, align 8
declare i32 @memfd_create(ptr, i32)
@olang_2esole_2ecompiler_2fjupyter_3akernel_2e5 = weak hidden constant i1 false
declare ptr @__olang_region_home(ptr)
@olang_2esole_2ecompiler_2fjupyter_3akernel_2e7 = weak hidden constant i1 false
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
define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 7}
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t5, ptr %rv
  br label %ret
bb2:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, ptr } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { { i64, ptr } }, ptr %t23, i32 0, i32 0
  store { i64, ptr } %t22, ptr %t24
  br label %bb1
bb3:
  %t25 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t26 = getelementptr { { i64, ptr } }, ptr %t25, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l8, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t42 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { { i64, ptr } }, ptr %t42, i32 0, i32 0
  store { i64, ptr } %t41, ptr %t43
  br label %bb1
bb4:
  %t44 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t45 = getelementptr { { i64, ptr } }, ptr %t44, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  store { i64, ptr } %t46, ptr %l9, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  store i64 %t48, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t50 = mul i64 %t49, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l11, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = load i64, ptr %l10, !tbaa !24
  %t59 = mul i64 %t58, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t55, ptr %t57, i64 %t59, i1 false)
  %t60 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t61 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t62 = getelementptr { { i64, ptr } }, ptr %t61, i32 0, i32 0
  store { i64, ptr } %t60, ptr %t62
  br label %bb1
bb5:
  %t63 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t64 = getelementptr { { i64, ptr } }, ptr %t63, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %t64
  store { i64, ptr } %t65, ptr %l12, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l13, !tbaa !24
  %t68 = load i64, ptr %l13, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l14, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l13, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t80 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t81 = getelementptr { { i64, ptr } }, ptr %t80, i32 0, i32 0
  store { i64, ptr } %t79, ptr %t81
  br label %bb1
bb6:
  %t82 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t83 = getelementptr { { i64, ptr } }, ptr %t82, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83
  store { i64, ptr } %t84, ptr %l15, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  store i64 %t86, ptr %l16, !tbaa !24
  %t87 = load i64, ptr %l16, !tbaa !24
  %t88 = mul i64 %t87, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t88)
  %t90 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %l17, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l16, !tbaa !24
  %t97 = mul i64 %t96, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t93, ptr %t95, i64 %t97, i1 false)
  %t98 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t99 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t100 = getelementptr { { i64, ptr } }, ptr %t99, i32 0, i32 0
  store { i64, ptr } %t98, ptr %t100
  br label %bb1
bb7:
  %t101 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t102 = getelementptr { { i64, ptr } }, ptr %t101, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102
  store { i64, ptr } %t103, ptr %l18, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l19, !tbaa !24
  %t106 = load i64, ptr %l19, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l20, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l19, !tbaa !24
  %t116 = mul i64 %t115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %t114, i64 %t116, i1 false)
  %t117 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t118 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t119 = getelementptr { { i64, ptr } }, ptr %t118, i32 0, i32 0
  store { i64, ptr } %t117, ptr %t119
  br label %bb1
bb8:
  %t120 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t121 = getelementptr { { i64, ptr } }, ptr %t120, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121
  store { i64, ptr } %t122, ptr %l21, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l22, !tbaa !24
  %t125 = load i64, ptr %l22, !tbaa !24
  %t126 = mul i64 %t125, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l23, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l22, !tbaa !24
  %t135 = mul i64 %t134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %t133, i64 %t135, i1 false)
  %t136 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t137 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t138 = getelementptr { { i64, ptr } }, ptr %t137, i32 0, i32 0
  store { i64, ptr } %t136, ptr %t138
  br label %bb1
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

declare ptr @__olang_sb_grow(ptr, i64) noinline
define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 10}
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 ]
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t5, ptr %rv
  br label %ret
bb2:
  br label %bb1
bb3:
  br label %bb1
bb4:
  br label %bb1
bb5:
  br label %bb1
bb6:
  br label %bb1
bb7:
  br label %bb1
bb8:
  br label %bb1
bb9:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, ptr } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { { i64, ptr } }, ptr %t23, i32 0, i32 0
  store { i64, ptr } %t22, ptr %t24
  br label %bb1
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
define linkonce_odr void @olang_2emir_2eHelperKind_2eDrop_2ecompiler_2fjupyter_3akernel(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t2 = getelementptr %"compiler/jupyter:kernel", ptr %a0, i32 0, i32 4
  call void @olang_2emir_2eHelperKind_2eDrop_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %t2)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 10}
  switch i64 %t3, label %bb1 [ i64 5, label %bb2 i64 6, label %bb3 ]
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t5, ptr %rv
  br label %ret
bb2:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, ptr } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { { i64, ptr } }, ptr %t23, i32 0, i32 0
  store { i64, ptr } %t22, ptr %t24
  br label %bb1
bb3:
  %t25 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t26 = getelementptr { { i64, ptr } }, ptr %t25, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l8, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t42 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { { i64, ptr } }, ptr %t42, i32 0, i32 0
  store { i64, ptr } %t41, ptr %t43
  br label %bb1
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

declare ptr @__olang_scope_of(ptr, ptr) noinline
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 16
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %t14, i64 %t12
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !37
  store { i64, ptr } %t16, ptr %l5, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l7, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %t33, i64 %t31
  store { i64, ptr } %t30, ptr %t34, !tbaa !37
  %t35 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t35, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb1
bb3:
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t37, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eDrop_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @std_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2edtor(ptr %v0, ptr %a0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

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
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fbase64_2eEncode(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_fe819e7eaa01f559_23eb31b016f9cd4d = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fio_2ePut_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %a0)
declare void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fsession_2eIgnoreBrokenPipes()
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2ector(ptr %v0, i64 %a0)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %v0, ptr %a0)
declare { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2eParse(ptr %v0, { i64, ptr } %a0)
declare { i32, %"std/net:Listener" } @std_2fnet_2eListener_2eListen(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2ePush_3cstd_2fnet_3aListener_3e(ptr %v0, ptr %a0, %"std/net:Listener" %a1)
declare void @compiler_2fprompt_3aSession_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2eView_3cstd_2fnet_3aListener_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fnet_2estd_2fnet_3aListener_2eFd(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eView_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eFd(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eView_3cI32_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fnet_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2eLen_3cstd_2fnet_3aListener_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2eRefMut_3cstd_2fnet_3aListener_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2eLen__H3ed9013f6604c7fc0e46a0318571cb25(ptr %v0, ptr %a0)
declare { i32, %"compiler/jupyter:pending" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2eTake_H6fdf3e54d655bfcfaddc15fb1412c3ad(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fprompt_2ecompiler_2fprompt_3aSession_2eEnd(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_c63743b1fec4c0d4_43198d06044e4ff0 = external constant [0 x i8]
@olang_loc_69a6c85b3d3b36f9_8c1f3e3900689b5d = external constant [0 x i8]
@olang_loc_df7b1c0fb7414e5a_53e9012a4cdfda7e = external constant [0 x i8]
declare { i32, %"std/zmtp:Socket" } @std_2fzmtp_2eSocket_2eAccept(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2ePush_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v1, ptr %a0, %"std/zmtp:Socket" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i1 } @std_2fjson_2estd_2fjson_3aJson_2eAsBool(ptr %v0, ptr %a0)
declare void @compiler_2fprompt_2ecompiler_2fprompt_3aSession_2eCell(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRefMut_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eSend(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_62bbb1ef982cce0d_1ddca4bbad92f791 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eLen_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRef_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eFill(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fzmtp_2estd_2fzmtp_3aSocket_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2ePush_H6843df326b132ec5af167b6d6aa0ee91(ptr %v0, ptr %v1, ptr %a0, %"compiler/jupyter:pending" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2eRef__H00d3a79bbb7d8106151b81913e117b7b(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fsha256_2eHmac(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fhex_2eEncode(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2eRemoveAt_3cstd_2fzmtp_3aSocket_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_a3bb6ba411f5318_f8f719f7dabe5f3c = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprompt_3aDecl_3e_2eView_3ccompiler_2fprompt_3aDecl_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_a638196a2ff6a75_60555f0a368b3729 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprompt_3aValue_3e_2eView_3ccompiler_2fprompt_3aValue_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H563b551a62b57e684177c5454e33a204(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %a0)
declare i1 @compiler_2fprompt_2eOpen(ptr %v0, { i64, ptr } %a0)
declare i64 @std_2ftime_2eWall()
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare i64 @std_2ftime_2eNow()
declare { i64, ptr } @std_2fsha256_2eSum(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_66bf4c979bf9bab0_63292861daf5748c = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2eI64_2ePadStart(ptr %v0, i64 %a0, i64 %a1, i8 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fjupyter_3apending_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_3aVec_3cstd_2fnet_3aListener_3e_2edtor(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fnet_2estd_2fnet_3aAddr_2eStr(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare void @std_2fprelude_2fvec_3aVec_3cstd_2fzmtp_3aSocket_3e_2edtor(ptr %v0, ptr %a0)

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
