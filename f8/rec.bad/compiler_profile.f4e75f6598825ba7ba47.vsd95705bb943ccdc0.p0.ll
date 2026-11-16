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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/profile:Sample" = type { i64, i64, i64 }
%"compiler/profile:node" = type { i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/profile:Frame" = type { i64, i64, i64 }
%"compiler/profile:Profile" = type { i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/profile:Places" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/profile:mapping" = type { i64, i64, i64, { i64, ptr } }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/profile:Tally" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/profile:elfFn" = type { i64, i64, { i64, ptr } }
@G_2ecompiler_2fprofile_2eFlameScript = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\07\04\00\00\00\00\00\00", ptr @G_2ecompiler_2fprofile_2eFlameScript.k1 }>, align 8
@G_2ecompiler_2fprofile_2eFlameScript.k1 = internal constant <{ [1031 x i8] }> <{ [1031 x i8] c"\3C\73\63\72\69\70\74\3E\0A\28\66\75\6E\63\74\69\6F\6E\28\29\7B\0A\20\20\76\61\72\20\73\76\67\3D\64\6F\63\75\6D\65\6E\74\2E\67\65\74\45\6C\65\6D\65\6E\74\42\79\49\64\28\22\66\67\22\29\2C\57\3D\73\76\67\2E\67\65\74\41\74\74\72\69\62\75\74\65\28\22\77\69\64\74\68\22\29\2A\31\2C\67\73\3D\73\76\67\2E\71\75\65\72\79\53\65\6C\65\63\74\6F\72\41\6C\6C\28\22\67\2E\66\22\29\3B\0A\20\20\66\75\6E\63\74\69\6F\6E\20\73\68\6F\77\28\78\30\2C\77\30\2C\64\30\29\7B\0A\20\20\20\20\66\6F\72\28\76\61\72\20\69\3D\30\3B\69\3C\67\73\2E\6C\65\6E\67\74\68\3B\69\2B\2B\29\7B\0A\20\20\20\20\20\20\76\61\72\20\67\3D\67\73\5B\69\5D\2C\78\3D\67\2E\64\61\74\61\73\65\74\2E\78\2A\31\2C\77\3D\67\2E\64\61\74\61\73\65\74\2E\77\2A\31\2C\64\3D\67\2E\64\61\74\61\73\65\74\2E\64\2A\31\2C\72\3D\67\2E\71\75\65\72\79\53\65\6C\65\63\74\6F\72\28\22\72\65\63\74\22\29\2C\74\3D\67\2E\71\75\65\72\79\53\65\6C\65\63\74\6F\72\28\22\74\65\78\74\22\29\3B\0A\20\20\20\20\20\20\76\61\72\20\69\6E\73\69\64\65\3D\78\3E\3D\78\30\26\26\78\2B\77\3C\3D\78\30\2B\77\30\2C\75\6E\64\65\72\3D\64\3C\64\30\26\26\78\3C\3D\78\30\26\26\78\2B\77\3E\3D\78\30\2B\77\30\3B\0A\20\20\20\20\20\20\69\66\28\21\28\69\6E\73\69\64\65\26\26\64\3E\3D\64\30\29\26\26\21\75\6E\64\65\72\29\7B\67\2E\73\74\79\6C\65\2E\64\69\73\70\6C\61\79\3D\22\6E\6F\6E\65\22\3B\63\6F\6E\74\69\6E\75\65\7D\0A\20\20\20\20\20\20\67\2E\73\74\79\6C\65\2E\64\69\73\70\6C\61\79\3D\22\22\3B\0A\20\20\20\20\20\20\76\61\72\20\70\78\3D\75\6E\64\65\72\3F\30\3A\28\78\2D\78\30\29\2F\77\30\2A\57\2C\70\77\3D\75\6E\64\65\72\3F\57\3A\77\2F\77\30\2A\57\3B\0A\20\20\20\20\20\20\72\2E\73\65\74\41\74\74\72\69\62\75\74\65\28\22\78\22\2C\70\78\29\3B\72\2E\73\65\74\41\74\74\72\69\62\75\74\65\28\22\77\69\64\74\68\22\2C\4D\61\74\68\2E\6D\61\78\28\70\77\2D\31\2C\30\2E\35\29\29\3B\74\2E\73\65\74\41\74\74\72\69\62\75\74\65\28\22\78\22\2C\70\78\2B\33\29\3B\0A\20\20\20\20\20\20\76\61\72\20\66\75\6C\6C\3D\67\2E\71\75\65\72\79\53\65\6C\65\63\74\6F\72\28\22\74\69\74\6C\65\22\29\2E\74\65\78\74\43\6F\6E\74\65\6E\74\2E\72\65\70\6C\61\63\65\28\2F\20\2D\20\5B\30\2D\39\2E\5D\2B\20\6D\73\2C\20\2E\2A\24\2F\2C\22\22\29\2C\6E\3D\4D\61\74\68\2E\66\6C\6F\6F\72\28\28\70\77\2D\36\29\2F\37\29\3B\0A\20\20\20\20\20\20\74\2E\74\65\78\74\43\6F\6E\74\65\6E\74\3D\6E\3C\33\3F\22\22\3A\28\66\75\6C\6C\2E\6C\65\6E\67\74\68\3C\3D\6E\3F\66\75\6C\6C\3A\66\75\6C\6C\2E\73\6C\69\63\65\28\30\2C\6E\2D\32\29\2B\22\2E\2E\22\29\3B\0A\20\20\20\20\7D\0A\20\20\7D\0A\20\20\66\6F\72\28\76\61\72\20\69\3D\30\3B\69\3C\67\73\2E\6C\65\6E\67\74\68\3B\69\2B\2B\29\7B\67\73\5B\69\5D\2E\61\64\64\45\76\65\6E\74\4C\69\73\74\65\6E\65\72\28\22\63\6C\69\63\6B\22\2C\66\75\6E\63\74\69\6F\6E\28\29\7B\0A\20\20\20\20\76\61\72\20\64\3D\74\68\69\73\2E\64\61\74\61\73\65\74\2E\64\2A\31\3B\73\68\6F\77\28\74\68\69\73\2E\64\61\74\61\73\65\74\2E\78\2A\31\2C\4D\61\74\68\2E\6D\61\78\28\74\68\69\73\2E\64\61\74\61\73\65\74\2E\77\2A\31\2C\31\29\2C\64\3D\3D\30\3F\30\3A\64\29\7D\29\7D\0A\20\20\73\68\6F\77\28\30\2C\4D\61\74\68\2E\6D\61\78\28\73\76\67\2E\64\61\74\61\73\65\74\2E\74\6F\74\61\6C\2A\31\2C\31\29\2C\30\29\3B\0A\7D\29\28\29\3B\0A\3C\2F\73\63\72\69\70\74\3E" }>, align 64
@G_2ecompiler_2fprofile_2eFlameWidth = constant <{ [8 x i8] }> <{ [8 x i8] c"\B0\04\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fprofile_2eFrameHeight = constant <{ [8 x i8] }> <{ [8 x i8] c"\12\00\00\00\00\00\00\00" }>, align 8
define dso_local { i64, ptr } @compiler_2fprofile_2eFlameGraph(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/profile:Sample"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca %"compiler/profile:node"
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca %"compiler/profile:node"
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca %"std/prelude/text:StringBuilder"
  %l52 = alloca double
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca ptr
  %l55 = alloca %"compiler/profile:node"
  %l58 = alloca i64
  %l60 = alloca i64
  %l65 = alloca %"compiler/profile:Sample"
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca ptr
  %l74 = alloca ptr
  %l79 = alloca i64
  %l85 = alloca ptr
  %l88 = alloca i64
  %l89 = alloca %"compiler/profile:Frame"
  %l93 = alloca %"compiler/profile:node"
  %l95 = alloca %"compiler/profile:node"
  %l97 = alloca i64
  %l99 = alloca i64
  %l104 = alloca i64
  %l107 = alloca %"compiler/profile:node"
  %l109 = alloca %"compiler/profile:node"
  %l119 = alloca i64
  %l120 = alloca ptr
  %l121 = alloca i64
  %l124 = alloca %"compiler/profile:node"
  %l126 = alloca %"compiler/profile:node"
  %l129 = alloca %"compiler/profile:node"
  %l132 = alloca ptr
  %l140 = alloca ptr
  %l141 = alloca ptr
  %l151 = alloca i64
  %l153 = alloca i64
  %l158 = alloca %"compiler/profile:node"
  %l160 = alloca %"compiler/profile:node"
  %l168 = alloca %"compiler/profile:node"
  %l170 = alloca %"compiler/profile:node"
  %l177 = alloca %"std/prelude/text:StringBuilder"
  %l178 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l180 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l182 = alloca i64
  %l184 = alloca i64
  %l189 = alloca %"compiler/profile:node"
  %l191 = alloca %"compiler/profile:node"
  %l195 = alloca i64
  %l197 = alloca i64
  %l202 = alloca i64
  %l205 = alloca %"compiler/profile:node"
  %l207 = alloca %"compiler/profile:node"
  %l208 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l210 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l211 = alloca ptr
  %l212 = alloca ptr
  %l213 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l215 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l219 = alloca i64
  %l221 = alloca i64
  %l223 = alloca i64
  %l228 = alloca i64
  %l232 = alloca i64
  %l235 = alloca %"compiler/profile:node"
  %l237 = alloca %"compiler/profile:node"
  %l247 = alloca i64
  %l249 = alloca i64
  %l254 = alloca i64
  %l257 = alloca ptr
  %l260 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l266 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l275 = alloca { i64, ptr }
  %l278 = alloca i64
  %l298 = alloca ptr
  %l301 = alloca i64
  %l303 = alloca i64
  %l305 = alloca i64
  %l307 = alloca { i64, ptr }
  %l308 = alloca i64
  %l310 = alloca i64
  %l311 = alloca i64
  %l312 = alloca i64
  %l313 = alloca i64
  %l316 = alloca { i64, ptr }
  %l318 = alloca { i64, ptr }
  %l323 = alloca %"std/prelude/text:StringBuilder"
  %l324 = alloca ptr
  %l326 = alloca { i64, ptr }
  %l331 = alloca i64
  %l338 = alloca ptr
  %l340 = alloca { i64, ptr }
  %l343 = alloca i64
  %l345 = alloca { i64, ptr }
  %l348 = alloca ptr
  %l349 = alloca i64
  %l350 = alloca i64
  %l351 = alloca i64
  %l353 = alloca { i64, ptr }
  %l360 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t296 = alloca { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, align 8
  store { i64, ptr } %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l53
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  store ptr %l3, ptr %l54, !tbaa !29
  %t3 = call %"compiler/profile:node" @compiler_2fprofile_3anode_2ector(ptr %s0, i64 -1, i64 0)
  store %"compiler/profile:node" %t3, ptr %l55
  br label %bb2
bb2:
  %t4 = load ptr, ptr %l54, !tbaa !29
  %t5 = load %"compiler/profile:node", ptr %l55
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2ePush_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %t4, %"compiler/profile:node" %t5)
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/profile:Profile", ptr %t6, i32 0, i32 3
  store ptr %t8, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t10 = load i64, ptr %l5, !tbaa !24
  store i64 %t10, ptr %l58, !tbaa !24
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eLen_3ccompiler_2fprofile_3aSample_3e(ptr %v1, ptr %t11)
  store i64 %t13, ptr %l60
  br label %bb5
bb5:
  %t14 = load i64, ptr %l58, !tbaa !24
  %t15 = load i64, ptr %l60, !tbaa !24
  %t16 = icmp slt i64 %t14, %t15
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = call %"compiler/profile:Sample" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eAt_3ccompiler_2fprofile_3aSample_3e(ptr %v1, ptr %t20, i64 %t21)
  store %"compiler/profile:Sample" %t24, ptr %l65
  br label %bb9
bb9:
  %t25 = load %"compiler/profile:Sample", ptr %l65
  store %"compiler/profile:Sample" %t25, ptr %l6
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t28 = load %"compiler/profile:Sample", ptr %l6
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2estack(ptr %v2, ptr %v1, ptr %s2, ptr %t26, ptr %t27, %"compiler/profile:Sample" %t28)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l69
  br label %bb10
bb10:
  %t33 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t34 = getelementptr %"compiler/profile:Sample", ptr %l6, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l10, !tbaa !24
  %t40 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eRefMut_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 0)
  store ptr %t40, ptr %l73
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l73, !tbaa !29
  store ptr %t41, ptr %l74, !tbaa !29
  %t43 = load ptr, ptr %l74, !tbaa !29
  %t44 = getelementptr %"compiler/profile:node", ptr %t43, i32 0, i32 2
  %t45 = load i64, ptr %t44, !tbaa !24
  %t46 = load i64, ptr %l10, !tbaa !24
  %t49 = add i64 %t45, %t46
  %t51 = load ptr, ptr %l74, !tbaa !29
  %t52 = getelementptr %"compiler/profile:node", ptr %t51, i32 0, i32 2
  store i64 %t49, ptr %t52, !tbaa !24
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %l7)
  store i64 %t54, ptr %l79
  br label %bb12
bb12:
  %t55 = load i64, ptr %l79, !tbaa !24
  %t56 = sub i64 %t55, 1
  store i64 %t56, ptr %l12, !tbaa !24
  br label %bb13
bb13:
  %t58 = load i64, ptr %l12, !tbaa !24
  %t60 = icmp sge i64 %t58, 0
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb14, label %bb15
bb14:
  br label %bb46
bb15:
  br label %bb16
bb16:
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr %"compiler/profile:Places", ptr %t64, i32 0, i32 2
  store ptr %t66, ptr %l85, !tbaa !29
  %t67 = load i64, ptr %l12, !tbaa !24
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %l7, i64 %t67)
  store i64 %t70, ptr %l88
  br label %bb17
bb17:
  %t71 = load ptr, ptr %l85, !tbaa !29
  %t72 = load i64, ptr %l88, !tbaa !24
  %t73 = call %"compiler/profile:Frame" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2eAt_3ccompiler_2fprofile_3aFrame_3e(ptr %v2, ptr %t71, i64 %t72)
  store %"compiler/profile:Frame" %t73, ptr %l89
  br label %bb18
bb18:
  %t74 = getelementptr %"compiler/profile:Frame", ptr %l89, i32 0, i32 0
  %t75 = load i64, ptr %t74, !tbaa !24
  store i64 %t75, ptr %l13, !tbaa !24
  store i64 -1, ptr %l14, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s4
  %t77 = load i64, ptr %l8, !tbaa !24
  %t80 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t77)
  store %"compiler/profile:node" %t80, ptr %l93
  br label %bb19
bb19:
  %t82 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s0, ptr %l93)
  store %"compiler/profile:node" %t82, ptr %l95
  br label %bb20
bb20:
  %t83 = getelementptr %"compiler/profile:node", ptr %l95, i32 0, i32 3
  store ptr %t83, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t85 = load i64, ptr %l16, !tbaa !24
  store i64 %t85, ptr %l97, !tbaa !24
  %t86 = load ptr, ptr %l15, !tbaa !29
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s4, ptr %t86)
  store i64 %t88, ptr %l99
  br label %bb22
bb22:
  %t89 = load i64, ptr %l97, !tbaa !24
  %t90 = load i64, ptr %l99, !tbaa !24
  %t91 = icmp slt i64 %t89, %t90
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb33
bb24:
  br label %bb25
bb25:
  %t95 = load ptr, ptr %l15, !tbaa !29
  %t96 = load i64, ptr %l16, !tbaa !24
  %t99 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s4, ptr %t95, i64 %t96)
  store i64 %t99, ptr %l104
  br label %bb26
bb26:
  %t100 = load i64, ptr %l104, !tbaa !24
  store i64 %t100, ptr %l17, !tbaa !24
  %t101 = load i64, ptr %l17, !tbaa !24
  %t104 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s5, ptr %l3, i64 %t101)
  store %"compiler/profile:node" %t104, ptr %l107
  br label %bb27
bb27:
  %t106 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s5, ptr %l107)
  store %"compiler/profile:node" %t106, ptr %l109
  br label %bb28
bb28:
  %t107 = getelementptr %"compiler/profile:node", ptr %l109, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  %t109 = load i64, ptr %l13, !tbaa !24
  %t112 = icmp eq i64 %t108, %t109
  br i1 %t112, label %bb29, label %bb30
bb29:
  %t114 = load i64, ptr %l17, !tbaa !24
  store i64 %t114, ptr %l14, !tbaa !24
  br label %bb31
bb30:
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb32:
  %t116 = load i64, ptr %l16, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l16, !tbaa !24
  br label %bb21
bb33:
  call void @__olang_scope_close(ptr %s4)
  %t120 = load i64, ptr %l14, !tbaa !24
  %t122 = icmp slt i64 %t120, 0
  br i1 %t122, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s8
  %t125 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eLen_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %l3)
  store i64 %t125, ptr %l119
  br label %bb36
bb35:
  br label %bb43
bb36:
  %t126 = load i64, ptr %l119, !tbaa !24
  store i64 %t126, ptr %l14, !tbaa !24
  store ptr %l3, ptr %l120, !tbaa !29
  %t127 = load i64, ptr %l13, !tbaa !24
  store i64 %t127, ptr %l121, !tbaa !24
  %t128 = load i64, ptr %l8, !tbaa !24
  %t131 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s8, ptr %l3, i64 %t128)
  store %"compiler/profile:node" %t131, ptr %l124
  br label %bb37
bb37:
  %t133 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s8, ptr %l124)
  store %"compiler/profile:node" %t133, ptr %l126
  br label %bb38
bb38:
  %t134 = getelementptr %"compiler/profile:node", ptr %l126, i32 0, i32 1
  %t135 = load i64, ptr %t134, !tbaa !24
  %t137 = add i64 %t135, 1
  %t138 = load i64, ptr %l121, !tbaa !24
  %t140 = call %"compiler/profile:node" @compiler_2fprofile_3anode_2ector(ptr %s8, i64 %t138, i64 %t137)
  store %"compiler/profile:node" %t140, ptr %l129
  br label %bb39
bb39:
  %t141 = load ptr, ptr %l120, !tbaa !29
  %t142 = load %"compiler/profile:node", ptr %l129
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2ePush_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s8, ptr %t141, %"compiler/profile:node" %t142)
  br label %bb40
bb40:
  %t143 = load i64, ptr %l8, !tbaa !24
  %t146 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eRefMut_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t143)
  store ptr %t146, ptr %l132
  br label %bb41
bb41:
  %t147 = load ptr, ptr %l132, !tbaa !29
  %t149 = getelementptr %"compiler/profile:node", ptr %t147, i32 0, i32 3
  %t150 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t149, i64 %t150)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s8)
  br label %bb43
bb43:
  %t153 = load i64, ptr %l14, !tbaa !24
  %t155 = getelementptr %"compiler/profile:Sample", ptr %l6, i32 0, i32 0
  %t156 = load i64, ptr %t155, !tbaa !24
  store i64 %t156, ptr %l19, !tbaa !24
  %t161 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eRefMut_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t153)
  store ptr %t161, ptr %l140
  br label %bb44
bb44:
  %t162 = load ptr, ptr %l140, !tbaa !29
  store ptr %t162, ptr %l141, !tbaa !29
  %t164 = load ptr, ptr %l141, !tbaa !29
  %t165 = getelementptr %"compiler/profile:node", ptr %t164, i32 0, i32 2
  %t166 = load i64, ptr %t165, !tbaa !24
  %t167 = load i64, ptr %l19, !tbaa !24
  %t170 = add i64 %t166, %t167
  %t172 = load ptr, ptr %l141, !tbaa !29
  %t173 = getelementptr %"compiler/profile:node", ptr %t172, i32 0, i32 2
  store i64 %t170, ptr %t173, !tbaa !24
  %t174 = load i64, ptr %l14, !tbaa !24
  store i64 %t174, ptr %l8, !tbaa !24
  %t176 = load i64, ptr %l12, !tbaa !24
  %t178 = sub i64 %t176, 1
  store i64 %t178, ptr %l12, !tbaa !24
  br label %bb45
bb45:
  br label %bb13
bb46:
  call void @__olang_scope_close(ptr %s2)
  br label %bb47
bb47:
  %t180 = load i64, ptr %l5, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l5, !tbaa !24
  br label %bb4
bb48:
  store i64 0, ptr %l21, !tbaa !24
  store ptr %l3, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb49
bb49:
  store %olang.scope zeroinitializer, ptr %s11
  %t185 = load i64, ptr %l23, !tbaa !24
  store i64 %t185, ptr %l151, !tbaa !24
  %t186 = load ptr, ptr %l22, !tbaa !29
  %t188 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eLen_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %t186)
  store i64 %t188, ptr %l153
  br label %bb50
bb50:
  %t189 = load i64, ptr %l151, !tbaa !24
  %t190 = load i64, ptr %l153, !tbaa !24
  %t191 = icmp slt i64 %t189, %t190
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s11)
  br label %bb60
bb52:
  br label %bb53
bb53:
  %t195 = load ptr, ptr %l22, !tbaa !29
  %t196 = load i64, ptr %l23, !tbaa !24
  %t199 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %t195, i64 %t196)
  store %"compiler/profile:node" %t199, ptr %l158
  br label %bb54
bb54:
  %t201 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s11, ptr %l158)
  store %"compiler/profile:node" %t201, ptr %l160
  br label %bb55
bb55:
  %t202 = load %"compiler/profile:node", ptr %l160
  store %"compiler/profile:node" %t202, ptr %l24
  %t203 = getelementptr %"compiler/profile:node", ptr %l24, i32 0, i32 1
  %t204 = load i64, ptr %t203, !tbaa !24
  %t205 = load i64, ptr %l21, !tbaa !24
  %t208 = icmp sgt i64 %t204, %t205
  br i1 %t208, label %bb56, label %bb57
bb56:
  %t210 = getelementptr %"compiler/profile:node", ptr %l24, i32 0, i32 1
  %t211 = load i64, ptr %t210, !tbaa !24
  store i64 %t211, ptr %l21, !tbaa !24
  br label %bb58
bb57:
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s11)
  br label %bb59
bb59:
  %t213 = load i64, ptr %l23, !tbaa !24
  %t215 = add i64 %t213, 1
  store i64 %t215, ptr %l23, !tbaa !24
  br label %bb49
bb60:
  %t218 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 0)
  store %"compiler/profile:node" %t218, ptr %l168
  br label %bb61
bb61:
  %t220 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s0, ptr %l168)
  store %"compiler/profile:node" %t220, ptr %l170
  br label %bb62
bb62:
  %t221 = getelementptr %"compiler/profile:node", ptr %l170, i32 0, i32 2
  %t222 = load i64, ptr %t221, !tbaa !24
  store i64 %t222, ptr %l25, !tbaa !24
  %t224 = load i64, ptr %l21, !tbaa !24
  %t226 = add i64 %t224, 1
  %t227 = load i64, ptr @G_2ecompiler_2fprofile_2eFrameHeight, !tbaa !24
  %t230 = mul i64 %t226, %t227
  %t232 = add i64 %t230, 40
  store i64 %t232, ptr %l26, !tbaa !24
  %t234 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t234, ptr %l177
  br label %bb63
bb63:
  %t235 = load %"std/prelude/text:StringBuilder", ptr %l177
  store %"std/prelude/text:StringBuilder" %t235, ptr %l27
  %t236 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %l178
  br label %bb64
bb64:
  %t237 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l178
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t237, ptr %l28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l28, i64 0)
  br label %bb65
bb65:
  %t239 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %l180
  br label %bb66
bb66:
  %t240 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l180
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %l29
  store ptr %l3, ptr %l30, !tbaa !29
  store i64 0, ptr %l31, !tbaa !24
  br label %bb67
bb67:
  store %olang.scope zeroinitializer, ptr %s15
  %t242 = load i64, ptr %l31, !tbaa !24
  store i64 %t242, ptr %l182, !tbaa !24
  %t243 = load ptr, ptr %l30, !tbaa !29
  %t245 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eLen_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %t243)
  store i64 %t245, ptr %l184
  br label %bb68
bb68:
  %t246 = load i64, ptr %l182, !tbaa !24
  %t247 = load i64, ptr %l184, !tbaa !24
  %t248 = icmp slt i64 %t246, %t247
  %t250 = xor i1 %t248, true
  br i1 %t250, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s15)
  br label %bb76
bb70:
  br label %bb71
bb71:
  %t252 = load ptr, ptr %l30, !tbaa !29
  %t253 = load i64, ptr %l31, !tbaa !24
  %t256 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %t252, i64 %t253)
  store %"compiler/profile:node" %t256, ptr %l189
  br label %bb72
bb72:
  %t258 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s15, ptr %l189)
  store %"compiler/profile:node" %t258, ptr %l191
  br label %bb73
bb73:
  %t259 = load %"compiler/profile:node", ptr %l191
  store %"compiler/profile:node" %t259, ptr %l32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l29, i64 0)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s15)
  br label %bb75
bb75:
  %t261 = load i64, ptr %l31, !tbaa !24
  %t263 = add i64 %t261, 1
  store i64 %t263, ptr %l31, !tbaa !24
  br label %bb67
bb76:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb77
bb77:
  store %olang.scope zeroinitializer, ptr %s18
  %t265 = load i64, ptr %l33, !tbaa !24
  store i64 %t265, ptr %l195, !tbaa !24
  %t267 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l28)
  store i64 %t267, ptr %l197
  br label %bb78
bb78:
  %t268 = load i64, ptr %l195, !tbaa !24
  %t269 = load i64, ptr %l197, !tbaa !24
  %t270 = icmp slt i64 %t268, %t269
  %t272 = xor i1 %t270, true
  br i1 %t272, label %bb79, label %bb80
bb79:
  call void @__olang_scope_close(ptr %s18)
  br label %bb102
bb80:
  br label %bb81
bb81:
  %t274 = load i64, ptr %l33, !tbaa !24
  %t277 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l28, i64 %t274)
  store i64 %t277, ptr %l202
  br label %bb82
bb82:
  %t278 = load i64, ptr %l202, !tbaa !24
  store i64 %t278, ptr %l34, !tbaa !24
  %t279 = load i64, ptr %l34, !tbaa !24
  %t282 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t279)
  store %"compiler/profile:node" %t282, ptr %l205
  br label %bb83
bb83:
  %t284 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s0, ptr %l205)
  store %"compiler/profile:node" %t284, ptr %l207
  br label %bb84
bb84:
  %t285 = getelementptr %"compiler/profile:node", ptr %l207, i32 0, i32 3
  %t286 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t285
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %l208
  %t288 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s18, ptr %l208)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %l210
  br label %bb85
bb85:
  %t289 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l210
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t289, ptr %l35
  store ptr %l35, ptr %l211, !tbaa !29
  %t290 = load ptr, ptr %l2, !tbaa !29
  store ptr %t290, ptr %l212, !tbaa !29
  %t291 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t291, ptr %l213
  %t293 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %l213)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t293, ptr %l215
  br label %bb86
bb86:
  %t294 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr null, i32 1
  %t295 = ptrtoint ptr %t294 to i64
  %t297 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %t296, i32 0, i32 0
  %t298 = load ptr, ptr %l212, !tbaa !29
  store ptr %t298, ptr %t297, !tbaa !28
  %t299 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %t296, i32 0, i32 1
  %t300 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l215
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t300, ptr %t299, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t301 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %t296, i32 0, i32 2
  store ptr %v2, ptr %t301, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t302 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %t296, i32 0, i32 3
  store ptr %s0, ptr %t302, !tbaa !28
  %t303 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t304 = insertvalue { ptr, ptr } %t303, ptr %t296, 1
  %t305 = load ptr, ptr %l211, !tbaa !29
  %t307 = extractvalue { ptr, ptr } %t304, 0
  %t308 = extractvalue { ptr, ptr } %t304, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s18, ptr %s18, ptr %t305, ptr %t307, ptr %t308)
  br label %bb87
bb87:
  %t309 = load i64, ptr %l34, !tbaa !24
  %t312 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l29, i64 %t309)
  store i64 %t312, ptr %l219
  br label %bb88
bb88:
  %t313 = load i64, ptr %l219, !tbaa !24
  store i64 %t313, ptr %l36, !tbaa !24
  store ptr %l35, ptr %l37, !tbaa !29
  store i64 0, ptr %l38, !tbaa !24
  br label %bb89
bb89:
  store %olang.scope zeroinitializer, ptr %s20
  %t315 = load i64, ptr %l38, !tbaa !24
  store i64 %t315, ptr %l221, !tbaa !24
  %t316 = load ptr, ptr %l37, !tbaa !29
  %t318 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s18, ptr %t316)
  store i64 %t318, ptr %l223
  br label %bb90
bb90:
  %t319 = load i64, ptr %l221, !tbaa !24
  %t320 = load i64, ptr %l223, !tbaa !24
  %t321 = icmp slt i64 %t319, %t320
  %t323 = xor i1 %t321, true
  br i1 %t323, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s20)
  br label %bb100
bb92:
  br label %bb93
bb93:
  %t325 = load ptr, ptr %l37, !tbaa !29
  %t326 = load i64, ptr %l38, !tbaa !24
  %t329 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s18, ptr %t325, i64 %t326)
  store i64 %t329, ptr %l228
  br label %bb94
bb94:
  %t330 = load i64, ptr %l228, !tbaa !24
  store i64 %t330, ptr %l39, !tbaa !24
  %t331 = load i64, ptr %l39, !tbaa !24
  %t332 = load i64, ptr %l36, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %s0, ptr %l29, i64 %t331, i64 %t332)
  br label %bb95
bb95:
  %t336 = load i64, ptr %l36, !tbaa !24
  store i64 %t336, ptr %l232, !tbaa !24
  %t337 = load i64, ptr %l39, !tbaa !24
  %t340 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s20, ptr %l3, i64 %t337)
  store %"compiler/profile:node" %t340, ptr %l235
  br label %bb96
bb96:
  %t342 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s20, ptr %l235)
  store %"compiler/profile:node" %t342, ptr %l237
  br label %bb97
bb97:
  %t343 = getelementptr %"compiler/profile:node", ptr %l237, i32 0, i32 2
  %t344 = load i64, ptr %t343, !tbaa !24
  %t345 = load i64, ptr %l232, !tbaa !24
  %t347 = add i64 %t345, %t344
  store i64 %t347, ptr %l36, !tbaa !24
  %t349 = load i64, ptr %l39, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l28, i64 %t349)
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s20)
  br label %bb99
bb99:
  %t352 = load i64, ptr %l38, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l38, !tbaa !24
  br label %bb89
bb100:
  call void @__olang_scope_close(ptr %s18)
  br label %bb101
bb101:
  %t356 = load i64, ptr %l33, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l33, !tbaa !24
  br label %bb77
bb102:
  store ptr %l28, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb103
bb103:
  store %olang.scope zeroinitializer, ptr %s24
  %t361 = load i64, ptr %l41, !tbaa !24
  store i64 %t361, ptr %l247, !tbaa !24
  %t362 = load ptr, ptr %l40, !tbaa !29
  %t364 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t362)
  store i64 %t364, ptr %l249
  br label %bb104
bb104:
  %t365 = load i64, ptr %l247, !tbaa !24
  %t366 = load i64, ptr %l249, !tbaa !24
  %t367 = icmp slt i64 %t365, %t366
  %t369 = xor i1 %t367, true
  br i1 %t369, label %bb105, label %bb106
bb105:
  call void @__olang_scope_close(ptr %s24)
  br label %bb122
bb106:
  br label %bb107
bb107:
  %t371 = load ptr, ptr %l40, !tbaa !29
  %t372 = load i64, ptr %l41, !tbaa !24
  %t375 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t371, i64 %t372)
  store i64 %t375, ptr %l254
  br label %bb108
bb108:
  %t376 = load i64, ptr %l254, !tbaa !24
  store i64 %t376, ptr %l42, !tbaa !24
  %t377 = load i64, ptr %l42, !tbaa !24
  %t380 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eRef_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t377)
  store ptr %t380, ptr %l257
  br label %bb109
bb109:
  %t381 = load ptr, ptr %l257, !tbaa !29
  store ptr %t381, ptr %l43, !tbaa !29
  %t382 = load i64, ptr %l42, !tbaa !24
  %t384 = icmp eq i64 %t382, 0
  br i1 %t384, label %bb110, label %bb111
bb110:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l260, !tbaa !27
  br label %bb113
bb111:
  %t386 = load ptr, ptr %l2, !tbaa !29
  %t388 = getelementptr %"compiler/profile:Places", ptr %t386, i32 0, i32 0
  %t389 = load ptr, ptr %l43, !tbaa !29
  %t391 = getelementptr %"compiler/profile:node", ptr %t389, i32 0, i32 0
  %t392 = load i64, ptr %t391, !tbaa !24
  %t395 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %s24, ptr %t388, i64 %t392)
  store { i64, ptr } %t395, ptr %l265
  br label %bb112
bb112:
  %t396 = load { i64, ptr }, ptr %l265, !tbaa !27
  store { i64, ptr } %t396, ptr %l260, !tbaa !27
  br label %bb113
bb113:
  %t397 = load { i64, ptr }, ptr %l260, !tbaa !27
  store { i64, ptr } %t397, ptr %l44, !tbaa !27
  %t398 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t398, ptr %l266, !tbaa !27
  %t399 = load ptr, ptr %l43, !tbaa !29
  %t401 = getelementptr %"compiler/profile:node", ptr %t399, i32 0, i32 2
  %t402 = load i64, ptr %t401, !tbaa !24
  %t403 = load ptr, ptr %l1, !tbaa !29
  %t405 = getelementptr %"compiler/profile:Profile", ptr %t403, i32 0, i32 0
  %t406 = load i64, ptr %t405, !tbaa !24
  %t409 = call { i64, ptr } @compiler_2fprofile_2emillis(ptr %s24, i64 %t402, i64 %t406)
  store { i64, ptr } %t409, ptr %l271
  br label %bb114
bb114:
  %t410 = load ptr, ptr %l43, !tbaa !29
  %t412 = getelementptr %"compiler/profile:node", ptr %t410, i32 0, i32 2
  %t413 = load i64, ptr %t412, !tbaa !24
  %t414 = load i64, ptr %l25, !tbaa !24
  %t417 = call { i64, ptr } @compiler_2fprofile_2epct(ptr %s24, i64 %t413, i64 %t414)
  store { i64, ptr } %t417, ptr %l275
  br label %bb115
bb115:
  %t418 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t418, 1
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t421 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t422 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t423 = add i64 %t420, %t422
  %t424 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 1
  %t426 = extractvalue { i64, ptr } %t424, 0
  %t427 = add i64 %t423, %t426
  %t428 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t429 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t430 = add i64 %t427, %t429
  %t431 = load { i64, ptr }, ptr %l275, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t431, 1
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t434 = add i64 %t430, %t433
  %t435 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t434)
  call void @olang_textcopy(ptr %t435, ptr %t419, i64 %t420)
  %t436 = getelementptr i8, ptr %t435, i64 %t420
  call void @olang_textcopy(ptr %t436, ptr %t421, i64 %t422)
  %t437 = getelementptr i8, ptr %t436, i64 %t422
  call void @olang_textcopy(ptr %t437, ptr %t425, i64 %t426)
  %t438 = getelementptr i8, ptr %t437, i64 %t426
  call void @olang_textcopy(ptr %t438, ptr %t428, i64 %t429)
  %t439 = getelementptr i8, ptr %t438, i64 %t429
  call void @olang_textcopy(ptr %t439, ptr %t432, i64 %t433)
  %t440 = insertvalue { i64, ptr } undef, i64 %t434, 0
  %t441 = insertvalue { i64, ptr } %t440, ptr %t435, 1
  store { i64, ptr } %t441, ptr %l45, !tbaa !27
  %t443 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t445 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %s24, { i64, ptr } %t443)
  store i64 %t445, ptr %l278
  br label %bb116
bb116:
  %t446 = load i64, ptr %l278, !tbaa !24
  %t447 = and i64 %t446, 65535
  store i64 %t447, ptr %l46, !tbaa !24
  %t449 = load i64, ptr %l46, !tbaa !24
  %t451 = srem i64 %t449, 50
  %t453 = add i64 205, %t451
  store i64 %t453, ptr %l47, !tbaa !24
  %t455 = load i64, ptr %l46, !tbaa !24
  %t457 = sdiv i64 %t455, 50
  %t459 = srem i64 %t457, 140
  %t461 = add i64 90, %t459
  store i64 %t461, ptr %l48, !tbaa !24
  %t463 = load i64, ptr %l46, !tbaa !24
  %t465 = sdiv i64 %t463, 7000
  %t467 = srem i64 %t465, 55
  store i64 %t467, ptr %l49, !tbaa !24
  %t469 = load i64, ptr %l26, !tbaa !24
  %t471 = sub i64 %t469, 20
  %t472 = load ptr, ptr %l43, !tbaa !29
  %t474 = getelementptr %"compiler/profile:node", ptr %t472, i32 0, i32 1
  %t475 = load i64, ptr %t474, !tbaa !24
  %t477 = add i64 %t475, 1
  %t478 = load i64, ptr @G_2ecompiler_2fprofile_2eFrameHeight, !tbaa !24
  %t481 = mul i64 %t477, %t478
  %t484 = sub i64 %t471, %t481
  store i64 %t484, ptr %l50, !tbaa !24
  store ptr %l27, ptr %l298, !tbaa !29
  %t486 = load i64, ptr %l42, !tbaa !24
  %t489 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l29, i64 %t486)
  store i64 %t489, ptr %l301
  br label %bb117
bb117:
  %t490 = load ptr, ptr %l43, !tbaa !29
  %t492 = getelementptr %"compiler/profile:node", ptr %t490, i32 0, i32 2
  %t493 = load i64, ptr %t492, !tbaa !24
  store i64 %t493, ptr %l303, !tbaa !24
  %t494 = load ptr, ptr %l43, !tbaa !29
  %t496 = getelementptr %"compiler/profile:node", ptr %t494, i32 0, i32 1
  %t497 = load i64, ptr %t496, !tbaa !24
  store i64 %t497, ptr %l305, !tbaa !24
  %t498 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t500 = call { i64, ptr } @compiler_2fprofile_2eescapeXml(ptr %s24, ptr %s24, { i64, ptr } %t498)
  store { i64, ptr } %t500, ptr %l307
  br label %bb118
bb118:
  %t501 = load i64, ptr %l50, !tbaa !24
  store i64 %t501, ptr %l308, !tbaa !24
  %t502 = load i64, ptr @G_2ecompiler_2fprofile_2eFrameHeight, !tbaa !24
  %t504 = sub i64 %t502, 1
  store i64 %t504, ptr %l310, !tbaa !24
  %t505 = load i64, ptr %l47, !tbaa !24
  store i64 %t505, ptr %l311, !tbaa !24
  %t506 = load i64, ptr %l48, !tbaa !24
  store i64 %t506, ptr %l312, !tbaa !24
  %t507 = load i64, ptr %l49, !tbaa !24
  store i64 %t507, ptr %l313, !tbaa !24
  %t508 = load i64, ptr %l50, !tbaa !24
  %t510 = add i64 %t508, 13
  %t512 = call i64 @__olang_fmt_i64(ptr null, i64 %t510)
  %t513 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t512)
  %t514 = call i64 @__olang_fmt_i64(ptr %t513, i64 %t510)
  %t515 = insertvalue { i64, ptr } undef, i64 %t512, 0
  %t516 = insertvalue { i64, ptr } %t515, ptr %t513, 1
  store { i64, ptr } %t516, ptr %l316, !tbaa !27
  %t517 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t519 = call { i64, ptr } @compiler_2fprofile_2eescapeXml(ptr %s24, ptr %s24, { i64, ptr } %t517)
  store { i64, ptr } %t519, ptr %l318
  br label %bb119
bb119:
  %t520 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t521 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t522 = load i64, ptr %l301, !tbaa !24
  %t523 = call i64 @__olang_fmt_i64(ptr null, i64 %t522)
  %t524 = add i64 %t521, %t523
  %t525 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t526 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t527 = add i64 %t524, %t526
  %t528 = load i64, ptr %l303, !tbaa !24
  %t529 = call i64 @__olang_fmt_i64(ptr null, i64 %t528)
  %t530 = add i64 %t527, %t529
  %t531 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t532 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t533 = add i64 %t530, %t532
  %t534 = load i64, ptr %l305, !tbaa !24
  %t535 = call i64 @__olang_fmt_i64(ptr null, i64 %t534)
  %t536 = add i64 %t533, %t535
  %t537 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t538 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t539 = add i64 %t536, %t538
  %t540 = load { i64, ptr }, ptr %l307, !tbaa !27
  %t541 = extractvalue { i64, ptr } %t540, 1
  %t542 = extractvalue { i64, ptr } %t540, 0
  %t543 = add i64 %t539, %t542
  %t544 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t545 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t546 = add i64 %t543, %t545
  %t547 = load i64, ptr %l308, !tbaa !24
  %t548 = call i64 @__olang_fmt_i64(ptr null, i64 %t547)
  %t549 = add i64 %t546, %t548
  %t550 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t551 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t552 = add i64 %t549, %t551
  %t553 = load i64, ptr %l310, !tbaa !24
  %t554 = call i64 @__olang_fmt_i64(ptr null, i64 %t553)
  %t555 = add i64 %t552, %t554
  %t556 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t557 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t558 = add i64 %t555, %t557
  %t559 = load i64, ptr %l311, !tbaa !24
  %t560 = call i64 @__olang_fmt_i64(ptr null, i64 %t559)
  %t561 = add i64 %t558, %t560
  %t562 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t563 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t564 = add i64 %t561, %t563
  %t565 = load i64, ptr %l312, !tbaa !24
  %t566 = call i64 @__olang_fmt_i64(ptr null, i64 %t565)
  %t567 = add i64 %t564, %t566
  %t568 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t569 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t570 = add i64 %t567, %t569
  %t571 = load i64, ptr %l313, !tbaa !24
  %t572 = call i64 @__olang_fmt_i64(ptr null, i64 %t571)
  %t573 = add i64 %t570, %t572
  %t574 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t575 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t576 = add i64 %t573, %t575
  %t577 = load { i64, ptr }, ptr %l316, !tbaa !27
  %t578 = extractvalue { i64, ptr } %t577, 1
  %t579 = extractvalue { i64, ptr } %t577, 0
  %t580 = add i64 %t576, %t579
  %t581 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t582 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t583 = add i64 %t580, %t582
  %t584 = load { i64, ptr }, ptr %l318, !tbaa !27
  %t585 = extractvalue { i64, ptr } %t584, 1
  %t586 = extractvalue { i64, ptr } %t584, 0
  %t587 = add i64 %t583, %t586
  %t588 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t589 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t590 = add i64 %t587, %t589
  %t591 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t590)
  call void @olang_textcopy(ptr %t591, ptr %t520, i64 %t521)
  %t592 = getelementptr i8, ptr %t591, i64 %t521
  %t593 = call i64 @__olang_fmt_i64(ptr %t592, i64 %t522)
  %t594 = getelementptr i8, ptr %t592, i64 %t523
  call void @olang_textcopy(ptr %t594, ptr %t525, i64 %t526)
  %t595 = getelementptr i8, ptr %t594, i64 %t526
  %t596 = call i64 @__olang_fmt_i64(ptr %t595, i64 %t528)
  %t597 = getelementptr i8, ptr %t595, i64 %t529
  call void @olang_textcopy(ptr %t597, ptr %t531, i64 %t532)
  %t598 = getelementptr i8, ptr %t597, i64 %t532
  %t599 = call i64 @__olang_fmt_i64(ptr %t598, i64 %t534)
  %t600 = getelementptr i8, ptr %t598, i64 %t535
  call void @olang_textcopy(ptr %t600, ptr %t537, i64 %t538)
  %t601 = getelementptr i8, ptr %t600, i64 %t538
  call void @olang_textcopy(ptr %t601, ptr %t541, i64 %t542)
  %t602 = getelementptr i8, ptr %t601, i64 %t542
  call void @olang_textcopy(ptr %t602, ptr %t544, i64 %t545)
  %t603 = getelementptr i8, ptr %t602, i64 %t545
  %t604 = call i64 @__olang_fmt_i64(ptr %t603, i64 %t547)
  %t605 = getelementptr i8, ptr %t603, i64 %t548
  call void @olang_textcopy(ptr %t605, ptr %t550, i64 %t551)
  %t606 = getelementptr i8, ptr %t605, i64 %t551
  %t607 = call i64 @__olang_fmt_i64(ptr %t606, i64 %t553)
  %t608 = getelementptr i8, ptr %t606, i64 %t554
  call void @olang_textcopy(ptr %t608, ptr %t556, i64 %t557)
  %t609 = getelementptr i8, ptr %t608, i64 %t557
  %t610 = call i64 @__olang_fmt_i64(ptr %t609, i64 %t559)
  %t611 = getelementptr i8, ptr %t609, i64 %t560
  call void @olang_textcopy(ptr %t611, ptr %t562, i64 %t563)
  %t612 = getelementptr i8, ptr %t611, i64 %t563
  %t613 = call i64 @__olang_fmt_i64(ptr %t612, i64 %t565)
  %t614 = getelementptr i8, ptr %t612, i64 %t566
  call void @olang_textcopy(ptr %t614, ptr %t568, i64 %t569)
  %t615 = getelementptr i8, ptr %t614, i64 %t569
  %t616 = call i64 @__olang_fmt_i64(ptr %t615, i64 %t571)
  %t617 = getelementptr i8, ptr %t615, i64 %t572
  call void @olang_textcopy(ptr %t617, ptr %t574, i64 %t575)
  %t618 = getelementptr i8, ptr %t617, i64 %t575
  call void @olang_textcopy(ptr %t618, ptr %t578, i64 %t579)
  %t619 = getelementptr i8, ptr %t618, i64 %t579
  call void @olang_textcopy(ptr %t619, ptr %t581, i64 %t582)
  %t620 = getelementptr i8, ptr %t619, i64 %t582
  call void @olang_textcopy(ptr %t620, ptr %t585, i64 %t586)
  %t621 = getelementptr i8, ptr %t620, i64 %t586
  call void @olang_textcopy(ptr %t621, ptr %t588, i64 %t589)
  %t622 = insertvalue { i64, ptr } undef, i64 %t590, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t591, 1
  %t625 = extractvalue { i64, ptr } %t623, 0
  %t626 = extractvalue { i64, ptr } %t623, 1
  %t627 = mul i64 %t625, 1
  %t628 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t627)
  call void @llvm.memcpy.p0.p0.i64(ptr %t628, ptr %t626, i64 %t627, i1 false)
  %t629 = insertvalue { i64, ptr } undef, i64 %t625, 0
  %t630 = insertvalue { i64, ptr } %t629, ptr %t628, 1
  %t631 = load ptr, ptr %l298, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s24, ptr %t631, { i64, ptr } %t630)
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s24)
  br label %bb121
bb121:
  %t633 = load i64, ptr %l41, !tbaa !24
  %t635 = add i64 %t633, 1
  store i64 %t635, ptr %l41, !tbaa !24
  br label %bb103
bb122:
  %t637 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t637, ptr %l323
  br label %bb123
bb123:
  %t638 = load %"std/prelude/text:StringBuilder", ptr %l323
  store %"std/prelude/text:StringBuilder" %t638, ptr %l51
  store ptr %l51, ptr %l324, !tbaa !29
  %t639 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t641 = call { i64, ptr } @compiler_2fprofile_2eescapeXml(ptr %v0, ptr %s0, { i64, ptr } %t639)
  store { i64, ptr } %t641, ptr %l326
  br label %bb124
bb124:
  %t642 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t643 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t644 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t645 = extractvalue { i64, ptr } %t644, 1
  %t646 = extractvalue { i64, ptr } %t644, 0
  %t647 = add i64 %t643, %t646
  %t648 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t649 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t650 = add i64 %t647, %t649
  %t651 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t650)
  call void @olang_textcopy(ptr %t651, ptr %t642, i64 %t643)
  %t652 = getelementptr i8, ptr %t651, i64 %t643
  call void @olang_textcopy(ptr %t652, ptr %t645, i64 %t646)
  %t653 = getelementptr i8, ptr %t652, i64 %t646
  call void @olang_textcopy(ptr %t653, ptr %t648, i64 %t649)
  %t654 = insertvalue { i64, ptr } undef, i64 %t650, 0
  %t655 = insertvalue { i64, ptr } %t654, ptr %t651, 1
  %t657 = extractvalue { i64, ptr } %t655, 0
  %t658 = extractvalue { i64, ptr } %t655, 1
  %t659 = mul i64 %t657, 1
  %t660 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t659)
  call void @llvm.memcpy.p0.p0.i64(ptr %t660, ptr %t658, i64 %t659, i1 false)
  %t661 = insertvalue { i64, ptr } undef, i64 %t657, 0
  %t662 = insertvalue { i64, ptr } %t661, ptr %t660, 1
  %t663 = load ptr, ptr %l324, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t663, { i64, ptr } %t662)
  br label %bb125
bb125:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l51, { i64, ptr } { i64 213, ptr getelementptr inbounds (<{ i64, [213 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb126
bb126:
  %t666 = load ptr, ptr %l1, !tbaa !29
  %t668 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aProfile_2eTotal(ptr %v1, ptr %t666)
  store i64 %t668, ptr %l331
  br label %bb127
bb127:
  %t669 = load i64, ptr %l331, !tbaa !24
  %t670 = sitofp i64 %t669 to double
  %t671 = load ptr, ptr %l1, !tbaa !29
  %t673 = getelementptr %"compiler/profile:Profile", ptr %t671, i32 0, i32 0
  %t674 = load i64, ptr %t673, !tbaa !24
  %t676 = sitofp i64 %t674 to double
  %t679 = fmul double %t670, %t676
  %t681 = fdiv double %t679, 0x41cdcd6500000000
  store double %t681, ptr %l52, !tbaa !26
  store ptr %l51, ptr %l338, !tbaa !29
  %t683 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t685 = call { i64, ptr } @compiler_2fprofile_2eescapeXml(ptr %v0, ptr %s0, { i64, ptr } %t683)
  store { i64, ptr } %t685, ptr %l340
  br label %bb128
bb128:
  %t686 = load ptr, ptr %l1, !tbaa !29
  %t688 = getelementptr %"compiler/profile:Profile", ptr %t686, i32 0, i32 3
  %t690 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eLen_3ccompiler_2fprofile_3aSample_3e(ptr %v1, ptr %t688)
  store i64 %t690, ptr %l343
  br label %bb129
bb129:
  %t691 = load double, ptr %l52, !tbaa !26
  %t693 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %s0, double %t691, i64 3)
  store { i64, ptr } %t693, ptr %l345
  br label %bb130
bb130:
  %t694 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t695 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t696 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t697 = extractvalue { i64, ptr } %t696, 1
  %t698 = extractvalue { i64, ptr } %t696, 0
  %t699 = add i64 %t695, %t698
  %t700 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t701 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t702 = add i64 %t699, %t701
  %t703 = load i64, ptr %l343, !tbaa !24
  %t704 = call i64 @__olang_fmt_i64(ptr null, i64 %t703)
  %t705 = add i64 %t702, %t704
  %t706 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t707 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t708 = add i64 %t705, %t707
  %t709 = load { i64, ptr }, ptr %l345, !tbaa !27
  %t710 = extractvalue { i64, ptr } %t709, 1
  %t711 = extractvalue { i64, ptr } %t709, 0
  %t712 = add i64 %t708, %t711
  %t713 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t714 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t715 = add i64 %t712, %t714
  %t716 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t715)
  call void @olang_textcopy(ptr %t716, ptr %t694, i64 %t695)
  %t717 = getelementptr i8, ptr %t716, i64 %t695
  call void @olang_textcopy(ptr %t717, ptr %t697, i64 %t698)
  %t718 = getelementptr i8, ptr %t717, i64 %t698
  call void @olang_textcopy(ptr %t718, ptr %t700, i64 %t701)
  %t719 = getelementptr i8, ptr %t718, i64 %t701
  %t720 = call i64 @__olang_fmt_i64(ptr %t719, i64 %t703)
  %t721 = getelementptr i8, ptr %t719, i64 %t704
  call void @olang_textcopy(ptr %t721, ptr %t706, i64 %t707)
  %t722 = getelementptr i8, ptr %t721, i64 %t707
  call void @olang_textcopy(ptr %t722, ptr %t710, i64 %t711)
  %t723 = getelementptr i8, ptr %t722, i64 %t711
  call void @olang_textcopy(ptr %t723, ptr %t713, i64 %t714)
  %t724 = insertvalue { i64, ptr } undef, i64 %t715, 0
  %t725 = insertvalue { i64, ptr } %t724, ptr %t716, 1
  %t727 = extractvalue { i64, ptr } %t725, 0
  %t728 = extractvalue { i64, ptr } %t725, 1
  %t729 = mul i64 %t727, 1
  %t730 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t729)
  call void @llvm.memcpy.p0.p0.i64(ptr %t730, ptr %t728, i64 %t729, i1 false)
  %t731 = insertvalue { i64, ptr } undef, i64 %t727, 0
  %t732 = insertvalue { i64, ptr } %t731, ptr %t730, 1
  %t733 = load ptr, ptr %l338, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t733, { i64, ptr } %t732)
  br label %bb131
bb131:
  store ptr %l51, ptr %l348, !tbaa !29
  %t735 = load i64, ptr @G_2ecompiler_2fprofile_2eFlameWidth, !tbaa !24
  store i64 %t735, ptr %l349, !tbaa !24
  %t736 = load i64, ptr %l26, !tbaa !24
  store i64 %t736, ptr %l350, !tbaa !24
  %t737 = load i64, ptr %l25, !tbaa !24
  store i64 %t737, ptr %l351, !tbaa !24
  %t739 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l27)
  store { i64, ptr } %t739, ptr %l353
  br label %bb132
bb132:
  %t740 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t741 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t742 = load i64, ptr %l349, !tbaa !24
  %t743 = call i64 @__olang_fmt_i64(ptr null, i64 %t742)
  %t744 = add i64 %t741, %t743
  %t745 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t746 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t747 = add i64 %t744, %t746
  %t748 = load i64, ptr %l350, !tbaa !24
  %t749 = call i64 @__olang_fmt_i64(ptr null, i64 %t748)
  %t750 = add i64 %t747, %t749
  %t751 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t752 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t753 = add i64 %t750, %t752
  %t754 = load i64, ptr %l351, !tbaa !24
  %t755 = call i64 @__olang_fmt_i64(ptr null, i64 %t754)
  %t756 = add i64 %t753, %t755
  %t757 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t758 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t759 = add i64 %t756, %t758
  %t760 = load { i64, ptr }, ptr %l353, !tbaa !27
  %t761 = extractvalue { i64, ptr } %t760, 1
  %t762 = extractvalue { i64, ptr } %t760, 0
  %t763 = add i64 %t759, %t762
  %t764 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t765 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t766 = add i64 %t763, %t765
  %t767 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t766)
  call void @olang_textcopy(ptr %t767, ptr %t740, i64 %t741)
  %t768 = getelementptr i8, ptr %t767, i64 %t741
  %t769 = call i64 @__olang_fmt_i64(ptr %t768, i64 %t742)
  %t770 = getelementptr i8, ptr %t768, i64 %t743
  call void @olang_textcopy(ptr %t770, ptr %t745, i64 %t746)
  %t771 = getelementptr i8, ptr %t770, i64 %t746
  %t772 = call i64 @__olang_fmt_i64(ptr %t771, i64 %t748)
  %t773 = getelementptr i8, ptr %t771, i64 %t749
  call void @olang_textcopy(ptr %t773, ptr %t751, i64 %t752)
  %t774 = getelementptr i8, ptr %t773, i64 %t752
  %t775 = call i64 @__olang_fmt_i64(ptr %t774, i64 %t754)
  %t776 = getelementptr i8, ptr %t774, i64 %t755
  call void @olang_textcopy(ptr %t776, ptr %t757, i64 %t758)
  %t777 = getelementptr i8, ptr %t776, i64 %t758
  call void @olang_textcopy(ptr %t777, ptr %t761, i64 %t762)
  %t778 = getelementptr i8, ptr %t777, i64 %t762
  call void @olang_textcopy(ptr %t778, ptr %t764, i64 %t765)
  %t779 = insertvalue { i64, ptr } undef, i64 %t766, 0
  %t780 = insertvalue { i64, ptr } %t779, ptr %t767, 1
  %t782 = extractvalue { i64, ptr } %t780, 0
  %t783 = extractvalue { i64, ptr } %t780, 1
  %t784 = mul i64 %t782, 1
  %t785 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t784)
  call void @llvm.memcpy.p0.p0.i64(ptr %t785, ptr %t783, i64 %t784, i1 false)
  %t786 = insertvalue { i64, ptr } undef, i64 %t782, 0
  %t787 = insertvalue { i64, ptr } %t786, ptr %t785, 1
  %t788 = load ptr, ptr %l348, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t788, { i64, ptr } %t787)
  br label %bb133
bb133:
  %t790 = load { i64, ptr }, ptr @G_2ecompiler_2fprofile_2eFlameScript, !tbaa !27
  %t791 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %t791, ptr %l51, { i64, ptr } %t790)
  br label %bb134
bb134:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l51, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb135
bb135:
  %t796 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l51)
  store { i64, ptr } %t796, ptr %l360
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s0)
  %t797 = load { i64, ptr }, ptr %l360, !tbaa !27
  store { i64, ptr } %t797, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fprofile_2ePlaces_2eResolve(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/profile:Sample"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca %"compiler/profile:mapping"
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %lp34 = alloca ptr
  %l35 = alloca %"std/prelude/text:StringBuilder"
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca [3 x { i64, ptr }]
  %lp44 = alloca ptr
  %lp45 = alloca ptr
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l58 = alloca { { i64, ptr }, i64 }
  %lp59 = alloca ptr
  %l60 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca %"compiler/profile:Places"
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca %"compiler/profile:Sample"
  %l84 = alloca i64
  %l87 = alloca i64
  %l110 = alloca i64
  %l113 = alloca i64
  %l117 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i64
  %l122 = alloca i64
  %l129 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l130 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l132 = alloca i64
  %l134 = alloca i64
  %l139 = alloca i64
  %l140 = alloca { i64, ptr }
  %l143 = alloca i64
  %l145 = alloca i64
  %l150 = alloca %"compiler/profile:mapping"
  %l154 = alloca i1
  %l159 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l161 = alloca i64
  %l162 = alloca { i64, ptr }
  %l170 = alloca i1
  %l174 = alloca i1
  %l176 = alloca ptr
  %l177 = alloca { i64, ptr }
  %l179 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l180 = alloca ptr
  %l183 = alloca ptr
  %l184 = alloca i32
  %l185 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l188 = alloca i64
  %l192 = alloca i64
  %l195 = alloca i64
  %l213 = alloca i64
  %l216 = alloca i64
  %l218 = alloca i1
  %l219 = alloca i64
  %l222 = alloca i64
  %l226 = alloca i64
  %l229 = alloca i64
  %l232 = alloca i64
  %l233 = alloca i64
  %l237 = alloca i64
  %l249 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l251 = alloca i1
  %l253 = alloca %"std/prelude/text:StringBuilder"
  %l255 = alloca i64
  %l259 = alloca i64
  %l262 = alloca i64
  %l282 = alloca i64
  %l284 = alloca ptr
  %l287 = alloca { i64, ptr }
  %l290 = alloca i64
  %l291 = alloca i64
  %l292 = alloca i64
  %l293 = alloca i32
  %l294 = alloca { i64, ptr }
  %l303 = alloca %"std/os:Output"
  %l307 = alloca { i64, ptr }
  %l309 = alloca { i64, ptr }
  %l312 = alloca %"std/os:Output"
  %l313 = alloca i32
  %l315 = alloca i1
  %l318 = alloca %"std/os:Output"
  %l322 = alloca %"std/prelude/text:LineIter"
  %l323 = alloca { i64, ptr }
  %l325 = alloca { i64, ptr }
  %l326 = alloca i32
  %l328 = alloca i1
  %l331 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l333 = alloca i64
  %l337 = alloca i64
  %l340 = alloca i64
  %l358 = alloca ptr
  %l360 = alloca i64
  %l363 = alloca i64
  %l365 = alloca i1
  %l366 = alloca i64
  %l368 = alloca i64
  %l371 = alloca i64
  %l373 = alloca i64
  %l375 = alloca i1
  %l378 = alloca { i64, ptr }
  %l379 = alloca i1
  %l384 = alloca { i64, ptr }
  %l388 = alloca { i64, ptr }
  %l392 = alloca { { i64, ptr }, i64 }
  %l393 = alloca { i64, ptr }
  %l394 = alloca i64
  %l395 = alloca { i64, ptr }
  %l398 = alloca i1
  %l399 = alloca i1
  %l402 = alloca { i64, ptr }
  %l403 = alloca i1
  %l404 = alloca ptr
  %l407 = alloca { i64, ptr }
  %l410 = alloca i64
  %l411 = alloca { i64, ptr }
  %l414 = alloca i1
  %l417 = alloca i64
  %l418 = alloca i64
  %l419 = alloca i64
  %l420 = alloca i32
  %l421 = alloca { i64, ptr }
  %l424 = alloca { i64, ptr }
  %l425 = alloca { i64, ptr }
  %l429 = alloca { i64, ptr }
  %l431 = alloca ptr
  %l434 = alloca i64
  %l437 = alloca i64
  %l439 = alloca %"compiler/profile:Frame"
  %l446 = alloca i1
  %l449 = alloca i64
  %l451 = alloca i1
  %l454 = alloca { i64, ptr }
  %l455 = alloca i1
  %l456 = alloca ptr
  %l459 = alloca { i64, ptr }
  %l460 = alloca i1
  %l462 = alloca ptr
  %l463 = alloca i64
  %l467 = alloca { i64, ptr }
  %l469 = alloca { i64, ptr }
  %l472 = alloca { i64, ptr }
  %l473 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l474 = alloca ptr
  %l475 = alloca ptr
  %l478 = alloca { i64, ptr }
  %l479 = alloca ptr
  %l480 = alloca i32
  %l481 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l483 = alloca ptr
  %l486 = alloca i64
  %l487 = alloca { i64, ptr }
  %l489 = alloca i1
  %l491 = alloca ptr
  %l492 = alloca ptr
  %l494 = alloca { i64, ptr }
  %l496 = alloca i64
  %l498 = alloca i64
  %l499 = alloca %"compiler/profile:Frame"
  %l504 = alloca { i64, ptr }
  %l505 = alloca i1
  %l507 = alloca { i64, ptr }
  %l510 = alloca { i64, ptr }
  %l511 = alloca { i64, ptr }
  %l512 = alloca ptr
  %l513 = alloca ptr
  %l516 = alloca i64
  %l517 = alloca i64
  %l518 = alloca i64
  %l519 = alloca i32
  %l520 = alloca { i64, ptr }
  %l524 = alloca i64
  %l526 = alloca i64
  %l527 = alloca %"compiler/profile:Frame"
  %l532 = alloca %"compiler/profile:Places"
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %t1 = alloca %"compiler/profile:Places", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fprofile_3aPlaces_2ector(ptr %t1, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l64, ptr %t1, i64 272, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 272, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l64, i64 272, i1 false)
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/profile:Profile", ptr %t4, i32 0, i32 5
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2emappings(ptr %v0, ptr %s0, { i64, ptr } %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l67
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l3
  %t11 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H6cf7c9f2359d1ee39cd99e769614c19f(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t11, ptr %l68
  br label %bb3
bb3:
  %t12 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l68
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %l4
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l69
  br label %bb4
bb4:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l5
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/profile:Profile", ptr %t15, i32 0, i32 3
  store ptr %t17, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t19 = load i64, ptr %l7, !tbaa !24
  store i64 %t19, ptr %l72, !tbaa !24
  %t20 = load ptr, ptr %l6, !tbaa !29
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eLen_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l74
  br label %bb6
bb6:
  %t23 = load i64, ptr %l72, !tbaa !24
  %t24 = load i64, ptr %l74, !tbaa !24
  %t25 = icmp slt i64 %t23, %t24
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  br label %bb35
bb8:
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l6, !tbaa !29
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = call %"compiler/profile:Sample" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eAt_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %t29, i64 %t30)
  store %"compiler/profile:Sample" %t33, ptr %l79
  br label %bb10
bb10:
  %t34 = load %"compiler/profile:Sample", ptr %l79
  store %"compiler/profile:Sample" %t34, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t35 = getelementptr %"compiler/profile:Sample", ptr %l8, i32 0, i32 2
  %t36 = load i64, ptr %t35, !tbaa !24
  store i64 %t36, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l10, !tbaa !24
  %t39 = load i64, ptr %l9, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = load i64, ptr %l11, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb16
bb13:
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = sub i64 %t48, %t49
  %t53 = load i64, ptr %l11, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = sub i64 %t56, 1
  %t59 = load i64, ptr %l11, !tbaa !24
  %t62 = sdiv i64 %t58, %t59
  store i64 %t62, ptr %l87, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb15
bb15:
  %t64 = load i64, ptr %l87, !tbaa !24
  store i64 %t64, ptr %l84, !tbaa !24
  br label %bb16
bb16:
  %t65 = load i64, ptr %l84, !tbaa !24
  store i64 %t65, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l13, !tbaa !24
  %t67 = load i64, ptr %l12, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb18, label %bb19
bb18:
  br label %bb33
bb19:
  br label %bb20
bb20:
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l13, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = mul i64 %t75, %t76
  %t82 = add i64 %t74, %t79
  store i64 %t82, ptr %l14, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/profile:Profile", ptr %t84, i32 0, i32 4
  %t87 = getelementptr %"compiler/profile:Sample", ptr %l8, i32 0, i32 1
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = load i64, ptr %l14, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t86, i64 %t92)
  store i64 %t95, ptr %l110
  br label %bb21
bb21:
  %t96 = load i64, ptr %l14, !tbaa !24
  %t98 = icmp eq i64 %t96, 0
  br i1 %t98, label %bb22, label %bb23
bb22:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb24
bb23:
  store i64 1, ptr %l113, !tbaa !24
  br label %bb24
bb24:
  %t100 = load i64, ptr %l110, !tbaa !24
  %t101 = load i64, ptr %l113, !tbaa !24
  %t102 = sub i64 %t100, %t101
  store i64 %t102, ptr %l15, !tbaa !24
  %t104 = load ptr, ptr %lp2
  %t105 = getelementptr %"compiler/profile:Places", ptr %t104, i32 0, i32 5
  %t106 = load i64, ptr %l15, !tbaa !24
  %t109 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v2, ptr %t105, i64 %t106)
  store i1 %t109, ptr %l117
  br label %bb25
bb25:
  %t110 = load i1, ptr %l117, !tbaa !21
  %t111 = xor i1 %t110, true
  br i1 %t111, label %bb26, label %bb27
bb26:
  %t113 = load ptr, ptr %lp2
  %t114 = getelementptr %"compiler/profile:Places", ptr %t113, i32 0, i32 5
  store ptr %t114, ptr %l119, !tbaa !29
  %t115 = load i64, ptr %l15, !tbaa !24
  store i64 %t115, ptr %l120, !tbaa !24
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t117, ptr %l122
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t118 = load ptr, ptr %l119, !tbaa !29
  %t119 = load i64, ptr %l120, !tbaa !24
  %t120 = load i64, ptr %l122, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v2, ptr %t118, i64 %t119, i64 %t120)
  br label %bb29
bb29:
  %t121 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t121)
  br label %bb30
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t124 = load i64, ptr %l13, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l13, !tbaa !24
  br label %bb17
bb33:
  br label %bb34
bb34:
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l7, !tbaa !24
  br label %bb5
bb35:
  %t132 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l129
  br label %bb36
bb36:
  %t133 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l129
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %l16
  %t134 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l130
  br label %bb37
bb37:
  %t135 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l130
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t135, ptr %l17
  store ptr %l5, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb38
bb38:
  %t137 = load i64, ptr %l19, !tbaa !24
  store i64 %t137, ptr %l132, !tbaa !24
  %t138 = load ptr, ptr %l18, !tbaa !29
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t138)
  store i64 %t140, ptr %l134
  br label %bb39
bb39:
  %t141 = load i64, ptr %l132, !tbaa !24
  %t142 = load i64, ptr %l134, !tbaa !24
  %t143 = icmp slt i64 %t141, %t142
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb40, label %bb41
bb40:
  br label %bb102
bb41:
  br label %bb42
bb42:
  %t147 = load ptr, ptr %l18, !tbaa !29
  %t148 = load i64, ptr %l19, !tbaa !24
  %t151 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t147, i64 %t148)
  store i64 %t151, ptr %l139
  br label %bb43
bb43:
  %t152 = load i64, ptr %l139, !tbaa !24
  store i64 %t152, ptr %l20, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l140, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l140, !tbaa !27
  store { i64, ptr } %t153, ptr %l21, !tbaa !27
  store i64 -1, ptr %l22, !tbaa !24
  store ptr %l3, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s11
  %t156 = load i64, ptr %l24, !tbaa !24
  store i64 %t156, ptr %l143, !tbaa !24
  %t157 = load ptr, ptr %l23, !tbaa !29
  %t159 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2eLen__Heb6545c4cbf57678e5e8a74f397c9583(ptr %s0, ptr %t157)
  store i64 %t159, ptr %l145
  br label %bb45
bb45:
  %t160 = load i64, ptr %l143, !tbaa !24
  %t161 = load i64, ptr %l145, !tbaa !24
  %t162 = icmp slt i64 %t160, %t161
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s11)
  br label %bb98
bb47:
  br label %bb48
bb48:
  %t166 = load ptr, ptr %l23, !tbaa !29
  %t167 = load i64, ptr %l24, !tbaa !24
  %t170 = call %"compiler/profile:mapping" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2eAt_3ccompiler_2fprofile_3amapping_3e(ptr %s0, ptr %s0, ptr %t166, i64 %t167)
  store %"compiler/profile:mapping" %t170, ptr %l150
  br label %bb49
bb49:
  %t171 = load %"compiler/profile:mapping", ptr %l150
  store %"compiler/profile:mapping" %t171, ptr %l25
  %t172 = load i64, ptr %l20, !tbaa !24
  %t173 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 0
  %t174 = load i64, ptr %t173, !tbaa !24
  %t177 = icmp slt i64 %t172, %t174
  br i1 %t177, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l154, !tbaa !21
  br label %bb52
bb51:
  %t179 = load i64, ptr %l20, !tbaa !24
  %t180 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 1
  %t181 = load i64, ptr %t180, !tbaa !24
  %t184 = icmp sge i64 %t179, %t181
  store i1 %t184, ptr %l154, !tbaa !21
  br label %bb52
bb52:
  %t186 = load i1, ptr %l154, !tbaa !21
  br i1 %t186, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s11)
  br label %bb97
bb54:
  br label %bb55
bb55:
  %t187 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 3
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  store { i64, ptr } %t188, ptr %l159, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t190, ptr %l160, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  store i64 %t192, ptr %l161, !tbaa !24
  %t193 = load i64, ptr %l161, !tbaa !24
  %t194 = mul i64 %t193, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t194)
  %t196 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  store { i64, ptr } %t197, ptr %l162, !tbaa !27
  %t198 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = load i64, ptr %l161, !tbaa !24
  %t203 = mul i64 %t202, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t199, ptr %t201, i64 %t203, i1 false)
  %t204 = load { i64, ptr }, ptr %l162, !tbaa !27
  store { i64, ptr } %t204, ptr %l21, !tbaa !27
  %t205 = load i1, ptr @olang_2esole_2ecompiler__2fprofile__2ePlaces__2eResolve_2elocal_2e21
  br i1 %t205, label %bb56, label %bb57
bb56:
  %t207 = load { i64, ptr }, ptr %l160
  %t208 = extractvalue { i64, ptr } %t207, 1
  call void @__olang_region_release(ptr %t208)
  store { i64, ptr } zeroinitializer, ptr %l160
  br label %bb57
bb57:
  %t209 = load i64, ptr %l20, !tbaa !24
  %t210 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 0
  %t211 = load i64, ptr %t210, !tbaa !24
  %t214 = sub i64 %t209, %t211
  %t215 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 2
  %t216 = load i64, ptr %t215, !tbaa !24
  %t219 = add i64 %t214, %t216
  store i64 %t219, ptr %l26, !tbaa !24
  %t221 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t223 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s11, { i64, ptr } %t221, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t223, ptr %l170
  br label %bb58
bb58:
  %t224 = load i1, ptr %l170, !tbaa !21
  %t225 = xor i1 %t224, true
  br i1 %t225, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s11)
  br label %bb98
bb60:
  br label %bb61
bb61:
  %t227 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t230 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H67bc384d82ac3ceb3fdc5d6d25b5f02a(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } %t227)
  store i1 %t230, ptr %l174
  br label %bb62
bb62:
  %t231 = load i1, ptr %l174, !tbaa !21
  %t232 = xor i1 %t231, true
  br i1 %t232, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s14
  store ptr %l4, ptr %l176, !tbaa !29
  %t234 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t234, ptr %l177, !tbaa !27
  %t235 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t237 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2esegments(ptr %s0, ptr %s14, { i64, ptr } %t235)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t237, ptr %l179
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t238 = load ptr, ptr %l176, !tbaa !29
  %t239 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t240 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l179
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd2a6d6393d72da4a22d0070783b9e545(ptr %s0, ptr %s0, ptr %s14, ptr %t238, { i64, ptr } %t239, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s14)
  br label %bb67
bb67:
  %t241 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t244 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H613fddb0939c6e46b95f2b1f68ba1bdb(ptr %s0, ptr %s0, ptr %s0, ptr %l4, { i64, ptr } %t241)
  %t245 = extractvalue { i32, ptr } %t244, 1
  %t246 = extractvalue { i32, ptr } %t244, 0
  store i32 %t246, ptr %l184
  %t247 = icmp ne i32 %t246, 0
  br i1 %t247, label %bb69, label %ok.248, !prof !99
ok.248:
  store ptr %t245, ptr %l183
  br label %bb68
bb68:
  %t249 = load ptr, ptr %l183, !tbaa !29
  store ptr %t249, ptr %l180, !tbaa !29
  br label %bb72
bb69:
  br label %bb70
bb70:
  %t250 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t250, ptr %l185
  br label %bb71
bb71:
  %t251 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l185
  %t252 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t251, ptr %t252
  store ptr %t252, ptr %l180, !tbaa !29
  br label %bb72
bb72:
  %t254 = load ptr, ptr %l180, !tbaa !29
  store ptr %t254, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  %t255 = load ptr, ptr %l27, !tbaa !29
  %t257 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t255)
  store i64 %t257, ptr %l188
  br label %bb73
bb73:
  %t258 = load i64, ptr %l188, !tbaa !24
  store i64 %t258, ptr %l29, !tbaa !24
  store i64 3, ptr %l30, !tbaa !24
  %t259 = load i64, ptr %l29, !tbaa !24
  %t260 = load i64, ptr %l28, !tbaa !24
  %t263 = icmp sgt i64 %t259, %t260
  br i1 %t263, label %bb74, label %bb75
bb74:
  %t265 = load i64, ptr %l30, !tbaa !24
  %t267 = icmp sgt i64 %t265, 0
  br i1 %t267, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l192, !tbaa !24
  br label %bb79
bb76:
  %t269 = load i64, ptr %l29, !tbaa !24
  %t270 = load i64, ptr %l28, !tbaa !24
  %t273 = sub i64 %t269, %t270
  %t274 = load i64, ptr %l30, !tbaa !24
  %t277 = add i64 %t273, %t274
  %t279 = sub i64 %t277, 1
  %t280 = load i64, ptr %l30, !tbaa !24
  %t283 = sdiv i64 %t279, %t280
  store i64 %t283, ptr %l195, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l195, !tbaa !24
  br label %bb78
bb78:
  %t285 = load i64, ptr %l195, !tbaa !24
  store i64 %t285, ptr %l192, !tbaa !24
  br label %bb79
bb79:
  %t286 = load i64, ptr %l192, !tbaa !24
  store i64 %t286, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb80
bb80:
  %t287 = load i64, ptr %l32, !tbaa !24
  %t288 = load i64, ptr %l31, !tbaa !24
  %t291 = icmp slt i64 %t287, %t288
  %t293 = xor i1 %t291, true
  br i1 %t293, label %bb81, label %bb82
bb81:
  br label %bb96
bb82:
  br label %bb83
bb83:
  %t295 = load i64, ptr %l28, !tbaa !24
  %t296 = load i64, ptr %l32, !tbaa !24
  %t297 = load i64, ptr %l30, !tbaa !24
  %t300 = mul i64 %t296, %t297
  %t303 = add i64 %t295, %t300
  store i64 %t303, ptr %l33, !tbaa !24
  %t305 = load i64, ptr %l26, !tbaa !24
  store i64 %t305, ptr %l213, !tbaa !24
  %t306 = load ptr, ptr %l27, !tbaa !29
  %t307 = load i64, ptr %l33, !tbaa !24
  %t310 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t306, i64 %t307)
  store i64 %t310, ptr %l216
  br label %bb84
bb84:
  %t311 = load i64, ptr %l213, !tbaa !24
  %t312 = load i64, ptr %l216, !tbaa !24
  %t313 = icmp sge i64 %t311, %t312
  br i1 %t313, label %bb85, label %bb86
bb85:
  %t315 = load i64, ptr %l26, !tbaa !24
  store i64 %t315, ptr %l219, !tbaa !24
  %t316 = load ptr, ptr %l27, !tbaa !29
  %t317 = load i64, ptr %l33, !tbaa !24
  %t320 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t316, i64 %t317)
  store i64 %t320, ptr %l222
  br label %bb87
bb86:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb89
bb87:
  %t321 = load ptr, ptr %l27, !tbaa !29
  %t322 = load i64, ptr %l33, !tbaa !24
  %t324 = add i64 %t322, 1
  %t327 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t321, i64 %t324)
  store i64 %t327, ptr %l226
  br label %bb88
bb88:
  %t328 = load i64, ptr %l222, !tbaa !24
  %t329 = load i64, ptr %l226, !tbaa !24
  %t330 = add i64 %t328, %t329
  %t331 = load i64, ptr %l219, !tbaa !24
  %t333 = icmp slt i64 %t331, %t330
  store i1 %t333, ptr %l218, !tbaa !21
  br label %bb89
bb89:
  %t335 = load i1, ptr %l218, !tbaa !21
  br i1 %t335, label %bb90, label %bb91
bb90:
  %t336 = load i64, ptr %l26, !tbaa !24
  store i64 %t336, ptr %l229, !tbaa !24
  %t337 = load ptr, ptr %l27, !tbaa !29
  %t338 = load i64, ptr %l33, !tbaa !24
  %t341 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t337, i64 %t338)
  store i64 %t341, ptr %l232
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t342 = load i64, ptr %l229, !tbaa !24
  %t343 = load i64, ptr %l232, !tbaa !24
  %t344 = sub i64 %t342, %t343
  store i64 %t344, ptr %l233, !tbaa !24
  %t345 = load ptr, ptr %l27, !tbaa !29
  %t346 = load i64, ptr %l33, !tbaa !24
  %t348 = add i64 %t346, 2
  %t351 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t345, i64 %t348)
  store i64 %t351, ptr %l237
  br label %bb93
bb93:
  %t352 = load i64, ptr %l233, !tbaa !24
  %t353 = load i64, ptr %l237, !tbaa !24
  %t354 = add i64 %t352, %t353
  store i64 %t354, ptr %l22, !tbaa !24
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t356 = load i64, ptr %l32, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l32, !tbaa !24
  br label %bb80
bb96:
  call void @__olang_scope_close(ptr %s11)
  br label %bb98
bb97:
  %t360 = load i64, ptr %l24, !tbaa !24
  %t362 = add i64 %t360, 1
  store i64 %t362, ptr %l24, !tbaa !24
  br label %bb44
bb98:
  %t364 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l16, { i64, ptr } %t364)
  br label %bb99
bb99:
  %t367 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l17, i64 %t367)
  br label %bb100
bb100:
  br label %bb101
bb101:
  %t370 = load i64, ptr %l19, !tbaa !24
  %t372 = add i64 %t370, 1
  store i64 %t372, ptr %l19, !tbaa !24
  br label %bb38
bb102:
  %t374 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374, ptr %l249
  br label %bb103
bb103:
  %t375 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t375, ptr %lp34
  %t376 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l249
  %t377 = load ptr, ptr %lp34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t376, ptr %t377
  %t378 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t380 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t378, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t380, ptr %l251
  br label %bb104
bb104:
  %t381 = load i1, ptr %l251, !tbaa !21
  %t382 = xor i1 %t381, true
  br i1 %t382, label %bb105, label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s21
  %t384 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s21)
  store %"std/prelude/text:StringBuilder" %t384, ptr %l253
  br label %bb107
bb106:
  br label %bb154
bb107:
  %t385 = load %"std/prelude/text:StringBuilder", ptr %l253
  store %"std/prelude/text:StringBuilder" %t385, ptr %l35
  store i64 0, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  %t387 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t387, ptr %l255
  br label %bb108
bb108:
  %t388 = load i64, ptr %l255, !tbaa !24
  store i64 %t388, ptr %l38, !tbaa !24
  store i64 1, ptr %l39, !tbaa !24
  %t389 = load i64, ptr %l38, !tbaa !24
  %t390 = load i64, ptr %l37, !tbaa !24
  %t393 = icmp sgt i64 %t389, %t390
  br i1 %t393, label %bb109, label %bb110
bb109:
  %t395 = load i64, ptr %l39, !tbaa !24
  %t397 = icmp sgt i64 %t395, 0
  br i1 %t397, label %bb111, label %bb112
bb110:
  store i64 0, ptr %l259, !tbaa !24
  br label %bb114
bb111:
  %t399 = load i64, ptr %l38, !tbaa !24
  %t400 = load i64, ptr %l37, !tbaa !24
  %t403 = sub i64 %t399, %t400
  %t404 = load i64, ptr %l39, !tbaa !24
  %t407 = add i64 %t403, %t404
  %t409 = sub i64 %t407, 1
  %t410 = load i64, ptr %l39, !tbaa !24
  %t413 = sdiv i64 %t409, %t410
  store i64 %t413, ptr %l262, !tbaa !24
  br label %bb113
bb112:
  store i64 0, ptr %l262, !tbaa !24
  br label %bb113
bb113:
  %t415 = load i64, ptr %l262, !tbaa !24
  store i64 %t415, ptr %l259, !tbaa !24
  br label %bb114
bb114:
  %t416 = load i64, ptr %l259, !tbaa !24
  store i64 %t416, ptr %l40, !tbaa !24
  store i64 0, ptr %l41, !tbaa !24
  br label %bb115
bb115:
  store %olang.scope zeroinitializer, ptr %s23
  %t417 = load i64, ptr %l41, !tbaa !24
  %t418 = load i64, ptr %l40, !tbaa !24
  %t421 = icmp slt i64 %t417, %t418
  %t423 = xor i1 %t421, true
  br i1 %t423, label %bb116, label %bb117
bb116:
  call void @__olang_scope_close(ptr %s23)
  br label %bb130
bb117:
  br label %bb118
bb118:
  %t425 = load i64, ptr %l37, !tbaa !24
  %t426 = load i64, ptr %l41, !tbaa !24
  %t427 = load i64, ptr %l39, !tbaa !24
  %t430 = mul i64 %t426, %t427
  %t433 = add i64 %t425, %t430
  store i64 %t433, ptr %l42, !tbaa !24
  %t435 = load i64, ptr %l42, !tbaa !24
  %t438 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t435)
  store i64 %t438, ptr %l282
  br label %bb119
bb119:
  %t439 = load i64, ptr %l282, !tbaa !24
  %t440 = icmp slt i64 %t439, 0
  br i1 %t440, label %bb120, label %bb121
bb120:
  call void @__olang_scope_close(ptr %s23)
  br label %bb129
bb121:
  br label %bb122
bb122:
  store ptr %l35, ptr %l284, !tbaa !29
  %t442 = load i64, ptr %l42, !tbaa !24
  %t445 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s23, ptr %l16, i64 %t442)
  store { i64, ptr } %t445, ptr %l287
  br label %bb123
bb123:
  %t446 = load i64, ptr %l42, !tbaa !24
  %t449 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t446)
  store i64 %t449, ptr %l290
  br label %bb124
bb124:
  %t450 = load i64, ptr %l290, !tbaa !24
  store i64 %t450, ptr %l291, !tbaa !65
  %t451 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s23, i64 16)
  %t452 = extractvalue { i32, i64 } %t451, 1
  %t453 = extractvalue { i32, i64 } %t451, 0
  store i32 %t453, ptr %l293
  %t454 = icmp ne i32 %t453, 0
  br i1 %t454, label %bb126, label %ok.455, !prof !99
ok.455:
  store i64 %t452, ptr %l292
  br label %bb125
bb125:
  %t456 = load i64, ptr %l291, !tbaa !65
  %t457 = load i64, ptr %l292, !tbaa !24
  %t458 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s23, i64 %t456, i64 %t457)
  store { i64, ptr } %t458, ptr %l294
  br label %bb127
bb126:
  call void @__olang_check_failed(ptr @olang_loc_3866f265829cb50e_54c32d3b9a091762)
  unreachable
bb127:
  %t459 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t460 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t461 = load { i64, ptr }, ptr %l287, !tbaa !27
  %t462 = extractvalue { i64, ptr } %t461, 1
  %t463 = extractvalue { i64, ptr } %t461, 0
  %t464 = add i64 %t460, %t463
  %t465 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t466 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t467 = add i64 %t464, %t466
  %t468 = load { i64, ptr }, ptr %l294, !tbaa !27
  %t469 = extractvalue { i64, ptr } %t468, 1
  %t470 = extractvalue { i64, ptr } %t468, 0
  %t471 = add i64 %t467, %t470
  %t472 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t473 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t474 = add i64 %t471, %t473
  %t475 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t474)
  call void @olang_textcopy(ptr %t475, ptr %t459, i64 %t460)
  %t476 = getelementptr i8, ptr %t475, i64 %t460
  call void @olang_textcopy(ptr %t476, ptr %t462, i64 %t463)
  %t477 = getelementptr i8, ptr %t476, i64 %t463
  call void @olang_textcopy(ptr %t477, ptr %t465, i64 %t466)
  %t478 = getelementptr i8, ptr %t477, i64 %t466
  call void @olang_textcopy(ptr %t478, ptr %t469, i64 %t470)
  %t479 = getelementptr i8, ptr %t478, i64 %t470
  call void @olang_textcopy(ptr %t479, ptr %t472, i64 %t473)
  %t480 = insertvalue { i64, ptr } undef, i64 %t474, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t475, 1
  %t483 = extractvalue { i64, ptr } %t481, 0
  %t484 = extractvalue { i64, ptr } %t481, 1
  %t485 = mul i64 %t483, 1
  %t486 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t485)
  call void @llvm.memcpy.p0.p0.i64(ptr %t486, ptr %t484, i64 %t485, i1 false)
  %t487 = insertvalue { i64, ptr } undef, i64 %t483, 0
  %t488 = insertvalue { i64, ptr } %t487, ptr %t486, 1
  %t489 = load ptr, ptr %l284, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s21, ptr %s23, ptr %t489, { i64, ptr } %t488)
  br label %bb128
bb128:
  %t491 = load i64, ptr %l36, !tbaa !24
  %t493 = add i64 %t491, 1
  store i64 %t493, ptr %l36, !tbaa !24
  call void @__olang_scope_close(ptr %s23)
  br label %bb129
bb129:
  %t495 = load i64, ptr %l41, !tbaa !24
  %t497 = add i64 %t495, 1
  store i64 %t497, ptr %l41, !tbaa !24
  br label %bb115
bb130:
  %t499 = load i64, ptr %l36, !tbaa !24
  %t501 = icmp sgt i64 %t499, 0
  br i1 %t501, label %bb131, label %bb132
bb131:
  store %olang.scope zeroinitializer, ptr %s27
  %t503 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t505 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } %t503, 0
  %t506 = insertvalue [3 x { i64, ptr }] %t505, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t507 = insertvalue [3 x { i64, ptr }] %t506, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d35, i32 0, i32 1) }, 2
  store [3 x { i64, ptr }] %t507, ptr %l43
  %t510 = insertvalue { i64, ptr } undef, i64 3, 0
  %t511 = insertvalue { i64, ptr } %t510, ptr %l43, 1
  store { i64, ptr } %t511, ptr %l307, !tbaa !27
  %t513 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s21, ptr %s27, ptr %l35)
  store { i64, ptr } %t513, ptr %l309
  br label %bb133
bb132:
  br label %bb153
bb133:
  %t514 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t516 = extractvalue { i64, ptr } %t514, 0
  %t517 = extractvalue { i64, ptr } %t514, 1
  %t518 = mul i64 %t516, 1
  %t519 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t518)
  call void @llvm.memcpy.p0.p0.i64(ptr %t519, ptr %t517, i64 %t518, i1 false)
  %t520 = insertvalue { i64, ptr } undef, i64 %t516, 0
  %t521 = insertvalue { i64, ptr } %t520, ptr %t519, 1
  %t522 = load { i64, ptr }, ptr %l307, !tbaa !27
  %t524 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s27, ptr %s27, ptr %s27, ptr %v2, { i64, ptr } %t522, { i64, ptr } %t521, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  %t525 = extractvalue { i32, %"std/os:Output" } %t524, 1
  %t526 = extractvalue { i32, %"std/os:Output" } %t524, 0
  store i32 %t526, ptr %l313
  %t527 = icmp ne i32 %t526, 0
  br i1 %t527, label %bb135, label %ok.528, !prof !99
ok.528:
  store %"std/os:Output" %t525, ptr %l312
  br label %bb134
bb134:
  %t529 = load %"std/os:Output", ptr %l312
  store %"std/os:Output" %t529, ptr %l303
  br label %bb140
bb135:
  %t530 = load i32, ptr %l313, !tbaa !23
  %t531 = ashr i32 %t530, 16
  %t533 = icmp eq i32 %t531, 1
  store i1 %t533, ptr %l315, !tbaa !21
  %t534 = load i32, ptr %l313, !tbaa !23
  %t535 = ashr i32 %t534, 16
  %t537 = icmp eq i32 %t535, 1
  br i1 %t537, label %bb136, label %bb137
bb136:
  call void @__olang_errpay_pop()
  br label %bb137
bb137:
  br label %bb138
bb138:
  %t539 = call %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v2, ptr %v2, ptr %v2, i32 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store %"std/os:Output" %t539, ptr %l318
  br label %bb139
bb139:
  %t540 = load %"std/os:Output", ptr %l318
  store %"std/os:Output" %t540, ptr %l303
  br label %bb140
bb140:
  %t541 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store ptr %t541, ptr %lp44
  %t542 = load %"std/os:Output", ptr %l303
  %t543 = load ptr, ptr %lp44
  store %"std/os:Output" %t542, ptr %t543
  %t544 = load ptr, ptr %lp44
  %t545 = getelementptr %"std/os:Output", ptr %t544, i32 0, i32 0
  %t546 = load i32, ptr %t545, !tbaa !23
  %t548 = icmp eq i32 %t546, 0
  br i1 %t548, label %bb141, label %bb142
bb141:
  %t550 = load ptr, ptr %lp44
  %t551 = getelementptr %"std/os:Output", ptr %t550, i32 0, i32 1
  %t552 = load { i64, ptr }, ptr %t551, !tbaa !27
  %t554 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v2, ptr %v2, { i64, ptr } %t552)
  store %"std/prelude/text:LineIter" %t554, ptr %l322
  br label %bb143
bb142:
  br label %bb152
bb143:
  %t555 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store ptr %t555, ptr %lp45
  %t556 = load %"std/prelude/text:LineIter", ptr %l322
  %t557 = load ptr, ptr %lp45
  store %"std/prelude/text:LineIter" %t556, ptr %t557
  br label %bb144
bb144:
  %t558 = load ptr, ptr %lp45
  %t560 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v2, ptr %v2, ptr %t558)
  %t561 = extractvalue { i32, { i64, ptr } } %t560, 1
  %t562 = extractvalue { i32, { i64, ptr } } %t560, 0
  store i32 %t562, ptr %l326
  %t563 = icmp ne i32 %t562, 0
  br i1 %t563, label %bb146, label %ok.564, !prof !99
ok.564:
  store { i64, ptr } %t561, ptr %l325
  br label %bb145
bb145:
  %t565 = load { i64, ptr }, ptr %l325, !tbaa !27
  store { i64, ptr } %t565, ptr %l323, !tbaa !27
  br label %bb148
bb146:
  %t566 = load i32, ptr %l326, !tbaa !23
  %t567 = ashr i32 %t566, 16
  %t569 = icmp eq i32 %t567, 1
  store i1 %t569, ptr %l328, !tbaa !21
  br label %bb147
bb147:
  br label %bb151
bb148:
  %t570 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t571 = load ptr, ptr %lp34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t571, { i64, ptr } %t570)
  br label %bb149
bb149:
  br label %bb150
bb150:
  br label %bb144
bb151:
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s27)
  br label %bb153
bb153:
  call void @__olang_scope_close(ptr %s21)
  br label %bb154
bb154:
  %t575 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H84525b00cfc40be2d2c61524b3658c11(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t575, ptr %l331
  br label %bb155
bb155:
  %t576 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l331
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t576, ptr %l47
  store i64 0, ptr %l48, !tbaa !24
  store i64 0, ptr %l49, !tbaa !24
  %t578 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t578, ptr %l333
  br label %bb156
bb156:
  %t579 = load i64, ptr %l333, !tbaa !24
  store i64 %t579, ptr %l50, !tbaa !24
  store i64 1, ptr %l51, !tbaa !24
  %t580 = load i64, ptr %l50, !tbaa !24
  %t581 = load i64, ptr %l49, !tbaa !24
  %t584 = icmp sgt i64 %t580, %t581
  br i1 %t584, label %bb157, label %bb158
bb157:
  %t586 = load i64, ptr %l51, !tbaa !24
  %t588 = icmp sgt i64 %t586, 0
  br i1 %t588, label %bb159, label %bb160
bb158:
  store i64 0, ptr %l337, !tbaa !24
  br label %bb162
bb159:
  %t590 = load i64, ptr %l50, !tbaa !24
  %t591 = load i64, ptr %l49, !tbaa !24
  %t594 = sub i64 %t590, %t591
  %t595 = load i64, ptr %l51, !tbaa !24
  %t598 = add i64 %t594, %t595
  %t600 = sub i64 %t598, 1
  %t601 = load i64, ptr %l51, !tbaa !24
  %t604 = sdiv i64 %t600, %t601
  store i64 %t604, ptr %l340, !tbaa !24
  br label %bb161
bb160:
  store i64 0, ptr %l340, !tbaa !24
  br label %bb161
bb161:
  %t606 = load i64, ptr %l340, !tbaa !24
  store i64 %t606, ptr %l337, !tbaa !24
  br label %bb162
bb162:
  %t607 = load i64, ptr %l337, !tbaa !24
  store i64 %t607, ptr %l52, !tbaa !24
  store i64 0, ptr %l53, !tbaa !24
  br label %bb163
bb163:
  store %olang.scope zeroinitializer, ptr %s32
  %t608 = load i64, ptr %l53, !tbaa !24
  %t609 = load i64, ptr %l52, !tbaa !24
  %t612 = icmp slt i64 %t608, %t609
  %t614 = xor i1 %t612, true
  br i1 %t614, label %bb164, label %bb165
bb164:
  call void @__olang_scope_close(ptr %s32)
  br label %bb279
bb165:
  br label %bb166
bb166:
  %t616 = load i64, ptr %l49, !tbaa !24
  %t617 = load i64, ptr %l53, !tbaa !24
  %t618 = load i64, ptr %l51, !tbaa !24
  %t621 = mul i64 %t617, %t618
  %t624 = add i64 %t616, %t621
  store i64 %t624, ptr %l54, !tbaa !24
  %t626 = load ptr, ptr %lp2
  %t627 = getelementptr %"compiler/profile:Places", ptr %t626, i32 0, i32 3
  store ptr %t627, ptr %l358, !tbaa !29
  %t628 = load ptr, ptr %lp2
  %t629 = getelementptr %"compiler/profile:Places", ptr %t628, i32 0, i32 2
  %t631 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2eLen_3ccompiler_2fprofile_3aFrame_3e(ptr %v2, ptr %t629)
  store i64 %t631, ptr %l360
  br label %bb167
bb167:
  %t632 = load ptr, ptr %l358, !tbaa !29
  %t633 = load i64, ptr %l360, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t632, i64 %t633)
  br label %bb168
bb168:
  store i64 0, ptr %l55, !tbaa !24
  %t634 = load i64, ptr %l54, !tbaa !24
  %t637 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t634)
  store i64 %t637, ptr %l363
  br label %bb169
bb169:
  %t638 = load i64, ptr %l363, !tbaa !24
  %t639 = icmp sge i64 %t638, 0
  br i1 %t639, label %bb170, label %bb171
bb170:
  %t641 = load i64, ptr %l48, !tbaa !24
  store i64 %t641, ptr %l366, !tbaa !24
  %t642 = load ptr, ptr %lp34
  %t644 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t642)
  store i64 %t644, ptr %l368
  br label %bb172
bb171:
  store i1 false, ptr %l365, !tbaa !21
  br label %bb173
bb172:
  %t645 = load i64, ptr %l366, !tbaa !24
  %t646 = load i64, ptr %l368, !tbaa !24
  %t647 = icmp slt i64 %t645, %t646
  store i1 %t647, ptr %l365, !tbaa !21
  br label %bb173
bb173:
  %t649 = load i1, ptr %l365, !tbaa !21
  br i1 %t649, label %bb174, label %bb175
bb174:
  br label %bb176
bb175:
  br label %bb218
bb176:
  store %olang.scope zeroinitializer, ptr %s34
  %t650 = load i64, ptr %l48, !tbaa !24
  %t652 = add i64 %t650, 1
  store i64 %t652, ptr %l371, !tbaa !24
  %t653 = load ptr, ptr %lp34
  %t655 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t653)
  store i64 %t655, ptr %l373
  br label %bb177
bb177:
  %t656 = load i64, ptr %l371, !tbaa !24
  %t657 = load i64, ptr %l373, !tbaa !24
  %t658 = icmp slt i64 %t656, %t657
  br i1 %t658, label %bb178, label %bb179
bb178:
  %t660 = load ptr, ptr %lp34
  %t661 = load i64, ptr %l48, !tbaa !24
  %t664 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t660, i64 %t661)
  store { i64, ptr } %t664, ptr %l378
  br label %bb180
bb179:
  store i1 false, ptr %l375, !tbaa !21
  br label %bb182
bb180:
  %t665 = load { i64, ptr }, ptr %l378, !tbaa !27
  %t666 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s34, { i64, ptr } %t665, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t666, ptr %l379
  br label %bb181
bb181:
  %t667 = load i1, ptr %l379, !tbaa !21
  %t668 = xor i1 %t667, true
  store i1 %t668, ptr %l375, !tbaa !21
  br label %bb182
bb182:
  %t670 = load i1, ptr %l375, !tbaa !21
  %t671 = xor i1 %t670, true
  br i1 %t671, label %bb183, label %bb184
bb183:
  call void @__olang_scope_close(ptr %s34)
  br label %bb217
bb184:
  br label %bb185
bb185:
  %t673 = load ptr, ptr %lp34
  %t674 = load i64, ptr %l48, !tbaa !24
  %t677 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t673, i64 %t674)
  store { i64, ptr } %t677, ptr %l384
  br label %bb186
bb186:
  %t678 = load { i64, ptr }, ptr %l384, !tbaa !27
  store { i64, ptr } %t678, ptr %l56, !tbaa !27
  %t679 = load ptr, ptr %lp34
  %t680 = load i64, ptr %l48, !tbaa !24
  %t682 = add i64 %t680, 1
  %t685 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t679, i64 %t682)
  store { i64, ptr } %t685, ptr %l388
  br label %bb187
bb187:
  %t686 = load { i64, ptr }, ptr %l388, !tbaa !27
  %t687 = load i64, ptr %l48, !tbaa !24
  %t689 = add i64 %t687, 2
  store i64 %t689, ptr %l48, !tbaa !24
  %t693 = call { { i64, ptr }, i64 } @compiler_2fprofile_2efileLine(ptr %v2, ptr %s34, { i64, ptr } %t686)
  store { { i64, ptr }, i64 } %t693, ptr %l392
  br label %bb188
bb188:
  %t694 = load { { i64, ptr }, i64 }, ptr %l392
  store { { i64, ptr }, i64 } %t694, ptr %l58
  %t695 = getelementptr { { i64, ptr }, i64 }, ptr %l58, i32 0, i32 0
  %t696 = load { i64, ptr }, ptr %t695, !tbaa !27
  store { i64, ptr } %t696, ptr %l393, !tbaa !27
  %t697 = load { i64, ptr }, ptr %l393, !tbaa !27
  %t698 = extractvalue { i64, ptr } %t697, 0
  store i64 %t698, ptr %l394, !tbaa !24
  %t699 = load i64, ptr %l394, !tbaa !24
  %t700 = mul i64 %t699, 1
  %t701 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t700)
  %t702 = insertvalue { i64, ptr } undef, i64 %t699, 0
  %t703 = insertvalue { i64, ptr } %t702, ptr %t701, 1
  store { i64, ptr } %t703, ptr %l395, !tbaa !27
  %t704 = getelementptr { i64, ptr }, ptr %l395, i32 0, i32 1
  %t705 = load ptr, ptr %t704, !tbaa !27
  %t706 = getelementptr { i64, ptr }, ptr %l393, i32 0, i32 1
  %t707 = load ptr, ptr %t706, !tbaa !27
  %t708 = load i64, ptr %l394, !tbaa !24
  %t709 = mul i64 %t708, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t705, ptr %t707, i64 %t709, i1 false)
  %t710 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t710, ptr %lp59
  %t711 = load { i64, ptr }, ptr %l395, !tbaa !27
  %t712 = load ptr, ptr %lp59
  store { i64, ptr } %t711, ptr %t712, !tbaa !27
  %t713 = getelementptr { { i64, ptr }, i64 }, ptr %l58, i32 0, i32 1
  %t714 = load i64, ptr %t713, !tbaa !24
  store i64 %t714, ptr %l60, !tbaa !24
  %t716 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t718 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s34, { i64, ptr } %t716, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t718, ptr %l398
  br label %bb189
bb189:
  %t719 = load i1, ptr %l398, !tbaa !21
  br i1 %t719, label %bb190, label %bb191
bb190:
  %t720 = load i64, ptr %l54, !tbaa !24
  %t723 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t720)
  store { i64, ptr } %t723, ptr %l402
  br label %bb192
bb191:
  store i1 false, ptr %l399, !tbaa !21
  br label %bb194
bb192:
  %t724 = load { i64, ptr }, ptr %l402, !tbaa !27
  %t725 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s34, { i64, ptr } %t724, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t725, ptr %l403
  br label %bb193
bb193:
  %t726 = load i1, ptr %l403, !tbaa !21
  store i1 %t726, ptr %l399, !tbaa !21
  br label %bb194
bb194:
  %t727 = load i1, ptr %l399, !tbaa !21
  br i1 %t727, label %bb195, label %bb196
bb195:
  store ptr %l47, ptr %l404, !tbaa !29
  %t728 = load i64, ptr %l54, !tbaa !24
  %t731 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t728)
  store { i64, ptr } %t731, ptr %l407
  br label %bb197
bb196:
  br label %bb200
bb197:
  %t732 = load i64, ptr %l54, !tbaa !24
  %t735 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t732)
  store i64 %t735, ptr %l410
  br label %bb198
bb198:
  %t736 = load ptr, ptr %l404, !tbaa !29
  %t737 = load { i64, ptr }, ptr %l407, !tbaa !27
  %t738 = load i64, ptr %l410, !tbaa !24
  %t739 = call { i64, ptr } @compiler_2fprofile_2esymbolIn(ptr %s0, ptr %s0, ptr %v2, ptr %t736, { i64, ptr } %t737, i64 %t738)
  store { i64, ptr } %t739, ptr %l411
  br label %bb199
bb199:
  %t740 = load { i64, ptr }, ptr %l411, !tbaa !27
  %t741 = extractvalue { i64, ptr } %t740, 0
  %t742 = extractvalue { i64, ptr } %t740, 1
  %t743 = mul i64 %t741, 1
  %t744 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t743)
  call void @llvm.memcpy.p0.p0.i64(ptr %t744, ptr %t742, i64 %t743, i1 false)
  %t745 = insertvalue { i64, ptr } undef, i64 %t741, 0
  %t746 = insertvalue { i64, ptr } %t745, ptr %t744, 1
  store { i64, ptr } %t746, ptr %l56, !tbaa !27
  br label %bb200
bb200:
  %t748 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t750 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s34, { i64, ptr } %t748, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t750, ptr %l414
  br label %bb201
bb201:
  %t751 = load i1, ptr %l414, !tbaa !21
  br i1 %t751, label %bb202, label %bb203
bb202:
  store %olang.scope zeroinitializer, ptr %s36
  %t752 = load i64, ptr %l54, !tbaa !24
  %t755 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t752)
  store i64 %t755, ptr %l417
  br label %bb204
bb203:
  %t756 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t758 = call { i64, ptr } @compiler_2fprofile_2eReadable(ptr %v2, ptr %v2, { i64, ptr } %t756)
  store { i64, ptr } %t758, ptr %l429
  br label %bb210
bb204:
  %t759 = load i64, ptr %l417, !tbaa !24
  store i64 %t759, ptr %l418, !tbaa !65
  %t760 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s36, i64 16)
  %t761 = extractvalue { i32, i64 } %t760, 1
  %t762 = extractvalue { i32, i64 } %t760, 0
  store i32 %t762, ptr %l420
  %t763 = icmp ne i32 %t762, 0
  br i1 %t763, label %bb206, label %ok.764, !prof !99
ok.764:
  store i64 %t761, ptr %l419
  br label %bb205
bb205:
  %t765 = load i64, ptr %l418, !tbaa !65
  %t766 = load i64, ptr %l419, !tbaa !24
  %t767 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s36, i64 %t765, i64 %t766)
  store { i64, ptr } %t767, ptr %l421
  br label %bb207
bb206:
  call void @__olang_check_failed(ptr @olang_loc_698502529ad2e54f_f0e75116d399f563)
  unreachable
bb207:
  %t768 = load i64, ptr %l54, !tbaa !24
  %t771 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t768)
  store { i64, ptr } %t771, ptr %l424
  br label %bb208
bb208:
  %t772 = load { i64, ptr }, ptr %l424, !tbaa !27
  %t773 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %s0, ptr %s36, { i64, ptr } %t772)
  store { i64, ptr } %t773, ptr %l425
  br label %bb209
bb209:
  %t774 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t775 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t776 = load { i64, ptr }, ptr %l421, !tbaa !27
  %t777 = extractvalue { i64, ptr } %t776, 1
  %t778 = extractvalue { i64, ptr } %t776, 0
  %t779 = add i64 %t775, %t778
  %t780 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t781 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t782 = add i64 %t779, %t781
  %t783 = load { i64, ptr }, ptr %l425, !tbaa !27
  %t784 = extractvalue { i64, ptr } %t783, 1
  %t785 = extractvalue { i64, ptr } %t783, 0
  %t786 = add i64 %t782, %t785
  %t787 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t788 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t789 = add i64 %t786, %t788
  %t790 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t789)
  call void @olang_textcopy(ptr %t790, ptr %t774, i64 %t775)
  %t791 = getelementptr i8, ptr %t790, i64 %t775
  call void @olang_textcopy(ptr %t791, ptr %t777, i64 %t778)
  %t792 = getelementptr i8, ptr %t791, i64 %t778
  call void @olang_textcopy(ptr %t792, ptr %t780, i64 %t781)
  %t793 = getelementptr i8, ptr %t792, i64 %t781
  call void @olang_textcopy(ptr %t793, ptr %t784, i64 %t785)
  %t794 = getelementptr i8, ptr %t793, i64 %t785
  call void @olang_textcopy(ptr %t794, ptr %t787, i64 %t788)
  %t795 = insertvalue { i64, ptr } undef, i64 %t789, 0
  %t796 = insertvalue { i64, ptr } %t795, ptr %t790, 1
  %t798 = extractvalue { i64, ptr } %t796, 0
  %t799 = extractvalue { i64, ptr } %t796, 1
  %t800 = mul i64 %t798, 1
  %t801 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t800)
  call void @llvm.memcpy.p0.p0.i64(ptr %t801, ptr %t799, i64 %t800, i1 false)
  %t802 = insertvalue { i64, ptr } undef, i64 %t798, 0
  %t803 = insertvalue { i64, ptr } %t802, ptr %t801, 1
  store { i64, ptr } %t803, ptr %l56, !tbaa !27
  call void @__olang_scope_close(ptr %s36)
  br label %bb211
bb210:
  %t805 = load { i64, ptr }, ptr %l429, !tbaa !27
  %t806 = extractvalue { i64, ptr } %t805, 0
  %t807 = extractvalue { i64, ptr } %t805, 1
  %t808 = mul i64 %t806, 1
  %t809 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t808)
  call void @llvm.memcpy.p0.p0.i64(ptr %t809, ptr %t807, i64 %t808, i1 false)
  %t810 = insertvalue { i64, ptr } undef, i64 %t806, 0
  %t811 = insertvalue { i64, ptr } %t810, ptr %t809, 1
  store { i64, ptr } %t811, ptr %l56, !tbaa !27
  br label %bb211
bb211:
  %t813 = load ptr, ptr %lp2
  %t814 = getelementptr %"compiler/profile:Places", ptr %t813, i32 0, i32 2
  store ptr %t814, ptr %l431, !tbaa !29
  %t815 = load ptr, ptr %lp2
  %t816 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t819 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t815, { i64, ptr } %t816)
  store i64 %t819, ptr %l434
  br label %bb212
bb212:
  %t820 = load ptr, ptr %lp2
  %t821 = load ptr, ptr %lp59
  %t822 = load { i64, ptr }, ptr %t821, !tbaa !27
  %t825 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t820, { i64, ptr } %t822)
  store i64 %t825, ptr %l437
  br label %bb213
bb213:
  %t826 = load i64, ptr %l60, !tbaa !24
  %t827 = load i64, ptr %l434, !tbaa !24
  %t828 = load i64, ptr %l437, !tbaa !24
  %t830 = call %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %s34, i64 %t827, i64 %t828, i64 %t826)
  store %"compiler/profile:Frame" %t830, ptr %l439
  br label %bb214
bb214:
  %t831 = load ptr, ptr %l431, !tbaa !29
  %t832 = load %"compiler/profile:Frame", ptr %l439
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v2, ptr %t831, %"compiler/profile:Frame" %t832)
  br label %bb215
bb215:
  %t833 = load i64, ptr %l55, !tbaa !24
  %t835 = add i64 %t833, 1
  store i64 %t835, ptr %l55, !tbaa !24
  call void @__olang_scope_close(ptr %s34)
  br label %bb216
bb216:
  br label %bb176
bb217:
  %t837 = load i64, ptr %l48, !tbaa !24
  %t839 = add i64 %t837, 1
  store i64 %t839, ptr %l48, !tbaa !24
  br label %bb218
bb218:
  %t841 = load i64, ptr %l55, !tbaa !24
  %t843 = icmp eq i64 %t841, 0
  br i1 %t843, label %bb219, label %bb220
bb219:
  %t845 = load i64, ptr %l54, !tbaa !24
  %t848 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t845)
  store i64 %t848, ptr %l449
  br label %bb221
bb220:
  store i1 false, ptr %l446, !tbaa !21
  br label %bb222
bb221:
  %t849 = load i64, ptr %l449, !tbaa !24
  %t850 = icmp sge i64 %t849, 0
  store i1 %t850, ptr %l446, !tbaa !21
  br label %bb222
bb222:
  %t852 = load i1, ptr %l446, !tbaa !21
  br i1 %t852, label %bb223, label %bb224
bb223:
  %t853 = load i64, ptr %l54, !tbaa !24
  %t856 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t853)
  store { i64, ptr } %t856, ptr %l454
  br label %bb225
bb224:
  store i1 false, ptr %l451, !tbaa !21
  br label %bb227
bb225:
  %t857 = load { i64, ptr }, ptr %l454, !tbaa !27
  %t858 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s32, { i64, ptr } %t857, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t858, ptr %l455
  br label %bb226
bb226:
  %t859 = load i1, ptr %l455, !tbaa !21
  store i1 %t859, ptr %l451, !tbaa !21
  br label %bb227
bb227:
  %t860 = load i1, ptr %l451, !tbaa !21
  br i1 %t860, label %bb228, label %bb229
bb228:
  store %olang.scope zeroinitializer, ptr %s39
  store ptr %l47, ptr %l456, !tbaa !29
  %t861 = load i64, ptr %l54, !tbaa !24
  %t864 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t861)
  store { i64, ptr } %t864, ptr %l459
  br label %bb230
bb229:
  br label %bb258
bb230:
  %t865 = load ptr, ptr %l456, !tbaa !29
  %t866 = load { i64, ptr }, ptr %l459, !tbaa !27
  %t867 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H509117e81ae737fb138b1f364b80e611(ptr %s0, ptr %s0, ptr %t865, { i64, ptr } %t866)
  store i1 %t867, ptr %l460
  br label %bb231
bb231:
  %t868 = load i1, ptr %l460, !tbaa !21
  %t869 = xor i1 %t868, true
  br i1 %t869, label %bb232, label %bb233
bb232:
  store %olang.scope zeroinitializer, ptr %s40
  store ptr %l47, ptr %l462, !tbaa !29
  %t871 = ptrtoint ptr %s0 to i64
  store i64 %t871, ptr %l463, !tbaa !24
  %t872 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_H31300daf7c6be9b9667c9cd96eea1c7e
  br i1 %t872, label %bb234, label %bb235
bb233:
  br label %bb240
bb234:
  %t874 = call ptr @__olang_region_make(ptr %s0)
  %t875 = ptrtoint ptr %t874 to i64
  store i64 %t875, ptr %l463, !tbaa !24
  br label %bb235
bb235:
  %t876 = load i64, ptr %l54, !tbaa !24
  %t879 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s40, ptr %l16, i64 %t876)
  store { i64, ptr } %t879, ptr %l467
  br label %bb236
bb236:
  %t880 = load { i64, ptr }, ptr %l467, !tbaa !27
  %t881 = extractvalue { i64, ptr } %t880, 1
  %t882 = extractvalue { i64, ptr } %t880, 0
  %t883 = load i64, ptr %l463
  %t884 = inttoptr i64 %t883 to ptr
  %t885 = call ptr @__olang_scope_alloc(ptr %t884, i64 %t882)
  call void @olang_textcopy(ptr %t885, ptr %t881, i64 %t882)
  %t886 = insertvalue { i64, ptr } undef, i64 %t882, 0
  %t887 = insertvalue { i64, ptr } %t886, ptr %t885, 1
  %t889 = load i64, ptr %l463
  %t890 = inttoptr i64 %t889 to ptr
  %t891 = extractvalue { i64, ptr } %t887, 0
  %t892 = extractvalue { i64, ptr } %t887, 1
  %t893 = mul i64 %t891, 1
  %t894 = call ptr @__olang_scope_alloc(ptr %t890, i64 %t893)
  call void @llvm.memcpy.p0.p0.i64(ptr %t894, ptr %t892, i64 %t893, i1 false)
  %t895 = insertvalue { i64, ptr } undef, i64 %t891, 0
  %t896 = insertvalue { i64, ptr } %t895, ptr %t894, 1
  store { i64, ptr } %t896, ptr %l469, !tbaa !27
  %t897 = load i64, ptr %l54, !tbaa !24
  %t900 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t897)
  store { i64, ptr } %t900, ptr %l472
  br label %bb237
bb237:
  %t901 = load { i64, ptr }, ptr %l472, !tbaa !27
  %t902 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2efunctionSymbols(ptr %s0, ptr %s0, { i64, ptr } %t901)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t902, ptr %l473
  br label %bb238
bb238:
  %t903 = load ptr, ptr %l462, !tbaa !29
  %t904 = load { i64, ptr }, ptr %l469, !tbaa !27
  %t905 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l473
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hb4e1316c13adc554c531dbb9cf254a96(ptr %s0, ptr %s0, ptr %s0, ptr %t903, { i64, ptr } %t904, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t905)
  br label %bb239
bb239:
  call void @__olang_scope_close(ptr %s40)
  br label %bb240
bb240:
  store ptr %l47, ptr %l475, !tbaa !29
  %t906 = load i64, ptr %l54, !tbaa !24
  %t909 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t906)
  store { i64, ptr } %t909, ptr %l478
  br label %bb241
bb241:
  %t910 = load ptr, ptr %l475, !tbaa !29
  %t911 = load { i64, ptr }, ptr %l478, !tbaa !27
  %t912 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hfa095cf457cc3af0cc9715613212afd3(ptr %s0, ptr %s0, ptr %s0, ptr %t910, { i64, ptr } %t911)
  %t913 = extractvalue { i32, ptr } %t912, 1
  %t914 = extractvalue { i32, ptr } %t912, 0
  store i32 %t914, ptr %l480
  %t915 = icmp ne i32 %t914, 0
  br i1 %t915, label %bb243, label %ok.916, !prof !99
ok.916:
  store ptr %t913, ptr %l479
  br label %bb242
bb242:
  %t917 = load ptr, ptr %l479, !tbaa !29
  store ptr %t917, ptr %l474, !tbaa !29
  br label %bb246
bb243:
  br label %bb244
bb244:
  %t918 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t918, ptr %l481
  br label %bb245
bb245:
  %t919 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l481
  %t920 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t919, ptr %t920
  store ptr %t920, ptr %l474, !tbaa !29
  br label %bb246
bb246:
  %t922 = load ptr, ptr %l474, !tbaa !29
  store ptr %t922, ptr %l483, !tbaa !29
  %t924 = load i64, ptr %l54, !tbaa !24
  %t927 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t924)
  store i64 %t927, ptr %l486
  br label %bb247
bb247:
  %t928 = load ptr, ptr %l483, !tbaa !29
  %t929 = load i64, ptr %l486, !tbaa !24
  %t930 = call { i64, ptr } @compiler_2fprofile_2esymbolAt(ptr %s0, ptr %s39, ptr %t928, i64 %t929)
  store { i64, ptr } %t930, ptr %l487
  br label %bb248
bb248:
  %t931 = load { i64, ptr }, ptr %l487, !tbaa !27
  store { i64, ptr } %t931, ptr %l62, !tbaa !27
  %t932 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t934 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s39, ptr %s39, { i64, ptr } %t932, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t934, ptr %l489
  br label %bb249
bb249:
  %t935 = load i1, ptr %l489, !tbaa !21
  %t936 = xor i1 %t935, true
  br i1 %t936, label %bb250, label %bb251
bb250:
  store %olang.scope zeroinitializer, ptr %s42
  %t938 = load ptr, ptr %lp2
  %t939 = getelementptr %"compiler/profile:Places", ptr %t938, i32 0, i32 2
  store ptr %t939, ptr %l491, !tbaa !29
  %t940 = load ptr, ptr %lp2
  store ptr %t940, ptr %l492, !tbaa !29
  %t941 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t943 = call { i64, ptr } @compiler_2fprofile_2eReadable(ptr %s39, ptr %v2, { i64, ptr } %t941)
  store { i64, ptr } %t943, ptr %l494
  br label %bb252
bb251:
  br label %bb257
bb252:
  %t944 = load { i64, ptr }, ptr %l494, !tbaa !27
  %t945 = extractvalue { i64, ptr } %t944, 0
  %t946 = extractvalue { i64, ptr } %t944, 1
  %t947 = mul i64 %t945, 1
  %t948 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t947)
  call void @llvm.memcpy.p0.p0.i64(ptr %t948, ptr %t946, i64 %t947, i1 false)
  %t949 = insertvalue { i64, ptr } undef, i64 %t945, 0
  %t950 = insertvalue { i64, ptr } %t949, ptr %t948, 1
  %t951 = load ptr, ptr %l492, !tbaa !29
  %t953 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t951, { i64, ptr } %t950)
  store i64 %t953, ptr %l496
  br label %bb253
bb253:
  %t954 = load ptr, ptr %lp2
  %t956 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t954, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i64 %t956, ptr %l498
  br label %bb254
bb254:
  %t957 = load i64, ptr %l496, !tbaa !24
  %t958 = load i64, ptr %l498, !tbaa !24
  %t959 = call %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %s42, i64 %t957, i64 %t958, i64 0)
  store %"compiler/profile:Frame" %t959, ptr %l499
  br label %bb255
bb255:
  %t960 = load ptr, ptr %l491, !tbaa !29
  %t961 = load %"compiler/profile:Frame", ptr %l499
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v2, ptr %t960, %"compiler/profile:Frame" %t961)
  br label %bb256
bb256:
  store i64 1, ptr %l55, !tbaa !24
  call void @__olang_scope_close(ptr %s42)
  br label %bb257
bb257:
  call void @__olang_scope_close(ptr %s39)
  br label %bb258
bb258:
  %t962 = load i64, ptr %l55, !tbaa !24
  %t964 = icmp eq i64 %t962, 0
  br i1 %t964, label %bb259, label %bb260
bb259:
  store %olang.scope zeroinitializer, ptr %s43
  %t966 = load i64, ptr %l54, !tbaa !24
  %t969 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t966)
  store { i64, ptr } %t969, ptr %l504
  br label %bb261
bb260:
  br label %bb276
bb261:
  %t970 = load { i64, ptr }, ptr %l504, !tbaa !27
  %t971 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s43, { i64, ptr } %t970, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t971, ptr %l505
  br label %bb262
bb262:
  %t972 = load i1, ptr %l505, !tbaa !21
  %t973 = xor i1 %t972, true
  br i1 %t973, label %bb263, label %bb264
bb263:
  %t975 = load i64, ptr %l54, !tbaa !24
  %t978 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t975)
  store { i64, ptr } %t978, ptr %l510
  br label %bb265
bb264:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l507, !tbaa !27
  br label %bb267
bb265:
  %t979 = load { i64, ptr }, ptr %l510, !tbaa !27
  %t980 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %s0, ptr %s43, { i64, ptr } %t979)
  store { i64, ptr } %t980, ptr %l511
  br label %bb266
bb266:
  %t981 = load { i64, ptr }, ptr %l511, !tbaa !27
  store { i64, ptr } %t981, ptr %l507, !tbaa !27
  br label %bb267
bb267:
  %t982 = load { i64, ptr }, ptr %l507, !tbaa !27
  store { i64, ptr } %t982, ptr %l63, !tbaa !27
  %t983 = load ptr, ptr %lp2
  %t984 = getelementptr %"compiler/profile:Places", ptr %t983, i32 0, i32 2
  store ptr %t984, ptr %l512, !tbaa !29
  %t985 = load ptr, ptr %lp2
  store ptr %t985, ptr %l513, !tbaa !29
  %t986 = load i64, ptr %l54, !tbaa !24
  %t989 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t986)
  store i64 %t989, ptr %l516
  br label %bb268
bb268:
  %t990 = load i64, ptr %l516, !tbaa !24
  store i64 %t990, ptr %l517, !tbaa !65
  %t991 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s43, i64 16)
  %t992 = extractvalue { i32, i64 } %t991, 1
  %t993 = extractvalue { i32, i64 } %t991, 0
  store i32 %t993, ptr %l519
  %t994 = icmp ne i32 %t993, 0
  br i1 %t994, label %bb270, label %ok.995, !prof !99
ok.995:
  store i64 %t992, ptr %l518
  br label %bb269
bb269:
  %t996 = load i64, ptr %l517, !tbaa !65
  %t997 = load i64, ptr %l518, !tbaa !24
  %t998 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s43, i64 %t996, i64 %t997)
  store { i64, ptr } %t998, ptr %l520
  br label %bb271
bb270:
  call void @__olang_check_failed(ptr @olang_loc_6b0ecf2869984314_228026d38fe8b188)
  unreachable
bb271:
  %t999 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t1000 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t1001 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t1002 = load { i64, ptr }, ptr %l520, !tbaa !27
  %t1003 = extractvalue { i64, ptr } %t1002, 1
  %t1004 = extractvalue { i64, ptr } %t1002, 0
  %t1005 = add i64 %t1001, %t1004
  %t1006 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t1007 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t1008 = add i64 %t1005, %t1007
  %t1010 = extractvalue { i64, ptr } %t999, 1
  %t1011 = extractvalue { i64, ptr } %t999, 0
  %t1012 = add i64 %t1008, %t1011
  %t1013 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t1014 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t1015 = add i64 %t1012, %t1014
  %t1016 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1015)
  call void @olang_textcopy(ptr %t1016, ptr %t1000, i64 %t1001)
  %t1017 = getelementptr i8, ptr %t1016, i64 %t1001
  call void @olang_textcopy(ptr %t1017, ptr %t1003, i64 %t1004)
  %t1018 = getelementptr i8, ptr %t1017, i64 %t1004
  call void @olang_textcopy(ptr %t1018, ptr %t1006, i64 %t1007)
  %t1019 = getelementptr i8, ptr %t1018, i64 %t1007
  call void @olang_textcopy(ptr %t1019, ptr %t1010, i64 %t1011)
  %t1020 = getelementptr i8, ptr %t1019, i64 %t1011
  call void @olang_textcopy(ptr %t1020, ptr %t1013, i64 %t1014)
  %t1021 = insertvalue { i64, ptr } undef, i64 %t1015, 0
  %t1022 = insertvalue { i64, ptr } %t1021, ptr %t1016, 1
  %t1024 = extractvalue { i64, ptr } %t1022, 0
  %t1025 = extractvalue { i64, ptr } %t1022, 1
  %t1026 = mul i64 %t1024, 1
  %t1027 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1026)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1027, ptr %t1025, i64 %t1026, i1 false)
  %t1028 = insertvalue { i64, ptr } undef, i64 %t1024, 0
  %t1029 = insertvalue { i64, ptr } %t1028, ptr %t1027, 1
  %t1030 = load ptr, ptr %l513, !tbaa !29
  %t1032 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t1030, { i64, ptr } %t1029)
  store i64 %t1032, ptr %l524
  br label %bb272
bb272:
  %t1033 = load ptr, ptr %lp2
  %t1035 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t1033, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i64 %t1035, ptr %l526
  br label %bb273
bb273:
  %t1036 = load i64, ptr %l524, !tbaa !24
  %t1037 = load i64, ptr %l526, !tbaa !24
  %t1038 = call %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %s43, i64 %t1036, i64 %t1037, i64 0)
  store %"compiler/profile:Frame" %t1038, ptr %l527
  br label %bb274
bb274:
  %t1039 = load ptr, ptr %l512, !tbaa !29
  %t1040 = load %"compiler/profile:Frame", ptr %l527
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v2, ptr %t1039, %"compiler/profile:Frame" %t1040)
  br label %bb275
bb275:
  store i64 1, ptr %l55, !tbaa !24
  call void @__olang_scope_close(ptr %s43)
  br label %bb276
bb276:
  %t1041 = load ptr, ptr %lp2
  %t1042 = getelementptr %"compiler/profile:Places", ptr %t1041, i32 0, i32 4
  %t1043 = load i64, ptr %l55, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t1042, i64 %t1043)
  br label %bb277
bb277:
  call void @__olang_scope_close(ptr %s32)
  br label %bb278
bb278:
  %t1046 = load i64, ptr %l53, !tbaa !24
  %t1048 = add i64 %t1046, 1
  store i64 %t1048, ptr %l53, !tbaa !24
  br label %bb163
bb279:
  %t1050 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l532, ptr %t1050, i64 272, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l532, i64 272, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"compiler/profile:Profile" } @compiler_2fprofile_2eProfile_2eRead(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"compiler/profile:Profile"
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l23 = alloca [8 x i8]
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %l30 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i1
  %l54 = alloca i64
  %l59 = alloca i1
  %l62 = alloca i1
  %l75 = alloca ptr
  %l77 = alloca i64
  %l79 = alloca i64
  %l81 = alloca %"compiler/profile:Sample"
  %l86 = alloca i64
  %l89 = alloca i64
  %l107 = alloca ptr
  %l114 = alloca i64
  %l121 = alloca i64
  %l123 = alloca { i64, ptr }
  %l126 = alloca i64
  %l129 = alloca i64
  %l130 = alloca i64
  %l135 = alloca { i64, ptr }
  %l136 = alloca i64
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/profile:Profile" }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/profile:Profile" @compiler_2fprofile_3aProfile_2ector(ptr %v1)
  store %"compiler/profile:Profile" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"compiler/profile:Profile", ptr %l12
  %t4 = load ptr, ptr %lp1
  store %"compiler/profile:Profile" %t3, ptr %t4
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp slt i64 %t7, 40
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb11
bb3:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l17, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l18, !tbaa !24
  %t14 = icmp sge i64 0, 0
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = icmp sle i64 0, 8
  br i1 %t16, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_19eabfe0257f2300_73d07f391b90fd8c)
  unreachable
bb6:
  %t18 = load i64, ptr %l18, !tbaa !24
  %t19 = icmp sle i64 8, %t18
  br i1 %t19, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_19eabfe0257f2300_73d07f391b90fd8c)
  unreachable
bb8:
  %t21 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 0
  %t25 = load [8 x i8], ptr %t23
  store [8 x i8] %t25, ptr %l23
  %t26 = mul i64 8, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 8, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l24, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = mul i64 8, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t31, ptr %l23, i64 %t32, i1 false)
  %t33 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t35 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t33, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t35, ptr %l26
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_19eabfe0257f2300_73d07f391b90fd8c)
  unreachable
bb10:
  %t36 = load i1, ptr %l26, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l16, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t41 = insertvalue { i32, %"compiler/profile:Profile" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/profile:Profile" } %t41, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t42 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t44 = call i64 @compiler_2fprofile_2eword(ptr %v0, { i64, ptr } %t42, i64 1)
  store i64 %t44, ptr %l30
  br label %bb15
bb15:
  %t45 = load i64, ptr %l30, !tbaa !24
  %t46 = load ptr, ptr %lp1
  %t47 = getelementptr %"compiler/profile:Profile", ptr %t46, i32 0, i32 0
  store i64 %t45, ptr %t47, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t50 = call i64 @compiler_2fprofile_2eword(ptr %v0, { i64, ptr } %t48, i64 2)
  store i64 %t50, ptr %l32
  br label %bb16
bb16:
  %t51 = load i64, ptr %l32, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t54 = call i64 @compiler_2fprofile_2eword(ptr %v0, { i64, ptr } %t52, i64 3)
  store i64 %t54, ptr %l34
  br label %bb17
bb17:
  %t55 = load i64, ptr %l34, !tbaa !24
  %t56 = load ptr, ptr %lp1
  %t57 = getelementptr %"compiler/profile:Profile", ptr %t56, i32 0, i32 1
  store i64 %t55, ptr %t57, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t60 = call i64 @compiler_2fprofile_2eword(ptr %v0, { i64, ptr } %t58, i64 4)
  store i64 %t60, ptr %l36
  br label %bb18
bb18:
  %t61 = load i64, ptr %l36, !tbaa !24
  %t62 = load ptr, ptr %lp1
  %t63 = getelementptr %"compiler/profile:Profile", ptr %t62, i32 0, i32 2
  store i64 %t61, ptr %t63, !tbaa !24
  %t64 = load i64, ptr %l2, !tbaa !24
  %t66 = icmp slt i64 %t64, 0
  br i1 %t66, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb21
bb20:
  %t68 = load i64, ptr %l2, !tbaa !24
  %t70 = mul i64 %t68, 8
  %t72 = add i64 40, %t70
  %t73 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t78 = icmp sgt i64 %t72, %t75
  store i1 %t78, ptr %l39, !tbaa !21
  br label %bb21
bb21:
  %t80 = load i1, ptr %l39, !tbaa !21
  br i1 %t80, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t82 = insertvalue { i32, %"compiler/profile:Profile" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/profile:Profile" } %t82, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t83 = load i64, ptr %l3, !tbaa !24
  %t84 = load i64, ptr %l2, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb60
bb27:
  br label %bb28
bb28:
  %t91 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t92 = load i64, ptr %l3, !tbaa !24
  %t94 = add i64 5, %t92
  %t97 = call i64 @compiler_2fprofile_2eword(ptr %v0, { i64, ptr } %t91, i64 %t94)
  store i64 %t97, ptr %l54
  br label %bb29
bb29:
  %t98 = load i64, ptr %l54, !tbaa !24
  store i64 %t98, ptr %l4, !tbaa !24
  %t99 = load i64, ptr %l4, !tbaa !24
  %t101 = and i64 %t99, 255
  store i64 %t101, ptr %l5, !tbaa !24
  %t103 = load i64, ptr %l4, !tbaa !24
  %t105 = icmp eq i64 %t103, 0
  br i1 %t105, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb32
bb31:
  %t107 = load i64, ptr %l5, !tbaa !24
  %t109 = icmp eq i64 %t107, 0
  store i1 %t109, ptr %l59, !tbaa !21
  br label %bb32
bb32:
  %t111 = load i1, ptr %l59, !tbaa !21
  br i1 %t111, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb35
bb34:
  %t112 = load i64, ptr %l3, !tbaa !24
  %t114 = add i64 %t112, 1
  %t115 = load i64, ptr %l5, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t119 = load i64, ptr %l2, !tbaa !24
  %t122 = icmp sgt i64 %t118, %t119
  store i1 %t122, ptr %l62, !tbaa !21
  br label %bb35
bb35:
  %t124 = load i1, ptr %l62, !tbaa !21
  br i1 %t124, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s3)
  br label %bb60
bb37:
  br label %bb38
bb38:
  %t125 = load i64, ptr %l4, !tbaa !24
  %t127 = icmp slt i64 %t125, 0
  br i1 %t127, label %bb39, label %bb40
bb39:
  %t129 = load i64, ptr %l3, !tbaa !24
  %t130 = load i64, ptr %l5, !tbaa !24
  %t132 = add i64 %t130, 1
  %t135 = add i64 %t129, %t132
  store i64 %t135, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb59
bb40:
  br label %bb41
bb41:
  %t137 = load ptr, ptr %lp1
  %t138 = getelementptr %"compiler/profile:Profile", ptr %t137, i32 0, i32 3
  store ptr %t138, ptr %l75, !tbaa !29
  %t139 = load i64, ptr %l4, !tbaa !24
  %t141 = ashr i64 %t139, 8
  store i64 %t141, ptr %l77, !tbaa !24
  %t142 = load ptr, ptr %lp1
  %t143 = getelementptr %"compiler/profile:Profile", ptr %t142, i32 0, i32 4
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t143)
  store i64 %t145, ptr %l79
  br label %bb42
bb42:
  %t146 = load i64, ptr %l5, !tbaa !24
  %t147 = load i64, ptr %l77, !tbaa !24
  %t148 = load i64, ptr %l79, !tbaa !24
  %t150 = call %"compiler/profile:Sample" @compiler_2fprofile_3aSample_2ector(ptr %s3, i64 %t147, i64 %t148, i64 %t146)
  store %"compiler/profile:Sample" %t150, ptr %l81
  br label %bb43
bb43:
  %t151 = load ptr, ptr %l75, !tbaa !29
  %t152 = load %"compiler/profile:Sample", ptr %l81
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2ePush_3ccompiler_2fprofile_3aSample_3e(ptr %v1, ptr %t151, %"compiler/profile:Sample" %t152)
  br label %bb44
bb44:
  store i64 0, ptr %l6, !tbaa !24
  %t153 = load i64, ptr %l5, !tbaa !24
  store i64 %t153, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t155 = load i64, ptr %l7, !tbaa !24
  %t156 = load i64, ptr %l6, !tbaa !24
  %t159 = icmp sgt i64 %t155, %t156
  br i1 %t159, label %bb45, label %bb46
bb45:
  %t161 = load i64, ptr %l8, !tbaa !24
  %t163 = icmp sgt i64 %t161, 0
  br i1 %t163, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb50
bb47:
  %t165 = load i64, ptr %l7, !tbaa !24
  %t166 = load i64, ptr %l6, !tbaa !24
  %t169 = sub i64 %t165, %t166
  %t170 = load i64, ptr %l8, !tbaa !24
  %t173 = add i64 %t169, %t170
  %t175 = sub i64 %t173, 1
  %t176 = load i64, ptr %l8, !tbaa !24
  %t179 = sdiv i64 %t175, %t176
  store i64 %t179, ptr %l89, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb49
bb49:
  %t181 = load i64, ptr %l89, !tbaa !24
  store i64 %t181, ptr %l86, !tbaa !24
  br label %bb50
bb50:
  %t182 = load i64, ptr %l86, !tbaa !24
  store i64 %t182, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb51
bb51:
  %t183 = load i64, ptr %l10, !tbaa !24
  %t184 = load i64, ptr %l9, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb52, label %bb53
bb52:
  br label %bb58
bb53:
  br label %bb54
bb54:
  %t191 = load i64, ptr %l6, !tbaa !24
  %t192 = load i64, ptr %l10, !tbaa !24
  %t193 = load i64, ptr %l8, !tbaa !24
  %t196 = mul i64 %t192, %t193
  %t199 = add i64 %t191, %t196
  %t201 = load ptr, ptr %lp1
  %t202 = getelementptr %"compiler/profile:Profile", ptr %t201, i32 0, i32 4
  store ptr %t202, ptr %l107, !tbaa !29
  %t203 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t204 = load i64, ptr %l3, !tbaa !24
  %t206 = add i64 5, %t204
  %t208 = add i64 %t206, 1
  %t212 = add i64 %t208, %t199
  %t215 = call i64 @compiler_2fprofile_2eword(ptr %v0, { i64, ptr } %t203, i64 %t212)
  store i64 %t215, ptr %l114
  br label %bb55
bb55:
  %t216 = load ptr, ptr %l107, !tbaa !29
  %t217 = load i64, ptr %l114, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t216, i64 %t217)
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t218 = load i64, ptr %l10, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l10, !tbaa !24
  br label %bb51
bb58:
  %t222 = load i64, ptr %l3, !tbaa !24
  %t223 = load i64, ptr %l5, !tbaa !24
  %t225 = add i64 %t223, 1
  %t228 = add i64 %t222, %t225
  store i64 %t228, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb59
bb59:
  br label %bb25
bb60:
  %t230 = ptrtoint ptr %v1 to i64
  store i64 %t230, ptr %l121, !tbaa !24
  %t231 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aProfile_2e5
  br i1 %t231, label %bb61, label %bb62
bb61:
  %t233 = call ptr @__olang_region_make(ptr %v1)
  %t234 = ptrtoint ptr %t233 to i64
  store i64 %t234, ptr %l121, !tbaa !24
  br label %bb62
bb62:
  %t235 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t235, ptr %l123, !tbaa !27
  %t236 = load i64, ptr %l2, !tbaa !24
  %t238 = mul i64 %t236, 8
  %t240 = add i64 40, %t238
  store i64 %t240, ptr %l126, !tbaa !24
  %t241 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t241, 0
  store i64 %t244, ptr %l129, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 0
  store i64 %t246, ptr %l130, !tbaa !24
  %t247 = load i64, ptr %l126, !tbaa !24
  %t248 = icmp sge i64 %t247, 0
  br i1 %t248, label %bb63, label %bb64
bb63:
  %t250 = load i64, ptr %l126, !tbaa !24
  %t251 = load i64, ptr %l129, !tbaa !24
  %t252 = icmp sle i64 %t250, %t251
  br i1 %t252, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_5e6251cd9155695d_6237c97633bfa1b9)
  unreachable
bb65:
  %t254 = load i64, ptr %l129, !tbaa !24
  %t255 = load i64, ptr %l130, !tbaa !24
  %t256 = icmp sle i64 %t254, %t255
  br i1 %t256, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_5e6251cd9155695d_6237c97633bfa1b9)
  unreachable
bb67:
  %t258 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = load i64, ptr %l126, !tbaa !24
  %t261 = load i64, ptr %l129, !tbaa !24
  %t262 = getelementptr i8, ptr %t259, i64 %t260
  %t263 = sub i64 %t261, %t260
  %t264 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t262, 1
  store { i64, ptr } %t265, ptr %l135, !tbaa !27
  %t267 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t267, 0
  store i64 %t268, ptr %l136, !tbaa !24
  %t269 = load i64, ptr %l136, !tbaa !24
  %t270 = mul i64 %t269, 1
  %t271 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t270)
  %t272 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t271, 1
  store { i64, ptr } %t273, ptr %l137, !tbaa !27
  %t274 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = load i64, ptr %l136, !tbaa !24
  %t279 = mul i64 %t278, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t275, ptr %t277, i64 %t279, i1 false)
  %t280 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t282 = load i64, ptr %l121
  %t283 = inttoptr i64 %t282 to ptr
  %t284 = extractvalue { i64, ptr } %t280, 0
  %t285 = extractvalue { i64, ptr } %t280, 1
  %t286 = mul i64 %t284, 1
  %t287 = call ptr @__olang_scope_alloc(ptr %t283, i64 %t286)
  call void @llvm.memcpy.p0.p0.i64(ptr %t287, ptr %t285, i64 %t286, i1 false)
  %t288 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  %t290 = load ptr, ptr %lp1
  %t291 = getelementptr %"compiler/profile:Profile", ptr %t290, i32 0, i32 5
  %t292 = load { i64, ptr }, ptr %t291, !tbaa !27
  store { i64, ptr } %t292, ptr %l140, !tbaa !27
  %t294 = load ptr, ptr %lp1
  %t295 = getelementptr %"compiler/profile:Profile", ptr %t294, i32 0, i32 5
  store { i64, ptr } %t289, ptr %t295, !tbaa !27
  %t296 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aProfile_2e5
  br i1 %t296, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_5e6251cd9155695d_6237c97633bfa1b9)
  unreachable
bb69:
  %t298 = load { i64, ptr }, ptr %l140
  %t299 = extractvalue { i64, ptr } %t298, 1
  call void @__olang_region_release(ptr %t299)
  store { i64, ptr } zeroinitializer, ptr %l140
  br label %bb70
bb70:
  %t300 = load ptr, ptr %lp1
  %t301 = load %"compiler/profile:Profile", ptr %t300
  call void @__olang_scope_close(ptr %s0)
  %t303 = insertvalue { i32, %"compiler/profile:Profile" } zeroinitializer, %"compiler/profile:Profile" %t301, 1
  store { i32, %"compiler/profile:Profile" } %t303, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/profile:Profile" }, ptr %rv
  ret { i32, %"compiler/profile:Profile" } %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l29 = alloca i1
  %l30 = alloca i1
  %l31 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i1
  %l41 = alloca i64
  %l42 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l50 = alloca i1
  %l51 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i32
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca { i64, ptr }
  %l73 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l91 = alloca i64
  %l92 = alloca i32
  %l93 = alloca i64
  %l95 = alloca i64
  %l96 = alloca i32
  %l101 = alloca i1
  %l105 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t5 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t4)
  store i1 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i1, ptr %l13, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 1
  %t12 = extractvalue { i64, ptr } %t9, 0
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t11, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = call { i64, ptr } @compiler_2ftypes_2eDemangle(ptr %v0, ptr %v1, { i64, ptr } %t17)
  store { i64, ptr } %t19, ptr %l18
  br label %bb5
bb5:
  %t20 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l19, !tbaa !24
  %t22 = load i64, ptr %l19, !tbaa !24
  %t23 = mul i64 %t22, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l20, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l19, !tbaa !24
  %t32 = mul i64 %t31, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %t30, i64 %t32, i1 false)
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t33, ptr %lp1
  %t34 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t35 = load ptr, ptr %lp1
  store { i64, ptr } %t34, ptr %t35, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t36 = load i64, ptr %l2, !tbaa !24
  store i64 %t36, ptr %l21, !tbaa !24
  %t37 = load ptr, ptr %lp1
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l23, !tbaa !24
  %t41 = load ptr, ptr %lp1
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l24, !tbaa !24
  %t44 = load i64, ptr %l21, !tbaa !24
  %t45 = icmp sge i64 %t44, 0
  br i1 %t45, label %bb7, label %bb8
bb7:
  %t47 = load i64, ptr %l21, !tbaa !24
  %t48 = load i64, ptr %l23, !tbaa !24
  %t49 = icmp sle i64 %t47, %t48
  br i1 %t49, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3603727fe313055_49dd245dfeecf61)
  unreachable
bb9:
  %t51 = load i64, ptr %l23, !tbaa !24
  %t52 = load i64, ptr %l24, !tbaa !24
  %t53 = icmp sle i64 %t51, %t52
  br i1 %t53, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3603727fe313055_49dd245dfeecf61)
  unreachable
bb11:
  %t55 = load ptr, ptr %lp1
  %t56 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = load i64, ptr %l21, !tbaa !24
  %t59 = load i64, ptr %l23, !tbaa !24
  %t60 = getelementptr i8, ptr %t57, i64 %t58
  %t61 = sub i64 %t59, %t58
  %t62 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t60, 1
  %t65 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s3, { i64, ptr } %t63, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t65, ptr %l29
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_3603727fe313055_49dd245dfeecf61)
  unreachable
bb13:
  %t66 = load i1, ptr %l29, !tbaa !21
  br i1 %t66, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb23
bb15:
  %t67 = load i64, ptr %l2, !tbaa !24
  store i64 %t67, ptr %l31, !tbaa !24
  %t68 = load ptr, ptr %lp1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  store i64 %t71, ptr %l33, !tbaa !24
  %t72 = load ptr, ptr %lp1
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  store i64 %t74, ptr %l34, !tbaa !24
  %t75 = load i64, ptr %l31, !tbaa !24
  %t76 = icmp sge i64 %t75, 0
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t78 = load i64, ptr %l31, !tbaa !24
  %t79 = load i64, ptr %l33, !tbaa !24
  %t80 = icmp sle i64 %t78, %t79
  br i1 %t80, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_3603727fe313055_49dd245dfeecf61)
  unreachable
bb18:
  %t82 = load i64, ptr %l33, !tbaa !24
  %t83 = load i64, ptr %l34, !tbaa !24
  %t84 = icmp sle i64 %t82, %t83
  br i1 %t84, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_3603727fe313055_49dd245dfeecf61)
  unreachable
bb20:
  %t86 = load ptr, ptr %lp1
  %t87 = getelementptr { i64, ptr }, ptr %t86, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = load i64, ptr %l31, !tbaa !24
  %t90 = load i64, ptr %l33, !tbaa !24
  %t91 = getelementptr i8, ptr %t88, i64 %t89
  %t92 = sub i64 %t90, %t89
  %t93 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t91, 1
  %t96 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s3, { i64, ptr } %t94, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t96, ptr %l39
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_3603727fe313055_49dd245dfeecf61)
  unreachable
bb22:
  %t97 = load i1, ptr %l39, !tbaa !21
  store i1 %t97, ptr %l30, !tbaa !21
  br label %bb23
bb23:
  %t98 = load i1, ptr %l30, !tbaa !21
  %t99 = xor i1 %t98, true
  br i1 %t99, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb38
bb25:
  br label %bb26
bb26:
  %t101 = load i64, ptr %l2, !tbaa !24
  store i64 %t101, ptr %l41, !tbaa !24
  %t102 = load i64, ptr %l2, !tbaa !24
  store i64 %t102, ptr %l42, !tbaa !24
  %t103 = load ptr, ptr %lp1
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  store i64 %t106, ptr %l44, !tbaa !24
  %t107 = load ptr, ptr %lp1
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l45, !tbaa !24
  %t110 = load i64, ptr %l42, !tbaa !24
  %t111 = icmp sge i64 %t110, 0
  br i1 %t111, label %bb27, label %bb28
bb27:
  %t113 = load i64, ptr %l42, !tbaa !24
  %t114 = load i64, ptr %l44, !tbaa !24
  %t115 = icmp sle i64 %t113, %t114
  br i1 %t115, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_3603727fe313055_49dd245dfeecf61)
  unreachable
bb29:
  %t117 = load i64, ptr %l44, !tbaa !24
  %t118 = load i64, ptr %l45, !tbaa !24
  %t119 = icmp sle i64 %t117, %t118
  br i1 %t119, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_3603727fe313055_49dd245dfeecf61)
  unreachable
bb31:
  %t121 = load ptr, ptr %lp1
  %t122 = getelementptr { i64, ptr }, ptr %t121, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = load i64, ptr %l42, !tbaa !24
  %t125 = load i64, ptr %l44, !tbaa !24
  %t126 = getelementptr i8, ptr %t123, i64 %t124
  %t127 = sub i64 %t125, %t124
  %t128 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t126, 1
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s3, { i64, ptr } %t129, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t131, ptr %l50
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_3603727fe313055_49dd245dfeecf61)
  unreachable
bb33:
  %t132 = load i1, ptr %l50, !tbaa !21
  br i1 %t132, label %bb34, label %bb35
bb34:
  store i64 2, ptr %l51, !tbaa !24
  br label %bb36
bb35:
  store i64 3, ptr %l51, !tbaa !24
  br label %bb36
bb36:
  %t133 = load i64, ptr %l41, !tbaa !24
  %t134 = load i64, ptr %l51, !tbaa !24
  %t135 = add i64 %t133, %t134
  store i64 %t135, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb37
bb37:
  br label %bb6
bb38:
  %t137 = load i64, ptr %l2, !tbaa !24
  store i64 %t137, ptr %l54, !tbaa !24
  %t138 = load ptr, ptr %lp1
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 0
  store i64 %t141, ptr %l56, !tbaa !24
  %t142 = load ptr, ptr %lp1
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  store i64 %t144, ptr %l57, !tbaa !24
  %t145 = load i64, ptr %l54, !tbaa !24
  %t146 = icmp sge i64 %t145, 0
  br i1 %t146, label %bb39, label %bb40
bb39:
  %t148 = load i64, ptr %l54, !tbaa !24
  %t149 = load i64, ptr %l56, !tbaa !24
  %t150 = icmp sle i64 %t148, %t149
  br i1 %t150, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_e16765c4a8f41078_55e216e6a7163174)
  unreachable
bb41:
  %t152 = load i64, ptr %l56, !tbaa !24
  %t153 = load i64, ptr %l57, !tbaa !24
  %t154 = icmp sle i64 %t152, %t153
  br i1 %t154, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_e16765c4a8f41078_55e216e6a7163174)
  unreachable
bb43:
  %t156 = load ptr, ptr %lp1
  %t157 = getelementptr { i64, ptr }, ptr %t156, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = load i64, ptr %l54, !tbaa !24
  %t160 = load i64, ptr %l56, !tbaa !24
  %t161 = getelementptr i8, ptr %t158, i64 %t159
  %t162 = sub i64 %t160, %t159
  %t163 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t161, 1
  %t166 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t164, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) })
  %t167 = extractvalue { i32, i64 } %t166, 1
  %t168 = extractvalue { i32, i64 } %t166, 0
  store i32 %t168, ptr %l63
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb46, label %ok.170, !prof !99
ok.170:
  store i64 %t167, ptr %l62
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_e16765c4a8f41078_55e216e6a7163174)
  unreachable
bb45:
  %t171 = load i64, ptr %l62, !tbaa !24
  store i64 %t171, ptr %l53, !tbaa !24
  br label %bb48
bb46:
  br label %bb47
bb47:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb48
bb48:
  %t172 = load i64, ptr %l53, !tbaa !24
  store i64 %t172, ptr %l3, !tbaa !24
  %t173 = load i64, ptr %l3, !tbaa !24
  %t175 = icmp slt i64 %t173, 0
  br i1 %t175, label %bb49, label %bb50
bb49:
  %t177 = load ptr, ptr %lp1
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l66, !tbaa !27
  %t179 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 0
  store i64 %t180, ptr %l67, !tbaa !24
  %t181 = load i64, ptr %l67, !tbaa !24
  %t182 = mul i64 %t181, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t182)
  %t184 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  store { i64, ptr } %t185, ptr %l68, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = load i64, ptr %l67, !tbaa !24
  %t191 = mul i64 %t190, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t187, ptr %t189, i64 %t191, i1 false)
  %t192 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t192, ptr %l66, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t193 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t193, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t194 = load i64, ptr %l2, !tbaa !24
  %t195 = load i64, ptr %l3, !tbaa !24
  %t198 = add i64 %t194, %t195
  store i64 %t198, ptr %l4, !tbaa !24
  %t200 = load i64, ptr %l4, !tbaa !24
  %t202 = add i64 %t200, 1
  store i64 %t202, ptr %l73, !tbaa !24
  %t203 = load ptr, ptr %lp1
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t204, 0
  store i64 %t206, ptr %l75, !tbaa !24
  %t207 = load ptr, ptr %lp1
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 0
  store i64 %t209, ptr %l76, !tbaa !24
  %t210 = load i64, ptr %l73, !tbaa !24
  %t211 = icmp sge i64 %t210, 0
  br i1 %t211, label %bb52, label %bb53
bb52:
  %t213 = load i64, ptr %l73, !tbaa !24
  %t214 = load i64, ptr %l75, !tbaa !24
  %t215 = icmp sle i64 %t213, %t214
  br i1 %t215, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_a05021294fe2b6d3_c60223eeaa2ef05f)
  unreachable
bb54:
  %t217 = load i64, ptr %l75, !tbaa !24
  %t218 = load i64, ptr %l76, !tbaa !24
  %t219 = icmp sle i64 %t217, %t218
  br i1 %t219, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_a05021294fe2b6d3_c60223eeaa2ef05f)
  unreachable
bb56:
  %t221 = load ptr, ptr %lp1
  %t222 = getelementptr { i64, ptr }, ptr %t221, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = load i64, ptr %l73, !tbaa !24
  %t225 = load i64, ptr %l75, !tbaa !24
  %t226 = getelementptr i8, ptr %t223, i64 %t224
  %t227 = sub i64 %t225, %t224
  %t228 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t226, 1
  store { i64, ptr } %t229, ptr %l5, !tbaa !27
  %t231 = load i64, ptr %l4, !tbaa !24
  store i64 %t231, ptr %l81, !tbaa !24
  %t232 = load ptr, ptr %lp1
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  store i64 %t234, ptr %l82, !tbaa !24
  %t235 = icmp sge i64 0, 0
  br i1 %t235, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_a05021294fe2b6d3_c60223eeaa2ef05f)
  unreachable
bb58:
  %t237 = load i64, ptr %l81, !tbaa !24
  %t238 = icmp sle i64 0, %t237
  br i1 %t238, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_efed15e4a0150676_49528d4cd386b8e2)
  unreachable
bb60:
  %t240 = load i64, ptr %l81, !tbaa !24
  %t241 = load i64, ptr %l82, !tbaa !24
  %t242 = icmp sle i64 %t240, %t241
  br i1 %t242, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_efed15e4a0150676_49528d4cd386b8e2)
  unreachable
bb62:
  %t244 = load ptr, ptr %lp1
  %t245 = getelementptr { i64, ptr }, ptr %t244, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = load i64, ptr %l81, !tbaa !24
  %t248 = getelementptr i8, ptr %t246, i64 0
  %t249 = sub i64 %t247, 0
  %t250 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t248, 1
  %t255 = call { i64, ptr } @compiler_2fprofile_2equalifier(ptr %v1, ptr %s0, { i64, ptr } %t251)
  store { i64, ptr } %t255, ptr %l88
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_efed15e4a0150676_49528d4cd386b8e2)
  unreachable
bb64:
  %t256 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t256, ptr %l7, !tbaa !27
  %t257 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t259 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t257, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) })
  %t260 = extractvalue { i32, i64 } %t259, 1
  %t261 = extractvalue { i32, i64 } %t259, 0
  store i32 %t261, ptr %l92
  %t262 = icmp ne i32 %t261, 0
  br i1 %t262, label %bb66, label %ok.263, !prof !99
ok.263:
  store i64 %t260, ptr %l91
  br label %bb65
bb65:
  %t264 = load i64, ptr %l91, !tbaa !24
  store i64 %t264, ptr %l89, !tbaa !24
  br label %bb68
bb66:
  br label %bb67
bb67:
  store i64 -1, ptr %l89, !tbaa !24
  br label %bb68
bb68:
  %t265 = load i64, ptr %l89, !tbaa !24
  store i64 %t265, ptr %l8, !tbaa !24
  %t266 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t268 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t266, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) })
  %t269 = extractvalue { i32, i64 } %t268, 1
  %t270 = extractvalue { i32, i64 } %t268, 0
  store i32 %t270, ptr %l96
  %t271 = icmp ne i32 %t270, 0
  br i1 %t271, label %bb70, label %ok.272, !prof !99
ok.272:
  store i64 %t269, ptr %l95
  br label %bb69
bb69:
  %t273 = load i64, ptr %l95, !tbaa !24
  store i64 %t273, ptr %l93, !tbaa !24
  br label %bb72
bb70:
  br label %bb71
bb71:
  %t274 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t274, 0
  store i64 %t276, ptr %l93, !tbaa !24
  br label %bb72
bb72:
  %t278 = load i64, ptr %l93, !tbaa !24
  store i64 %t278, ptr %l9, !tbaa !24
  %t279 = load i64, ptr %l8, !tbaa !24
  %t281 = icmp sge i64 %t279, 0
  br i1 %t281, label %bb73, label %bb74
bb73:
  %t283 = load i64, ptr %l8, !tbaa !24
  %t284 = load i64, ptr %l9, !tbaa !24
  %t287 = icmp slt i64 %t283, %t284
  store i1 %t287, ptr %l101, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb75
bb75:
  %t289 = load i1, ptr %l101, !tbaa !21
  br i1 %t289, label %bb76, label %bb77
bb76:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l105, !tbaa !27
  %t290 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t291 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t291, ptr %l107, !tbaa !27
  store { i64, ptr } %t290, ptr %l7, !tbaa !27
  %t293 = load i1, ptr @olang_2esole_2ecompiler__2fprofile__2eReadable_2elocal_2e7
  br i1 %t293, label %bb78, label %bb79
bb77:
  br label %bb80
bb78:
  %t295 = load { i64, ptr }, ptr %l107
  %t296 = extractvalue { i64, ptr } %t295, 1
  call void @__olang_region_release(ptr %t296)
  store { i64, ptr } zeroinitializer, ptr %l107
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t297 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t297, ptr %l109, !tbaa !27
  %t298 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t300 = call { i64, ptr } @compiler_2fprofile_2etypesRead(ptr %v1, ptr %s0, { i64, ptr } %t298)
  store { i64, ptr } %t300, ptr %l111
  br label %bb81
bb81:
  %t301 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t304 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t304, 1
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t307 = add i64 %t303, %t306
  %t308 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t307)
  call void @olang_textcopy(ptr %t308, ptr %t302, i64 %t303)
  %t309 = getelementptr i8, ptr %t308, i64 %t303
  call void @olang_textcopy(ptr %t309, ptr %t305, i64 %t306)
  %t310 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t308, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t311, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2eReport(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/profile:Tally"
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca double
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca i64
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca ptr
  %l40 = alloca i64
  %l41 = alloca i64
  %l44 = alloca %"compiler/profile:Tally"
  %l46 = alloca i64
  %l47 = alloca %"std/prelude/text:StringBuilder"
  %l55 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l59 = alloca i64
  %l61 = alloca { i64, ptr }
  %l63 = alloca i64
  %l67 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca ptr
  %l87 = alloca %"compiler/profile:Tally"
  %l89 = alloca %"compiler/profile:Tally"
  %l94 = alloca i64
  %l96 = alloca i64
  %l101 = alloca i64
  %l102 = alloca i64
  %l105 = alloca i64
  %l106 = alloca i32
  %l109 = alloca i1
  %l114 = alloca i64
  %l117 = alloca i64
  %l118 = alloca i32
  %l119 = alloca ptr
  %l122 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l140 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l142 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca ptr
  %l144 = alloca %"compiler/profile:Tally"
  %l146 = alloca %"compiler/profile:Tally"
  %l149 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l151 = alloca i64
  %l153 = alloca i64
  %l158 = alloca i64
  %l159 = alloca i64
  %l162 = alloca i64
  %l163 = alloca i32
  %l165 = alloca i64
  %l167 = alloca i1
  %l175 = alloca { i64, ptr }
  %l176 = alloca i1
  %l182 = alloca i64
  %l184 = alloca i64
  %l189 = alloca i64
  %l193 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l195 = alloca i64
  %l196 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l205 = alloca i64
  %l206 = alloca { i64, ptr }
  %l210 = alloca ptr
  %l212 = alloca { i64, ptr }
  %l216 = alloca i64
  %l218 = alloca i64
  %l223 = alloca i64
  %l224 = alloca i64
  %l227 = alloca i64
  %l228 = alloca i32
  %l229 = alloca i64
  %l232 = alloca i64
  %l233 = alloca i32
  %l234 = alloca ptr
  %l237 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l243 = alloca { i64, ptr }
  %l244 = alloca { i64, ptr }
  %l245 = alloca i64
  %l246 = alloca { i64, ptr }
  %l249 = alloca { i64, ptr }
  %l253 = alloca { i64, ptr }
  %l260 = alloca i64
  %l262 = alloca i64
  %l267 = alloca i64
  %l270 = alloca i64
  %l273 = alloca i64
  %l274 = alloca i32
  %l279 = alloca i64
  %l282 = alloca i64
  %l283 = alloca i32
  %l284 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l286 = alloca i64
  %l288 = alloca i64
  %l293 = alloca i64
  %l299 = alloca i1
  %l304 = alloca ptr
  %l305 = alloca %"compiler/profile:Tally"
  %l307 = alloca %"compiler/profile:Tally"
  %l311 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l313 = alloca i64
  %l315 = alloca i64
  %l320 = alloca i64
  %l322 = alloca i64
  %l324 = alloca ptr
  %l325 = alloca i64
  %l330 = alloca { i64, ptr }
  %l331 = alloca i64
  %l337 = alloca i64
  %l338 = alloca i32
  %l340 = alloca { i64, ptr }
  %l345 = alloca ptr
  %l349 = alloca { i64, ptr }
  %l351 = alloca i64
  %l353 = alloca { i64, ptr }
  %l355 = alloca { i64, ptr }
  %l362 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t3 = alloca %"compiler/profile:Tally", align 8
  %t149 = alloca %"compiler/profile:Tally", align 8
  %t154 = alloca { %"compiler/profile:Tally", ptr, ptr, ptr }, align 8
  %t308 = alloca %"compiler/profile:Tally", align 8
  %t313 = alloca { %"compiler/profile:Tally", ptr, ptr, ptr }, align 8
  %t716 = alloca %"compiler/profile:Tally", align 8
  %t722 = alloca { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, align 8
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fprofile_2eTally_2eTallied(ptr %t3, ptr %v1, ptr %v2, ptr %s0, ptr %t1, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l44, ptr %t3, i64 424, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l44, i64 424, i1 false)
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aProfile_2eTotal(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l46
  br label %bb2
bb2:
  %t9 = load i64, ptr %l46, !tbaa !24
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t10, ptr %l47
  br label %bb3
bb3:
  %t11 = load %"std/prelude/text:StringBuilder", ptr %l47
  store %"std/prelude/text:StringBuilder" %t11, ptr %l5
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = sitofp i64 %t12 to double
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/profile:Profile", ptr %t15, i32 0, i32 0
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = sitofp i64 %t18 to double
  %t23 = fmul double %t14, %t20
  %t25 = fdiv double %t23, 0x41cdcd6500000000
  store double %t25, ptr %l6, !tbaa !26
  store ptr %l5, ptr %l55, !tbaa !29
  store { i64, ptr } %a0, ptr %l56, !tbaa !27
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/profile:Profile", ptr %t28, i32 0, i32 3
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eLen_3ccompiler_2fprofile_3aSample_3e(ptr %v1, ptr %t30)
  store i64 %t32, ptr %l59
  br label %bb4
bb4:
  %t33 = load double, ptr %l6, !tbaa !26
  %t35 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %s0, double %t33, i64 3)
  store { i64, ptr } %t35, ptr %l61
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/profile:Profile", ptr %t36, i32 0, i32 2
  %t39 = load i64, ptr %t38, !tbaa !24
  store i64 %t39, ptr %l63, !tbaa !24
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/profile:Profile", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = icmp eq i64 %t43, 1
  br i1 %t45, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l67, !tbaa !27
  br label %bb8
bb7:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l67, !tbaa !27
  br label %bb8
bb8:
  %t47 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t49 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = add i64 %t48, %t51
  %t53 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = load i64, ptr %l59, !tbaa !24
  %t57 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t58 = add i64 %t55, %t57
  %t59 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = add i64 %t61, %t64
  %t66 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t68 = add i64 %t65, %t67
  %t69 = load i64, ptr %l63, !tbaa !24
  %t70 = call i64 @__olang_fmt_i64(ptr null, i64 %t69)
  %t71 = add i64 %t68, %t70
  %t72 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = add i64 %t71, %t74
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t47, i64 %t48)
  %t80 = getelementptr i8, ptr %t79, i64 %t48
  call void @olang_textcopy(ptr %t80, ptr %t50, i64 %t51)
  %t81 = getelementptr i8, ptr %t80, i64 %t51
  call void @olang_textcopy(ptr %t81, ptr %t53, i64 %t54)
  %t82 = getelementptr i8, ptr %t81, i64 %t54
  %t83 = call i64 @__olang_fmt_i64(ptr %t82, i64 %t56)
  %t84 = getelementptr i8, ptr %t82, i64 %t57
  call void @olang_textcopy(ptr %t84, ptr %t59, i64 %t60)
  %t85 = getelementptr i8, ptr %t84, i64 %t60
  call void @olang_textcopy(ptr %t85, ptr %t63, i64 %t64)
  %t86 = getelementptr i8, ptr %t85, i64 %t64
  call void @olang_textcopy(ptr %t86, ptr %t66, i64 %t67)
  %t87 = getelementptr i8, ptr %t86, i64 %t67
  %t88 = call i64 @__olang_fmt_i64(ptr %t87, i64 %t69)
  %t89 = getelementptr i8, ptr %t87, i64 %t70
  call void @olang_textcopy(ptr %t89, ptr %t73, i64 %t74)
  %t90 = getelementptr i8, ptr %t89, i64 %t74
  call void @olang_textcopy(ptr %t90, ptr %t76, i64 %t77)
  %t91 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t79, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = extractvalue { i64, ptr } %t92, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t100 = load ptr, ptr %l55, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t100, { i64, ptr } %t99)
  br label %bb9
bb9:
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr %"compiler/profile:Profile", ptr %t102, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  %t107 = icmp sgt i64 %t105, 0
  br i1 %t107, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/profile:Profile", ptr %t109, i32 0, i32 1
  %t112 = load i64, ptr %t111, !tbaa !24
  %t113 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t112)
  %t117 = add i64 %t114, %t116
  %t118 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t113, i64 %t114)
  %t122 = getelementptr i8, ptr %t121, i64 %t114
  %t123 = call i64 @__olang_fmt_i64(ptr %t122, i64 %t112)
  %t124 = getelementptr i8, ptr %t122, i64 %t116
  call void @olang_textcopy(ptr %t124, ptr %t118, i64 %t119)
  %t125 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t121, 1
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t129 = extractvalue { i64, ptr } %t126, 1
  %t130 = mul i64 %t128, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t131, ptr %t129, i64 %t130, i1 false)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l5, { i64, ptr } %t133)
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t136 = load i64, ptr %l4, !tbaa !24
  %t138 = icmp eq i64 %t136, 0
  br i1 %t138, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l5, { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t142 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l5)
  store { i64, ptr } %t142, ptr %l82
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t143 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
bb18:
  %t144 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 5
  %t145 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t144
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t145, ptr %l83
  %t147 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l83)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t147, ptr %l85
  br label %bb19
bb19:
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l7
  store ptr %l7, ptr %l86, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l87, ptr %l3, i64 424, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3aTally(ptr %t149, ptr %s0, ptr %l87)
  call void @llvm.memmove.p0.p0.i64(ptr %l89, ptr %t149, i64 424, i1 false)
  br label %bb20
bb20:
  %t151 = load ptr, ptr %l2, !tbaa !29
  %t152 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr null, i32 1
  %t153 = ptrtoint ptr %t152 to i64
  %t155 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %t154, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t155, ptr %l89, i64 424, i1 false)
  %t156 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %t154, i32 0, i32 1
  store ptr %t151, ptr %t156, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t158 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %t154, i32 0, i32 2
  store ptr %s0, ptr %t158, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t159 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %t154, i32 0, i32 3
  store ptr %v2, ptr %t159, !tbaa !28
  %t160 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_74, 0
  %t161 = insertvalue { ptr, ptr } %t160, ptr %t154, 1
  %t162 = load ptr, ptr %l86, !tbaa !29
  %t164 = extractvalue { ptr, ptr } %t161, 0
  %t165 = extractvalue { ptr, ptr } %t161, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, ptr %t162, ptr %t164, ptr %t165)
  br label %bb21
bb21:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d75, i32 0, i32 1) })
  br label %bb22
bb22:
  store i64 0, ptr %l8, !tbaa !24
  store ptr %l7, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t168 = load i64, ptr %l10, !tbaa !24
  store i64 %t168, ptr %l94, !tbaa !24
  %t169 = load ptr, ptr %l9, !tbaa !29
  %t171 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t169)
  store i64 %t171, ptr %l96
  br label %bb24
bb24:
  %t172 = load i64, ptr %l94, !tbaa !24
  %t173 = load i64, ptr %l96, !tbaa !24
  %t174 = icmp slt i64 %t172, %t173
  %t176 = xor i1 %t174, true
  br i1 %t176, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s6)
  br label %bb50
bb26:
  br label %bb27
bb27:
  %t178 = load ptr, ptr %l9, !tbaa !29
  %t179 = load i64, ptr %l10, !tbaa !24
  %t182 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t178, i64 %t179)
  store i64 %t182, ptr %l101
  br label %bb28
bb28:
  %t183 = load i64, ptr %l101, !tbaa !24
  store i64 %t183, ptr %l11, !tbaa !24
  %t184 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 0
  %t185 = load i64, ptr %l11, !tbaa !24
  %t188 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %t184, i64 %t185)
  %t189 = extractvalue { i32, i64 } %t188, 1
  %t190 = extractvalue { i32, i64 } %t188, 0
  store i32 %t190, ptr %l106
  %t191 = icmp ne i32 %t190, 0
  br i1 %t191, label %bb30, label %ok.192, !prof !99
ok.192:
  store i64 %t189, ptr %l105
  br label %bb29
bb29:
  %t193 = load i64, ptr %l105, !tbaa !24
  store i64 %t193, ptr %l102, !tbaa !24
  br label %bb32
bb30:
  br label %bb31
bb31:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb32
bb32:
  %t194 = load i64, ptr %l102, !tbaa !24
  store i64 %t194, ptr %l12, !tbaa !24
  %t195 = load i64, ptr %l8, !tbaa !24
  %t197 = icmp sge i64 %t195, 25
  br i1 %t197, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb35
bb34:
  %t199 = load i64, ptr %l12, !tbaa !24
  %t201 = mul i64 %t199, 200
  %t202 = load i64, ptr %l4, !tbaa !24
  %t205 = icmp slt i64 %t201, %t202
  store i1 %t205, ptr %l109, !tbaa !21
  br label %bb35
bb35:
  %t207 = load i1, ptr %l109, !tbaa !21
  br i1 %t207, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s6)
  br label %bb50
bb37:
  br label %bb38
bb38:
  %t208 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 1
  %t209 = load i64, ptr %l11, !tbaa !24
  %t212 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %t208, i64 %t209)
  %t213 = extractvalue { i32, i64 } %t212, 1
  %t214 = extractvalue { i32, i64 } %t212, 0
  store i32 %t214, ptr %l118
  %t215 = icmp ne i32 %t214, 0
  br i1 %t215, label %bb40, label %ok.216, !prof !99
ok.216:
  store i64 %t213, ptr %l117
  br label %bb39
bb39:
  %t217 = load i64, ptr %l117, !tbaa !24
  store i64 %t217, ptr %l114, !tbaa !24
  br label %bb42
bb40:
  br label %bb41
bb41:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb42
bb42:
  %t218 = load i64, ptr %l114, !tbaa !24
  store i64 %t218, ptr %l13, !tbaa !24
  store ptr %l5, ptr %l119, !tbaa !29
  %t219 = load i64, ptr %l12, !tbaa !24
  %t220 = load i64, ptr %l4, !tbaa !24
  %t223 = call { i64, ptr } @compiler_2fprofile_2epct(ptr %s6, i64 %t219, i64 %t220)
  store { i64, ptr } %t223, ptr %l122
  br label %bb43
bb43:
  %t224 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t224, 0
  %t226 = extractvalue { i64, ptr } %t224, 1
  %t227 = mul i64 %t225, 1
  %t228 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t227)
  call void @llvm.memcpy.p0.p0.i64(ptr %t228, ptr %t226, i64 %t227, i1 false)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t228, 1
  %t232 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s6, ptr %s6, { i64, ptr } %t230, i64 6, i8 32)
  store { i64, ptr } %t232, ptr %l124
  br label %bb44
bb44:
  %t233 = load i64, ptr %l13, !tbaa !24
  %t234 = load i64, ptr %l4, !tbaa !24
  %t237 = call { i64, ptr } @compiler_2fprofile_2epct(ptr %s6, i64 %t233, i64 %t234)
  store { i64, ptr } %t237, ptr %l127
  br label %bb45
bb45:
  %t238 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t238, 0
  %t240 = extractvalue { i64, ptr } %t238, 1
  %t241 = mul i64 %t239, 1
  %t242 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t241)
  call void @llvm.memcpy.p0.p0.i64(ptr %t242, ptr %t240, i64 %t241, i1 false)
  %t243 = insertvalue { i64, ptr } undef, i64 %t239, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t242, 1
  %t246 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s6, ptr %s6, { i64, ptr } %t244, i64 6, i8 32)
  store { i64, ptr } %t246, ptr %l129
  br label %bb46
bb46:
  %t247 = load ptr, ptr %l2, !tbaa !29
  %t249 = getelementptr %"compiler/profile:Places", ptr %t247, i32 0, i32 0
  %t250 = load i64, ptr %l11, !tbaa !24
  %t253 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %s6, ptr %t249, i64 %t250)
  store { i64, ptr } %t253, ptr %l133
  br label %bb47
bb47:
  %t254 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t255 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t256 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 1
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t259 = add i64 %t255, %t258
  %t260 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t262 = add i64 %t259, %t261
  %t263 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = add i64 %t262, %t265
  %t267 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t268 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t269 = add i64 %t266, %t268
  %t270 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = extractvalue { i64, ptr } %t270, 0
  %t273 = add i64 %t269, %t272
  %t274 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t276 = add i64 %t273, %t275
  %t277 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t276)
  call void @olang_textcopy(ptr %t277, ptr %t254, i64 %t255)
  %t278 = getelementptr i8, ptr %t277, i64 %t255
  call void @olang_textcopy(ptr %t278, ptr %t257, i64 %t258)
  %t279 = getelementptr i8, ptr %t278, i64 %t258
  call void @olang_textcopy(ptr %t279, ptr %t260, i64 %t261)
  %t280 = getelementptr i8, ptr %t279, i64 %t261
  call void @olang_textcopy(ptr %t280, ptr %t264, i64 %t265)
  %t281 = getelementptr i8, ptr %t280, i64 %t265
  call void @olang_textcopy(ptr %t281, ptr %t267, i64 %t268)
  %t282 = getelementptr i8, ptr %t281, i64 %t268
  call void @olang_textcopy(ptr %t282, ptr %t271, i64 %t272)
  %t283 = getelementptr i8, ptr %t282, i64 %t272
  call void @olang_textcopy(ptr %t283, ptr %t274, i64 %t275)
  %t284 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t277, 1
  %t287 = extractvalue { i64, ptr } %t285, 0
  %t288 = extractvalue { i64, ptr } %t285, 1
  %t289 = mul i64 %t287, 1
  %t290 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t289)
  call void @llvm.memcpy.p0.p0.i64(ptr %t290, ptr %t288, i64 %t289, i1 false)
  %t291 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t290, 1
  %t293 = load ptr, ptr %l119, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t293, { i64, ptr } %t292)
  br label %bb48
bb48:
  %t295 = load i64, ptr %l8, !tbaa !24
  %t297 = add i64 %t295, 1
  store i64 %t297, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb49
bb49:
  %t299 = load i64, ptr %l10, !tbaa !24
  %t301 = add i64 %t299, 1
  store i64 %t301, ptr %l10, !tbaa !24
  br label %bb23
bb50:
  %t303 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 6
  %t304 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t303
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t304, ptr %l140
  %t306 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l140)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t306, ptr %l142
  br label %bb51
bb51:
  %t307 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l142
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t307, ptr %l14
  store ptr %l14, ptr %l143, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l144, ptr %l3, i64 424, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3aTally(ptr %t308, ptr %s0, ptr %l144)
  call void @llvm.memmove.p0.p0.i64(ptr %l146, ptr %t308, i64 424, i1 false)
  br label %bb52
bb52:
  %t310 = load ptr, ptr %l2, !tbaa !29
  %t311 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr null, i32 1
  %t312 = ptrtoint ptr %t311 to i64
  %t314 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %t313, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t314, ptr %l146, i64 424, i1 false)
  %t315 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %t313, i32 0, i32 1
  store ptr %t310, ptr %t315, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t317 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %t313, i32 0, i32 2
  store ptr %s0, ptr %t317, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t318 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %t313, i32 0, i32 3
  store ptr %v2, ptr %t318, !tbaa !28
  %t319 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_80, 0
  %t320 = insertvalue { ptr, ptr } %t319, ptr %t313, 1
  %t321 = load ptr, ptr %l143, !tbaa !29
  %t323 = extractvalue { ptr, ptr } %t320, 0
  %t324 = extractvalue { ptr, ptr } %t320, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, ptr %t321, ptr %t323, ptr %t324)
  br label %bb53
bb53:
  %t325 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t325, ptr %l149
  br label %bb54
bb54:
  %t326 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l149
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t326, ptr %l15
  store ptr %l14, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s11
  %t328 = load i64, ptr %l17, !tbaa !24
  store i64 %t328, ptr %l151, !tbaa !24
  %t329 = load ptr, ptr %l16, !tbaa !29
  %t331 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t329)
  store i64 %t331, ptr %l153
  br label %bb56
bb56:
  %t332 = load i64, ptr %l151, !tbaa !24
  %t333 = load i64, ptr %l153, !tbaa !24
  %t334 = icmp slt i64 %t332, %t333
  %t336 = xor i1 %t334, true
  br i1 %t336, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s11)
  br label %bb79
bb58:
  br label %bb59
bb59:
  %t338 = load ptr, ptr %l16, !tbaa !29
  %t339 = load i64, ptr %l17, !tbaa !24
  %t342 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t338, i64 %t339)
  store i64 %t342, ptr %l158
  br label %bb60
bb60:
  %t343 = load i64, ptr %l158, !tbaa !24
  store i64 %t343, ptr %l18, !tbaa !24
  %t344 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 2
  %t345 = load i64, ptr %l18, !tbaa !24
  %t348 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %t344, i64 %t345)
  %t349 = extractvalue { i32, i64 } %t348, 1
  %t350 = extractvalue { i32, i64 } %t348, 0
  store i32 %t350, ptr %l163
  %t351 = icmp ne i32 %t350, 0
  br i1 %t351, label %bb62, label %ok.352, !prof !99
ok.352:
  store i64 %t349, ptr %l162
  br label %bb61
bb61:
  %t353 = load i64, ptr %l162, !tbaa !24
  store i64 %t353, ptr %l159, !tbaa !24
  br label %bb64
bb62:
  br label %bb63
bb63:
  store i64 0, ptr %l159, !tbaa !24
  br label %bb64
bb64:
  %t354 = load i64, ptr %l159, !tbaa !24
  store i64 %t354, ptr %l19, !tbaa !24
  %t356 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l15)
  store i64 %t356, ptr %l165
  br label %bb65
bb65:
  %t357 = load i64, ptr %l165, !tbaa !24
  %t358 = icmp sge i64 %t357, 15
  br i1 %t358, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l167, !tbaa !21
  br label %bb68
bb67:
  %t360 = load i64, ptr %l19, !tbaa !24
  %t362 = mul i64 %t360, 200
  %t363 = load i64, ptr %l4, !tbaa !24
  %t366 = icmp slt i64 %t362, %t363
  store i1 %t366, ptr %l167, !tbaa !21
  br label %bb68
bb68:
  %t368 = load i1, ptr %l167, !tbaa !21
  br i1 %t368, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s11)
  br label %bb79
bb70:
  br label %bb71
bb71:
  %t369 = load ptr, ptr %l2, !tbaa !29
  %t371 = getelementptr %"compiler/profile:Places", ptr %t369, i32 0, i32 0
  %t372 = load i64, ptr %l18, !tbaa !24
  %t375 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t371, i64 %t372)
  store { i64, ptr } %t375, ptr %l175
  br label %bb72
bb72:
  %t376 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t377 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v2, ptr %s11, { i64, ptr } %t376, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t377, ptr %l176
  br label %bb73
bb73:
  %t378 = load i1, ptr %l176, !tbaa !21
  br i1 %t378, label %bb74, label %bb75
bb74:
  call void @__olang_scope_close(ptr %s11)
  br label %bb78
bb75:
  br label %bb76
bb76:
  %t379 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l15, i64 %t379)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s11)
  br label %bb78
bb78:
  %t382 = load i64, ptr %l17, !tbaa !24
  %t384 = add i64 %t382, 1
  store i64 %t384, ptr %l17, !tbaa !24
  br label %bb55
bb79:
  store i64 4, ptr %l20, !tbaa !24
  store ptr %l15, ptr %l21, !tbaa !29
  store i64 0, ptr %l22, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s16
  %t387 = load i64, ptr %l22, !tbaa !24
  store i64 %t387, ptr %l182, !tbaa !24
  %t388 = load ptr, ptr %l21, !tbaa !29
  %t390 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t388)
  store i64 %t390, ptr %l184
  br label %bb81
bb81:
  %t391 = load i64, ptr %l182, !tbaa !24
  %t392 = load i64, ptr %l184, !tbaa !24
  %t393 = icmp slt i64 %t391, %t392
  %t395 = xor i1 %t393, true
  br i1 %t395, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s16)
  br label %bb94
bb83:
  br label %bb84
bb84:
  %t397 = load ptr, ptr %l21, !tbaa !29
  %t398 = load i64, ptr %l22, !tbaa !24
  %t401 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t397, i64 %t398)
  store i64 %t401, ptr %l189
  br label %bb85
bb85:
  %t402 = load i64, ptr %l189, !tbaa !24
  store i64 %t402, ptr %l23, !tbaa !24
  %t403 = load ptr, ptr %l2, !tbaa !29
  %t405 = getelementptr %"compiler/profile:Places", ptr %t403, i32 0, i32 0
  %t406 = load i64, ptr %l23, !tbaa !24
  %t409 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t405, i64 %t406)
  store { i64, ptr } %t409, ptr %l193
  br label %bb86
bb86:
  %t410 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t411 = call { i64, ptr } @compiler_2fprofile_2eshortPath(ptr %v2, ptr %s16, { i64, ptr } %t410)
  store { i64, ptr } %t411, ptr %l194
  br label %bb87
bb87:
  %t412 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t412, 0
  store i64 %t413, ptr %l195, !tbaa !24
  %t414 = load i64, ptr %l195, !tbaa !24
  %t415 = mul i64 %t414, 1
  %t416 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t415)
  %t417 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t416, 1
  store { i64, ptr } %t418, ptr %l196, !tbaa !27
  %t419 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !27
  %t421 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !27
  %t423 = load i64, ptr %l195, !tbaa !24
  %t424 = mul i64 %t423, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t420, ptr %t422, i64 %t424, i1 false)
  %t425 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t426 = extractvalue { i64, ptr } %t425, 0
  %t427 = load i64, ptr %l20, !tbaa !24
  %t430 = icmp sgt i64 %t426, %t427
  br i1 %t430, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s17
  %t432 = load ptr, ptr %l2, !tbaa !29
  %t434 = getelementptr %"compiler/profile:Places", ptr %t432, i32 0, i32 0
  %t435 = load i64, ptr %l23, !tbaa !24
  %t438 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t434, i64 %t435)
  store { i64, ptr } %t438, ptr %l203
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t439 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t440 = call { i64, ptr } @compiler_2fprofile_2eshortPath(ptr %v2, ptr %s17, { i64, ptr } %t439)
  store { i64, ptr } %t440, ptr %l204
  br label %bb91
bb91:
  %t441 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t442 = extractvalue { i64, ptr } %t441, 0
  store i64 %t442, ptr %l205, !tbaa !24
  %t443 = load i64, ptr %l205, !tbaa !24
  %t444 = mul i64 %t443, 1
  %t445 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t444)
  %t446 = insertvalue { i64, ptr } undef, i64 %t443, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t445, 1
  store { i64, ptr } %t447, ptr %l206, !tbaa !27
  %t448 = getelementptr { i64, ptr }, ptr %l206, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !27
  %t450 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t451 = load ptr, ptr %t450, !tbaa !27
  %t452 = load i64, ptr %l205, !tbaa !24
  %t453 = mul i64 %t452, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t449, ptr %t451, i64 %t453, i1 false)
  %t454 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t455 = extractvalue { i64, ptr } %t454, 0
  store i64 %t455, ptr %l20, !tbaa !24
  call void @__olang_scope_close(ptr %s17)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s16)
  br label %bb93
bb93:
  %t457 = load i64, ptr %l22, !tbaa !24
  %t459 = add i64 %t457, 1
  store i64 %t459, ptr %l22, !tbaa !24
  br label %bb80
bb94:
  store ptr %l5, ptr %l210, !tbaa !29
  %t461 = load i64, ptr %l20, !tbaa !24
  %t463 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadEnd(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d82, i32 0, i32 1) }, i64 %t461, i8 32)
  store { i64, ptr } %t463, ptr %l212
  br label %bb95
bb95:
  %t464 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t465 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t466 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t467 = extractvalue { i64, ptr } %t466, 1
  %t468 = extractvalue { i64, ptr } %t466, 0
  %t469 = add i64 %t465, %t468
  %t470 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t471 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t472 = add i64 %t469, %t471
  %t473 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t472)
  call void @olang_textcopy(ptr %t473, ptr %t464, i64 %t465)
  %t474 = getelementptr i8, ptr %t473, i64 %t465
  call void @olang_textcopy(ptr %t474, ptr %t467, i64 %t468)
  %t475 = getelementptr i8, ptr %t474, i64 %t468
  call void @olang_textcopy(ptr %t475, ptr %t470, i64 %t471)
  %t476 = insertvalue { i64, ptr } undef, i64 %t472, 0
  %t477 = insertvalue { i64, ptr } %t476, ptr %t473, 1
  %t479 = extractvalue { i64, ptr } %t477, 0
  %t480 = extractvalue { i64, ptr } %t477, 1
  %t481 = mul i64 %t479, 1
  %t482 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t481)
  call void @llvm.memcpy.p0.p0.i64(ptr %t482, ptr %t480, i64 %t481, i1 false)
  %t483 = insertvalue { i64, ptr } undef, i64 %t479, 0
  %t484 = insertvalue { i64, ptr } %t483, ptr %t482, 1
  %t485 = load ptr, ptr %l210, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t485, { i64, ptr } %t484)
  br label %bb96
bb96:
  store ptr %l15, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb97
bb97:
  store %olang.scope zeroinitializer, ptr %s21
  %t488 = load i64, ptr %l25, !tbaa !24
  store i64 %t488, ptr %l216, !tbaa !24
  %t489 = load ptr, ptr %l24, !tbaa !29
  %t491 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t489)
  store i64 %t491, ptr %l218
  br label %bb98
bb98:
  %t492 = load i64, ptr %l216, !tbaa !24
  %t493 = load i64, ptr %l218, !tbaa !24
  %t494 = icmp slt i64 %t492, %t493
  %t496 = xor i1 %t494, true
  br i1 %t496, label %bb99, label %bb100
bb99:
  call void @__olang_scope_close(ptr %s21)
  br label %bb119
bb100:
  br label %bb101
bb101:
  %t498 = load ptr, ptr %l24, !tbaa !29
  %t499 = load i64, ptr %l25, !tbaa !24
  %t502 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t498, i64 %t499)
  store i64 %t502, ptr %l223
  br label %bb102
bb102:
  %t503 = load i64, ptr %l223, !tbaa !24
  store i64 %t503, ptr %l26, !tbaa !24
  %t504 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 2
  %t505 = load i64, ptr %l26, !tbaa !24
  %t508 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %t504, i64 %t505)
  %t509 = extractvalue { i32, i64 } %t508, 1
  %t510 = extractvalue { i32, i64 } %t508, 0
  store i32 %t510, ptr %l228
  %t511 = icmp ne i32 %t510, 0
  br i1 %t511, label %bb104, label %ok.512, !prof !99
ok.512:
  store i64 %t509, ptr %l227
  br label %bb103
bb103:
  %t513 = load i64, ptr %l227, !tbaa !24
  store i64 %t513, ptr %l224, !tbaa !24
  br label %bb106
bb104:
  br label %bb105
bb105:
  store i64 0, ptr %l224, !tbaa !24
  br label %bb106
bb106:
  %t514 = load i64, ptr %l224, !tbaa !24
  store i64 %t514, ptr %l27, !tbaa !24
  %t515 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 3
  %t516 = load i64, ptr %l26, !tbaa !24
  %t519 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %t515, i64 %t516)
  %t520 = extractvalue { i32, i64 } %t519, 1
  %t521 = extractvalue { i32, i64 } %t519, 0
  store i32 %t521, ptr %l233
  %t522 = icmp ne i32 %t521, 0
  br i1 %t522, label %bb108, label %ok.523, !prof !99
ok.523:
  store i64 %t520, ptr %l232
  br label %bb107
bb107:
  %t524 = load i64, ptr %l232, !tbaa !24
  store i64 %t524, ptr %l229, !tbaa !24
  br label %bb110
bb108:
  br label %bb109
bb109:
  store i64 0, ptr %l229, !tbaa !24
  br label %bb110
bb110:
  %t525 = load i64, ptr %l229, !tbaa !24
  store i64 %t525, ptr %l28, !tbaa !24
  store ptr %l5, ptr %l234, !tbaa !29
  %t526 = load i64, ptr %l27, !tbaa !24
  %t527 = load i64, ptr %l4, !tbaa !24
  %t530 = call { i64, ptr } @compiler_2fprofile_2epct(ptr %s21, i64 %t526, i64 %t527)
  store { i64, ptr } %t530, ptr %l237
  br label %bb111
bb111:
  %t531 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t532 = extractvalue { i64, ptr } %t531, 0
  %t533 = extractvalue { i64, ptr } %t531, 1
  %t534 = mul i64 %t532, 1
  %t535 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t534)
  call void @llvm.memcpy.p0.p0.i64(ptr %t535, ptr %t533, i64 %t534, i1 false)
  %t536 = insertvalue { i64, ptr } undef, i64 %t532, 0
  %t537 = insertvalue { i64, ptr } %t536, ptr %t535, 1
  %t539 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s21, ptr %s21, { i64, ptr } %t537, i64 6, i8 32)
  store { i64, ptr } %t539, ptr %l239
  br label %bb112
bb112:
  %t540 = load ptr, ptr %l2, !tbaa !29
  %t542 = getelementptr %"compiler/profile:Places", ptr %t540, i32 0, i32 0
  %t543 = load i64, ptr %l26, !tbaa !24
  %t546 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t542, i64 %t543)
  store { i64, ptr } %t546, ptr %l243
  br label %bb113
bb113:
  %t547 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t548 = call { i64, ptr } @compiler_2fprofile_2eshortPath(ptr %v2, ptr %s21, { i64, ptr } %t547)
  store { i64, ptr } %t548, ptr %l244
  br label %bb114
bb114:
  %t549 = load { i64, ptr }, ptr %l244, !tbaa !27
  %t550 = extractvalue { i64, ptr } %t549, 0
  store i64 %t550, ptr %l245, !tbaa !24
  %t551 = load i64, ptr %l245, !tbaa !24
  %t552 = mul i64 %t551, 1
  %t553 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t552)
  %t554 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t555 = insertvalue { i64, ptr } %t554, ptr %t553, 1
  store { i64, ptr } %t555, ptr %l246, !tbaa !27
  %t556 = getelementptr { i64, ptr }, ptr %l246, i32 0, i32 1
  %t557 = load ptr, ptr %t556, !tbaa !27
  %t558 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t559 = load ptr, ptr %t558, !tbaa !27
  %t560 = load i64, ptr %l245, !tbaa !24
  %t561 = mul i64 %t560, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t557, ptr %t559, i64 %t561, i1 false)
  %t562 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t562, 0
  %t564 = extractvalue { i64, ptr } %t562, 1
  %t565 = mul i64 %t563, 1
  %t566 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t565)
  call void @llvm.memcpy.p0.p0.i64(ptr %t566, ptr %t564, i64 %t565, i1 false)
  %t567 = insertvalue { i64, ptr } undef, i64 %t563, 0
  %t568 = insertvalue { i64, ptr } %t567, ptr %t566, 1
  %t569 = load i64, ptr %l20, !tbaa !24
  %t572 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadEnd(ptr %s21, ptr %s21, { i64, ptr } %t568, i64 %t569, i8 32)
  store { i64, ptr } %t572, ptr %l249
  br label %bb115
bb115:
  %t573 = load ptr, ptr %l2, !tbaa !29
  %t575 = getelementptr %"compiler/profile:Places", ptr %t573, i32 0, i32 0
  %t576 = load i64, ptr %l28, !tbaa !24
  %t579 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %s21, ptr %t575, i64 %t576)
  store { i64, ptr } %t579, ptr %l253
  br label %bb116
bb116:
  %t580 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t581 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t582 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t583 = extractvalue { i64, ptr } %t582, 1
  %t584 = extractvalue { i64, ptr } %t582, 0
  %t585 = add i64 %t581, %t584
  %t586 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t587 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t588 = add i64 %t585, %t587
  %t589 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t590 = extractvalue { i64, ptr } %t589, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = add i64 %t588, %t591
  %t593 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t594 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t595 = add i64 %t592, %t594
  %t596 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t597 = extractvalue { i64, ptr } %t596, 1
  %t598 = extractvalue { i64, ptr } %t596, 0
  %t599 = add i64 %t595, %t598
  %t600 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t601 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t602 = add i64 %t599, %t601
  %t603 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t602)
  call void @olang_textcopy(ptr %t603, ptr %t580, i64 %t581)
  %t604 = getelementptr i8, ptr %t603, i64 %t581
  call void @olang_textcopy(ptr %t604, ptr %t583, i64 %t584)
  %t605 = getelementptr i8, ptr %t604, i64 %t584
  call void @olang_textcopy(ptr %t605, ptr %t586, i64 %t587)
  %t606 = getelementptr i8, ptr %t605, i64 %t587
  call void @olang_textcopy(ptr %t606, ptr %t590, i64 %t591)
  %t607 = getelementptr i8, ptr %t606, i64 %t591
  call void @olang_textcopy(ptr %t607, ptr %t593, i64 %t594)
  %t608 = getelementptr i8, ptr %t607, i64 %t594
  call void @olang_textcopy(ptr %t608, ptr %t597, i64 %t598)
  %t609 = getelementptr i8, ptr %t608, i64 %t598
  call void @olang_textcopy(ptr %t609, ptr %t600, i64 %t601)
  %t610 = insertvalue { i64, ptr } undef, i64 %t602, 0
  %t611 = insertvalue { i64, ptr } %t610, ptr %t603, 1
  %t613 = extractvalue { i64, ptr } %t611, 0
  %t614 = extractvalue { i64, ptr } %t611, 1
  %t615 = mul i64 %t613, 1
  %t616 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t615)
  call void @llvm.memcpy.p0.p0.i64(ptr %t616, ptr %t614, i64 %t615, i1 false)
  %t617 = insertvalue { i64, ptr } undef, i64 %t613, 0
  %t618 = insertvalue { i64, ptr } %t617, ptr %t616, 1
  %t619 = load ptr, ptr %l234, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s21, ptr %t619, { i64, ptr } %t618)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s21)
  br label %bb118
bb118:
  %t621 = load i64, ptr %l25, !tbaa !24
  %t623 = add i64 %t621, 1
  store i64 %t623, ptr %l25, !tbaa !24
  br label %bb97
bb119:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d88, i32 0, i32 1) })
  br label %bb120
bb120:
  store i64 0, ptr %l8, !tbaa !24
  store ptr %l7, ptr %l29, !tbaa !29
  store i64 0, ptr %l30, !tbaa !24
  br label %bb121
bb121:
  store %olang.scope zeroinitializer, ptr %s25
  %t627 = load i64, ptr %l30, !tbaa !24
  store i64 %t627, ptr %l260, !tbaa !24
  %t628 = load ptr, ptr %l29, !tbaa !29
  %t630 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t628)
  store i64 %t630, ptr %l262
  br label %bb122
bb122:
  %t631 = load i64, ptr %l260, !tbaa !24
  %t632 = load i64, ptr %l262, !tbaa !24
  %t633 = icmp slt i64 %t631, %t632
  %t635 = xor i1 %t633, true
  br i1 %t635, label %bb123, label %bb124
bb123:
  call void @__olang_scope_close(ptr %s25)
  br label %bb187
bb124:
  br label %bb125
bb125:
  %t637 = load ptr, ptr %l29, !tbaa !29
  %t638 = load i64, ptr %l30, !tbaa !24
  %t641 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t637, i64 %t638)
  store i64 %t641, ptr %l267
  br label %bb126
bb126:
  %t642 = load i64, ptr %l267, !tbaa !24
  store i64 %t642, ptr %l31, !tbaa !24
  %t643 = load i64, ptr %l8, !tbaa !24
  %t645 = icmp sge i64 %t643, 5
  br i1 %t645, label %bb127, label %bb128
bb127:
  call void @__olang_scope_close(ptr %s25)
  br label %bb187
bb128:
  br label %bb129
bb129:
  %t647 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 0
  %t648 = load i64, ptr %l31, !tbaa !24
  %t651 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %t647, i64 %t648)
  %t652 = extractvalue { i32, i64 } %t651, 1
  %t653 = extractvalue { i32, i64 } %t651, 0
  store i32 %t653, ptr %l274
  %t654 = icmp ne i32 %t653, 0
  br i1 %t654, label %bb131, label %ok.655, !prof !99
ok.655:
  store i64 %t652, ptr %l273
  br label %bb130
bb130:
  %t656 = load i64, ptr %l273, !tbaa !24
  store i64 %t656, ptr %l270, !tbaa !24
  br label %bb133
bb131:
  br label %bb132
bb132:
  store i64 0, ptr %l270, !tbaa !24
  br label %bb133
bb133:
  %t657 = load i64, ptr %l270, !tbaa !24
  %t660 = icmp eq i64 %t657, 0
  br i1 %t660, label %bb134, label %bb135
bb134:
  call void @__olang_scope_close(ptr %s25)
  br label %bb187
bb135:
  br label %bb136
bb136:
  %t662 = load i64, ptr %l8, !tbaa !24
  %t664 = add i64 %t662, 1
  store i64 %t664, ptr %l8, !tbaa !24
  %t666 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 1
  %t667 = load i64, ptr %l31, !tbaa !24
  %t670 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %t666, i64 %t667)
  %t671 = extractvalue { i32, i64 } %t670, 1
  %t672 = extractvalue { i32, i64 } %t670, 0
  store i32 %t672, ptr %l283
  %t673 = icmp ne i32 %t672, 0
  br i1 %t673, label %bb138, label %ok.674, !prof !99
ok.674:
  store i64 %t671, ptr %l282
  br label %bb137
bb137:
  %t675 = load i64, ptr %l282, !tbaa !24
  store i64 %t675, ptr %l279, !tbaa !24
  br label %bb140
bb138:
  br label %bb139
bb139:
  store i64 0, ptr %l279, !tbaa !24
  br label %bb140
bb140:
  %t676 = load i64, ptr %l279, !tbaa !24
  store i64 %t676, ptr %l33, !tbaa !24
  %t677 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s25, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t677, ptr %l284
  br label %bb141
bb141:
  %t678 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l284
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t678, ptr %l34
  %t679 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 5
  store ptr %t679, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb142
bb142:
  %t681 = load i64, ptr %l36, !tbaa !24
  store i64 %t681, ptr %l286, !tbaa !24
  %t682 = load ptr, ptr %l35, !tbaa !29
  %t684 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t682)
  store i64 %t684, ptr %l288
  br label %bb143
bb143:
  %t685 = load i64, ptr %l286, !tbaa !24
  %t686 = load i64, ptr %l288, !tbaa !24
  %t687 = icmp slt i64 %t685, %t686
  %t689 = xor i1 %t687, true
  br i1 %t689, label %bb144, label %bb145
bb144:
  br label %bb154
bb145:
  br label %bb146
bb146:
  %t691 = load ptr, ptr %l35, !tbaa !29
  %t692 = load i64, ptr %l36, !tbaa !24
  %t695 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t691, i64 %t692)
  store i64 %t695, ptr %l293
  br label %bb147
bb147:
  %t696 = load i64, ptr %l293, !tbaa !24
  store i64 %t696, ptr %l37, !tbaa !24
  %t697 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 4
  %t698 = load i64, ptr %l31, !tbaa !24
  %t700 = mul i64 %t698, 16777216
  %t701 = load i64, ptr %l37, !tbaa !24
  %t704 = add i64 %t700, %t701
  %t707 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %s0, ptr %t697, i64 %t704)
  store i1 %t707, ptr %l299
  br label %bb148
bb148:
  %t708 = load i1, ptr %l299, !tbaa !21
  br i1 %t708, label %bb149, label %bb150
bb149:
  %t709 = load i64, ptr %l37, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s25, ptr %l34, i64 %t709)
  br label %bb151
bb150:
  br label %bb152
bb151:
  br label %bb152
bb152:
  br label %bb153
bb153:
  %t712 = load i64, ptr %l36, !tbaa !24
  %t714 = add i64 %t712, 1
  store i64 %t714, ptr %l36, !tbaa !24
  br label %bb142
bb154:
  store ptr %l34, ptr %l304, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l305, ptr %l3, i64 424, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3aTally(ptr %t716, ptr %s0, ptr %l305)
  call void @llvm.memmove.p0.p0.i64(ptr %l307, ptr %t716, i64 424, i1 false)
  br label %bb155
bb155:
  %t718 = load i64, ptr %l31, !tbaa !24
  %t719 = load ptr, ptr %l2, !tbaa !29
  %t720 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr null, i32 1
  %t721 = ptrtoint ptr %t720 to i64
  %t723 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %t722, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t723, ptr %l307, i64 424, i1 false)
  %t724 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %t722, i32 0, i32 1
  store i64 %t718, ptr %t724, !tbaa !28
  %t726 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %t722, i32 0, i32 2
  store ptr %t719, ptr %t726, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t728 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %t722, i32 0, i32 3
  store ptr %s0, ptr %t728, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t729 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %t722, i32 0, i32 4
  store ptr %v2, ptr %t729, !tbaa !28
  %t730 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_89, 0
  %t731 = insertvalue { ptr, ptr } %t730, ptr %t722, 1
  %t732 = load ptr, ptr %l304, !tbaa !29
  %t734 = extractvalue { ptr, ptr } %t731, 0
  %t735 = extractvalue { ptr, ptr } %t731, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s25, ptr %s25, ptr %t732, ptr %t734, ptr %t735)
  br label %bb156
bb156:
  %t736 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s25, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t736, ptr %l311
  br label %bb157
bb157:
  %t737 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l311
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t737, ptr %l38
  store ptr %l34, ptr %l39, !tbaa !29
  store i64 0, ptr %l40, !tbaa !24
  br label %bb158
bb158:
  store %olang.scope zeroinitializer, ptr %s33
  %t739 = load i64, ptr %l40, !tbaa !24
  store i64 %t739, ptr %l313, !tbaa !24
  %t740 = load ptr, ptr %l39, !tbaa !29
  %t742 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s25, ptr %t740)
  store i64 %t742, ptr %l315
  br label %bb159
bb159:
  %t743 = load i64, ptr %l313, !tbaa !24
  %t744 = load i64, ptr %l315, !tbaa !24
  %t745 = icmp slt i64 %t743, %t744
  %t747 = xor i1 %t745, true
  br i1 %t747, label %bb160, label %bb161
bb160:
  call void @__olang_scope_close(ptr %s33)
  br label %bb178
bb161:
  br label %bb162
bb162:
  %t749 = load ptr, ptr %l39, !tbaa !29
  %t750 = load i64, ptr %l40, !tbaa !24
  %t753 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s25, ptr %t749, i64 %t750)
  store i64 %t753, ptr %l320
  br label %bb163
bb163:
  %t754 = load i64, ptr %l320, !tbaa !24
  store i64 %t754, ptr %l41, !tbaa !24
  %t756 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s25, ptr %l38)
  store i64 %t756, ptr %l322
  br label %bb164
bb164:
  %t757 = load i64, ptr %l322, !tbaa !24
  %t758 = icmp sge i64 %t757, 4
  br i1 %t758, label %bb165, label %bb166
bb165:
  call void @__olang_scope_close(ptr %s33)
  br label %bb178
bb166:
  br label %bb167
bb167:
  store ptr %l38, ptr %l324, !tbaa !29
  %t760 = ptrtoint ptr %s25 to i64
  store i64 %t760, ptr %l325, !tbaa !24
  %t761 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t761, label %bb168, label %bb169
bb168:
  %t763 = call ptr @__olang_region_make(ptr %s25)
  %t764 = ptrtoint ptr %t763 to i64
  store i64 %t764, ptr %l325, !tbaa !24
  br label %bb169
bb169:
  %t765 = load ptr, ptr %l2, !tbaa !29
  %t767 = getelementptr %"compiler/profile:Places", ptr %t765, i32 0, i32 0
  %t768 = load i64, ptr %l41, !tbaa !24
  %t771 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %s33, ptr %t767, i64 %t768)
  store { i64, ptr } %t771, ptr %l330
  br label %bb170
bb170:
  %t772 = getelementptr %"compiler/profile:Tally", ptr %l3, i32 0, i32 4
  %t773 = load i64, ptr %l31, !tbaa !24
  %t775 = mul i64 %t773, 16777216
  %t776 = load i64, ptr %l41, !tbaa !24
  %t779 = add i64 %t775, %t776
  %t782 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %t772, i64 %t779)
  %t783 = extractvalue { i32, i64 } %t782, 1
  %t784 = extractvalue { i32, i64 } %t782, 0
  store i32 %t784, ptr %l338
  %t785 = icmp ne i32 %t784, 0
  br i1 %t785, label %bb172, label %ok.786, !prof !99
ok.786:
  store i64 %t783, ptr %l337
  br label %bb171
bb171:
  %t787 = load i64, ptr %l337, !tbaa !24
  store i64 %t787, ptr %l331, !tbaa !24
  br label %bb174
bb172:
  br label %bb173
bb173:
  store i64 0, ptr %l331, !tbaa !24
  br label %bb174
bb174:
  %t788 = load i64, ptr %l33, !tbaa !24
  %t789 = load i64, ptr %l331, !tbaa !24
  %t791 = call { i64, ptr } @compiler_2fprofile_2epct(ptr %s33, i64 %t789, i64 %t788)
  store { i64, ptr } %t791, ptr %l340
  br label %bb175
bb175:
  %t792 = load { i64, ptr }, ptr %l330, !tbaa !27
  %t793 = extractvalue { i64, ptr } %t792, 1
  %t794 = extractvalue { i64, ptr } %t792, 0
  %t795 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t796 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t797 = add i64 %t794, %t796
  %t798 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t799 = extractvalue { i64, ptr } %t798, 1
  %t800 = extractvalue { i64, ptr } %t798, 0
  %t801 = add i64 %t797, %t800
  %t802 = load i64, ptr %l325
  %t803 = inttoptr i64 %t802 to ptr
  %t804 = call ptr @__olang_scope_alloc(ptr %t803, i64 %t801)
  call void @olang_textcopy(ptr %t804, ptr %t793, i64 %t794)
  %t805 = getelementptr i8, ptr %t804, i64 %t794
  call void @olang_textcopy(ptr %t805, ptr %t795, i64 %t796)
  %t806 = getelementptr i8, ptr %t805, i64 %t796
  call void @olang_textcopy(ptr %t806, ptr %t799, i64 %t800)
  %t807 = insertvalue { i64, ptr } undef, i64 %t801, 0
  %t808 = insertvalue { i64, ptr } %t807, ptr %t804, 1
  %t810 = load i64, ptr %l325
  %t811 = inttoptr i64 %t810 to ptr
  %t812 = extractvalue { i64, ptr } %t808, 0
  %t813 = extractvalue { i64, ptr } %t808, 1
  %t814 = mul i64 %t812, 1
  %t815 = call ptr @__olang_scope_alloc(ptr %t811, i64 %t814)
  call void @llvm.memcpy.p0.p0.i64(ptr %t815, ptr %t813, i64 %t814, i1 false)
  %t816 = insertvalue { i64, ptr } undef, i64 %t812, 0
  %t817 = insertvalue { i64, ptr } %t816, ptr %t815, 1
  %t818 = load ptr, ptr %l324, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s25, ptr %s25, ptr %t818, { i64, ptr } %t817)
  br label %bb176
bb176:
  call void @__olang_scope_close(ptr %s33)
  br label %bb177
bb177:
  %t820 = load i64, ptr %l40, !tbaa !24
  %t822 = add i64 %t820, 1
  store i64 %t822, ptr %l40, !tbaa !24
  br label %bb158
bb178:
  store ptr %l5, ptr %l345, !tbaa !29
  %t824 = load ptr, ptr %l2, !tbaa !29
  %t826 = getelementptr %"compiler/profile:Places", ptr %t824, i32 0, i32 0
  %t827 = load i64, ptr %l31, !tbaa !24
  %t830 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %s25, ptr %t826, i64 %t827)
  store { i64, ptr } %t830, ptr %l349
  br label %bb179
bb179:
  %t832 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s25, ptr %l38)
  store i64 %t832, ptr %l351
  br label %bb180
bb180:
  %t833 = load i64, ptr %l351, !tbaa !24
  %t834 = icmp eq i64 %t833, 0
  br i1 %t834, label %bb181, label %bb182
bb181:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l353, !tbaa !27
  br label %bb184
bb182:
  %t837 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s25, ptr %s25, ptr %s25, ptr %l38, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store { i64, ptr } %t837, ptr %l355
  br label %bb183
bb183:
  %t838 = load { i64, ptr }, ptr %l355, !tbaa !27
  %t839 = extractvalue { i64, ptr } %t838, 0
  %t840 = extractvalue { i64, ptr } %t838, 1
  %t841 = mul i64 %t839, 1
  %t842 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t841)
  call void @llvm.memcpy.p0.p0.i64(ptr %t842, ptr %t840, i64 %t841, i1 false)
  %t843 = insertvalue { i64, ptr } undef, i64 %t839, 0
  %t844 = insertvalue { i64, ptr } %t843, ptr %t842, 1
  store { i64, ptr } %t844, ptr %l353, !tbaa !27
  br label %bb184
bb184:
  %t846 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t847 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t848 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t849 = extractvalue { i64, ptr } %t848, 1
  %t850 = extractvalue { i64, ptr } %t848, 0
  %t851 = add i64 %t847, %t850
  %t852 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t853 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t854 = add i64 %t851, %t853
  %t855 = load { i64, ptr }, ptr %l353, !tbaa !27
  %t856 = extractvalue { i64, ptr } %t855, 1
  %t857 = extractvalue { i64, ptr } %t855, 0
  %t858 = add i64 %t854, %t857
  %t859 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t860 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t861 = add i64 %t858, %t860
  %t862 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t861)
  call void @olang_textcopy(ptr %t862, ptr %t846, i64 %t847)
  %t863 = getelementptr i8, ptr %t862, i64 %t847
  call void @olang_textcopy(ptr %t863, ptr %t849, i64 %t850)
  %t864 = getelementptr i8, ptr %t863, i64 %t850
  call void @olang_textcopy(ptr %t864, ptr %t852, i64 %t853)
  %t865 = getelementptr i8, ptr %t864, i64 %t853
  call void @olang_textcopy(ptr %t865, ptr %t856, i64 %t857)
  %t866 = getelementptr i8, ptr %t865, i64 %t857
  call void @olang_textcopy(ptr %t866, ptr %t859, i64 %t860)
  %t867 = insertvalue { i64, ptr } undef, i64 %t861, 0
  %t868 = insertvalue { i64, ptr } %t867, ptr %t862, 1
  %t870 = extractvalue { i64, ptr } %t868, 0
  %t871 = extractvalue { i64, ptr } %t868, 1
  %t872 = mul i64 %t870, 1
  %t873 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t872)
  call void @llvm.memcpy.p0.p0.i64(ptr %t873, ptr %t871, i64 %t872, i1 false)
  %t874 = insertvalue { i64, ptr } undef, i64 %t870, 0
  %t875 = insertvalue { i64, ptr } %t874, ptr %t873, 1
  %t876 = load ptr, ptr %l345, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %t876, { i64, ptr } %t875)
  br label %bb185
bb185:
  call void @__olang_scope_close(ptr %s25)
  br label %bb186
bb186:
  %t878 = load i64, ptr %l30, !tbaa !24
  %t880 = add i64 %t878, 1
  store i64 %t880, ptr %l30, !tbaa !24
  br label %bb121
bb187:
  %t883 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l5)
  store { i64, ptr } %t883, ptr %l362
  br label %bb188
bb188:
  call void @__olang_scope_close(ptr %s0)
  %t884 = load { i64, ptr }, ptr %l362, !tbaa !27
  store { i64, ptr } %t884, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2eSymbolizer(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l10 = alloca i1
  %l12 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %l21 = alloca i1
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca i1
  %l44 = alloca { i64, ptr }
  %l46 = alloca i1
  %l51 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %s0)
  store { i64, ptr } %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t2, ptr %l0, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d96, i32 0, i32 1) })
  store i1 %t5, ptr %l10
  br label %bb2
bb2:
  %t6 = load i1, ptr %l10, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = call { i64, ptr } @compiler_2ftarget_2eWhereIs(ptr %s0, ptr %s1, { i64, ptr } %t9)
  store { i64, ptr } %t11, ptr %l14
  br label %bb5
bb4:
  br label %bb22
bb5:
  %t12 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  %t14 = extractvalue { i64, ptr } %t12, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t20 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %s1, ptr %s1, { i64, ptr } %t18)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l17
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb7, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l16
  br label %bb6
bb6:
  %t25 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t25, ptr %l12, !tbaa !27
  br label %bb11
bb7:
  %t26 = load i32, ptr %l17, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  br i1 %t29, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d97, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb11
bb11:
  %t31 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t31, ptr %l1, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t34, ptr %l21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l21, !tbaa !21
  %t36 = xor i1 %t35, true
  br i1 %t36, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t40 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %s1, ptr %s2, { i64, ptr } %t38)
  store { i64, ptr } %t40, ptr %l24
  br label %bb15
bb14:
  br label %bb21
bb15:
  %t41 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t42, i64 %t43)
  %t48 = getelementptr i8, ptr %t47, i64 %t43
  call void @olang_textcopy(ptr %t48, ptr %t44, i64 %t45)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  %t51 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t51, ptr %lp2
  %t53 = load ptr, ptr %lp2
  store { i64, ptr } %t50, ptr %t53, !tbaa !27
  %t54 = load ptr, ptr %lp2
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t57 = call { i64, ptr } @compiler_2ftarget_2eWhereIs(ptr %v0, ptr %s2, { i64, ptr } %t55)
  store { i64, ptr } %t57, ptr %l27
  br label %bb16
bb16:
  %t58 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t64, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t66, ptr %l29
  br label %bb17
bb17:
  %t67 = load i1, ptr %l29, !tbaa !21
  %t68 = xor i1 %t67, true
  br i1 %t68, label %bb18, label %bb19
bb18:
  %t70 = load ptr, ptr %lp2
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t71, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s1)
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t73 = insertvalue [4 x { i64, ptr }] undef, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t74 = insertvalue [4 x { i64, ptr }] %t73, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t75 = insertvalue [4 x { i64, ptr }] %t74, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d103, i32 0, i32 1) }, 2
  %t76 = insertvalue [4 x { i64, ptr }] %t75, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d104, i32 0, i32 1) }, 3
  %t78 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 64, i64 8)
  store [4 x { i64, ptr }] %t76, ptr %t78
  store ptr %t78, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t80 = load ptr, ptr %l3
  store i64 4, ptr %l5, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t83 = load i64, ptr %l4, !tbaa !24
  %t84 = load i64, ptr %l5, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s6)
  br label %bb33
bb25:
  br label %bb26
bb26:
  %t91 = load ptr, ptr %l3
  %t92 = load i64, ptr %l4, !tbaa !24
  %t95 = getelementptr [4 x { i64, ptr }], ptr %t91, i64 0, i64 %t92
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !37
  %t99 = load ptr, ptr @__olang_prog_scope
  %t101 = call { i64, ptr } @compiler_2ftarget_2eWhereIs(ptr %t99, ptr %v0, { i64, ptr } %t96)
  store { i64, ptr } %t101, ptr %l44
  br label %bb27
bb27:
  %t102 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t102, ptr %lp7
  %t103 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t104 = load ptr, ptr %lp7
  store { i64, ptr } %t103, ptr %t104, !tbaa !27
  %t105 = load ptr, ptr %lp7
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  %t108 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s6, { i64, ptr } %t106, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store i1 %t108, ptr %l46
  br label %bb28
bb28:
  %t109 = load i1, ptr %l46, !tbaa !21
  %t110 = xor i1 %t109, true
  br i1 %t110, label %bb29, label %bb30
bb29:
  %t112 = load ptr, ptr %lp7
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t113, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s6)
  br label %bb32
bb32:
  %t115 = load i64, ptr %l4, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l4, !tbaa !24
  br label %bb23
bb33:
  call void @__olang_scope_close(ptr %s5)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d106, i32 0, i32 1) }, ptr %l51, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t119, ptr %l52, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 0
  store i64 %t121, ptr %l53, !tbaa !24
  %t122 = load i64, ptr %l53, !tbaa !24
  %t123 = mul i64 %t122, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t123)
  %t125 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  store { i64, ptr } %t126, ptr %l54, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = load i64, ptr %l53, !tbaa !24
  %t132 = mul i64 %t131, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t128, ptr %t130, i64 %t132, i1 false)
  %t133 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t133, ptr %l52, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t134 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t134, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fprofile_2eTally_2eTallied(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/profile:Sample"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca %"compiler/profile:Frame"
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i64
  %l17 = alloca %"compiler/profile:Tally"
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca %"compiler/profile:Sample"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l37 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca %"compiler/profile:Frame"
  %l43 = alloca i1
  %l45 = alloca i1
  %l48 = alloca i1
  %l55 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l63 = alloca i64
  %l66 = alloca i1
  %l76 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca i64
  %l80 = alloca i64
  %l86 = alloca i64
  %l90 = alloca %"compiler/profile:Frame"
  %l95 = alloca i1
  %l100 = alloca i1
  %l102 = alloca i1
  %l105 = alloca i1
  %l113 = alloca i64
  %l115 = alloca i64
  %l117 = alloca ptr
  %l119 = alloca i64
  %l121 = alloca ptr
  %l125 = alloca i64
  %l126 = alloca %"compiler/profile:Frame"
  %l134 = alloca %"compiler/profile:Tally"
  %s2 = alloca %olang.scope
  %t1 = alloca %"compiler/profile:Tally", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fprofile_3aTally_2ector(ptr %t1, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t1, i64 424, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 424, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l17, i64 424, i1 false)
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/profile:Profile", ptr %t4, i32 0, i32 3
  store ptr %t6, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = load i64, ptr %l4, !tbaa !24
  store i64 %t8, ptr %l20, !tbaa !24
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eLen_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l22
  br label %bb3
bb3:
  %t12 = load i64, ptr %l20, !tbaa !24
  %t13 = load i64, ptr %l22, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb67
bb5:
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = call %"compiler/profile:Sample" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eAt_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %t18, i64 %t19)
  store %"compiler/profile:Sample" %t22, ptr %l27
  br label %bb7
bb7:
  %t23 = load %"compiler/profile:Sample", ptr %l27
  store %"compiler/profile:Sample" %t23, ptr %l5
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load %"compiler/profile:Sample", ptr %l5
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2estack(ptr %v1, ptr %v0, ptr %s2, ptr %t24, ptr %t25, %"compiler/profile:Sample" %t26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l31
  br label %bb8
bb8:
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l6
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %l6)
  store i64 %t33, ptr %l33
  br label %bb9
bb9:
  %t34 = load i64, ptr %l33, !tbaa !24
  %t35 = icmp eq i64 %t34, 0
  br i1 %t35, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb66
bb11:
  br label %bb12
bb12:
  %t37 = getelementptr %"compiler/profile:Sample", ptr %l5, i32 0, i32 0
  %t38 = load i64, ptr %t37, !tbaa !24
  store i64 %t38, ptr %l7, !tbaa !24
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/profile:Places", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l37, !tbaa !29
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %l6, i64 0)
  store i64 %t44, ptr %l39
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l37, !tbaa !29
  %t46 = load i64, ptr %l39, !tbaa !24
  %t47 = call %"compiler/profile:Frame" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2eAt_3ccompiler_2fprofile_3aFrame_3e(ptr %v1, ptr %t45, i64 %t46)
  store %"compiler/profile:Frame" %t47, ptr %l40
  br label %bb14
bb14:
  %t48 = load %"compiler/profile:Frame", ptr %l40
  store %"compiler/profile:Frame" %t48, ptr %l8
  %t49 = load ptr, ptr %lp2
  %t50 = getelementptr %"compiler/profile:Tally", ptr %t49, i32 0, i32 1
  %t51 = getelementptr %"compiler/profile:Frame", ptr %l8, i32 0, i32 0
  %t52 = load i64, ptr %t51, !tbaa !24
  %t55 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v2, ptr %t50, i64 %t52)
  store i1 %t55, ptr %l43
  br label %bb15
bb15:
  %t56 = load i1, ptr %l43, !tbaa !21
  %t57 = xor i1 %t56, true
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t59 = load ptr, ptr %lp2
  %t60 = getelementptr %"compiler/profile:Tally", ptr %t59, i32 0, i32 0
  %t61 = getelementptr %"compiler/profile:Frame", ptr %l8, i32 0, i32 0
  %t62 = load i64, ptr %t61, !tbaa !24
  %t65 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v2, ptr %t60, i64 %t62)
  store i1 %t65, ptr %l48
  br label %bb18
bb17:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb19
bb18:
  %t66 = load i1, ptr %l48, !tbaa !21
  %t67 = xor i1 %t66, true
  store i1 %t67, ptr %l45, !tbaa !21
  br label %bb19
bb19:
  %t69 = load i1, ptr %l45, !tbaa !21
  br i1 %t69, label %bb20, label %bb21
bb20:
  %t70 = load ptr, ptr %lp2
  %t71 = getelementptr %"compiler/profile:Tally", ptr %t70, i32 0, i32 5
  %t72 = getelementptr %"compiler/profile:Frame", ptr %l8, i32 0, i32 0
  %t73 = load i64, ptr %t72, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t71, i64 %t73)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t76 = load ptr, ptr %lp2
  %t77 = getelementptr %"compiler/profile:Tally", ptr %t76, i32 0, i32 0
  %t78 = getelementptr %"compiler/profile:Frame", ptr %l8, i32 0, i32 0
  %t79 = load i64, ptr %t78, !tbaa !24
  %t80 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fprofile_2eadd(ptr %v2, ptr %t77, i64 %t79, i64 %t80)
  br label %bb24
bb24:
  %t84 = load ptr, ptr %l1, !tbaa !29
  store ptr %t84, ptr %l55, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/profile:Places", ptr %t85, i32 0, i32 0
  %t88 = getelementptr %"compiler/profile:Frame", ptr %l8, i32 0, i32 1
  %t89 = load i64, ptr %t88, !tbaa !24
  %t92 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %s2, ptr %t87, i64 %t89)
  store { i64, ptr } %t92, ptr %l59
  br label %bb25
bb25:
  %t93 = getelementptr %"compiler/profile:Frame", ptr %l8, i32 0, i32 2
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t100 = add i64 %t97, %t99
  %t102 = call i64 @__olang_fmt_i64(ptr null, i64 %t94)
  %t103 = add i64 %t100, %t102
  %t104 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t103)
  call void @olang_textcopy(ptr %t104, ptr %t96, i64 %t97)
  %t105 = getelementptr i8, ptr %t104, i64 %t97
  call void @olang_textcopy(ptr %t105, ptr %t98, i64 %t99)
  %t106 = getelementptr i8, ptr %t105, i64 %t99
  %t107 = call i64 @__olang_fmt_i64(ptr %t106, i64 %t94)
  %t108 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t104, 1
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t112 = extractvalue { i64, ptr } %t109, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load ptr, ptr %l55, !tbaa !29
  %t119 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v1, ptr %v1, ptr %t117, { i64, ptr } %t116)
  store i64 %t119, ptr %l63
  br label %bb26
bb26:
  %t120 = load i64, ptr %l63, !tbaa !24
  store i64 %t120, ptr %l9, !tbaa !24
  %t121 = load ptr, ptr %lp2
  %t122 = getelementptr %"compiler/profile:Tally", ptr %t121, i32 0, i32 2
  %t123 = load i64, ptr %l9, !tbaa !24
  %t126 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v2, ptr %t122, i64 %t123)
  store i1 %t126, ptr %l66
  br label %bb27
bb27:
  %t127 = load i1, ptr %l66, !tbaa !21
  %t128 = xor i1 %t127, true
  br i1 %t128, label %bb28, label %bb29
bb28:
  %t130 = load ptr, ptr %lp2
  %t131 = getelementptr %"compiler/profile:Tally", ptr %t130, i32 0, i32 6
  %t132 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t131, i64 %t132)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t135 = load ptr, ptr %lp2
  %t136 = getelementptr %"compiler/profile:Tally", ptr %t135, i32 0, i32 2
  %t137 = load i64, ptr %l9, !tbaa !24
  %t138 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fprofile_2eadd(ptr %v2, ptr %t136, i64 %t137, i64 %t138)
  br label %bb32
bb32:
  %t142 = load ptr, ptr %lp2
  %t143 = getelementptr %"compiler/profile:Tally", ptr %t142, i32 0, i32 3
  %t144 = load i64, ptr %l9, !tbaa !24
  %t145 = getelementptr %"compiler/profile:Frame", ptr %l8, i32 0, i32 0
  %t146 = load i64, ptr %t145, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v2, ptr %t143, i64 %t144, i64 %t146)
  br label %bb33
bb33:
  %t150 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %l76
  br label %bb34
bb34:
  %t151 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t151, ptr %l10
  store ptr %l6, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb35
bb35:
  %t153 = load i64, ptr %l12, !tbaa !24
  store i64 %t153, ptr %l78, !tbaa !24
  %t154 = load ptr, ptr %l11, !tbaa !29
  %t156 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t154)
  store i64 %t156, ptr %l80
  br label %bb36
bb36:
  %t157 = load i64, ptr %l78, !tbaa !24
  %t158 = load i64, ptr %l80, !tbaa !24
  %t159 = icmp slt i64 %t157, %t158
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb37, label %bb38
bb37:
  br label %bb65
bb38:
  br label %bb39
bb39:
  %t163 = load i64, ptr %l12, !tbaa !24
  store i64 %t163, ptr %l13, !tbaa !24
  %t165 = load ptr, ptr %l11, !tbaa !29
  %t166 = load i64, ptr %l12, !tbaa !24
  %t169 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t165, i64 %t166)
  store i64 %t169, ptr %l86
  br label %bb40
bb40:
  %t170 = load i64, ptr %l86, !tbaa !24
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t173 = getelementptr %"compiler/profile:Places", ptr %t171, i32 0, i32 2
  %t177 = call %"compiler/profile:Frame" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2eAt_3ccompiler_2fprofile_3aFrame_3e(ptr %v1, ptr %t173, i64 %t170)
  store %"compiler/profile:Frame" %t177, ptr %l90
  br label %bb41
bb41:
  %t178 = getelementptr %"compiler/profile:Frame", ptr %l90, i32 0, i32 0
  %t179 = load i64, ptr %t178, !tbaa !24
  store i64 %t179, ptr %l15, !tbaa !24
  %t181 = load i64, ptr %l15, !tbaa !24
  %t186 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s2, ptr %l10, i64 %t181)
  store i1 %t186, ptr %l95
  br label %bb42
bb42:
  %t187 = load i1, ptr %l95, !tbaa !21
  br i1 %t187, label %bb43, label %bb44
bb43:
  br label %bb64
bb44:
  br label %bb45
bb45:
  %t188 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s2, ptr %l10, i64 %t188)
  br label %bb46
bb46:
  %t191 = load ptr, ptr %lp2
  %t192 = getelementptr %"compiler/profile:Tally", ptr %t191, i32 0, i32 1
  %t193 = load i64, ptr %l15, !tbaa !24
  %t196 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v2, ptr %t192, i64 %t193)
  store i1 %t196, ptr %l100
  br label %bb47
bb47:
  %t197 = load i1, ptr %l100, !tbaa !21
  %t198 = xor i1 %t197, true
  br i1 %t198, label %bb48, label %bb49
bb48:
  %t200 = load ptr, ptr %lp2
  %t201 = getelementptr %"compiler/profile:Tally", ptr %t200, i32 0, i32 0
  %t202 = load i64, ptr %l15, !tbaa !24
  %t205 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v2, ptr %t201, i64 %t202)
  store i1 %t205, ptr %l105
  br label %bb50
bb49:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb51
bb50:
  %t206 = load i1, ptr %l105, !tbaa !21
  %t207 = xor i1 %t206, true
  store i1 %t207, ptr %l102, !tbaa !21
  br label %bb51
bb51:
  %t209 = load i1, ptr %l102, !tbaa !21
  br i1 %t209, label %bb52, label %bb53
bb52:
  %t210 = load ptr, ptr %lp2
  %t211 = getelementptr %"compiler/profile:Tally", ptr %t210, i32 0, i32 5
  %t212 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t211, i64 %t212)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  %t215 = load ptr, ptr %lp2
  %t216 = getelementptr %"compiler/profile:Tally", ptr %t215, i32 0, i32 1
  %t217 = load i64, ptr %l15, !tbaa !24
  %t218 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fprofile_2eadd(ptr %v2, ptr %t216, i64 %t217, i64 %t218)
  br label %bb56
bb56:
  %t222 = load i64, ptr %l13, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l113, !tbaa !24
  %t226 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %l6)
  store i64 %t226, ptr %l115
  br label %bb57
bb57:
  %t227 = load i64, ptr %l113, !tbaa !24
  %t228 = load i64, ptr %l115, !tbaa !24
  %t229 = icmp slt i64 %t227, %t228
  br i1 %t229, label %bb58, label %bb59
bb58:
  %t231 = load ptr, ptr %lp2
  %t232 = getelementptr %"compiler/profile:Tally", ptr %t231, i32 0, i32 4
  store ptr %t232, ptr %l117, !tbaa !29
  %t233 = load i64, ptr %l15, !tbaa !24
  %t235 = mul i64 %t233, 16777216
  store i64 %t235, ptr %l119, !tbaa !24
  %t236 = load ptr, ptr %l1, !tbaa !29
  %t238 = getelementptr %"compiler/profile:Places", ptr %t236, i32 0, i32 2
  store ptr %t238, ptr %l121, !tbaa !29
  %t239 = load i64, ptr %l13, !tbaa !24
  %t241 = add i64 %t239, 1
  %t244 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %l6, i64 %t241)
  store i64 %t244, ptr %l125
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t245 = load ptr, ptr %l121, !tbaa !29
  %t246 = load i64, ptr %l125, !tbaa !24
  %t247 = call %"compiler/profile:Frame" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2eAt_3ccompiler_2fprofile_3aFrame_3e(ptr %v1, ptr %t245, i64 %t246)
  store %"compiler/profile:Frame" %t247, ptr %l126
  br label %bb61
bb61:
  %t248 = getelementptr %"compiler/profile:Frame", ptr %l126, i32 0, i32 0
  %t249 = load i64, ptr %t248, !tbaa !24
  %t250 = load i64, ptr %l119, !tbaa !24
  %t252 = add i64 %t250, %t249
  %t253 = load i64, ptr %l7, !tbaa !24
  %t254 = load ptr, ptr %l117, !tbaa !29
  call void @compiler_2fprofile_2eadd(ptr %v2, ptr %t254, i64 %t252, i64 %t253)
  br label %bb62
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t257 = load i64, ptr %l12, !tbaa !24
  %t259 = add i64 %t257, 1
  store i64 %t259, ptr %l12, !tbaa !24
  br label %bb35
bb65:
  call void @__olang_scope_close(ptr %s2)
  br label %bb66
bb66:
  %t261 = load i64, ptr %l4, !tbaa !24
  %t263 = add i64 %t261, 1
  store i64 %t263, ptr %l4, !tbaa !24
  br label %bb2
bb67:
  %t265 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l134, ptr %t265, i64 424, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l134, i64 424, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fprofile_2eadd(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  store i64 %t2, ptr %l4, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l9
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l8
  br label %bb1
bb1:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t16 = add i64 %t14, %a2
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t17, i64 %t18, i64 %t16)
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l20 = alloca i64
  %l24 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/profile:Places", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i64, ptr %l7, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l2, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/profile:Places", ptr %t20, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t22, { i64, ptr } %t23)
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/profile:Places", ptr %t26, i32 0, i32 1
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t29, ptr %l17, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/profile:Places", ptr %t30, i32 0, i32 0
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l20
  br label %bb9
bb9:
  %t35 = load i64, ptr %l20, !tbaa !24
  %t36 = sub i64 %t35, 1
  %t37 = load ptr, ptr %l16, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %t37, { i64, ptr } %t38, i64 %t36)
  br label %bb10
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/profile:Places", ptr %t40, i32 0, i32 0
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l24
  br label %bb11
bb11:
  %t45 = load i64, ptr %l24, !tbaa !24
  %t46 = sub i64 %t45, 1
  store i64 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2estack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/profile:Sample" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/profile:Sample"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l26 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l54 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i32
  %l65 = alloca i64
  %l69 = alloca i64
  %l72 = alloca i64
  %l90 = alloca ptr
  %l94 = alloca i64
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store %"compiler/profile:Sample" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t3 = getelementptr %"compiler/profile:Sample", ptr %l2, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t6 = load i64, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t10 = icmp sgt i64 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb4:
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t20 = sub i64 %t16, %t17
  %t21 = load i64, ptr %l6, !tbaa !24
  %t24 = add i64 %t20, %t21
  %t26 = sub i64 %t24, 1
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = sdiv i64 %t26, %t27
  store i64 %t30, ptr %l26, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l26, !tbaa !24
  store i64 %t32, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l23, !tbaa !24
  store i64 %t33, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t34 = load i64, ptr %l8, !tbaa !24
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb9, label %bb10
bb9:
  br label %bb39
bb10:
  br label %bb11
bb11:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = mul i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  store i64 %t50, ptr %l9, !tbaa !24
  %t54 = getelementptr %"compiler/profile:Profile", ptr %a1, i32 0, i32 4
  %t55 = getelementptr %"compiler/profile:Sample", ptr %l2, i32 0, i32 1
  %t56 = load i64, ptr %t55, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t60 = add i64 %t56, %t57
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t54, i64 %t60)
  store i64 %t63, ptr %l49
  br label %bb12
bb12:
  %t64 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp eq i64 %t64, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb15
bb14:
  store i64 1, ptr %l52, !tbaa !24
  br label %bb15
bb15:
  %t68 = load i64, ptr %l49, !tbaa !24
  %t69 = load i64, ptr %l52, !tbaa !24
  %t70 = sub i64 %t68, %t69
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/profile:Places", ptr %t72, i32 0, i32 5
  %t78 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t74, i64 %t70)
  %t79 = extractvalue { i32, i64 } %t78, 1
  %t80 = extractvalue { i32, i64 } %t78, 0
  store i32 %t80, ptr %l59
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb17, label %ok.82, !prof !99
ok.82:
  store i64 %t79, ptr %l58
  br label %bb16
bb16:
  %t83 = load i64, ptr %l58, !tbaa !24
  store i64 %t83, ptr %l54, !tbaa !24
  br label %bb19
bb17:
  br label %bb18
bb18:
  store i64 -1, ptr %l54, !tbaa !24
  br label %bb19
bb19:
  %t84 = load i64, ptr %l54, !tbaa !24
  store i64 %t84, ptr %l11, !tbaa !24
  %t85 = load i64, ptr %l11, !tbaa !24
  %t87 = icmp slt i64 %t85, 0
  br i1 %t87, label %bb20, label %bb21
bb20:
  br label %bb38
bb21:
  br label %bb22
bb22:
  store i64 0, ptr %l12, !tbaa !24
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/profile:Places", ptr %t89, i32 0, i32 4
  %t92 = load i64, ptr %l11, !tbaa !24
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t91, i64 %t92)
  store i64 %t95, ptr %l65
  br label %bb23
bb23:
  %t96 = load i64, ptr %l65, !tbaa !24
  store i64 %t96, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t97 = load i64, ptr %l13, !tbaa !24
  %t98 = load i64, ptr %l12, !tbaa !24
  %t101 = icmp sgt i64 %t97, %t98
  br i1 %t101, label %bb24, label %bb25
bb24:
  %t103 = load i64, ptr %l14, !tbaa !24
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb29
bb26:
  %t107 = load i64, ptr %l13, !tbaa !24
  %t108 = load i64, ptr %l12, !tbaa !24
  %t111 = sub i64 %t107, %t108
  %t112 = load i64, ptr %l14, !tbaa !24
  %t115 = add i64 %t111, %t112
  %t117 = sub i64 %t115, 1
  %t118 = load i64, ptr %l14, !tbaa !24
  %t121 = sdiv i64 %t117, %t118
  store i64 %t121, ptr %l72, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb28
bb28:
  %t123 = load i64, ptr %l72, !tbaa !24
  store i64 %t123, ptr %l69, !tbaa !24
  br label %bb29
bb29:
  %t124 = load i64, ptr %l69, !tbaa !24
  store i64 %t124, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb30
bb30:
  %t125 = load i64, ptr %l16, !tbaa !24
  %t126 = load i64, ptr %l15, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb31, label %bb32
bb31:
  br label %bb37
bb32:
  br label %bb33
bb33:
  %t133 = load i64, ptr %l12, !tbaa !24
  %t134 = load i64, ptr %l16, !tbaa !24
  %t135 = load i64, ptr %l14, !tbaa !24
  %t138 = mul i64 %t134, %t135
  %t141 = add i64 %t133, %t138
  store i64 %t141, ptr %l17, !tbaa !24
  store ptr %l3, ptr %l90, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/profile:Places", ptr %t143, i32 0, i32 3
  %t146 = load i64, ptr %l11, !tbaa !24
  %t149 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t145, i64 %t146)
  store i64 %t149, ptr %l94
  br label %bb34
bb34:
  %t150 = load i64, ptr %l17, !tbaa !24
  %t151 = load i64, ptr %l94, !tbaa !24
  %t153 = add i64 %t151, %t150
  %t154 = load ptr, ptr %l90, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t154, i64 %t153)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t156 = load i64, ptr %l16, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l16, !tbaa !24
  br label %bb30
bb37:
  br label %bb38
bb38:
  %t160 = load i64, ptr %l8, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l8, !tbaa !24
  br label %bb8
bb39:
  %t164 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2fprofile_2ecompiler_2fprofile_3aProfile_2eTotal(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/profile:Sample"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca %"compiler/profile:Sample"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t3 = getelementptr %"compiler/profile:Profile", ptr %a0, i32 0, i32 3
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eLen_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call %"compiler/profile:Sample" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eAt_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/profile:Sample" %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load %"compiler/profile:Sample", ptr %l14
  store %"compiler/profile:Sample" %t20, ptr %l4
  %t21 = load i64, ptr %l1, !tbaa !24
  %t22 = getelementptr %"compiler/profile:Sample", ptr %l4, i32 0, i32 0
  %t23 = load i64, ptr %t22, !tbaa !24
  %t26 = add i64 %t21, %t23
  store i64 %t26, ptr %l1, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l3, !tbaa !24
  br label %bb1
bb8:
  %t32 = load i64, ptr %l1, !tbaa !24
  store i64 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2eescapeXml(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb24
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l14, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  store i8 %t23, ptr %l5, !tbaa !22
  %t25 = load i8, ptr %l5, !tbaa !22
  %t27 = icmp eq i8 %t25, 60
  br i1 %t27, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d108, i32 0, i32 1) })
  br label %bb8
bb7:
  %t30 = load i8, ptr %l5, !tbaa !22
  %t32 = icmp eq i8 %t30, 62
  br i1 %t32, label %bb9, label %bb10
bb8:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb9:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d109, i32 0, i32 1) })
  br label %bb11
bb10:
  %t35 = load i8, ptr %l5, !tbaa !22
  %t37 = icmp eq i8 %t35, 38
  br i1 %t37, label %bb12, label %bb13
bb11:
  call void @__olang_scope_close(ptr %s5)
  br label %bb21
bb12:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d110, i32 0, i32 1) })
  br label %bb14
bb13:
  %t40 = load i8, ptr %l5, !tbaa !22
  %t42 = icmp eq i8 %t40, 34
  br i1 %t42, label %bb15, label %bb16
bb14:
  call void @__olang_scope_close(ptr %s7)
  br label %bb20
bb15:
  store %olang.scope zeroinitializer, ptr %s9
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %l1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d111, i32 0, i32 1) })
  br label %bb17
bb16:
  %t45 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t45)
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s9)
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l3, !tbaa !24
  br label %bb2
bb24:
  %t53 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t53, ptr %l34
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t54, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, ptr }, i64 } @compiler_2fprofile_2efileLine(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l12 = alloca { { i64, ptr }, i64 }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i32
  %l31 = alloca { { i64, ptr }, i64 }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i32
  %l57 = alloca i64
  %l58 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i64 }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l7
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l6
  br label %bb1
bb1:
  %t8 = load i64, ptr %l6, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l4, !tbaa !24
  store i64 %t9, ptr %l1, !tbaa !24
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t14, 0
  %t18 = insertvalue { { i64, ptr }, i64 } %t17, i64 0, 1
  store { { i64, ptr }, i64 } %t18, ptr %l12
  %t19 = getelementptr { { i64, ptr }, i64 }, ptr %l12, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
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
  %t35 = getelementptr { { i64, ptr }, i64 }, ptr %l12, i32 0, i32 0
  store { i64, ptr } %t34, ptr %t35, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t36 = load { { i64, ptr }, i64 }, ptr %l12
  store { { i64, ptr }, i64 } %t36, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t37, ptr %l16, !tbaa !27
  %t38 = load i64, ptr %l1, !tbaa !24
  store i64 %t38, ptr %l17, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l18, !tbaa !24
  %t41 = icmp sge i64 0, 0
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t43 = load i64, ptr %l17, !tbaa !24
  %t44 = icmp sle i64 0, %t43
  br i1 %t44, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_7d2ae97c2364b59d_ce98559d67a1b5c9)
  unreachable
bb10:
  %t46 = load i64, ptr %l17, !tbaa !24
  %t47 = load i64, ptr %l18, !tbaa !24
  %t48 = icmp sle i64 %t46, %t47
  br i1 %t48, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_7d2ae97c2364b59d_ce98559d67a1b5c9)
  unreachable
bb12:
  %t50 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = load i64, ptr %l17, !tbaa !24
  %t53 = getelementptr i8, ptr %t51, i64 0
  %t54 = sub i64 %t52, 0
  %t55 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t53, 1
  store { i64, ptr } %t56, ptr %l2, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t58, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) })
  %t61 = extractvalue { i32, i64 } %t60, 1
  %t62 = extractvalue { i32, i64 } %t60, 0
  store i32 %t62, ptr %l26
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb15, label %ok.64, !prof !99
ok.64:
  store i64 %t61, ptr %l25
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_7d2ae97c2364b59d_ce98559d67a1b5c9)
  unreachable
bb14:
  %t65 = load i64, ptr %l25, !tbaa !24
  store i64 %t65, ptr %l23, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  store i64 -1, ptr %l23, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l23, !tbaa !24
  store i64 %t66, ptr %l3, !tbaa !24
  %t67 = load i64, ptr %l3, !tbaa !24
  %t69 = icmp slt i64 %t67, 0
  br i1 %t69, label %bb18, label %bb19
bb18:
  %t71 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t74 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t71, 0
  %t75 = insertvalue { { i64, ptr }, i64 } %t74, i64 0, 1
  store { { i64, ptr }, i64 } %t75, ptr %l31
  %t76 = getelementptr { { i64, ptr }, i64 }, ptr %l31, i32 0, i32 0
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %l32, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  store i64 %t79, ptr %l33, !tbaa !24
  %t80 = load i64, ptr %l33, !tbaa !24
  %t81 = mul i64 %t80, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t81)
  %t83 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l34, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = load i64, ptr %l33, !tbaa !24
  %t90 = mul i64 %t89, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t86, ptr %t88, i64 %t90, i1 false)
  %t91 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t92 = getelementptr { { i64, ptr }, i64 }, ptr %l31, i32 0, i32 0
  store { i64, ptr } %t91, ptr %t92, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t93 = load { { i64, ptr }, i64 }, ptr %l31
  store { { i64, ptr }, i64 } %t93, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t94 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t94, ptr %l35, !tbaa !27
  %t95 = load i64, ptr %l3, !tbaa !24
  store i64 %t95, ptr %l36, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  store i64 %t97, ptr %l37, !tbaa !24
  %t98 = icmp sge i64 0, 0
  br i1 %t98, label %bb21, label %bb22
bb21:
  %t100 = load i64, ptr %l36, !tbaa !24
  %t101 = icmp sle i64 0, %t100
  br i1 %t101, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_ec3589048a52ea40_4feb0c814716a05c)
  unreachable
bb23:
  %t103 = load i64, ptr %l36, !tbaa !24
  %t104 = load i64, ptr %l37, !tbaa !24
  %t105 = icmp sle i64 %t103, %t104
  br i1 %t105, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_ec3589048a52ea40_4feb0c814716a05c)
  unreachable
bb25:
  %t107 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l36, !tbaa !24
  %t110 = getelementptr i8, ptr %t108, i64 0
  %t111 = sub i64 %t109, 0
  %t112 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t110, 1
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = extractvalue { i64, ptr } %t113, 0
  %t117 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t116)
  call void @olang_textcopy(ptr %t117, ptr %t115, i64 %t116)
  %t118 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  store { i64, ptr } %t119, ptr %l42, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t120, ptr %l44, !tbaa !27
  %t121 = load i64, ptr %l3, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l46, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t124, 0
  store i64 %t127, ptr %l49, !tbaa !24
  %t128 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  store i64 %t129, ptr %l50, !tbaa !24
  %t130 = load i64, ptr %l46, !tbaa !24
  %t131 = icmp sge i64 %t130, 0
  br i1 %t131, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_ec3589048a52ea40_4feb0c814716a05c)
  unreachable
bb27:
  %t133 = load i64, ptr %l46, !tbaa !24
  %t134 = load i64, ptr %l49, !tbaa !24
  %t135 = icmp sle i64 %t133, %t134
  br i1 %t135, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_ec3589048a52ea40_4feb0c814716a05c)
  unreachable
bb29:
  %t137 = load i64, ptr %l49, !tbaa !24
  %t138 = load i64, ptr %l50, !tbaa !24
  %t139 = icmp sle i64 %t137, %t138
  br i1 %t139, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_ec3589048a52ea40_4feb0c814716a05c)
  unreachable
bb31:
  %t141 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = load i64, ptr %l46, !tbaa !24
  %t144 = load i64, ptr %l49, !tbaa !24
  %t145 = getelementptr i8, ptr %t142, i64 %t143
  %t146 = sub i64 %t144, %t143
  %t147 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t145, 1
  store { i64, ptr } %t148, ptr %l54, !tbaa !27
  %t149 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t150 = extractvalue { i32, i64 } %t149, 1
  %t151 = extractvalue { i32, i64 } %t149, 0
  store i32 %t151, ptr %l56
  %t152 = icmp ne i32 %t151, 0
  br i1 %t152, label %bb34, label %ok.153, !prof !99
ok.153:
  store i64 %t150, ptr %l55
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_ec3589048a52ea40_4feb0c814716a05c)
  unreachable
bb33:
  %t154 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t155 = load i64, ptr %l55, !tbaa !24
  %t156 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t154, i64 %t155)
  %t157 = extractvalue { i32, i64 } %t156, 1
  %t158 = extractvalue { i32, i64 } %t156, 0
  store i32 %t158, ptr %l58
  %t159 = icmp ne i32 %t158, 0
  br i1 %t159, label %bb37, label %ok.160, !prof !99
ok.160:
  store i64 %t157, ptr %l57
  br label %bb36
bb34:
  br label %bb35
bb35:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb38
bb36:
  %t161 = load i64, ptr %l57, !tbaa !24
  store i64 %t161, ptr %l43, !tbaa !24
  br label %bb38
bb37:
  br label %bb35
bb38:
  %t162 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t163 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t162, 0
  %t164 = load i64, ptr %l43, !tbaa !24
  %t165 = insertvalue { { i64, ptr }, i64 } %t163, i64 %t164, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t165, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i64 }, ptr %rv
  ret { { i64, ptr }, i64 } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2efunctionSymbols(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
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
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i32
  %l35 = alloca i1
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca i64
  %l67 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l107 = alloca i64
  %l110 = alloca i1
  %l117 = alloca i64
  %l122 = alloca i64
  %l127 = alloca i64
  %l132 = alloca i64
  %l141 = alloca i64
  %l144 = alloca i1
  %l157 = alloca i64
  %l160 = alloca i64
  %l187 = alloca i64
  %l188 = alloca { i64, ptr }
  %l195 = alloca i1
  %l198 = alloca i64
  %l202 = alloca i64
  %l209 = alloca i1
  %l210 = alloca { i64, ptr }
  %l218 = alloca ptr
  %l219 = alloca i64
  %l224 = alloca i64
  %l225 = alloca { i64, ptr }
  %l226 = alloca i64
  %l227 = alloca i64
  %l228 = alloca i64
  %l234 = alloca %"compiler/profile:elfFn"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l29
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t7 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l33
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb3, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l32
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t12, ptr %l30, !tbaa !27
  br label %bb7
bb3:
  %t13 = load i32, ptr %l33, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  store i1 %t16, ptr %l35, !tbaa !21
  %t17 = load i32, ptr %l33, !tbaa !23
  %t18 = ashr i32 %t17, 16
  %t20 = icmp eq i32 %t18, 1
  br i1 %t20, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t22 = load ptr, ptr %lp1
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %rv
  br label %ret
bb7:
  %t25 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = icmp slt i64 %t28, 64
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb10
bb9:
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t32, ptr %l43, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i8, ptr %t34, i64 0
  %t36 = load i8, ptr %t35, !tbaa !32
  %t39 = icmp ne i8 %t36, 127
  store i1 %t39, ptr %l42, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l42, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb13
bb12:
  %t42 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t42, ptr %l48, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i8, ptr %t44, i64 1
  %t46 = load i8, ptr %t45, !tbaa !32
  %t50 = icmp ne i8 %t46, 69
  store i1 %t50, ptr %l47, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l47, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb16
bb15:
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t53, ptr %l54, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 4
  %t57 = load i8, ptr %t56, !tbaa !32
  %t60 = icmp ne i8 %t57, 2
  store i1 %t60, ptr %l53, !tbaa !21
  br label %bb16
bb16:
  %t62 = load i1, ptr %l53, !tbaa !21
  br i1 %t62, label %bb17, label %bb18
bb17:
  %t63 = load ptr, ptr %lp1
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t63
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t66 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t69 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t66, i64 40, i64 8)
  store i64 %t69, ptr %l61
  br label %bb20
bb20:
  %t70 = load i64, ptr %l61, !tbaa !24
  store i64 %t70, ptr %l3, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t74 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t71, i64 58, i64 2)
  store i64 %t74, ptr %l64
  br label %bb21
bb21:
  %t75 = load i64, ptr %l64, !tbaa !24
  store i64 %t75, ptr %l4, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t79 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t76, i64 60, i64 2)
  store i64 %t79, ptr %l67
  br label %bb22
bb22:
  %t80 = load i64, ptr %l67, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  store i64 %t80, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t83 = load i64, ptr %l7, !tbaa !24
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = icmp sgt i64 %t83, %t84
  br i1 %t87, label %bb23, label %bb24
bb23:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t91 = icmp sgt i64 %t89, 0
  br i1 %t91, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb28
bb25:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t97 = sub i64 %t93, %t94
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = add i64 %t97, %t98
  %t103 = sub i64 %t101, 1
  %t104 = load i64, ptr %l8, !tbaa !24
  %t107 = sdiv i64 %t103, %t104
  store i64 %t107, ptr %l75, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb27
bb27:
  %t109 = load i64, ptr %l75, !tbaa !24
  store i64 %t109, ptr %l72, !tbaa !24
  br label %bb28
bb28:
  %t110 = load i64, ptr %l72, !tbaa !24
  store i64 %t110, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb29
bb29:
  %t111 = load i64, ptr %l10, !tbaa !24
  %t112 = load i64, ptr %l9, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb30, label %bb31
bb30:
  br label %bb93
bb31:
  br label %bb32
bb32:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t120 = load i64, ptr %l10, !tbaa !24
  %t121 = load i64, ptr %l8, !tbaa !24
  %t124 = mul i64 %t120, %t121
  %t127 = add i64 %t119, %t124
  %t129 = load i64, ptr %l3, !tbaa !24
  %t131 = load i64, ptr %l4, !tbaa !24
  %t134 = mul i64 %t127, %t131
  %t137 = add i64 %t129, %t134
  store i64 %t137, ptr %l12, !tbaa !24
  %t139 = load i64, ptr %l12, !tbaa !24
  %t141 = add i64 %t139, 64
  %t142 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t147 = icmp sgt i64 %t141, %t144
  br i1 %t147, label %bb33, label %bb34
bb33:
  br label %bb93
bb34:
  br label %bb35
bb35:
  %t149 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t151 = load i64, ptr %l12, !tbaa !24
  %t153 = add i64 %t151, 4
  %t156 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t149, i64 %t153, i64 4)
  store i64 %t156, ptr %l107
  br label %bb36
bb36:
  %t157 = load i64, ptr %l107, !tbaa !24
  store i64 %t157, ptr %l13, !tbaa !24
  %t158 = load i64, ptr %l13, !tbaa !24
  %t160 = icmp ne i64 %t158, 2
  br i1 %t160, label %bb37, label %bb38
bb37:
  %t162 = load i64, ptr %l13, !tbaa !24
  %t164 = icmp ne i64 %t162, 11
  store i1 %t164, ptr %l110, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb39
bb39:
  %t166 = load i1, ptr %l110, !tbaa !21
  br i1 %t166, label %bb40, label %bb41
bb40:
  br label %bb92
bb41:
  br label %bb42
bb42:
  %t167 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t169 = load i64, ptr %l12, !tbaa !24
  %t171 = add i64 %t169, 24
  %t174 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t167, i64 %t171, i64 8)
  store i64 %t174, ptr %l117
  br label %bb43
bb43:
  %t175 = load i64, ptr %l117, !tbaa !24
  store i64 %t175, ptr %l14, !tbaa !24
  %t176 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t178 = load i64, ptr %l12, !tbaa !24
  %t180 = add i64 %t178, 32
  %t183 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t176, i64 %t180, i64 8)
  store i64 %t183, ptr %l122
  br label %bb44
bb44:
  %t184 = load i64, ptr %l122, !tbaa !24
  store i64 %t184, ptr %l15, !tbaa !24
  %t185 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t187 = load i64, ptr %l12, !tbaa !24
  %t189 = add i64 %t187, 40
  %t192 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t185, i64 %t189, i64 4)
  store i64 %t192, ptr %l127
  br label %bb45
bb45:
  %t193 = load i64, ptr %l127, !tbaa !24
  store i64 %t193, ptr %l16, !tbaa !24
  %t194 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t196 = load i64, ptr %l12, !tbaa !24
  %t198 = add i64 %t196, 56
  %t201 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t194, i64 %t198, i64 8)
  store i64 %t201, ptr %l132
  br label %bb46
bb46:
  %t202 = load i64, ptr %l132, !tbaa !24
  store i64 %t202, ptr %l17, !tbaa !24
  %t203 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t205 = load i64, ptr %l3, !tbaa !24
  %t206 = load i64, ptr %l16, !tbaa !24
  %t207 = load i64, ptr %l4, !tbaa !24
  %t210 = mul i64 %t206, %t207
  %t213 = add i64 %t205, %t210
  %t215 = add i64 %t213, 24
  %t218 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t203, i64 %t215, i64 8)
  store i64 %t218, ptr %l141
  br label %bb47
bb47:
  %t219 = load i64, ptr %l141, !tbaa !24
  store i64 %t219, ptr %l18, !tbaa !24
  %t220 = load i64, ptr %l17, !tbaa !24
  %t222 = icmp slt i64 %t220, 24
  br i1 %t222, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l144, !tbaa !21
  br label %bb50
bb49:
  %t224 = load i64, ptr %l14, !tbaa !24
  %t225 = load i64, ptr %l15, !tbaa !24
  %t228 = add i64 %t224, %t225
  %t229 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t229, 0
  %t234 = icmp sgt i64 %t228, %t231
  store i1 %t234, ptr %l144, !tbaa !21
  br label %bb50
bb50:
  %t236 = load i1, ptr %l144, !tbaa !21
  br i1 %t236, label %bb51, label %bb52
bb51:
  br label %bb92
bb52:
  br label %bb53
bb53:
  store i64 0, ptr %l19, !tbaa !24
  %t237 = load i64, ptr %l15, !tbaa !24
  %t238 = load i64, ptr %l17, !tbaa !24
  %t241 = sdiv i64 %t237, %t238
  store i64 %t241, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t243 = load i64, ptr %l20, !tbaa !24
  %t244 = load i64, ptr %l19, !tbaa !24
  %t247 = icmp sgt i64 %t243, %t244
  br i1 %t247, label %bb54, label %bb55
bb54:
  %t249 = load i64, ptr %l21, !tbaa !24
  %t251 = icmp sgt i64 %t249, 0
  br i1 %t251, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l157, !tbaa !24
  br label %bb59
bb56:
  %t253 = load i64, ptr %l20, !tbaa !24
  %t254 = load i64, ptr %l19, !tbaa !24
  %t257 = sub i64 %t253, %t254
  %t258 = load i64, ptr %l21, !tbaa !24
  %t261 = add i64 %t257, %t258
  %t263 = sub i64 %t261, 1
  %t264 = load i64, ptr %l21, !tbaa !24
  %t267 = sdiv i64 %t263, %t264
  store i64 %t267, ptr %l160, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l160, !tbaa !24
  br label %bb58
bb58:
  %t269 = load i64, ptr %l160, !tbaa !24
  store i64 %t269, ptr %l157, !tbaa !24
  br label %bb59
bb59:
  %t270 = load i64, ptr %l157, !tbaa !24
  store i64 %t270, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb60
bb60:
  %t271 = load i64, ptr %l23, !tbaa !24
  %t272 = load i64, ptr %l22, !tbaa !24
  %t275 = icmp slt i64 %t271, %t272
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb61, label %bb62
bb61:
  br label %bb91
bb62:
  br label %bb63
bb63:
  %t279 = load i64, ptr %l19, !tbaa !24
  %t280 = load i64, ptr %l23, !tbaa !24
  %t281 = load i64, ptr %l21, !tbaa !24
  %t284 = mul i64 %t280, %t281
  %t287 = add i64 %t279, %t284
  %t289 = load i64, ptr %l14, !tbaa !24
  %t291 = load i64, ptr %l17, !tbaa !24
  %t294 = mul i64 %t287, %t291
  %t297 = add i64 %t289, %t294
  store i64 %t297, ptr %l25, !tbaa !24
  %t299 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t301 = load i64, ptr %l25, !tbaa !24
  %t303 = add i64 %t301, 8
  %t306 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t299, i64 %t303, i64 8)
  store i64 %t306, ptr %l187
  br label %bb64
bb64:
  %t307 = load i64, ptr %l187, !tbaa !24
  store i64 %t307, ptr %l26, !tbaa !24
  %t308 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t308, ptr %l188, !tbaa !27
  %t309 = load i64, ptr %l25, !tbaa !24
  %t311 = add i64 %t309, 4
  %t313 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = getelementptr i8, ptr %t314, i64 %t311
  %t316 = load i8, ptr %t315, !tbaa !32
  %t318 = zext i8 %t316 to i64
  %t320 = and i64 %t318, 15
  %t322 = icmp ne i64 %t320, 2
  br i1 %t322, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l195, !tbaa !21
  br label %bb67
bb66:
  %t324 = load i64, ptr %l26, !tbaa !24
  %t326 = icmp eq i64 %t324, 0
  store i1 %t326, ptr %l195, !tbaa !21
  br label %bb67
bb67:
  %t328 = load i1, ptr %l195, !tbaa !21
  br i1 %t328, label %bb68, label %bb69
bb68:
  br label %bb90
bb69:
  br label %bb70
bb70:
  %t329 = load i64, ptr %l18, !tbaa !24
  store i64 %t329, ptr %l198, !tbaa !24
  %t330 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t332 = load i64, ptr %l25, !tbaa !24
  %t335 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t330, i64 %t332, i64 4)
  store i64 %t335, ptr %l202
  br label %bb71
bb71:
  %t336 = load i64, ptr %l198, !tbaa !24
  %t337 = load i64, ptr %l202, !tbaa !24
  %t338 = add i64 %t336, %t337
  store i64 %t338, ptr %l27, !tbaa !24
  %t340 = load i64, ptr %l27, !tbaa !24
  store i64 %t340, ptr %l28, !tbaa !24
  br label %bb72
bb72:
  %t342 = load i64, ptr %l28, !tbaa !24
  %t343 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t343, 0
  %t348 = icmp slt i64 %t342, %t345
  br i1 %t348, label %bb73, label %bb74
bb73:
  %t350 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t350, ptr %l210, !tbaa !27
  %t351 = load i64, ptr %l28, !tbaa !24
  %t353 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr i8, ptr %t354, i64 %t351
  %t356 = load i8, ptr %t355, !tbaa !32
  %t359 = icmp ne i8 %t356, 0
  store i1 %t359, ptr %l209, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l209, !tbaa !21
  br label %bb75
bb75:
  %t361 = load i1, ptr %l209, !tbaa !21
  %t362 = xor i1 %t361, true
  br i1 %t362, label %bb76, label %bb77
bb76:
  br label %bb80
bb77:
  br label %bb78
bb78:
  %t364 = load i64, ptr %l28, !tbaa !24
  %t366 = add i64 %t364, 1
  store i64 %t366, ptr %l28, !tbaa !24
  br label %bb79
bb79:
  br label %bb72
bb80:
  %t368 = load ptr, ptr %lp1
  store ptr %t368, ptr %l218, !tbaa !29
  %t369 = load i64, ptr %l26, !tbaa !24
  store i64 %t369, ptr %l219, !tbaa !24
  %t370 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t372 = load i64, ptr %l25, !tbaa !24
  %t374 = add i64 %t372, 16
  %t377 = call i64 @compiler_2fprofile_2ele(ptr %v1, { i64, ptr } %t370, i64 %t374, i64 8)
  store i64 %t377, ptr %l224
  br label %bb81
bb81:
  %t378 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t378, ptr %l225, !tbaa !27
  %t379 = load i64, ptr %l27, !tbaa !24
  store i64 %t379, ptr %l226, !tbaa !24
  %t380 = load i64, ptr %l28, !tbaa !24
  store i64 %t380, ptr %l227, !tbaa !24
  %t381 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t381, 0
  store i64 %t382, ptr %l228, !tbaa !24
  %t383 = load i64, ptr %l226, !tbaa !24
  %t384 = icmp sge i64 %t383, 0
  br i1 %t384, label %bb82, label %bb83
bb82:
  %t386 = load i64, ptr %l226, !tbaa !24
  %t387 = load i64, ptr %l227, !tbaa !24
  %t388 = icmp sle i64 %t386, %t387
  br i1 %t388, label %bb84, label %bb85
bb83:
  call void @__olang_check_failed(ptr @olang_loc_47d41d181de998ca_407a2b261e632036)
  unreachable
bb84:
  %t390 = load i64, ptr %l227, !tbaa !24
  %t391 = load i64, ptr %l228, !tbaa !24
  %t392 = icmp sle i64 %t390, %t391
  br i1 %t392, label %bb86, label %bb87
bb85:
  call void @__olang_check_failed(ptr @olang_loc_47d41d181de998ca_407a2b261e632036)
  unreachable
bb86:
  %t394 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t395 = load ptr, ptr %t394, !tbaa !27
  %t396 = load i64, ptr %l226, !tbaa !24
  %t397 = load i64, ptr %l227, !tbaa !24
  %t398 = getelementptr i8, ptr %t395, i64 %t396
  %t399 = sub i64 %t397, %t396
  %t400 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t401 = insertvalue { i64, ptr } %t400, ptr %t398, 1
  %t403 = load i64, ptr %l219, !tbaa !24
  %t404 = load i64, ptr %l224, !tbaa !24
  %t406 = call %"compiler/profile:elfFn" @compiler_2fprofile_3aelfFn_2ector(ptr %v1, ptr %v1, i64 %t403, i64 %t404, { i64, ptr } %t401)
  store %"compiler/profile:elfFn" %t406, ptr %l234
  br label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_47d41d181de998ca_407a2b261e632036)
  unreachable
bb88:
  %t407 = load ptr, ptr %l218, !tbaa !29
  %t408 = load %"compiler/profile:elfFn", ptr %l234
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2ePush_3ccompiler_2fprofile_3aelfFn_3e(ptr %v1, ptr %v1, ptr %t407, %"compiler/profile:elfFn" %t408)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t409 = load i64, ptr %l23, !tbaa !24
  %t411 = add i64 %t409, 1
  store i64 %t411, ptr %l23, !tbaa !24
  br label %bb60
bb91:
  br label %bb92
bb92:
  %t413 = load i64, ptr %l10, !tbaa !24
  %t415 = add i64 %t413, 1
  store i64 %t415, ptr %l10, !tbaa !24
  br label %bb29
bb93:
  %t417 = load ptr, ptr %lp1
  %t418 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_114, 0
  %t419 = insertvalue { ptr, ptr } %t418, ptr null, 1
  %t422 = extractvalue { ptr, ptr } %t419, 0
  %t423 = extractvalue { ptr, ptr } %t419, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eSort_3_H16cb1151e861568c30a5b57cf3c12bc1(ptr %v1, ptr %s0, ptr %t417, ptr %t422, ptr %t423)
  br label %bb94
bb94:
  %t424 = load ptr, ptr %lp1
  %t425 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t424
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t425, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2fprofile_2ehex(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  %t2 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 16)
  %t3 = extractvalue { i32, i64 } %t2, 1
  %t4 = extractvalue { i32, i64 } %t2, 0
  store i32 %t4, ptr %l4
  %t5 = icmp ne i32 %t4, 0
  br i1 %t5, label %bb2, label %ok.6, !prof !99
ok.6:
  store i64 %t3, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t7, i64 %t8)
  %t10 = extractvalue { i32, i64 } %t9, 1
  %t11 = extractvalue { i32, i64 } %t9, 0
  store i32 %t11, ptr %l6
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb5, label %ok.13, !prof !99
ok.13:
  store i64 %t10, ptr %l5
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l1, !tbaa !24
  br label %bb6
bb4:
  %t14 = load i64, ptr %l5, !tbaa !24
  store i64 %t14, ptr %l1, !tbaa !24
  br label %bb6
bb5:
  br label %bb3
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t15 = load i64, ptr %l1, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fprofile_2eidentityChar(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t5)
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
  br label %bb8
bb7:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 95
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb11
bb10:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp eq i8 %t15, 47
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb11
bb11:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb14
bb13:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp eq i8 %t20, 45
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb14
bb14:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb17
bb16:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = icmp eq i8 %t25, 126
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb17
bb17:
  %t29 = load i1, ptr %l15, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fprofile_2ele(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l36 = alloca { i64, ptr }
  %l43 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t3 = load i64, ptr %l5, !tbaa !24
  %t4 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l17, !tbaa !24
  store i64 %t29, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l14, !tbaa !24
  store i64 %t30, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l8, !tbaa !24
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  store { i64, ptr } %a0, ptr %l36, !tbaa !27
  %t52 = load i64, ptr %l9, !tbaa !24
  %t55 = add i64 %a1, %t52
  %t57 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i8, ptr %t58, i64 %t55
  %t60 = load i8, ptr %t59, !tbaa !32
  %t62 = zext i8 %t60 to i64
  %t63 = load i64, ptr %l9, !tbaa !24
  %t65 = mul i64 %t63, 8
  store i64 %t65, ptr %l43, !tbaa !24
  %t67 = load i64, ptr %l43, !tbaa !24
  %t68 = load i64, ptr %l43, !tbaa !24
  %t69 = shl i64 %t62, %t68
  %t72 = or i64 %t49, %t69
  store i64 %t72, ptr %l3, !tbaa !24
  br label %bb11
bb11:
  %t74 = load i64, ptr %l8, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l8, !tbaa !24
  br label %bb7
bb12:
  %t78 = load i64, ptr %l3, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2emappings(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/text:LineIter"
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/text:LineIter"
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i32
  %l25 = alloca i1
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l39 = alloca i1
  %l46 = alloca i64
  %l48 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i32
  %l55 = alloca %"std/prelude/text:StringBuilder"
  %l57 = alloca i64
  %l61 = alloca i64
  %l64 = alloca i64
  %l85 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l95 = alloca i64
  %l96 = alloca i64
  %l101 = alloca i64
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l106 = alloca i64
  %l108 = alloca { i64, ptr }
  %l111 = alloca i64
  %l112 = alloca i64
  %l117 = alloca i64
  %l119 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca i64
  %l124 = alloca { i64, ptr }
  %l126 = alloca %"compiler/profile:mapping"
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t5 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t5, ptr %l19
  br label %bb2
bb2:
  %t6 = load %"std/prelude/text:LineIter", ptr %l19
  store %"std/prelude/text:LineIter" %t6, ptr %l2
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l2)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l23
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l22
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t13, ptr %l20, !tbaa !27
  br label %bb7
bb5:
  %t14 = load i32, ptr %l23, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l25, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb7:
  %t18 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l26
  br label %bb8
bb8:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l4
  store %olang.scope zeroinitializer, ptr %s3
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t23 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s3, ptr %v0, { i64, ptr } %t21, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store { i64, ptr } %t23, ptr %l28
  br label %bb9
bb9:
  %t24 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t24, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s4
  %t29 = load i64, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t37 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t37, ptr %l35, !tbaa !27
  %t38 = load i64, ptr %l6, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %t41, i64 %t38
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !37
  store { i64, ptr } %t43, ptr %l8, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t45, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) })
  store i1 %t47, ptr %l39
  br label %bb14
bb14:
  %t48 = load i1, ptr %l39, !tbaa !21
  %t49 = xor i1 %t48, true
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t51 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %v0, ptr %l4, { i64, ptr } %t51)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s4)
  br label %bb19
bb19:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb10
bb20:
  call void @__olang_scope_close(ptr %s3)
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l4)
  store i64 %t59, ptr %l46
  br label %bb21
bb21:
  %t60 = load i64, ptr %l46, !tbaa !24
  %t61 = icmp slt i64 %t60, 6
  br i1 %t61, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb23:
  br label %bb24
bb24:
  %t64 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 0)
  store { i64, ptr } %t64, ptr %l50
  br label %bb25
bb25:
  %t65 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t66 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s2, ptr %s2, { i64, ptr } %t65, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) })
  %t67 = extractvalue { i32, i64 } %t66, 1
  %t68 = extractvalue { i32, i64 } %t66, 0
  store i32 %t68, ptr %l52
  %t69 = icmp ne i32 %t68, 0
  br i1 %t69, label %bb27, label %ok.70, !prof !99
ok.70:
  store i64 %t67, ptr %l51
  br label %bb26
bb26:
  %t71 = load i64, ptr %l51, !tbaa !24
  store i64 %t71, ptr %l48, !tbaa !24
  br label %bb29
bb27:
  br label %bb28
bb28:
  store i64 -1, ptr %l48, !tbaa !24
  br label %bb29
bb29:
  %t72 = load i64, ptr %l48, !tbaa !24
  store i64 %t72, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t75 = icmp slt i64 %t73, 0
  br i1 %t75, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb31:
  br label %bb32
bb32:
  %t77 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t77, ptr %l55
  br label %bb33
bb33:
  %t78 = load %"std/prelude/text:StringBuilder", ptr %l55
  store %"std/prelude/text:StringBuilder" %t78, ptr %l10
  store i64 5, ptr %l11, !tbaa !24
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l4)
  store i64 %t80, ptr %l57
  br label %bb34
bb34:
  %t81 = load i64, ptr %l57, !tbaa !24
  store i64 %t81, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t82 = load i64, ptr %l12, !tbaa !24
  %t83 = load i64, ptr %l11, !tbaa !24
  %t86 = icmp sgt i64 %t82, %t83
  br i1 %t86, label %bb35, label %bb36
bb35:
  %t88 = load i64, ptr %l13, !tbaa !24
  %t90 = icmp sgt i64 %t88, 0
  br i1 %t90, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb40
bb37:
  %t92 = load i64, ptr %l12, !tbaa !24
  %t93 = load i64, ptr %l11, !tbaa !24
  %t96 = sub i64 %t92, %t93
  %t97 = load i64, ptr %l13, !tbaa !24
  %t100 = add i64 %t96, %t97
  %t102 = sub i64 %t100, 1
  %t103 = load i64, ptr %l13, !tbaa !24
  %t106 = sdiv i64 %t102, %t103
  store i64 %t106, ptr %l64, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb39
bb39:
  %t108 = load i64, ptr %l64, !tbaa !24
  store i64 %t108, ptr %l61, !tbaa !24
  br label %bb40
bb40:
  %t109 = load i64, ptr %l61, !tbaa !24
  store i64 %t109, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb41
bb41:
  %t110 = load i64, ptr %l15, !tbaa !24
  %t111 = load i64, ptr %l14, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb42, label %bb43
bb42:
  br label %bb52
bb43:
  br label %bb44
bb44:
  %t118 = load i64, ptr %l11, !tbaa !24
  %t119 = load i64, ptr %l15, !tbaa !24
  %t120 = load i64, ptr %l13, !tbaa !24
  %t123 = mul i64 %t119, %t120
  %t126 = add i64 %t118, %t123
  store i64 %t126, ptr %l16, !tbaa !24
  %t128 = load i64, ptr %l16, !tbaa !24
  %t130 = icmp sgt i64 %t128, 5
  br i1 %t130, label %bb45, label %bb46
bb45:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s2, ptr %l10, i8 32)
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb48
bb48:
  store ptr %l10, ptr %l85, !tbaa !29
  %t133 = load i64, ptr %l16, !tbaa !24
  %t136 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 %t133)
  store { i64, ptr } %t136, ptr %l88
  br label %bb49
bb49:
  %t137 = load ptr, ptr %l85, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l88, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %t137, { i64, ptr } %t138)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t139 = load i64, ptr %l15, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l15, !tbaa !24
  br label %bb41
bb52:
  store ptr %l1, ptr %l91, !tbaa !29
  %t144 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 0)
  store { i64, ptr } %t144, ptr %l93
  br label %bb53
bb53:
  %t145 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t145, ptr %l94, !tbaa !27
  %t146 = load i64, ptr %l9, !tbaa !24
  store i64 %t146, ptr %l95, !tbaa !24
  %t147 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l96, !tbaa !24
  %t149 = icmp sge i64 0, 0
  br i1 %t149, label %bb54, label %bb55
bb54:
  %t151 = load i64, ptr %l95, !tbaa !24
  %t152 = icmp sle i64 0, %t151
  br i1 %t152, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb56:
  %t154 = load i64, ptr %l95, !tbaa !24
  %t155 = load i64, ptr %l96, !tbaa !24
  %t156 = icmp sle i64 %t154, %t155
  br i1 %t156, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb58:
  %t158 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l95, !tbaa !24
  %t161 = getelementptr i8, ptr %t159, i64 0
  %t162 = sub i64 %t160, 0
  %t163 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t161, 1
  %t166 = call i64 @compiler_2fprofile_2ehex(ptr %s2, { i64, ptr } %t164)
  store i64 %t166, ptr %l101
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb60:
  %t168 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 0)
  store { i64, ptr } %t168, ptr %l103
  br label %bb61
bb61:
  %t169 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t169, ptr %l104, !tbaa !27
  %t170 = load i64, ptr %l9, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l106, !tbaa !24
  %t174 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 0)
  store { i64, ptr } %t174, ptr %l108
  br label %bb62
bb62:
  %t175 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t175, 0
  store i64 %t178, ptr %l111, !tbaa !24
  %t179 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 0
  store i64 %t180, ptr %l112, !tbaa !24
  %t181 = load i64, ptr %l106, !tbaa !24
  %t182 = icmp sge i64 %t181, 0
  br i1 %t182, label %bb63, label %bb64
bb63:
  %t184 = load i64, ptr %l106, !tbaa !24
  %t185 = load i64, ptr %l111, !tbaa !24
  %t186 = icmp sle i64 %t184, %t185
  br i1 %t186, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb65:
  %t188 = load i64, ptr %l111, !tbaa !24
  %t189 = load i64, ptr %l112, !tbaa !24
  %t190 = icmp sle i64 %t188, %t189
  br i1 %t190, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb67:
  %t192 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = load i64, ptr %l106, !tbaa !24
  %t195 = load i64, ptr %l111, !tbaa !24
  %t196 = getelementptr i8, ptr %t193, i64 %t194
  %t197 = sub i64 %t195, %t194
  %t198 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t196, 1
  %t201 = call i64 @compiler_2fprofile_2ehex(ptr %s2, { i64, ptr } %t199)
  store i64 %t201, ptr %l117
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb69:
  %t203 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 2)
  store { i64, ptr } %t203, ptr %l119
  br label %bb70
bb70:
  %t204 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t205 = call i64 @compiler_2fprofile_2ehex(ptr %s2, { i64, ptr } %t204)
  store i64 %t205, ptr %l120
  br label %bb71
bb71:
  %t206 = ptrtoint ptr %v1 to i64
  store i64 %t206, ptr %l121, !tbaa !24
  %t207 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3amapping_2e3
  br i1 %t207, label %bb72, label %bb73
bb72:
  %t209 = call ptr @__olang_region_make(ptr %v1)
  %t210 = ptrtoint ptr %t209 to i64
  store i64 %t210, ptr %l121, !tbaa !24
  br label %bb73
bb73:
  %t211 = load i64, ptr %l121
  %t212 = inttoptr i64 %t211 to ptr
  %t214 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %t212, ptr %l10)
  store { i64, ptr } %t214, ptr %l124
  br label %bb74
bb74:
  %t215 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t216 = load i64, ptr %l121
  %t217 = inttoptr i64 %t216 to ptr
  %t218 = extractvalue { i64, ptr } %t215, 0
  %t219 = extractvalue { i64, ptr } %t215, 1
  %t220 = mul i64 %t218, 1
  %t221 = call ptr @__olang_scope_alloc(ptr %t217, i64 %t220)
  call void @llvm.memcpy.p0.p0.i64(ptr %t221, ptr %t219, i64 %t220, i1 false)
  %t222 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  %t224 = load i64, ptr %l101, !tbaa !24
  %t225 = load i64, ptr %l117, !tbaa !24
  %t226 = load i64, ptr %l120, !tbaa !24
  %t228 = call %"compiler/profile:mapping" @compiler_2fprofile_3amapping_2ector(ptr %v1, ptr %v1, i64 %t224, i64 %t225, i64 %t226, { i64, ptr } %t223)
  store %"compiler/profile:mapping" %t228, ptr %l126
  br label %bb75
bb75:
  %t229 = load ptr, ptr %l91, !tbaa !29
  %t230 = load %"compiler/profile:mapping", ptr %l126
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2ePush_Hc0dd0b8028ee4ec7edce99e352ae7bbd(ptr %v1, ptr %v1, ptr %t229, %"compiler/profile:mapping" %t230)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb77:
  br label %bb3
bb78:
  %t231 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t231, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2emillis(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l8 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sitofp i64 %a0 to double
  %t6 = sitofp i64 %a1 to double
  %t9 = fmul double %t3, %t6
  %t11 = fdiv double %t9, 0x412e848000000000
  %t13 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %t11, i64 1)
  store { i64, ptr } %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t14, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2epct(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca double
  %l7 = alloca i64
  %l11 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = sitofp i64 %a0 to double
  %t5 = fmul double %t3, 0x4059000000000000
  store double %t5, ptr %l4, !tbaa !26
  %t6 = load i64, ptr %l1, !tbaa !24
  %t8 = icmp sgt i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l7, !tbaa !24
  br label %bb3
bb2:
  store i64 1, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = sitofp i64 %t12 to double
  %t14 = load double, ptr %l4, !tbaa !26
  %t16 = fdiv double %t14, %t13
  %t18 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %s0, double %t16, i64 1)
  store { i64, ptr } %t18, ptr %l11
  br label %bb4
bb4:
  %t19 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 1
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t25 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t20, i64 %t21)
  %t26 = getelementptr i8, ptr %t25, i64 %t21
  call void @olang_textcopy(ptr %t26, ptr %t22, i64 %t23)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t25, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t28, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2equalifier(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l17 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d119, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d120, i32 0, i32 1) })
  store i1 %t7, ptr %l6
  br label %bb4
bb4:
  %t8 = load i1, ptr %l6, !tbaa !21
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d121, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t10, ptr %l8, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l9, !tbaa !24
  %t13 = load i64, ptr %l9, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l10, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l9, !tbaa !24
  %t23 = mul i64 %t22, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t24, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t25 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) })
  %t29 = extractvalue { i32, i64 } %t28, 1
  %t30 = extractvalue { i32, i64 } %t28, 0
  store i32 %t30, ptr %l14
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb10, label %ok.32, !prof !99
ok.32:
  store i64 %t29, ptr %l13
  br label %bb9
bb9:
  %t33 = load i64, ptr %l13, !tbaa !24
  store i64 %t33, ptr %l11, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t34 = load i64, ptr %l11, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t35, ptr %l15, !tbaa !27
  %t38 = add i64 %t34, 1
  store i64 %t38, ptr %l17, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t39, 0
  store i64 %t42, ptr %l20, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 0
  store i64 %t44, ptr %l21, !tbaa !24
  %t45 = load i64, ptr %l17, !tbaa !24
  %t46 = icmp sge i64 %t45, 0
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load i64, ptr %l17, !tbaa !24
  %t49 = load i64, ptr %l20, !tbaa !24
  %t50 = icmp sle i64 %t48, %t49
  br i1 %t50, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8377dd777846f8d9_8488686b399fded)
  unreachable
bb15:
  %t52 = load i64, ptr %l20, !tbaa !24
  %t53 = load i64, ptr %l21, !tbaa !24
  %t54 = icmp sle i64 %t52, %t53
  br i1 %t54, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_8377dd777846f8d9_8488686b399fded)
  unreachable
bb17:
  %t56 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = load i64, ptr %l17, !tbaa !24
  %t59 = load i64, ptr %l20, !tbaa !24
  %t60 = getelementptr i8, ptr %t57, i64 %t58
  %t61 = sub i64 %t59, %t58
  %t62 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t60, 1
  %t65 = extractvalue { i64, ptr } %t63, 1
  %t66 = extractvalue { i64, ptr } %t63, 0
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t69 = add i64 %t66, %t68
  %t70 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t69)
  call void @olang_textcopy(ptr %t70, ptr %t65, i64 %t66)
  %t71 = getelementptr i8, ptr %t70, i64 %t66
  call void @olang_textcopy(ptr %t71, ptr %t67, i64 %t68)
  %t72 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t70, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t73, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8377dd777846f8d9_8488686b399fded)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fprofile_2erunProfiled(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca [1 x i32]
  %l13 = alloca i32
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l36 = alloca i32
  %l37 = alloca i32
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i32
  %l47 = alloca i1
  %l50 = alloca { i64, ptr }
  %l52 = alloca i32
  %l56 = alloca i64
  %l57 = alloca i64
  %l62 = alloca i32
  %l68 = alloca i1
  %l71 = alloca i64
  %l73 = alloca i64
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l4, { i64, ptr } %a1)
  br label %bb2
bb2:
  store { i64, ptr } %a2, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l7, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t20, ptr %l24, !tbaa !27
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %t24, i64 %t21
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v2, ptr %l4, { i64, ptr } %t26)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t31 = load i64, ptr %l6, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l6, !tbaa !24
  br label %bb3
bb9:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d124, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t38 = extractvalue { i64, ptr } %a3, 1
  %t39 = extractvalue { i64, ptr } %a3, 0
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t38, i64 %t39)
  %t44 = getelementptr i8, ptr %t43, i64 %t39
  call void @olang_textcopy(ptr %t44, ptr %t40, i64 %t41)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t43, 1
  %t49 = extractvalue { i64, ptr } %t35, 1
  %t50 = extractvalue { i64, ptr } %t35, 0
  %t52 = extractvalue { i64, ptr } %t46, 1
  %t53 = extractvalue { i64, ptr } %t46, 0
  %t54 = call i32 @setenv(ptr %t49, ptr %t52, i32 1)
  store i32 %t54, ptr %l36
  br label %bb10
bb10:
  %t55 = call i32 @fork()
  store i32 %t55, ptr %l37
  br label %bb11
bb11:
  %t56 = load i32, ptr %l37, !tbaa !23
  store i32 %t56, ptr %l9, !tbaa !23
  %t57 = load i32, ptr %l9, !tbaa !23
  %t59 = icmp eq i32 %t57, 0
  br i1 %t59, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s5
  %t63 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %v0, ptr %s5, { i64, ptr } %a0)
  store { i64, ptr } %t63, ptr %l41
  br label %bb14
bb13:
  br label %bb23
bb14:
  %t64 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  %t66 = extractvalue { i64, ptr } %t64, 1
  %t67 = mul i64 %t65, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t67)
  call void @llvm.memcpy.p0.p0.i64(ptr %t68, ptr %t66, i64 %t67, i1 false)
  %t69 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l42, !tbaa !27
  %t72 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t72, ptr %l44
  br label %bb15
bb15:
  %t73 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t75 = call i32 @std_2fos_2eExecInPlace(ptr %s5, ptr %s0, { i64, ptr } %t73, { i64, ptr } %t74)
  store i32 %t75, ptr %l45
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb17, label %ok.77, !prof !99
ok.77:
  br label %bb16
bb16:
  br label %bb21
bb17:
  %t78 = load i32, ptr %l45, !tbaa !23
  %t79 = ashr i32 %t78, 16
  %t81 = icmp eq i32 %t79, 1
  store i1 %t81, ptr %l47, !tbaa !21
  %t82 = load i32, ptr %l45, !tbaa !23
  %t83 = ashr i32 %t82, 16
  %t85 = icmp eq i32 %t83, 1
  br i1 %t85, label %bb18, label %bb19
bb18:
  call void @__olang_errpay_pop()
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  call void @_exit(i32 127)
  unreachable
bb22:
  call void @__olang_check_failed(ptr @olang_loc_ec22c3592c386ac4_6a748f217c4c44c0)
  unreachable
bb23:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t87, 1
  %t90 = extractvalue { i64, ptr } %t87, 0
  %t91 = call i32 @unsetenv(ptr %t89)
  store i32 %t91, ptr %l52
  br label %bb24
bb24:
  %t92 = load i32, ptr %l9, !tbaa !23
  %t94 = icmp slt i32 %t92, 0
  br i1 %t94, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i32 -1, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t97 = call i64 @signal(i32 2, i64 1)
  store i64 %t97, ptr %l56
  br label %bb28
bb28:
  %t98 = load i64, ptr %l56, !tbaa !24
  store i64 %t98, ptr %l10, !tbaa !24
  %t99 = call i64 @signal(i32 3, i64 1)
  store i64 %t99, ptr %l57
  br label %bb29
bb29:
  %t100 = load i64, ptr %l57, !tbaa !24
  store i64 %t100, ptr %l11, !tbaa !24
  %t101 = insertvalue [1 x i32] undef, i32 0, 0
  store [1 x i32] %t101, ptr %l12
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s8
  %t103 = load i32, ptr %l9, !tbaa !23
  %t105 = insertvalue { i64, ptr } undef, i64 1, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %l12, 1
  %t109 = extractvalue { i64, ptr } %t106, 1
  %t110 = extractvalue { i64, ptr } %t106, 0
  %t111 = call i32 @waitpid(i32 %t103, ptr %t109, i32 0)
  store i32 %t111, ptr %l62
  br label %bb31
bb31:
  %t112 = load i32, ptr %l62, !tbaa !23
  %t113 = icmp slt i32 %t112, 0
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s8)
  br label %bb40
bb33:
  br label %bb34
bb34:
  %t117 = load i32, ptr %l9, !tbaa !23
  %t118 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t121 = sext i32 %t117 to i64
  %t122 = call i64 @__olang_fmt_i64(ptr null, i64 %t121)
  %t123 = add i64 %t119, %t122
  %t124 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t123)
  call void @olang_textcopy(ptr %t124, ptr %t118, i64 %t119)
  %t125 = getelementptr i8, ptr %t124, i64 %t119
  %t126 = call i64 @__olang_fmt_i64(ptr %t125, i64 %t121)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t124, 1
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t131 = extractvalue { i64, ptr } %t128, 1
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t133, ptr %t131, i64 %t132, i1 false)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  %t137 = call i1 @std_2fos_2eExists(ptr %s8, { i64, ptr } %t135)
  store i1 %t137, ptr %l68
  br label %bb35
bb35:
  %t138 = load i1, ptr %l68, !tbaa !21
  %t139 = xor i1 %t138, true
  br i1 %t139, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s8)
  br label %bb40
bb37:
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s8)
  br label %bb39
bb39:
  br label %bb30
bb40:
  %t141 = load i64, ptr %l10, !tbaa !24
  %t143 = call i64 @signal(i32 2, i64 %t141)
  store i64 %t143, ptr %l71
  br label %bb41
bb41:
  %t144 = load i64, ptr %l11, !tbaa !24
  %t146 = call i64 @signal(i32 3, i64 %t144)
  store i64 %t146, ptr %l73
  br label %bb42
bb42:
  %t147 = getelementptr [1 x i32], ptr %l12, i64 0, i64 0
  %t148 = load i32, ptr %t147, !tbaa !33
  store i32 %t148, ptr %l13, !tbaa !23
  %t150 = load i32, ptr %l13, !tbaa !23
  %t152 = and i32 %t150, 127
  %t154 = icmp ne i32 %t152, 0
  br i1 %t154, label %bb43, label %bb44
bb43:
  %t156 = load i32, ptr %l13, !tbaa !23
  %t158 = and i32 %t156, 127
  %t160 = add i32 128, %t158
  call void @__olang_scope_close(ptr %s0)
  store i32 %t160, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t162 = load i32, ptr %l13, !tbaa !23
  %t164 = ashr i32 %t162, 8
  %t166 = and i32 %t164, 255
  call void @__olang_scope_close(ptr %s0)
  store i32 %t166, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2esampleFile(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca { i64, ptr }
  %l62 = alloca i64
  %l65 = alloca i64
  %l86 = alloca i64
  %l101 = alloca { i64, ptr }
  %l107 = alloca i64
  %l110 = alloca i64
  %l131 = alloca i64
  %l146 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l157 = alloca i64
  %l158 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l31
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d128, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l38, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %l2, i8 %t21)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l4, !tbaa !24
  br label %bb2
bb8:
  store %olang.scope zeroinitializer, ptr %s4
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = insertvalue [4 x i64] undef, i64 1000000, 0
  %t36 = insertvalue [4 x i64] %t34, i64 %t33, 1
  %t37 = insertvalue [4 x i64] %t36, i64 2, 2
  %t38 = insertvalue [4 x i64] %t37, i64 1, 3
  %t40 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store [4 x i64] %t38, ptr %t40
  store ptr %t40, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t42 = load ptr, ptr %l7
  store i64 4, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l9, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb10, label %bb11
bb10:
  br label %bb27
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l7
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = getelementptr [4 x i64], ptr %t53, i64 0, i64 %t54
  %t58 = load i64, ptr %t57, !tbaa !34
  store i64 %t58, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  store i64 8, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t60 = load i64, ptr %l12, !tbaa !24
  %t61 = load i64, ptr %l11, !tbaa !24
  %t64 = icmp sgt i64 %t60, %t61
  br i1 %t64, label %bb13, label %bb14
bb13:
  %t66 = load i64, ptr %l13, !tbaa !24
  %t68 = icmp sgt i64 %t66, 0
  br i1 %t68, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb18
bb15:
  %t70 = load i64, ptr %l12, !tbaa !24
  %t71 = load i64, ptr %l11, !tbaa !24
  %t74 = sub i64 %t70, %t71
  %t75 = load i64, ptr %l13, !tbaa !24
  %t78 = add i64 %t74, %t75
  %t80 = sub i64 %t78, 1
  %t81 = load i64, ptr %l13, !tbaa !24
  %t84 = sdiv i64 %t80, %t81
  store i64 %t84, ptr %l65, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb17
bb17:
  %t86 = load i64, ptr %l65, !tbaa !24
  store i64 %t86, ptr %l62, !tbaa !24
  br label %bb18
bb18:
  %t87 = load i64, ptr %l62, !tbaa !24
  store i64 %t87, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb19
bb19:
  %t88 = load i64, ptr %l15, !tbaa !24
  %t89 = load i64, ptr %l14, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb20, label %bb21
bb20:
  br label %bb25
bb21:
  br label %bb22
bb22:
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load i64, ptr %l15, !tbaa !24
  %t98 = load i64, ptr %l13, !tbaa !24
  %t101 = mul i64 %t97, %t98
  %t104 = add i64 %t96, %t101
  %t106 = load i64, ptr %l10, !tbaa !24
  %t109 = mul i64 %t104, 8
  store i64 %t109, ptr %l86, !tbaa !24
  %t111 = load i64, ptr %l86, !tbaa !24
  %t112 = load i64, ptr %l86, !tbaa !24
  %t113 = ashr i64 %t106, %t112
  %t115 = and i64 %t113, 255
  %t117 = trunc i64 %t115 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %l2, i8 %t117)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t120 = load i64, ptr %l15, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l15, !tbaa !24
  br label %bb19
bb25:
  br label %bb26
bb26:
  %t124 = load i64, ptr %l8, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l8, !tbaa !24
  br label %bb9
bb27:
  call void @__olang_scope_close(ptr %s4)
  %t128 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t128, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  store i64 %t132, ptr %l19, !tbaa !24
  br label %bb28
bb28:
  %t134 = load i64, ptr %l18, !tbaa !24
  %t135 = load i64, ptr %l19, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb29, label %bb30
bb29:
  br label %bb46
bb30:
  br label %bb31
bb31:
  %t142 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t142, ptr %l101, !tbaa !27
  %t143 = load i64, ptr %l18, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr i64, ptr %t146, i64 %t143
  %t148 = load i64, ptr %t147, !tbaa !34
  store i64 %t148, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  store i64 8, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t150 = load i64, ptr %l22, !tbaa !24
  %t151 = load i64, ptr %l21, !tbaa !24
  %t154 = icmp sgt i64 %t150, %t151
  br i1 %t154, label %bb32, label %bb33
bb32:
  %t156 = load i64, ptr %l23, !tbaa !24
  %t158 = icmp sgt i64 %t156, 0
  br i1 %t158, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb37
bb34:
  %t160 = load i64, ptr %l22, !tbaa !24
  %t161 = load i64, ptr %l21, !tbaa !24
  %t164 = sub i64 %t160, %t161
  %t165 = load i64, ptr %l23, !tbaa !24
  %t168 = add i64 %t164, %t165
  %t170 = sub i64 %t168, 1
  %t171 = load i64, ptr %l23, !tbaa !24
  %t174 = sdiv i64 %t170, %t171
  store i64 %t174, ptr %l110, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb36
bb36:
  %t176 = load i64, ptr %l110, !tbaa !24
  store i64 %t176, ptr %l107, !tbaa !24
  br label %bb37
bb37:
  %t177 = load i64, ptr %l107, !tbaa !24
  store i64 %t177, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb38
bb38:
  %t178 = load i64, ptr %l25, !tbaa !24
  %t179 = load i64, ptr %l24, !tbaa !24
  %t182 = icmp slt i64 %t178, %t179
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb39, label %bb40
bb39:
  br label %bb44
bb40:
  br label %bb41
bb41:
  %t186 = load i64, ptr %l21, !tbaa !24
  %t187 = load i64, ptr %l25, !tbaa !24
  %t188 = load i64, ptr %l23, !tbaa !24
  %t191 = mul i64 %t187, %t188
  %t194 = add i64 %t186, %t191
  %t196 = load i64, ptr %l20, !tbaa !24
  %t199 = mul i64 %t194, 8
  store i64 %t199, ptr %l131, !tbaa !24
  %t201 = load i64, ptr %l131, !tbaa !24
  %t202 = load i64, ptr %l131, !tbaa !24
  %t203 = ashr i64 %t196, %t202
  %t205 = and i64 %t203, 255
  %t207 = trunc i64 %t205 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %l2, i8 %t207)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t210 = load i64, ptr %l25, !tbaa !24
  %t212 = add i64 %t210, 1
  store i64 %t212, ptr %l25, !tbaa !24
  br label %bb38
bb44:
  br label %bb45
bb45:
  %t214 = load i64, ptr %l18, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l18, !tbaa !24
  br label %bb28
bb46:
  store { i64, ptr } %a1, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t220 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t220, 0
  store i64 %t222, ptr %l29, !tbaa !24
  br label %bb47
bb47:
  %t224 = load i64, ptr %l28, !tbaa !24
  %t225 = load i64, ptr %l29, !tbaa !24
  %t228 = icmp slt i64 %t224, %t225
  %t230 = xor i1 %t228, true
  br i1 %t230, label %bb48, label %bb49
bb48:
  br label %bb53
bb49:
  br label %bb50
bb50:
  %t232 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t232, ptr %l146, !tbaa !27
  %t233 = load i64, ptr %l28, !tbaa !24
  %t235 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr i8, ptr %t236, i64 %t233
  %t238 = load i8, ptr %t237, !tbaa !32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %l2, i8 %t238)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t244 = load i64, ptr %l28, !tbaa !24
  %t246 = add i64 %t244, 1
  store i64 %t246, ptr %l28, !tbaa !24
  br label %bb47
bb53:
  %t249 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eToArray_3cU8_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t249, ptr %l155
  br label %bb54
bb54:
  %t250 = load { i64, ptr }, ptr %l155, !tbaa !27
  store { i64, ptr } %t250, ptr %l156, !tbaa !27
  %t251 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 0
  store i64 %t252, ptr %l157, !tbaa !24
  %t253 = load i64, ptr %l157, !tbaa !24
  %t254 = mul i64 %t253, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t254)
  %t256 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  store { i64, ptr } %t257, ptr %l158, !tbaa !27
  %t258 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = load i64, ptr %l157, !tbaa !24
  %t263 = mul i64 %t262, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t259, ptr %t261, i64 %t263, i1 false)
  %t264 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t264, ptr %l156, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t265 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t265, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fprofile_2esay(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2estd_2fio_2eStdout, !tbaa !23
  call void @compiler_2fspin_2eSay(ptr %v0, i32 %t1, { i64, ptr } %a0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2esegments(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l20 = alloca i1
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l67 = alloca i64
  %l70 = alloca i64
  %l98 = alloca i1
  %l107 = alloca i64
  %l110 = alloca ptr
  %l115 = alloca i64
  %l116 = alloca ptr
  %l121 = alloca i64
  %l122 = alloca ptr
  %l127 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t5 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %s0, { i64, ptr } %a0)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l18
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l17
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t10, ptr %l15, !tbaa !27
  br label %bb7
bb3:
  %t11 = load i32, ptr %l18, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l20, !tbaa !21
  %t15 = load i32, ptr %l18, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  br i1 %t18, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
bb7:
  %t22 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t22, ptr %l2, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t27 = icmp slt i64 %t25, 64
  br i1 %t27, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t29, ptr %l28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i8, ptr %t31, i64 0
  %t33 = load i8, ptr %t32, !tbaa !32
  %t36 = icmp ne i8 %t33, 127
  store i1 %t36, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l27, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb13
bb12:
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t39, ptr %l33, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr i8, ptr %t41, i64 1
  %t43 = load i8, ptr %t42, !tbaa !32
  %t47 = icmp ne i8 %t43, 69
  store i1 %t47, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t49 = load i1, ptr %l32, !tbaa !21
  br i1 %t49, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb16
bb15:
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t50, ptr %l39, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i8, ptr %t52, i64 4
  %t54 = load i8, ptr %t53, !tbaa !32
  %t57 = icmp ne i8 %t54, 2
  store i1 %t57, ptr %l38, !tbaa !21
  br label %bb16
bb16:
  %t59 = load i1, ptr %l38, !tbaa !21
  br i1 %t59, label %bb17, label %bb18
bb17:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t62 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t65 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t62, i64 4)
  store i64 %t65, ptr %l46
  br label %bb20
bb20:
  %t66 = load i64, ptr %l46, !tbaa !24
  store i64 %t66, ptr %l3, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t67, ptr %l47, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i8, ptr %t69, i64 54
  %t71 = load i8, ptr %t70, !tbaa !32
  %t73 = zext i8 %t71 to i64
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t74, ptr %l50, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i8, ptr %t76, i64 55
  %t78 = load i8, ptr %t77, !tbaa !32
  %t80 = zext i8 %t78 to i64
  %t82 = shl i64 %t80, 8
  %t85 = or i64 %t73, %t82
  store i64 %t85, ptr %l4, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t87, ptr %l55, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i8, ptr %t89, i64 56
  %t91 = load i8, ptr %t90, !tbaa !32
  %t93 = zext i8 %t91 to i64
  %t94 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t94, ptr %l58, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i8, ptr %t96, i64 57
  %t98 = load i8, ptr %t97, !tbaa !32
  %t100 = zext i8 %t98 to i64
  %t102 = shl i64 %t100, 8
  %t105 = or i64 %t93, %t102
  store i64 0, ptr %l6, !tbaa !24
  store i64 %t105, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t109 = load i64, ptr %l7, !tbaa !24
  %t110 = load i64, ptr %l6, !tbaa !24
  %t113 = icmp sgt i64 %t109, %t110
  br i1 %t113, label %bb21, label %bb22
bb21:
  %t115 = load i64, ptr %l8, !tbaa !24
  %t117 = icmp sgt i64 %t115, 0
  br i1 %t117, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb26
bb23:
  %t119 = load i64, ptr %l7, !tbaa !24
  %t120 = load i64, ptr %l6, !tbaa !24
  %t123 = sub i64 %t119, %t120
  %t124 = load i64, ptr %l8, !tbaa !24
  %t127 = add i64 %t123, %t124
  %t129 = sub i64 %t127, 1
  %t130 = load i64, ptr %l8, !tbaa !24
  %t133 = sdiv i64 %t129, %t130
  store i64 %t133, ptr %l70, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb25
bb25:
  %t135 = load i64, ptr %l70, !tbaa !24
  store i64 %t135, ptr %l67, !tbaa !24
  br label %bb26
bb26:
  %t136 = load i64, ptr %l67, !tbaa !24
  store i64 %t136, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  %t137 = load i64, ptr %l10, !tbaa !24
  %t138 = load i64, ptr %l9, !tbaa !24
  %t141 = icmp slt i64 %t137, %t138
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb28, label %bb29
bb28:
  br label %bb48
bb29:
  br label %bb30
bb30:
  %t145 = load i64, ptr %l6, !tbaa !24
  %t146 = load i64, ptr %l10, !tbaa !24
  %t147 = load i64, ptr %l8, !tbaa !24
  %t150 = mul i64 %t146, %t147
  %t153 = add i64 %t145, %t150
  %t155 = load i64, ptr %l3, !tbaa !24
  %t157 = load i64, ptr %l4, !tbaa !24
  %t160 = mul i64 %t153, %t157
  %t163 = add i64 %t155, %t160
  store i64 %t163, ptr %l12, !tbaa !24
  %t165 = load i64, ptr %l12, !tbaa !24
  %t167 = add i64 %t165, 56
  %t168 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t173 = icmp sgt i64 %t167, %t170
  br i1 %t173, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l98, !tbaa !21
  br label %bb33
bb32:
  %t175 = load i64, ptr %l12, !tbaa !24
  %t177 = srem i64 %t175, 8
  %t179 = icmp ne i64 %t177, 0
  store i1 %t179, ptr %l98, !tbaa !21
  br label %bb33
bb33:
  %t181 = load i1, ptr %l98, !tbaa !21
  br i1 %t181, label %bb34, label %bb35
bb34:
  br label %bb48
bb35:
  br label %bb36
bb36:
  %t182 = load i64, ptr %l12, !tbaa !24
  %t184 = sdiv i64 %t182, 8
  store i64 %t184, ptr %l13, !tbaa !24
  %t186 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t188 = load i64, ptr %l13, !tbaa !24
  %t191 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t186, i64 %t188)
  store i64 %t191, ptr %l107
  br label %bb37
bb37:
  %t192 = load i64, ptr %l107, !tbaa !24
  %t193 = and i64 %t192, 4294967295
  %t195 = icmp ne i64 %t193, 1
  br i1 %t195, label %bb38, label %bb39
bb38:
  br label %bb47
bb39:
  br label %bb40
bb40:
  store ptr %l1, ptr %l110, !tbaa !29
  %t197 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t199 = load i64, ptr %l13, !tbaa !24
  %t201 = add i64 %t199, 1
  %t204 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t197, i64 %t201)
  store i64 %t204, ptr %l115
  br label %bb41
bb41:
  %t205 = load ptr, ptr %l110, !tbaa !29
  %t206 = load i64, ptr %l115, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t205, i64 %t206)
  br label %bb42
bb42:
  store ptr %l1, ptr %l116, !tbaa !29
  %t207 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t209 = load i64, ptr %l13, !tbaa !24
  %t211 = add i64 %t209, 4
  %t214 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t207, i64 %t211)
  store i64 %t214, ptr %l121
  br label %bb43
bb43:
  %t215 = load ptr, ptr %l116, !tbaa !29
  %t216 = load i64, ptr %l121, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t215, i64 %t216)
  br label %bb44
bb44:
  store ptr %l1, ptr %l122, !tbaa !29
  %t217 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t219 = load i64, ptr %l13, !tbaa !24
  %t221 = add i64 %t219, 2
  %t224 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t217, i64 %t221)
  store i64 %t224, ptr %l127
  br label %bb45
bb45:
  %t225 = load ptr, ptr %l122, !tbaa !29
  %t226 = load i64, ptr %l127, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t225, i64 %t226)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t227 = load i64, ptr %l10, !tbaa !24
  %t229 = add i64 %t227, 1
  store i64 %t229, ptr %l10, !tbaa !24
  br label %bb27
bb48:
  %t231 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t231, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2eshortPath(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l8 = alloca i1
  %l10 = alloca i1
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l19 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %s0)
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l4
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t12, ptr %l1, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) })
  store i1 %t15, ptr %l8
  br label %bb7
bb7:
  %t16 = load i1, ptr %l8, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = extractvalue { i64, ptr } %t20, 0
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t22, i64 %t23)
  %t28 = getelementptr i8, ptr %t27, i64 %t23
  call void @olang_textcopy(ptr %t28, ptr %t24, i64 %t25)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = extractvalue { i64, ptr } %t30, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t19, { i64, ptr } %t37)
  store i1 %t40, ptr %l15
  br label %bb10
bb9:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb11
bb10:
  %t41 = load i1, ptr %l15, !tbaa !21
  store i1 %t41, ptr %l10, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l10, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t43, ptr %l16, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l19, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t49, 0
  store i64 %t52, ptr %l22, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l23, !tbaa !24
  %t55 = load i64, ptr %l19, !tbaa !24
  %t56 = icmp sge i64 %t55, 0
  br i1 %t56, label %bb14, label %bb15
bb13:
  br label %bb20
bb14:
  %t58 = load i64, ptr %l19, !tbaa !24
  %t59 = load i64, ptr %l22, !tbaa !24
  %t60 = icmp sle i64 %t58, %t59
  br i1 %t60, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_9b07e838cb7ed4ee_978ead1b2c1f88ba)
  unreachable
bb16:
  %t62 = load i64, ptr %l22, !tbaa !24
  %t63 = load i64, ptr %l23, !tbaa !24
  %t64 = icmp sle i64 %t62, %t63
  br i1 %t64, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_9b07e838cb7ed4ee_978ead1b2c1f88ba)
  unreachable
bb18:
  %t66 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = load i64, ptr %l19, !tbaa !24
  %t69 = load i64, ptr %l22, !tbaa !24
  %t70 = getelementptr i8, ptr %t67, i64 %t68
  %t71 = sub i64 %t69, %t68
  %t72 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t70, 1
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = extractvalue { i64, ptr } %t73, 0
  %t77 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t76)
  call void @olang_textcopy(ptr %t77, ptr %t75, i64 %t76)
  %t78 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t79, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_9b07e838cb7ed4ee_978ead1b2c1f88ba)
  unreachable
bb20:
  %t81 = load { i64, ptr }, ptr %l0, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t81, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2esymbolAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i64
  %l19 = alloca %"compiler/profile:elfFn"
  %l30 = alloca i1
  %l36 = alloca i64
  %l40 = alloca %"compiler/profile:elfFn"
  %l41 = alloca i64
  %l45 = alloca %"compiler/profile:elfFn"
  %l48 = alloca i64
  %l52 = alloca %"compiler/profile:elfFn"
  %l59 = alloca %"compiler/profile:elfFn"
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eLen_3ccompiler_2fprofile_3aelfFn_3e(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i64, ptr %l7, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t5, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = add i64 %t13, %t14
  %t19 = sdiv i64 %t17, 2
  store i64 %t19, ptr %l4, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = call %"compiler/profile:elfFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eAt_3ccompiler_2fprofile_3aelfFn_3e(ptr %v0, ptr %s1, ptr %t21, i64 %t23)
  store %"compiler/profile:elfFn" %t26, ptr %l19
  br label %bb6
bb6:
  %t27 = getelementptr %"compiler/profile:elfFn", ptr %l19, i32 0, i32 0
  %t28 = load i64, ptr %t27, !tbaa !24
  %t29 = load i64, ptr %l1, !tbaa !24
  %t32 = icmp sle i64 %t28, %t29
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  %t38 = load i64, ptr %l4, !tbaa !24
  store i64 %t38, ptr %l3, !tbaa !24
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t40 = load i64, ptr %l2, !tbaa !24
  %t42 = sub i64 %t40, 1
  store i64 %t42, ptr %l5, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s5
  %t44 = load i64, ptr %l5, !tbaa !24
  %t46 = icmp sge i64 %t44, 0
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = sub i64 %t49, 4
  %t54 = icmp sge i64 %t48, %t51
  store i1 %t54, ptr %l30, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb15
bb15:
  %t56 = load i1, ptr %l30, !tbaa !21
  %t57 = xor i1 %t56, true
  br i1 %t57, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb30
bb17:
  br label %bb18
bb18:
  %t59 = load i64, ptr %l1, !tbaa !24
  store i64 %t59, ptr %l36, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = call %"compiler/profile:elfFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eAt_3ccompiler_2fprofile_3aelfFn_3e(ptr %v0, ptr %s5, ptr %t60, i64 %t62)
  store %"compiler/profile:elfFn" %t65, ptr %l40
  br label %bb19
bb19:
  %t66 = getelementptr %"compiler/profile:elfFn", ptr %l40, i32 0, i32 0
  %t67 = load i64, ptr %t66, !tbaa !24
  store i64 %t67, ptr %l41, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l5, !tbaa !24
  %t73 = call %"compiler/profile:elfFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eAt_3ccompiler_2fprofile_3aelfFn_3e(ptr %v0, ptr %s5, ptr %t68, i64 %t70)
  store %"compiler/profile:elfFn" %t73, ptr %l45
  br label %bb20
bb20:
  %t74 = getelementptr %"compiler/profile:elfFn", ptr %l45, i32 0, i32 1
  %t75 = load i64, ptr %t74, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb21, label %bb22
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l5, !tbaa !24
  %t84 = call %"compiler/profile:elfFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eAt_3ccompiler_2fprofile_3aelfFn_3e(ptr %v0, ptr %s5, ptr %t79, i64 %t81)
  store %"compiler/profile:elfFn" %t84, ptr %l52
  br label %bb23
bb22:
  store i64 1, ptr %l48, !tbaa !24
  br label %bb24
bb23:
  %t85 = getelementptr %"compiler/profile:elfFn", ptr %l52, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  store i64 %t86, ptr %l48, !tbaa !24
  br label %bb24
bb24:
  %t88 = load i64, ptr %l41, !tbaa !24
  %t89 = load i64, ptr %l48, !tbaa !24
  %t90 = add i64 %t88, %t89
  %t91 = load i64, ptr %l36, !tbaa !24
  %t93 = icmp slt i64 %t91, %t90
  br i1 %t93, label %bb25, label %bb26
bb25:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i64, ptr %l5, !tbaa !24
  %t100 = call %"compiler/profile:elfFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eAt_3ccompiler_2fprofile_3aelfFn_3e(ptr %v0, ptr %v0, ptr %t95, i64 %t97)
  store %"compiler/profile:elfFn" %t100, ptr %l59
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t101 = getelementptr %"compiler/profile:elfFn", ptr %l59, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 1
  %t105 = extractvalue { i64, ptr } %t102, 0
  %t106 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t105)
  call void @olang_textcopy(ptr %t106, ptr %t104, i64 %t105)
  %t107 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  call void @__olang_scope_close(ptr %s5)
  store { i64, ptr } %t108, ptr %rv
  br label %ret
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb29
bb29:
  %t110 = load i64, ptr %l5, !tbaa !24
  %t112 = sub i64 %t110, 1
  store i64 %t112, ptr %l5, !tbaa !24
  br label %bb12
bb30:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t114, ptr %l65, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  store i64 %t116, ptr %l66, !tbaa !24
  %t117 = load i64, ptr %l66, !tbaa !24
  %t118 = mul i64 %t117, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t118)
  %t120 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  store { i64, ptr } %t121, ptr %l67, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = load i64, ptr %l66, !tbaa !24
  %t127 = mul i64 %t126, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t123, ptr %t125, i64 %t127, i1 false)
  %t128 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t128, ptr %l65, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t129, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fprofile_2esymbolIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l7 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H509117e81ae737fb138b1f364b80e611(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l9, !tbaa !29
  %t10 = ptrtoint ptr %v0 to i64
  store i64 %t10, ptr %l10, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_H31300daf7c6be9b9667c9cd96eea1c7e
  br i1 %t11, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  %t13 = call ptr @__olang_region_make(ptr %v0)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l10, !tbaa !24
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 1
  %t18 = extractvalue { i64, ptr } %t15, 0
  %t19 = load i64, ptr %l10
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = call ptr @__olang_scope_alloc(ptr %t20, i64 %t18)
  call void @olang_textcopy(ptr %t21, ptr %t17, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t25 = load i64, ptr %l10
  %t26 = inttoptr i64 %t25 to ptr
  %t27 = extractvalue { i64, ptr } %t23, 0
  %t28 = extractvalue { i64, ptr } %t23, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %t26, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l14, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2efunctionSymbols(ptr %v1, ptr %v0, { i64, ptr } %t33)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l16
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l9, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hb4e1316c13adc554c531dbb9cf254a96(ptr %v0, ptr %v0, ptr %v0, ptr %t36, { i64, ptr } %t37, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t43 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hfa095cf457cc3af0cc9715613212afd3(ptr %v0, ptr %v1, ptr %v0, ptr %t39, { i64, ptr } %t40)
  %t44 = extractvalue { i32, ptr } %t43, 1
  %t45 = extractvalue { i32, ptr } %t43, 0
  store i32 %t45, ptr %l21
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb10, label %ok.47, !prof !99
ok.47:
  store ptr %t44, ptr %l20
  br label %bb9
bb9:
  %t48 = load ptr, ptr %l20, !tbaa !29
  store ptr %t48, ptr %l17, !tbaa !29
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l22
  br label %bb12
bb12:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  %t51 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  store ptr %t51, ptr %l17, !tbaa !29
  br label %bb13
bb13:
  %t53 = load ptr, ptr %l17, !tbaa !29
  %t58 = call { i64, ptr } @compiler_2fprofile_2esymbolAt(ptr %v0, ptr %v2, ptr %t53, i64 %a2)
  store { i64, ptr } %t58, ptr %l26
  br label %bb14
bb14:
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t59, ptr %lp4
  %t60 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t61 = load ptr, ptr %lp4
  store { i64, ptr } %t60, ptr %t61, !tbaa !27
  %t62 = load ptr, ptr %lp4
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  %t65 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t63, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d133, i32 0, i32 1) })
  store i1 %t65, ptr %l28
  br label %bb15
bb15:
  %t66 = load i1, ptr %l28, !tbaa !21
  br i1 %t66, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d134, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t68 = load ptr, ptr %lp4
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l31, !tbaa !27
  %t71 = load ptr, ptr %lp4
  store { i64, ptr } %t67, ptr %t71, !tbaa !27
  %t72 = load i1, ptr @olang_2esole_2ecompiler__2fprofile__2esymbolIn_2elocal_2e4
  br i1 %t72, label %bb18, label %bb19
bb17:
  br label %bb20
bb18:
  %t74 = load { i64, ptr }, ptr %l31
  %t75 = extractvalue { i64, ptr } %t74, 1
  call void @__olang_region_release(ptr %t75)
  store { i64, ptr } zeroinitializer, ptr %l31
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t76 = load ptr, ptr %lp4
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t77, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fprofile_2etwoStacks(ptr %out, ptr %v0) #0 {
entry:
  %lp0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %lp5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"compiler/profile:Profile"
  %l12 = alloca ptr
  %l13 = alloca %"compiler/profile:Sample"
  %l14 = alloca ptr
  %l15 = alloca %"compiler/profile:Sample"
  %l31 = alloca %"compiler/profile:Places"
  %l52 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca i64
  %l57 = alloca %"compiler/profile:Frame"
  %l58 = alloca ptr
  %l60 = alloca i64
  %l62 = alloca i64
  %l63 = alloca %"compiler/profile:Frame"
  %l64 = alloca ptr
  %l66 = alloca i64
  %l68 = alloca i64
  %l69 = alloca %"compiler/profile:Frame"
  %l71 = alloca %"compiler/profile:Places"
  %l72 = alloca { %"compiler/profile:Profile", %"compiler/profile:Places" }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t51 = alloca %"compiler/profile:Places", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/profile:Profile" @compiler_2fprofile_3aProfile_2ector(ptr %v0)
  store %"compiler/profile:Profile" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 104, i64 8)
  store ptr %t2, ptr %lp0
  %t3 = load %"compiler/profile:Profile", ptr %l11
  %t4 = load ptr, ptr %lp0
  store %"compiler/profile:Profile" %t3, ptr %t4
  %t5 = load ptr, ptr %lp0
  %t6 = getelementptr %"compiler/profile:Profile", ptr %t5, i32 0, i32 2
  store i64 1, ptr %t6, !tbaa !24
  %t7 = load ptr, ptr %lp0
  %t8 = getelementptr %"compiler/profile:Profile", ptr %t7, i32 0, i32 3
  store ptr %t8, ptr %l12, !tbaa !29
  %t9 = call %"compiler/profile:Sample" @compiler_2fprofile_3aSample_2ector(ptr %s0, i64 3, i64 0, i64 2)
  store %"compiler/profile:Sample" %t9, ptr %l13
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l12, !tbaa !29
  %t11 = load %"compiler/profile:Sample", ptr %l13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2ePush_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %t10, %"compiler/profile:Sample" %t11)
  br label %bb3
bb3:
  %t12 = load ptr, ptr %lp0
  %t13 = getelementptr %"compiler/profile:Profile", ptr %t12, i32 0, i32 3
  store ptr %t13, ptr %l14, !tbaa !29
  %t14 = call %"compiler/profile:Sample" @compiler_2fprofile_3aSample_2ector(ptr %s0, i64 1, i64 2, i64 2)
  store %"compiler/profile:Sample" %t14, ptr %l15
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l14, !tbaa !29
  %t16 = load %"compiler/profile:Sample", ptr %l15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2ePush_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %t15, %"compiler/profile:Sample" %t16)
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = insertvalue [4 x i64] undef, i64 100, 0
  %t18 = insertvalue [4 x i64] %t17, i64 201, 1
  %t19 = insertvalue [4 x i64] %t18, i64 300, 2
  %t20 = insertvalue [4 x i64] %t19, i64 201, 3
  %t22 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store [4 x i64] %t20, ptr %t22
  store ptr %t22, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t24 = load ptr, ptr %l1
  store i64 4, ptr %l3, !tbaa !24
  br label %bb6
bb6:
  %t27 = load i64, ptr %l2, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = icmp slt i64 %t27, %t28
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l1
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = getelementptr [4 x i64], ptr %t35, i64 0, i64 %t36
  %t40 = load i64, ptr %t39, !tbaa !34
  %t42 = load ptr, ptr %lp0
  %t43 = getelementptr %"compiler/profile:Profile", ptr %t42, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t43, i64 %t40)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l2, !tbaa !24
  br label %bb6
bb12:
  call void @__olang_scope_close(ptr %s1)
  call void @compiler_2fprofile_3aPlaces_2ector(ptr %t51, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t51, i64 272, i1 false)
  br label %bb13
bb13:
  %t52 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 272, i64 8)
  store ptr %t52, ptr %lp5
  %t53 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t53, ptr %l31, i64 272, i1 false)
  store %olang.scope zeroinitializer, ptr %s4
  %t54 = insertvalue [3 x i64] undef, i64 100, 0
  %t55 = insertvalue [3 x i64] %t54, i64 200, 1
  %t56 = insertvalue [3 x i64] %t55, i64 300, 2
  %t58 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 24, i64 8)
  store [3 x i64] %t56, ptr %t58
  store ptr %t58, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t60 = load ptr, ptr %l6
  store i64 3, ptr %l8, !tbaa !24
  br label %bb14
bb14:
  %t63 = load i64, ptr %l7, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp slt i64 %t63, %t64
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb15, label %bb16
bb15:
  br label %bb22
bb16:
  br label %bb17
bb17:
  %t71 = load i64, ptr %l7, !tbaa !24
  store i64 %t71, ptr %l9, !tbaa !24
  %t73 = load ptr, ptr %l6
  %t74 = load i64, ptr %l7, !tbaa !24
  %t77 = getelementptr [3 x i64], ptr %t73, i64 0, i64 %t74
  %t78 = load i64, ptr %t77, !tbaa !34
  %t80 = load ptr, ptr %lp5
  %t81 = getelementptr %"compiler/profile:Places", ptr %t80, i32 0, i32 5
  %t83 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t81, i64 %t78, i64 %t83)
  br label %bb18
bb18:
  %t87 = load ptr, ptr %lp5
  %t88 = getelementptr %"compiler/profile:Places", ptr %t87, i32 0, i32 3
  %t89 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t88, i64 %t89)
  br label %bb19
bb19:
  %t92 = load ptr, ptr %lp5
  %t93 = getelementptr %"compiler/profile:Places", ptr %t92, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t93, i64 1)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t95 = load i64, ptr %l7, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l7, !tbaa !24
  br label %bb14
bb22:
  call void @__olang_scope_close(ptr %s4)
  %t99 = load ptr, ptr %lp5
  %t100 = getelementptr %"compiler/profile:Places", ptr %t99, i32 0, i32 2
  store ptr %t100, ptr %l52, !tbaa !29
  %t101 = load ptr, ptr %lp5
  %t103 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v0, ptr %v0, ptr %t101, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) })
  store i64 %t103, ptr %l54
  br label %bb23
bb23:
  %t104 = load ptr, ptr %lp5
  %t106 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v0, ptr %v0, ptr %t104, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d136, i32 0, i32 1) })
  store i64 %t106, ptr %l56
  br label %bb24
bb24:
  %t107 = load i64, ptr %l54, !tbaa !24
  %t108 = load i64, ptr %l56, !tbaa !24
  %t109 = call %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %s0, i64 %t107, i64 %t108, i64 6)
  store %"compiler/profile:Frame" %t109, ptr %l57
  br label %bb25
bb25:
  %t110 = load ptr, ptr %l52, !tbaa !29
  %t111 = load %"compiler/profile:Frame", ptr %l57
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v0, ptr %t110, %"compiler/profile:Frame" %t111)
  br label %bb26
bb26:
  %t112 = load ptr, ptr %lp5
  %t113 = getelementptr %"compiler/profile:Places", ptr %t112, i32 0, i32 2
  store ptr %t113, ptr %l58, !tbaa !29
  %t114 = load ptr, ptr %lp5
  %t116 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v0, ptr %v0, ptr %t114, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d137, i32 0, i32 1) })
  store i64 %t116, ptr %l60
  br label %bb27
bb27:
  %t117 = load ptr, ptr %lp5
  %t119 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v0, ptr %v0, ptr %t117, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d138, i32 0, i32 1) })
  store i64 %t119, ptr %l62
  br label %bb28
bb28:
  %t120 = load i64, ptr %l60, !tbaa !24
  %t121 = load i64, ptr %l62, !tbaa !24
  %t122 = call %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %s0, i64 %t120, i64 %t121, i64 20)
  store %"compiler/profile:Frame" %t122, ptr %l63
  br label %bb29
bb29:
  %t123 = load ptr, ptr %l58, !tbaa !29
  %t124 = load %"compiler/profile:Frame", ptr %l63
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v0, ptr %t123, %"compiler/profile:Frame" %t124)
  br label %bb30
bb30:
  %t125 = load ptr, ptr %lp5
  %t126 = getelementptr %"compiler/profile:Places", ptr %t125, i32 0, i32 2
  store ptr %t126, ptr %l64, !tbaa !29
  %t127 = load ptr, ptr %lp5
  %t129 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v0, ptr %v0, ptr %t127, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d139, i32 0, i32 1) })
  store i64 %t129, ptr %l66
  br label %bb31
bb31:
  %t130 = load ptr, ptr %lp5
  %t132 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v0, ptr %v0, ptr %t130, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d140, i32 0, i32 1) })
  store i64 %t132, ptr %l68
  br label %bb32
bb32:
  %t133 = load i64, ptr %l66, !tbaa !24
  %t134 = load i64, ptr %l68, !tbaa !24
  %t135 = call %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %s0, i64 %t133, i64 %t134, i64 14)
  store %"compiler/profile:Frame" %t135, ptr %l69
  br label %bb33
bb33:
  %t136 = load ptr, ptr %l64, !tbaa !29
  %t137 = load %"compiler/profile:Frame", ptr %l69
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v0, ptr %t136, %"compiler/profile:Frame" %t137)
  br label %bb34
bb34:
  %t138 = load ptr, ptr %lp0
  %t139 = load %"compiler/profile:Profile", ptr %t138
  %t140 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %l71, ptr %t140, i64 272, i1 false)
  %t141 = getelementptr { %"compiler/profile:Profile", %"compiler/profile:Places" }, ptr %l72, i32 0, i32 0
  store %"compiler/profile:Profile" %t139, ptr %t141
  %t143 = getelementptr { %"compiler/profile:Profile", %"compiler/profile:Places" }, ptr %l72, i32 0, i32 1
  call void @llvm.memmove.p0.p0.i64(ptr %t143, ptr %l71, i64 272, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l72, i64 376, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fprofile_2etypesRead(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l32 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l54 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l72 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t3, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb4:
  br label %bb5
bb5:
  %t17 = load i64, ptr %l4, !tbaa !24
  store i64 %t17, ptr %l6, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 %t20
  %t25 = load i8, ptr %t24, !tbaa !32
  %t29 = icmp ne i8 %t25, 58
  br i1 %t29, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb7:
  br label %bb8
bb8:
  %t31 = load i64, ptr %l6, !tbaa !24
  store i64 %t31, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l2, !tbaa !24
  %t37 = icmp sgt i64 %t33, %t34
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l28, !tbaa !27
  %t40 = load i64, ptr %l8, !tbaa !24
  %t42 = sub i64 %t40, 1
  %t44 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  %t49 = call i1 @compiler_2fprofile_2eidentityChar(i8 %t47)
  store i1 %t49, ptr %l32
  br label %bb12
bb11:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb13
bb12:
  %t50 = load i1, ptr %l32, !tbaa !21
  store i1 %t50, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t51 = load i1, ptr %l27, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t54 = load i64, ptr %l8, !tbaa !24
  %t56 = sub i64 %t54, 1
  store i64 %t56, ptr %l8, !tbaa !24
  br label %bb17
bb17:
  br label %bb9
bb18:
  store ptr %l1, ptr %l36, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t58, ptr %l37, !tbaa !27
  %t59 = load i64, ptr %l2, !tbaa !24
  store i64 %t59, ptr %l38, !tbaa !24
  %t60 = load i64, ptr %l8, !tbaa !24
  store i64 %t60, ptr %l39, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  store i64 %t62, ptr %l40, !tbaa !24
  %t63 = load i64, ptr %l38, !tbaa !24
  %t64 = icmp sge i64 %t63, 0
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t66 = load i64, ptr %l38, !tbaa !24
  %t67 = load i64, ptr %l39, !tbaa !24
  %t68 = icmp sle i64 %t66, %t67
  br i1 %t68, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_cc2e380c5cd0dda_c071bfd9a740ca6e)
  unreachable
bb21:
  %t70 = load i64, ptr %l39, !tbaa !24
  %t71 = load i64, ptr %l40, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_cc2e380c5cd0dda_c071bfd9a740ca6e)
  unreachable
bb23:
  %t74 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = load i64, ptr %l38, !tbaa !24
  %t77 = load i64, ptr %l39, !tbaa !24
  %t78 = getelementptr i8, ptr %t75, i64 %t76
  %t79 = sub i64 %t77, %t76
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  %t82 = load ptr, ptr %l36, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t82, { i64, ptr } %t81)
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_cc2e380c5cd0dda_c071bfd9a740ca6e)
  unreachable
bb25:
  store ptr %l1, ptr %l45, !tbaa !29
  %t84 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t84, ptr %l46, !tbaa !27
  %t85 = load i64, ptr %l8, !tbaa !24
  store i64 %t85, ptr %l47, !tbaa !24
  %t86 = load i64, ptr %l6, !tbaa !24
  store i64 %t86, ptr %l48, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l49, !tbaa !24
  %t89 = load i64, ptr %l47, !tbaa !24
  %t90 = icmp sge i64 %t89, 0
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t92 = load i64, ptr %l47, !tbaa !24
  %t93 = load i64, ptr %l48, !tbaa !24
  %t94 = icmp sle i64 %t92, %t93
  br i1 %t94, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_4bebebd3fadd2f37_94a97b9fa165786b)
  unreachable
bb28:
  %t96 = load i64, ptr %l48, !tbaa !24
  %t97 = load i64, ptr %l49, !tbaa !24
  %t98 = icmp sle i64 %t96, %t97
  br i1 %t98, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_4bebebd3fadd2f37_94a97b9fa165786b)
  unreachable
bb30:
  %t100 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = load i64, ptr %l47, !tbaa !24
  %t103 = load i64, ptr %l48, !tbaa !24
  %t104 = getelementptr i8, ptr %t101, i64 %t102
  %t105 = sub i64 %t103, %t102
  %t106 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t104, 1
  %t109 = call { i64, ptr } @compiler_2fprofile_2equalifier(ptr %v0, ptr %s2, { i64, ptr } %t107)
  store { i64, ptr } %t109, ptr %l54
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_4bebebd3fadd2f37_94a97b9fa165786b)
  unreachable
bb32:
  %t110 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  %t112 = extractvalue { i64, ptr } %t110, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load ptr, ptr %l45, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t117, { i64, ptr } %t116)
  br label %bb33
bb33:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb34:
  %t123 = load i64, ptr %l4, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l4, !tbaa !24
  br label %bb2
bb35:
  store ptr %l1, ptr %l60, !tbaa !29
  %t127 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t127, ptr %l61, !tbaa !27
  %t128 = load i64, ptr %l2, !tbaa !24
  store i64 %t128, ptr %l62, !tbaa !24
  %t129 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t129, 0
  store i64 %t132, ptr %l65, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 0
  store i64 %t134, ptr %l66, !tbaa !24
  %t135 = load i64, ptr %l62, !tbaa !24
  %t136 = icmp sge i64 %t135, 0
  br i1 %t136, label %bb36, label %bb37
bb36:
  %t138 = load i64, ptr %l62, !tbaa !24
  %t139 = load i64, ptr %l65, !tbaa !24
  %t140 = icmp sle i64 %t138, %t139
  br i1 %t140, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_ea1fc1fa824e624c_c3d948fe5a073af0)
  unreachable
bb38:
  %t142 = load i64, ptr %l65, !tbaa !24
  %t143 = load i64, ptr %l66, !tbaa !24
  %t144 = icmp sle i64 %t142, %t143
  br i1 %t144, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_ea1fc1fa824e624c_c3d948fe5a073af0)
  unreachable
bb40:
  %t146 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = load i64, ptr %l62, !tbaa !24
  %t149 = load i64, ptr %l65, !tbaa !24
  %t150 = getelementptr i8, ptr %t147, i64 %t148
  %t151 = sub i64 %t149, %t148
  %t152 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t150, 1
  %t154 = load ptr, ptr %l60, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t154, { i64, ptr } %t153)
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_ea1fc1fa824e624c_c3d948fe5a073af0)
  unreachable
bb42:
  %t157 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t157, ptr %l72
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t158 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t158, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fprofile_2eword(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l34 = alloca { i64, ptr }
  %l42 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 8, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb6
bb3:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = sub i64 %t11, %t12
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t21 = sub i64 %t19, 1
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = sdiv i64 %t21, %t22
  store i64 %t25, ptr %l15, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l15, !tbaa !24
  store i64 %t27, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l12, !tbaa !24
  store i64 %t28, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  store i64 %t45, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l2, !tbaa !24
  store { i64, ptr } %a0, ptr %l34, !tbaa !27
  %t51 = mul i64 %a1, 8
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i8, ptr %t58, i64 %t55
  %t60 = load i8, ptr %t59, !tbaa !32
  %t62 = zext i8 %t60 to i64
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = mul i64 %t63, 8
  store i64 %t65, ptr %l42, !tbaa !24
  %t67 = load i64, ptr %l42, !tbaa !24
  %t68 = load i64, ptr %l42, !tbaa !24
  %t69 = shl i64 %t62, %t68
  %t72 = or i64 %t47, %t69
  store i64 %t72, ptr %l2, !tbaa !24
  br label %bb11
bb11:
  %t74 = load i64, ptr %l7, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l7, !tbaa !24
  br label %bb7
bb12:
  %t78 = load i64, ptr %l2, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/profile:Frame"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/profile:Frame" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/profile:Frame" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/profile:Frame" %t10, i64 %a2, 2
  store %"compiler/profile:Frame" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/profile:Frame", ptr %rv
  ret %"compiler/profile:Frame" %rr
}

define dso_local void @compiler_2fprofile_3aPlaces_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca %"compiler/profile:Places"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l6, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l6
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l8
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l6
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l0
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l10, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e1
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l10
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %t28)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l12
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e1
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l10
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 2
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = call ptr @__olang_region_home(ptr %t37)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = call ptr @__olang_region_home(ptr %t44)
  %t46 = icmp ne ptr %t45, null
  %t47 = select i1 %t46, ptr %t45, ptr %t40
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 0
  %t49 = load { i64, ptr }, ptr %t48
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = call ptr @__olang_region_or(ptr %t50, ptr null)
  %t52 = call ptr @__olang_region_home(ptr %t51)
  %t53 = icmp ne ptr %t52, null
  %t54 = select i1 %t53, ptr %t52, ptr %t47
  %t55 = icmp eq ptr %t54, %t33
  call void @__olang_region_settle(ptr %t33, i1 %t55)
  br label %bb10
bb10:
  %t56 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t56, ptr %l1
  %t57 = ptrtoint ptr %v0 to i64
  store i64 %t57, ptr %l14, !tbaa !24
  %t58 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e2
  br i1 %t58, label %bb11, label %bb12
bb11:
  %t60 = call ptr @__olang_region_make(ptr %v0)
  %t61 = ptrtoint ptr %t60 to i64
  store i64 %t61, ptr %l14, !tbaa !24
  br label %bb12
bb12:
  %t62 = load i64, ptr %l14
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ector(ptr %t63, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l16
  br label %bb13
bb13:
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e2
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load i64, ptr %l14
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = call ptr @__olang_region_or(ptr %t71, ptr null)
  %t73 = call ptr @__olang_region_home(ptr %t72)
  %t74 = icmp ne ptr %t73, null
  %t75 = select i1 %t74, ptr %t73, ptr null
  %t76 = icmp eq ptr %t75, %t68
  call void @__olang_region_settle(ptr %t68, i1 %t76)
  br label %bb15
bb15:
  %t77 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l2
  %t78 = ptrtoint ptr %v0 to i64
  store i64 %t78, ptr %l18, !tbaa !24
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e3
  br i1 %t79, label %bb16, label %bb17
bb16:
  %t81 = call ptr @__olang_region_make(ptr %v0)
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l18, !tbaa !24
  br label %bb17
bb17:
  %t83 = load i64, ptr %l18
  %t84 = inttoptr i64 %t83 to ptr
  %t85 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t84, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %l20
  br label %bb18
bb18:
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e3
  br i1 %t86, label %bb19, label %bb20
bb19:
  %t88 = load i64, ptr %l18
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t91 = load { i64, ptr }, ptr %t90
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = call ptr @__olang_region_or(ptr %t92, ptr null)
  %t94 = call ptr @__olang_region_home(ptr %t93)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr null
  %t97 = icmp eq ptr %t96, %t89
  call void @__olang_region_settle(ptr %t89, i1 %t97)
  br label %bb20
bb20:
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l3
  %t99 = ptrtoint ptr %v0 to i64
  store i64 %t99, ptr %l22, !tbaa !24
  %t100 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e4
  br i1 %t100, label %bb21, label %bb22
bb21:
  %t102 = call ptr @__olang_region_make(ptr %v0)
  %t103 = ptrtoint ptr %t102 to i64
  store i64 %t103, ptr %l22, !tbaa !24
  br label %bb22
bb22:
  %t104 = load i64, ptr %l22
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t105, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l24
  br label %bb23
bb23:
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e4
  br i1 %t107, label %bb24, label %bb25
bb24:
  %t109 = load i64, ptr %l22
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = call ptr @__olang_region_home(ptr %t114)
  %t116 = icmp ne ptr %t115, null
  %t117 = select i1 %t116, ptr %t115, ptr null
  %t118 = icmp eq ptr %t117, %t110
  call void @__olang_region_settle(ptr %t110, i1 %t118)
  br label %bb25
bb25:
  %t119 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t119, ptr %l4
  %t120 = ptrtoint ptr %v0 to i64
  store i64 %t120, ptr %l26, !tbaa !24
  %t121 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e5
  br i1 %t121, label %bb26, label %bb27
bb26:
  %t123 = call ptr @__olang_region_make(ptr %v0)
  %t124 = ptrtoint ptr %t123 to i64
  store i64 %t124, ptr %l26, !tbaa !24
  br label %bb27
bb27:
  %t125 = load i64, ptr %l26
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t126)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t127, ptr %l28
  br label %bb28
bb28:
  %t128 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e5
  br i1 %t128, label %bb29, label %bb30
bb29:
  %t130 = load i64, ptr %l26
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 2
  %t133 = load { i64, ptr }, ptr %t132
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = call ptr @__olang_region_or(ptr %t134, ptr null)
  %t136 = call ptr @__olang_region_home(ptr %t135)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr null
  %t139 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 1
  %t140 = load { i64, ptr }, ptr %t139
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = call ptr @__olang_region_or(ptr %t141, ptr null)
  %t143 = call ptr @__olang_region_home(ptr %t142)
  %t144 = icmp ne ptr %t143, null
  %t145 = select i1 %t144, ptr %t143, ptr %t138
  %t146 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 0
  %t147 = load { i64, ptr }, ptr %t146
  %t148 = extractvalue { i64, ptr } %t147, 1
  %t149 = call ptr @__olang_region_or(ptr %t148, ptr null)
  %t150 = call ptr @__olang_region_home(ptr %t149)
  %t151 = icmp ne ptr %t150, null
  %t152 = select i1 %t151, ptr %t150, ptr %t145
  %t153 = icmp eq ptr %t152, %t131
  call void @__olang_region_settle(ptr %t131, i1 %t153)
  br label %bb30
bb30:
  %t154 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28
  %t155 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 0
  %t156 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %t155
  %t157 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 1
  %t158 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t158, ptr %t157
  %t159 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 2
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %t159
  %t161 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 3
  %t162 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %t161
  %t163 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 4
  %t164 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %t163
  %t165 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t154, ptr %t165
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l30, i64 272, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/profile:Profile" @compiler_2fprofile_3aProfile_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/profile:Profile"
  br label %start
start:
  br label %bb0
bb0:
  store i64 1000000, ptr %l0, !tbaa !24
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l6, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aProfile_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l6
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l8
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aProfile_2e3
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l6
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l3
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l10, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aProfile_2e4
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l10
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l12
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aProfile_2e4
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l10
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = call ptr @__olang_region_home(ptr %t37)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t33
  call void @__olang_region_settle(ptr %t33, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d141, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t43 = load i64, ptr %l0, !tbaa !24
  %t44 = insertvalue %"compiler/profile:Profile" undef, i64 %t43, 0
  %t45 = load i64, ptr %l1, !tbaa !24
  %t46 = insertvalue %"compiler/profile:Profile" %t44, i64 %t45, 1
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = insertvalue %"compiler/profile:Profile" %t46, i64 %t47, 2
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t50 = insertvalue %"compiler/profile:Profile" %t48, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, 3
  %t52 = insertvalue %"compiler/profile:Profile" %t50, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, 4
  %t53 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t54 = insertvalue %"compiler/profile:Profile" %t52, { i64, ptr } %t53, 5
  store %"compiler/profile:Profile" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/profile:Profile", ptr %rv
  ret %"compiler/profile:Profile" %rr
}

define dso_local %"compiler/profile:Sample" @compiler_2fprofile_3aSample_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/profile:Sample"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/profile:Sample" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/profile:Sample" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/profile:Sample" %t10, i64 %a2, 2
  store %"compiler/profile:Sample" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/profile:Sample", ptr %rv
  ret %"compiler/profile:Sample" %rr
}

define dso_local void @compiler_2fprofile_3aTally_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"compiler/profile:Tally"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l7, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l7
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l9
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l7
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = call ptr @__olang_region_or(ptr %t22, ptr null)
  %t24 = call ptr @__olang_region_home(ptr %t23)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr %t19
  %t27 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = call ptr @__olang_region_home(ptr %t30)
  %t32 = icmp ne ptr %t31, null
  %t33 = select i1 %t32, ptr %t31, ptr %t26
  %t34 = icmp eq ptr %t33, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t34)
  br label %bb5
bb5:
  %t35 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %l0
  %t36 = ptrtoint ptr %v0 to i64
  store i64 %t36, ptr %l11, !tbaa !24
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e1
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = call ptr @__olang_region_make(ptr %v0)
  %t40 = ptrtoint ptr %t39 to i64
  store i64 %t40, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l11
  %t42 = inttoptr i64 %t41 to ptr
  %t43 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t42)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %l13
  br label %bb8
bb8:
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e1
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = load i64, ptr %l11
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 2
  %t49 = load { i64, ptr }, ptr %t48
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = call ptr @__olang_region_or(ptr %t50, ptr null)
  %t52 = call ptr @__olang_region_home(ptr %t51)
  %t53 = icmp ne ptr %t52, null
  %t54 = select i1 %t53, ptr %t52, ptr null
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = call ptr @__olang_region_home(ptr %t58)
  %t60 = icmp ne ptr %t59, null
  %t61 = select i1 %t60, ptr %t59, ptr %t54
  %t62 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = call ptr @__olang_region_or(ptr %t64, ptr null)
  %t66 = call ptr @__olang_region_home(ptr %t65)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr %t61
  %t69 = icmp eq ptr %t68, %t47
  call void @__olang_region_settle(ptr %t47, i1 %t69)
  br label %bb10
bb10:
  %t70 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t70, ptr %l1
  %t71 = ptrtoint ptr %v0 to i64
  store i64 %t71, ptr %l15, !tbaa !24
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e2
  br i1 %t72, label %bb11, label %bb12
bb11:
  %t74 = call ptr @__olang_region_make(ptr %v0)
  %t75 = ptrtoint ptr %t74 to i64
  store i64 %t75, ptr %l15, !tbaa !24
  br label %bb12
bb12:
  %t76 = load i64, ptr %l15
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t77)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t78, ptr %l17
  br label %bb13
bb13:
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e2
  br i1 %t79, label %bb14, label %bb15
bb14:
  %t81 = load i64, ptr %l15
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 2
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = call ptr @__olang_region_home(ptr %t86)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr null
  %t90 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 1
  %t91 = load { i64, ptr }, ptr %t90
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = call ptr @__olang_region_or(ptr %t92, ptr null)
  %t94 = call ptr @__olang_region_home(ptr %t93)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr %t89
  %t97 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = call ptr @__olang_region_home(ptr %t100)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr %t96
  %t104 = icmp eq ptr %t103, %t82
  call void @__olang_region_settle(ptr %t82, i1 %t104)
  br label %bb15
bb15:
  %t105 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t105, ptr %l2
  %t106 = ptrtoint ptr %v0 to i64
  store i64 %t106, ptr %l19, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e3
  br i1 %t107, label %bb16, label %bb17
bb16:
  %t109 = call ptr @__olang_region_make(ptr %v0)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l19, !tbaa !24
  br label %bb17
bb17:
  %t111 = load i64, ptr %l19
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t112)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t113, ptr %l21
  br label %bb18
bb18:
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e3
  br i1 %t114, label %bb19, label %bb20
bb19:
  %t116 = load i64, ptr %l19
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = call ptr @__olang_region_home(ptr %t121)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = call ptr @__olang_region_home(ptr %t128)
  %t130 = icmp ne ptr %t129, null
  %t131 = select i1 %t130, ptr %t129, ptr %t124
  %t132 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = call ptr @__olang_region_or(ptr %t134, ptr null)
  %t136 = call ptr @__olang_region_home(ptr %t135)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr %t131
  %t139 = icmp eq ptr %t138, %t117
  call void @__olang_region_settle(ptr %t117, i1 %t139)
  br label %bb20
bb20:
  %t140 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t140, ptr %l3
  %t141 = ptrtoint ptr %v0 to i64
  store i64 %t141, ptr %l23, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e4
  br i1 %t142, label %bb21, label %bb22
bb21:
  %t144 = call ptr @__olang_region_make(ptr %v0)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l23, !tbaa !24
  br label %bb22
bb22:
  %t146 = load i64, ptr %l23
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t147)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t148, ptr %l25
  br label %bb23
bb23:
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e4
  br i1 %t149, label %bb24, label %bb25
bb24:
  %t151 = load i64, ptr %l23
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25, i32 0, i32 2
  %t154 = load { i64, ptr }, ptr %t153
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = call ptr @__olang_region_or(ptr %t155, ptr null)
  %t157 = call ptr @__olang_region_home(ptr %t156)
  %t158 = icmp ne ptr %t157, null
  %t159 = select i1 %t158, ptr %t157, ptr null
  %t160 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25, i32 0, i32 1
  %t161 = load { i64, ptr }, ptr %t160
  %t162 = extractvalue { i64, ptr } %t161, 1
  %t163 = call ptr @__olang_region_or(ptr %t162, ptr null)
  %t164 = call ptr @__olang_region_home(ptr %t163)
  %t165 = icmp ne ptr %t164, null
  %t166 = select i1 %t165, ptr %t164, ptr %t159
  %t167 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25, i32 0, i32 0
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = call ptr @__olang_region_home(ptr %t170)
  %t172 = icmp ne ptr %t171, null
  %t173 = select i1 %t172, ptr %t171, ptr %t166
  %t174 = icmp eq ptr %t173, %t152
  call void @__olang_region_settle(ptr %t152, i1 %t174)
  br label %bb25
bb25:
  %t175 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t175, ptr %l4
  %t176 = ptrtoint ptr %v0 to i64
  store i64 %t176, ptr %l27, !tbaa !24
  %t177 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e5
  br i1 %t177, label %bb26, label %bb27
bb26:
  %t179 = call ptr @__olang_region_make(ptr %v0)
  %t180 = ptrtoint ptr %t179 to i64
  store i64 %t180, ptr %l27, !tbaa !24
  br label %bb27
bb27:
  %t181 = load i64, ptr %l27
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t182, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183, ptr %l29
  br label %bb28
bb28:
  %t184 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e5
  br i1 %t184, label %bb29, label %bb30
bb29:
  %t186 = load i64, ptr %l27
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t189 = load { i64, ptr }, ptr %t188
  %t190 = extractvalue { i64, ptr } %t189, 1
  %t191 = call ptr @__olang_region_or(ptr %t190, ptr null)
  %t192 = call ptr @__olang_region_home(ptr %t191)
  %t193 = icmp ne ptr %t192, null
  %t194 = select i1 %t193, ptr %t192, ptr null
  %t195 = icmp eq ptr %t194, %t187
  call void @__olang_region_settle(ptr %t187, i1 %t195)
  br label %bb30
bb30:
  %t196 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l5
  %t197 = ptrtoint ptr %v0 to i64
  store i64 %t197, ptr %l31, !tbaa !24
  %t198 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e6
  br i1 %t198, label %bb31, label %bb32
bb31:
  %t200 = call ptr @__olang_region_make(ptr %v0)
  %t201 = ptrtoint ptr %t200 to i64
  store i64 %t201, ptr %l31, !tbaa !24
  br label %bb32
bb32:
  %t202 = load i64, ptr %l31
  %t203 = inttoptr i64 %t202 to ptr
  %t204 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t203, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t204, ptr %l33
  br label %bb33
bb33:
  %t205 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e6
  br i1 %t205, label %bb34, label %bb35
bb34:
  %t207 = load i64, ptr %l31
  %t208 = inttoptr i64 %t207 to ptr
  %t209 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33, i32 0, i32 0
  %t210 = load { i64, ptr }, ptr %t209
  %t211 = extractvalue { i64, ptr } %t210, 1
  %t212 = call ptr @__olang_region_or(ptr %t211, ptr null)
  %t213 = call ptr @__olang_region_home(ptr %t212)
  %t214 = icmp ne ptr %t213, null
  %t215 = select i1 %t214, ptr %t213, ptr null
  %t216 = icmp eq ptr %t215, %t208
  call void @__olang_region_settle(ptr %t208, i1 %t216)
  br label %bb35
bb35:
  %t217 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t218 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 0
  %t219 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t219, ptr %t218
  %t220 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 1
  %t221 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t221, ptr %t220
  %t222 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 2
  %t223 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t223, ptr %t222
  %t224 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 3
  %t225 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t225, ptr %t224
  %t226 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 4
  %t227 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t227, ptr %t226
  %t228 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 5
  %t229 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t229, ptr %t228
  %t230 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t217, ptr %t230
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l35, i64 424, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/profile:elfFn" @compiler_2fprofile_3aelfFn_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/profile:elfFn"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/profile:elfFn" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/profile:elfFn" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/profile:elfFn" %t10, { i64, ptr } %a2, 2
  store %"compiler/profile:elfFn" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/profile:elfFn", ptr %rv
  ret %"compiler/profile:elfFn" %rr
}

define dso_local %"compiler/profile:mapping" @compiler_2fprofile_3amapping_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/profile:mapping"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/profile:mapping" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/profile:mapping" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/profile:mapping" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/profile:mapping" %t14, { i64, ptr } %a3, 3
  store %"compiler/profile:mapping" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/profile:mapping", ptr %rv
  ret %"compiler/profile:mapping" %rr
}

define dso_local %"compiler/profile:node" @compiler_2fprofile_3anode_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/profile:node"
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3anode_2e3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3anode_2e3
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l8
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = call ptr @__olang_region_home(ptr %t20)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t26 = load i64, ptr %l2, !tbaa !24
  %t27 = insertvalue %"compiler/profile:node" undef, i64 %t26, 0
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = insertvalue %"compiler/profile:node" %t27, i64 %t28, 1
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = insertvalue %"compiler/profile:node" %t29, i64 %t30, 2
  %t33 = insertvalue %"compiler/profile:node" %t31, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, 3
  store %"compiler/profile:node" %t33, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/profile:node", ptr %rv
  ret %"compiler/profile:node" %rr
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
define linkonce_odr %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/profile:node"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/profile:node"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/profile:node", ptr %a0
  store %"compiler/profile:node" %t2, ptr %l1
  %t3 = getelementptr %"compiler/profile:node", ptr %l1, i32 0, i32 3
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/profile:node", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/profile:node", ptr %l1
  store %"compiler/profile:node" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/profile:node", ptr %rv
  ret %"compiler/profile:node" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 8
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 8
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fprofile_3anode_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
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
define internal i1 @olang_lambda_0(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l8 = alloca %"compiler/profile:node"
  %l10 = alloca %"compiler/profile:node"
  %l12 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l17 = alloca %"compiler/profile:node"
  %l19 = alloca %"compiler/profile:node"
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %cp0 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %cp1 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %cp1, !tbaa !28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %cv1, ptr %l3
  %vq0 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %env, i32 0, i32 3
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/profile:Places", ptr %t1, i32 0, i32 0
  store ptr %t3, ptr %l5, !tbaa !29
  %t7 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %vc1, ptr %s0, ptr %l3, i64 %a0)
  store %"compiler/profile:node" %t7, ptr %l8
  br label %bb1
bb1:
  %t9 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s0, ptr %l8)
  store %"compiler/profile:node" %t9, ptr %l10
  br label %bb2
bb2:
  %t10 = getelementptr %"compiler/profile:node", ptr %l10, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t14 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t12, i64 %t11)
  store { i64, ptr } %t14, ptr %l12
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr %"compiler/profile:Places", ptr %t15, i32 0, i32 0
  store ptr %t17, ptr %l14, !tbaa !29
  %t21 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %vc1, ptr %s0, ptr %l3, i64 %a1)
  store %"compiler/profile:node" %t21, ptr %l17
  br label %bb4
bb4:
  %t23 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s0, ptr %l17)
  store %"compiler/profile:node" %t23, ptr %l19
  br label %bb5
bb5:
  %t24 = getelementptr %"compiler/profile:node", ptr %l19, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t28 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t26, i64 %t25)
  store { i64, ptr } %t28, ptr %l21
  br label %bb6
bb6:
  %t29 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc0, ptr %vc0, { i64, ptr } %t29, { i64, ptr } %t30)
  store i1 %t31, ptr %l22
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load i1, ptr %l22, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"all" }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" - " }>, align 8
@.d3 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" ms, " }>, align 8
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
declare i64 @__olang_fmt_i64(ptr, i64)
@.d4 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"<g class=\22f\22 data-x=\22" }>, align 8
@.d5 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\22 data-w=\22" }>, align 8
@.d6 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\22 data-d=\22" }>, align 8
@.d7 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\22><title>" }>, align 8
@.d8 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"</title><rect y=\22" }>, align 8
@.d9 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\22 height=\22" }>, align 8
@.d10 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"\22 rx=\222\22 fill=\22rgb(" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d12 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c")\22/><text y=\22" }>, align 8
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22>" }>, align 8
@.d14 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"</text></g>\0A" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d15 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"<!doctype html>\0A<html><head><meta charset=\22utf-8\22><title>" }>, align 8
@.d16 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" - olang profile</title>\0A" }>, align 8
@.d17 = private constant <{ i64, [213 x i8] }> <{ i64 0, [213 x i8] c"<style>body{margin:0;padding:10px;font:12px monospace;background:#fff}svg text{font:11px monospace;fill:#000;pointer-events:none}g.f{cursor:pointer}g.f:hover rect{stroke:#000;stroke-width:.5}</style></head><body>\0A" }>, align 8
@.d18 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"<div>" }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d20 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" samples, " }>, align 8
@.d21 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c" s of CPU time - a click on a frame zooms to it, on the bottom bar back</div>\0A" }>, align 8
@.d22 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"<svg id=\22fg\22 width=\22" }>, align 8
@.d23 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\22 height=\22" }>, align 8
@.d24 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22 data-total=\22" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\22>\0A" }>, align 8
@.d26 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"</svg>\0A" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d27 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"</body></html>\0A" }>, align 8
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
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H6cf7c9f2359d1ee39cd99e769614c19f(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)
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

@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fprofile__2ePlaces__2eResolve_2elocal_2e21 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\22 0x" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d34 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"--inlining" }>, align 8
@.d35 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"--functions=short" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_errpay_pop()
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H84525b00cfc40be2d2c61524b3658c11(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2fvec_3a_Hdb387e679134e71bf5648ac6d1ce10ff(ptr %v0)
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

@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@.d43 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0x" }>, align 8
@.d44 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_H31300daf7c6be9b9667c9cd96eea1c7e = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d47 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d48 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"no file" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0x" }>, align 8
@.d52 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d54 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@.d55 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"OLPROF01" }>, align 8
@olang_2esole_2ecompiler_2fprofile_3aProfile_2e5 = weak hidden constant i1 false
@.d56 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"_2e" }>, align 8
@.d57 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"./" }>, align 8
@.d58 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"../" }>, align 8
@.d59 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"./" }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fprofile__2eReadable_2elocal_2e7 = weak hidden constant i1 false
@.d64 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" thread" }>, align 8
@.d65 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" threads" }>, align 8
@.d66 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"\0Aolang profile: " }>, align 8
@.d67 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" - " }>, align 8
@.d68 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" samples, " }>, align 8
@.d69 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" s of CPU time on " }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d71 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"  (" }>, align 8
@.d72 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" samples dropped: the buffer was full)\0A" }>, align 8
@.d73 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"  no samples: the program used less CPU time than one period\0A" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3aTally(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/profile:Tally"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 424, i1 false)
  %t2 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 0
  %t4 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  %t6 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %t6
  %t7 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 1
  %t9 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  %t11 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %t11
  %t12 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 2
  %t14 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  %t16 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t15, ptr %t16
  %t17 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 3
  %t19 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  %t21 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t20, ptr %t21
  %t22 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 4
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 5
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 6
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/profile:Tally", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 424, i1 false)
  br label %ret
ret:
  ret void
}

define internal i1 @olang_lambda_74(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca %"compiler/profile:Tally"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l24 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i32
  %l43 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i1
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  %cp0 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %cp0, i64 424, i1 false)
  %cp1 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load ptr, ptr %cp1, !tbaa !28
  store ptr %cv1, ptr %l7
  %vq0 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/profile:Tally", ptr %l2, i32 0, i32 0
  %t2 = load i64, ptr %l0, !tbaa !24
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t1, i64 %t2)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l12
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l11
  br label %bb1
bb1:
  %t10 = load i64, ptr %l11, !tbaa !24
  store i64 %t10, ptr %l8, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t11 = load i64, ptr %l8, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t12 = getelementptr %"compiler/profile:Tally", ptr %l2, i32 0, i32 0
  %t13 = load i64, ptr %l1, !tbaa !24
  %t16 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t12, i64 %t13)
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l17
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb6, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l16
  br label %bb5
bb5:
  %t21 = load i64, ptr %l16, !tbaa !24
  store i64 %t21, ptr %l13, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb8
bb8:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp ne i64 %t23, %t24
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  store i1 %t33, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t35 = getelementptr %"compiler/profile:Tally", ptr %l2, i32 0, i32 1
  %t36 = load i64, ptr %l0, !tbaa !24
  %t39 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t35, i64 %t36)
  %t40 = extractvalue { i32, i64 } %t39, 1
  %t41 = extractvalue { i32, i64 } %t39, 0
  store i32 %t41, ptr %l28
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb13, label %ok.43, !prof !99
ok.43:
  store i64 %t40, ptr %l27
  br label %bb12
bb12:
  %t44 = load i64, ptr %l27, !tbaa !24
  store i64 %t44, ptr %l24, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb15
bb15:
  %t45 = load i64, ptr %l24, !tbaa !24
  store i64 %t45, ptr %l5, !tbaa !24
  %t46 = getelementptr %"compiler/profile:Tally", ptr %l2, i32 0, i32 1
  %t47 = load i64, ptr %l1, !tbaa !24
  %t50 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t46, i64 %t47)
  %t51 = extractvalue { i32, i64 } %t50, 1
  %t52 = extractvalue { i32, i64 } %t50, 0
  store i32 %t52, ptr %l33
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb17, label %ok.54, !prof !99
ok.54:
  store i64 %t51, ptr %l32
  br label %bb16
bb16:
  %t55 = load i64, ptr %l32, !tbaa !24
  store i64 %t55, ptr %l29, !tbaa !24
  br label %bb19
bb17:
  br label %bb18
bb18:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb19
bb19:
  %t56 = load i64, ptr %l29, !tbaa !24
  store i64 %t56, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l5, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = icmp ne i64 %t57, %t58
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = icmp sgt i64 %t63, %t64
  store i1 %t67, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t69 = load ptr, ptr %l7, !tbaa !29
  %t71 = getelementptr %"compiler/profile:Places", ptr %t69, i32 0, i32 0
  %t72 = load i64, ptr %l0, !tbaa !24
  %t75 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc1, ptr %vc1, ptr %t71, i64 %t72)
  store { i64, ptr } %t75, ptr %l43
  br label %bb23
bb23:
  %t76 = load ptr, ptr %l7, !tbaa !29
  %t78 = getelementptr %"compiler/profile:Places", ptr %t76, i32 0, i32 0
  %t79 = load i64, ptr %l1, !tbaa !24
  %t82 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc1, ptr %vc1, ptr %t78, i64 %t79)
  store { i64, ptr } %t82, ptr %l47
  br label %bb24
bb24:
  %t83 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t85 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc1, ptr %vc1, { i64, ptr } %t83, { i64, ptr } %t84)
  store i1 %t85, ptr %l48
  br label %bb25
bb25:
  %t86 = load i1, ptr %l48, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d75 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"\0A   self   total  function\0A" }>, align 8
@.d76 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d78 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define internal i1 @olang_lambda_80(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca %"compiler/profile:Tally"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l25 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i1
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  %cp0 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %cp0, i64 424, i1 false)
  %cp1 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load ptr, ptr %cp1, !tbaa !28
  store ptr %cv1, ptr %l5
  %vq0 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { %"compiler/profile:Tally", ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/profile:Tally", ptr %l2, i32 0, i32 2
  %t2 = load i64, ptr %l0, !tbaa !24
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t1, i64 %t2)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l10
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l9
  br label %bb1
bb1:
  %t10 = load i64, ptr %l9, !tbaa !24
  store i64 %t10, ptr %l6, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t12 = getelementptr %"compiler/profile:Tally", ptr %l2, i32 0, i32 2
  %t13 = load i64, ptr %l1, !tbaa !24
  %t16 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t12, i64 %t13)
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l15
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb6, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l14
  br label %bb5
bb5:
  %t21 = load i64, ptr %l14, !tbaa !24
  store i64 %t21, ptr %l11, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l11, !tbaa !24
  br label %bb8
bb8:
  %t22 = load i64, ptr %l11, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp ne i64 %t23, %t24
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  store i1 %t33, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t35 = load ptr, ptr %l5, !tbaa !29
  %t37 = getelementptr %"compiler/profile:Places", ptr %t35, i32 0, i32 0
  %t38 = load i64, ptr %l0, !tbaa !24
  %t41 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc1, ptr %vc1, ptr %t37, i64 %t38)
  store { i64, ptr } %t41, ptr %l25
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l5, !tbaa !29
  %t44 = getelementptr %"compiler/profile:Places", ptr %t42, i32 0, i32 0
  %t45 = load i64, ptr %l1, !tbaa !24
  %t48 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc1, ptr %vc1, ptr %t44, i64 %t45)
  store { i64, ptr } %t48, ptr %l29
  br label %bb13
bb13:
  %t49 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc1, ptr %vc1, { i64, ptr } %t49, { i64, ptr } %t50)
  store i1 %t51, ptr %l30
  br label %bb14
bb14:
  %t52 = load i1, ptr %l30, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":0" }>, align 8
@.d82 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"line" }>, align 8
@.d83 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\0A   self  " }>, align 8
@.d84 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"  function\0A" }>, align 8
@.d85 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d86 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d87 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d88 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"\0A  called from (the five hottest functions)\0A" }>, align 8
define internal i1 @olang_lambda_89(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca %"compiler/profile:Tally"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l32 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i1
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  %cp0 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %cp0, i64 424, i1 false)
  %cp1 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load i64, ptr %cp1, !tbaa !28
  store i64 %cv1, ptr %l3
  %cp2 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load ptr, ptr %cp2, !tbaa !28
  store ptr %cv2, ptr %l6
  %vq0 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { %"compiler/profile:Tally", i64, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/profile:Tally", ptr %l2, i32 0, i32 4
  %t2 = load i64, ptr %l3, !tbaa !24
  %t4 = mul i64 %t2, 16777216
  %t5 = load i64, ptr %l0, !tbaa !24
  %t8 = add i64 %t4, %t5
  %t11 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t1, i64 %t8)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l14
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb2, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l13
  br label %bb1
bb1:
  %t16 = load i64, ptr %l13, !tbaa !24
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l7, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  %t18 = getelementptr %"compiler/profile:Tally", ptr %l2, i32 0, i32 4
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = mul i64 %t19, 16777216
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t28 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t18, i64 %t25)
  %t29 = extractvalue { i32, i64 } %t28, 1
  %t30 = extractvalue { i32, i64 } %t28, 0
  store i32 %t30, ptr %l22
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb6, label %ok.32, !prof !99
ok.32:
  store i64 %t29, ptr %l21
  br label %bb5
bb5:
  %t33 = load i64, ptr %l21, !tbaa !24
  store i64 %t33, ptr %l15, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb8
bb8:
  %t34 = load i64, ptr %l15, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp ne i64 %t35, %t36
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  store i1 %t45, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l6, !tbaa !29
  %t49 = getelementptr %"compiler/profile:Places", ptr %t47, i32 0, i32 0
  %t50 = load i64, ptr %l0, !tbaa !24
  %t53 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc1, ptr %vc1, ptr %t49, i64 %t50)
  store { i64, ptr } %t53, ptr %l32
  br label %bb12
bb12:
  %t54 = load ptr, ptr %l6, !tbaa !29
  %t56 = getelementptr %"compiler/profile:Places", ptr %t54, i32 0, i32 0
  %t57 = load i64, ptr %l1, !tbaa !24
  %t60 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc1, ptr %vc1, ptr %t56, i64 %t57)
  store { i64, ptr } %t60, ptr %l36
  br label %bb13
bb13:
  %t61 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc1, ptr %vc1, { i64, ptr } %t61, { i64, ptr } %t62)
  store i1 %t63, ptr %l37
  br label %bb14
bb14:
  %t64 = load i1, ptr %l37, !tbaa !21
  store i1 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d90 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d91 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"(the thread's first frame)" }>, align 8
@.d92 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d93 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d94 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"  <-  " }>, align 8
@.d95 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d96 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d97 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"/llvm-symbolizer" }>, align 8
@.d100 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d101 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"llvm-symbolizer-20" }>, align 8
@.d102 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"llvm-symbolizer-19" }>, align 8
@.d103 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"llvm-symbolizer-18" }>, align 8
@.d104 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"llvm-symbolizer" }>, align 8
@.d105 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d106 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d107 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d108 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"&lt;" }>, align 8
@.d109 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"&gt;" }>, align 8
@.d110 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"&amp;" }>, align 8
@.d111 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"&quot;" }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d113 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
define internal i1 @olang_lambda_114(ptr %env, ptr %v0, ptr %v1, %"compiler/profile:elfFn" %a0, %"compiler/profile:elfFn" %a1) #0 {
entry:
  %l0 = alloca %"compiler/profile:elfFn"
  %l1 = alloca %"compiler/profile:elfFn"
  %rv = alloca i1
  store %"compiler/profile:elfFn" %a0, ptr %l0
  store %"compiler/profile:elfFn" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/profile:elfFn", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/profile:elfFn", ptr %l1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp slt i64 %t2, %t4
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d116 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@olang_2esole_2ecompiler_2fprofile_3amapping_2e3 = weak hidden constant i1 false
@.d118 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"%" }>, align 8
@.d119 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"std/prelude" }>, align 8
@.d120 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d121 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d122 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d123 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d124 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"OLANG_PROFILE\00" }>, align 8
@.d125 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @setenv(ptr, ptr, i32)
declare i32 @fork()
declare void @_exit(i32)
@.d126 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"OLANG_PROFILE\00" }>, align 8
declare i32 @unsetenv(ptr)
declare i64 @signal(i32, i64)
declare i32 @waitpid(i32, ptr, i32)
@.d127 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/proc/" }>, align 8
@.d128 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"OLPROF01" }>, align 8
@.d129 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d130 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d131 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d132 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d133 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d134 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@olang_2esole_2ecompiler__2fprofile__2esymbolIn_2elocal_2e4 = weak hidden constant i1 false
@.d135 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"hot" }>, align 8
@.d136 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"hot.olang" }>, align 8
@.d137 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d138 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"hot.olang" }>, align 8
@.d139 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"Vec<I64>.Push" }>, align 8
@.d140 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"hot.olang" }>, align 8
@olang_2esole_2ecompiler_2fprofile_3aPlaces_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fprofile_3aPlaces_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fprofile_3aPlaces_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aPlaces_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aPlaces_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aPlaces_2e5 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fprofile_3aProfile_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aProfile_2e4 = weak hidden constant i1 false
@.d141 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fprofile_3aTally_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aTally_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aTally_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aTally_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aTally_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aTally_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3aTally_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fprofile_3anode_2e3 = weak hidden constant i1 false
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fprofile_3anode_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/profile:node"
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
  %t4 = mul i64 %t3, 56
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
  %t15 = getelementptr %"compiler/profile:node", ptr %t14, i64 %t12
  %t17 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %v0, ptr %t15)
  store %"compiler/profile:node" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/profile:node", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/profile:node", ptr %t22, i64 %t20
  store %"compiler/profile:node" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 16
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
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
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2ePush_3ccompiler_2fprofile_3anode_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/profile:node" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eLen_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %a0)
declare %"compiler/profile:Sample" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eAt_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eRefMut_3ccompiler_2fprofile_3anode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/profile:Frame" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2eAt_3ccompiler_2fprofile_3aFrame_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eLen_3ccompiler_2fprofile_3anode_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eRef_3ccompiler_2fprofile_3anode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2eLen__Heb6545c4cbf57678e5e8a74f397c9583(ptr %v0, ptr %a0)
declare %"compiler/profile:mapping" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2eAt_3ccompiler_2fprofile_3amapping_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H67bc384d82ac3ceb3fdc5d6d25b5f02a(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd2a6d6393d72da4a22d0070783b9e545(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H613fddb0939c6e46b95f2b1f68ba1bdb(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %v0, i64 %a0, i64 %a1)
@olang_loc_3866f265829cb50e_54c32d3b9a091762 = external constant [0 x i8]
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2eLen_3ccompiler_2fprofile_3aFrame_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
@olang_loc_698502529ad2e54f_f0e75116d399f563 = external constant [0 x i8]
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v0, ptr %a0, %"compiler/profile:Frame" %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H509117e81ae737fb138b1f364b80e611(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hb4e1316c13adc554c531dbb9cf254a96(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hfa095cf457cc3af0cc9715613212afd3(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_6b0ecf2869984314_228026d38fe8b188 = external constant [0 x i8]
@olang_loc_19eabfe0257f2300_73d07f391b90fd8c = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2ePush_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %a0, %"compiler/profile:Sample" %a1)
@olang_loc_5e6251cd9155695d_6237c97633bfa1b9 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftypes_2eDemangle(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_3603727fe313055_49dd245dfeecf61 = external constant [0 x i8]
@olang_loc_e16765c4a8f41078_55e216e6a7163174 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_a05021294fe2b6d3_c60223eeaa2ef05f = external constant [0 x i8]
@olang_loc_efed15e4a0150676_49528d4cd386b8e2 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadEnd(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %v0)
declare { i64, ptr } @compiler_2ftarget_2eWhereIs(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7d2ae97c2364b59d_ce98559d67a1b5c9 = external constant [0 x i8]
@olang_loc_ec3589048a52ea40_4feb0c814716a05c = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_47d41d181de998ca_407a2b261e632036 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2ePush_3ccompiler_2fprofile_3aelfFn_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/profile:elfFn" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eSort_3_H16cb1151e861568c30a5b57cf3c12bc1(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_49a351722641e944_c5b141a1c073228 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2ePush_Hc0dd0b8028ee4ec7edce99e352ae7bbd(ptr %v0, ptr %v1, ptr %a0, %"compiler/profile:mapping" %a1)
@olang_loc_8377dd777846f8d9_8488686b399fded = external constant [0 x i8]
declare { i64, ptr } @compiler_2fbuild_2eShown(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fos_2eExecInPlace(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_ec22c3592c386ac4_6a748f217c4c44c0 = external constant [0 x i8]
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eToArray_3cU8_3e(ptr %v0, ptr %v1, ptr %a0)
@G_2estd_2fio_2eStdout = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare void @compiler_2fspin_2eSay(ptr %v0, i32 %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %v0)
@olang_loc_9b07e838cb7ed4ee_978ead1b2c1f88ba = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eLen_3ccompiler_2fprofile_3aelfFn_3e(ptr %v0, ptr %a0)
declare %"compiler/profile:elfFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2eAt_3ccompiler_2fprofile_3aelfFn_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_cc2e380c5cd0dda_c071bfd9a740ca6e = external constant [0 x i8]
@olang_loc_4bebebd3fadd2f37_94a97b9fa165786b = external constant [0 x i8]
@olang_loc_ea1fc1fa824e624c_c3d948fe5a073af0 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2fvec_3a_Hdb387e679134e71bf5648ac6d1ce10ff(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)

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
