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
  %l117 = alloca i64
  %l118 = alloca ptr
  %l119 = alloca i64
  %l122 = alloca %"compiler/profile:node"
  %l125 = alloca %"compiler/profile:node"
  %l128 = alloca ptr
  %l136 = alloca ptr
  %l137 = alloca ptr
  %l147 = alloca i64
  %l149 = alloca i64
  %l154 = alloca %"compiler/profile:node"
  %l162 = alloca %"compiler/profile:node"
  %l169 = alloca %"std/prelude/text:StringBuilder"
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l172 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l174 = alloca i64
  %l176 = alloca i64
  %l181 = alloca %"compiler/profile:node"
  %l183 = alloca %"compiler/profile:node"
  %l187 = alloca i64
  %l189 = alloca i64
  %l194 = alloca i64
  %l197 = alloca %"compiler/profile:node"
  %l199 = alloca %"compiler/profile:node"
  %l200 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l202 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l203 = alloca ptr
  %l204 = alloca ptr
  %l205 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l207 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l211 = alloca i64
  %l213 = alloca i64
  %l215 = alloca i64
  %l220 = alloca i64
  %l224 = alloca i64
  %l227 = alloca %"compiler/profile:node"
  %l237 = alloca i64
  %l239 = alloca i64
  %l244 = alloca i64
  %l247 = alloca ptr
  %l250 = alloca { i64, ptr }
  %l255 = alloca { i64, ptr }
  %l256 = alloca { i64, ptr }
  %l261 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l268 = alloca i64
  %l288 = alloca ptr
  %l291 = alloca i64
  %l293 = alloca i64
  %l295 = alloca i64
  %l297 = alloca { i64, ptr }
  %l298 = alloca i64
  %l300 = alloca i64
  %l301 = alloca i64
  %l302 = alloca i64
  %l303 = alloca i64
  %l306 = alloca { i64, ptr }
  %l308 = alloca { i64, ptr }
  %l313 = alloca %"std/prelude/text:StringBuilder"
  %l314 = alloca ptr
  %l316 = alloca { i64, ptr }
  %l321 = alloca i64
  %l328 = alloca ptr
  %l330 = alloca { i64, ptr }
  %l333 = alloca i64
  %l335 = alloca { i64, ptr }
  %l338 = alloca ptr
  %l339 = alloca i64
  %l340 = alloca i64
  %l341 = alloca i64
  %l343 = alloca { i64, ptr }
  %l350 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t288 = alloca { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, align 8
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
  br label %bb46
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
  br label %bb44
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
  br label %bb32
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
  %t105 = getelementptr %"compiler/profile:node", ptr %l107, i32 0, i32 0
  %t106 = load i64, ptr %t105, !tbaa !24
  %t107 = load i64, ptr %l13, !tbaa !24
  %t110 = icmp eq i64 %t106, %t107
  br i1 %t110, label %bb28, label %bb29
bb28:
  %t112 = load i64, ptr %l17, !tbaa !24
  store i64 %t112, ptr %l14, !tbaa !24
  br label %bb30
bb29:
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb31:
  %t114 = load i64, ptr %l16, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l16, !tbaa !24
  br label %bb21
bb32:
  call void @__olang_scope_close(ptr %s4)
  %t118 = load i64, ptr %l14, !tbaa !24
  %t120 = icmp slt i64 %t118, 0
  br i1 %t120, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s8
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eLen_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %l3)
  store i64 %t123, ptr %l117
  br label %bb35
bb34:
  br label %bb41
bb35:
  %t124 = load i64, ptr %l117, !tbaa !24
  store i64 %t124, ptr %l14, !tbaa !24
  store ptr %l3, ptr %l118, !tbaa !29
  %t125 = load i64, ptr %l13, !tbaa !24
  store i64 %t125, ptr %l119, !tbaa !24
  %t126 = load i64, ptr %l8, !tbaa !24
  %t129 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s8, ptr %l3, i64 %t126)
  store %"compiler/profile:node" %t129, ptr %l122
  br label %bb36
bb36:
  %t130 = getelementptr %"compiler/profile:node", ptr %l122, i32 0, i32 1
  %t131 = load i64, ptr %t130, !tbaa !24
  %t133 = add i64 %t131, 1
  %t134 = load i64, ptr %l119, !tbaa !24
  %t136 = call %"compiler/profile:node" @compiler_2fprofile_3anode_2ector(ptr %s8, i64 %t134, i64 %t133)
  store %"compiler/profile:node" %t136, ptr %l125
  br label %bb37
bb37:
  %t137 = load ptr, ptr %l118, !tbaa !29
  %t138 = load %"compiler/profile:node", ptr %l125
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2ePush_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s8, ptr %t137, %"compiler/profile:node" %t138)
  br label %bb38
bb38:
  %t139 = load i64, ptr %l8, !tbaa !24
  %t142 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eRefMut_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t139)
  store ptr %t142, ptr %l128
  br label %bb39
bb39:
  %t143 = load ptr, ptr %l128, !tbaa !29
  %t145 = getelementptr %"compiler/profile:node", ptr %t143, i32 0, i32 3
  %t146 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t145, i64 %t146)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s8)
  br label %bb41
bb41:
  %t149 = load i64, ptr %l14, !tbaa !24
  %t151 = getelementptr %"compiler/profile:Sample", ptr %l6, i32 0, i32 0
  %t152 = load i64, ptr %t151, !tbaa !24
  store i64 %t152, ptr %l19, !tbaa !24
  %t157 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eRefMut_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t149)
  store ptr %t157, ptr %l136
  br label %bb42
bb42:
  %t158 = load ptr, ptr %l136, !tbaa !29
  store ptr %t158, ptr %l137, !tbaa !29
  %t160 = load ptr, ptr %l137, !tbaa !29
  %t161 = getelementptr %"compiler/profile:node", ptr %t160, i32 0, i32 2
  %t162 = load i64, ptr %t161, !tbaa !24
  %t163 = load i64, ptr %l19, !tbaa !24
  %t166 = add i64 %t162, %t163
  %t168 = load ptr, ptr %l137, !tbaa !29
  %t169 = getelementptr %"compiler/profile:node", ptr %t168, i32 0, i32 2
  store i64 %t166, ptr %t169, !tbaa !24
  %t170 = load i64, ptr %l14, !tbaa !24
  store i64 %t170, ptr %l8, !tbaa !24
  %t172 = load i64, ptr %l12, !tbaa !24
  %t174 = sub i64 %t172, 1
  store i64 %t174, ptr %l12, !tbaa !24
  br label %bb43
bb43:
  br label %bb13
bb44:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb45:
  %t176 = load i64, ptr %l5, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l5, !tbaa !24
  br label %bb4
bb46:
  store i64 0, ptr %l21, !tbaa !24
  store ptr %l3, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb47
bb47:
  %t181 = load i64, ptr %l23, !tbaa !24
  store i64 %t181, ptr %l147, !tbaa !24
  %t182 = load ptr, ptr %l22, !tbaa !29
  %t184 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eLen_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %t182)
  store i64 %t184, ptr %l149
  br label %bb48
bb48:
  %t185 = load i64, ptr %l147, !tbaa !24
  %t186 = load i64, ptr %l149, !tbaa !24
  %t187 = icmp slt i64 %t185, %t186
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb49, label %bb50
bb49:
  br label %bb57
bb50:
  br label %bb51
bb51:
  %t191 = load ptr, ptr %l22, !tbaa !29
  %t192 = load i64, ptr %l23, !tbaa !24
  %t195 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %t191, i64 %t192)
  store %"compiler/profile:node" %t195, ptr %l154
  br label %bb52
bb52:
  %t196 = load %"compiler/profile:node", ptr %l154
  store %"compiler/profile:node" %t196, ptr %l24
  %t197 = getelementptr %"compiler/profile:node", ptr %l24, i32 0, i32 1
  %t198 = load i64, ptr %t197, !tbaa !24
  %t199 = load i64, ptr %l21, !tbaa !24
  %t202 = icmp sgt i64 %t198, %t199
  br i1 %t202, label %bb53, label %bb54
bb53:
  %t204 = getelementptr %"compiler/profile:node", ptr %l24, i32 0, i32 1
  %t205 = load i64, ptr %t204, !tbaa !24
  store i64 %t205, ptr %l21, !tbaa !24
  br label %bb55
bb54:
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t207 = load i64, ptr %l23, !tbaa !24
  %t209 = add i64 %t207, 1
  store i64 %t209, ptr %l23, !tbaa !24
  br label %bb47
bb57:
  %t212 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 0)
  store %"compiler/profile:node" %t212, ptr %l162
  br label %bb58
bb58:
  %t213 = getelementptr %"compiler/profile:node", ptr %l162, i32 0, i32 2
  %t214 = load i64, ptr %t213, !tbaa !24
  store i64 %t214, ptr %l25, !tbaa !24
  %t216 = load i64, ptr %l21, !tbaa !24
  %t218 = add i64 %t216, 1
  %t219 = load i64, ptr @G_2ecompiler_2fprofile_2eFrameHeight, !tbaa !24
  %t222 = mul i64 %t218, %t219
  %t224 = add i64 %t222, 40
  store i64 %t224, ptr %l26, !tbaa !24
  %t226 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t226, ptr %l169
  br label %bb59
bb59:
  %t227 = load %"std/prelude/text:StringBuilder", ptr %l169
  store %"std/prelude/text:StringBuilder" %t227, ptr %l27
  %t228 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l170
  br label %bb60
bb60:
  %t229 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t229, ptr %l28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l28, i64 0)
  br label %bb61
bb61:
  %t231 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t231, ptr %l172
  br label %bb62
bb62:
  %t232 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l172
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232, ptr %l29
  store ptr %l3, ptr %l30, !tbaa !29
  store i64 0, ptr %l31, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s15
  %t234 = load i64, ptr %l31, !tbaa !24
  store i64 %t234, ptr %l174, !tbaa !24
  %t235 = load ptr, ptr %l30, !tbaa !29
  %t237 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eLen_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %t235)
  store i64 %t237, ptr %l176
  br label %bb64
bb64:
  %t238 = load i64, ptr %l174, !tbaa !24
  %t239 = load i64, ptr %l176, !tbaa !24
  %t240 = icmp slt i64 %t238, %t239
  %t242 = xor i1 %t240, true
  br i1 %t242, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s15)
  br label %bb72
bb66:
  br label %bb67
bb67:
  %t244 = load ptr, ptr %l30, !tbaa !29
  %t245 = load i64, ptr %l31, !tbaa !24
  %t248 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %t244, i64 %t245)
  store %"compiler/profile:node" %t248, ptr %l181
  br label %bb68
bb68:
  %t250 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s15, ptr %l181)
  store %"compiler/profile:node" %t250, ptr %l183
  br label %bb69
bb69:
  %t251 = load %"compiler/profile:node", ptr %l183
  store %"compiler/profile:node" %t251, ptr %l32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l29, i64 0)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s15)
  br label %bb71
bb71:
  %t253 = load i64, ptr %l31, !tbaa !24
  %t255 = add i64 %t253, 1
  store i64 %t255, ptr %l31, !tbaa !24
  br label %bb63
bb72:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb73
bb73:
  store %olang.scope zeroinitializer, ptr %s18
  %t257 = load i64, ptr %l33, !tbaa !24
  store i64 %t257, ptr %l187, !tbaa !24
  %t259 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l28)
  store i64 %t259, ptr %l189
  br label %bb74
bb74:
  %t260 = load i64, ptr %l187, !tbaa !24
  %t261 = load i64, ptr %l189, !tbaa !24
  %t262 = icmp slt i64 %t260, %t261
  %t264 = xor i1 %t262, true
  br i1 %t264, label %bb75, label %bb76
bb75:
  call void @__olang_scope_close(ptr %s18)
  br label %bb97
bb76:
  br label %bb77
bb77:
  %t266 = load i64, ptr %l33, !tbaa !24
  %t269 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l28, i64 %t266)
  store i64 %t269, ptr %l194
  br label %bb78
bb78:
  %t270 = load i64, ptr %l194, !tbaa !24
  store i64 %t270, ptr %l34, !tbaa !24
  %t271 = load i64, ptr %l34, !tbaa !24
  %t274 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t271)
  store %"compiler/profile:node" %t274, ptr %l197
  br label %bb79
bb79:
  %t276 = call %"compiler/profile:node" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fprofile_3anode(ptr %s0, ptr %l197)
  store %"compiler/profile:node" %t276, ptr %l199
  br label %bb80
bb80:
  %t277 = getelementptr %"compiler/profile:node", ptr %l199, i32 0, i32 3
  %t278 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t277
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t278, ptr %l200
  %t280 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s18, ptr %l200)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %l202
  br label %bb81
bb81:
  %t281 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l202
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t281, ptr %l35
  store ptr %l35, ptr %l203, !tbaa !29
  %t282 = load ptr, ptr %l2, !tbaa !29
  store ptr %t282, ptr %l204, !tbaa !29
  %t283 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t283, ptr %l205
  %t285 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %l205)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t285, ptr %l207
  br label %bb82
bb82:
  %t286 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr null, i32 1
  %t287 = ptrtoint ptr %t286 to i64
  %t289 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %t288, i32 0, i32 0
  %t290 = load ptr, ptr %l204, !tbaa !29
  store ptr %t290, ptr %t289, !tbaa !28
  %t291 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %t288, i32 0, i32 1
  %t292 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l207
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t292, ptr %t291, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t293 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %t288, i32 0, i32 2
  store ptr %v2, ptr %t293, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t294 = getelementptr { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr }, ptr %t288, i32 0, i32 3
  store ptr %s0, ptr %t294, !tbaa !28
  %t295 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t296 = insertvalue { ptr, ptr } %t295, ptr %t288, 1
  %t297 = load ptr, ptr %l203, !tbaa !29
  %t299 = extractvalue { ptr, ptr } %t296, 0
  %t300 = extractvalue { ptr, ptr } %t296, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s18, ptr %s18, ptr %t297, ptr %t299, ptr %t300)
  br label %bb83
bb83:
  %t301 = load i64, ptr %l34, !tbaa !24
  %t304 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l29, i64 %t301)
  store i64 %t304, ptr %l211
  br label %bb84
bb84:
  %t305 = load i64, ptr %l211, !tbaa !24
  store i64 %t305, ptr %l36, !tbaa !24
  store ptr %l35, ptr %l37, !tbaa !29
  store i64 0, ptr %l38, !tbaa !24
  br label %bb85
bb85:
  store %olang.scope zeroinitializer, ptr %s20
  %t307 = load i64, ptr %l38, !tbaa !24
  store i64 %t307, ptr %l213, !tbaa !24
  %t308 = load ptr, ptr %l37, !tbaa !29
  %t310 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s18, ptr %t308)
  store i64 %t310, ptr %l215
  br label %bb86
bb86:
  %t311 = load i64, ptr %l213, !tbaa !24
  %t312 = load i64, ptr %l215, !tbaa !24
  %t313 = icmp slt i64 %t311, %t312
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s20)
  br label %bb95
bb88:
  br label %bb89
bb89:
  %t317 = load ptr, ptr %l37, !tbaa !29
  %t318 = load i64, ptr %l38, !tbaa !24
  %t321 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s18, ptr %t317, i64 %t318)
  store i64 %t321, ptr %l220
  br label %bb90
bb90:
  %t322 = load i64, ptr %l220, !tbaa !24
  store i64 %t322, ptr %l39, !tbaa !24
  %t323 = load i64, ptr %l39, !tbaa !24
  %t324 = load i64, ptr %l36, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %s0, ptr %l29, i64 %t323, i64 %t324)
  br label %bb91
bb91:
  %t328 = load i64, ptr %l36, !tbaa !24
  store i64 %t328, ptr %l224, !tbaa !24
  %t329 = load i64, ptr %l39, !tbaa !24
  %t332 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s20, ptr %l3, i64 %t329)
  store %"compiler/profile:node" %t332, ptr %l227
  br label %bb92
bb92:
  %t333 = getelementptr %"compiler/profile:node", ptr %l227, i32 0, i32 2
  %t334 = load i64, ptr %t333, !tbaa !24
  %t335 = load i64, ptr %l224, !tbaa !24
  %t337 = add i64 %t335, %t334
  store i64 %t337, ptr %l36, !tbaa !24
  %t339 = load i64, ptr %l39, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l28, i64 %t339)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s20)
  br label %bb94
bb94:
  %t342 = load i64, ptr %l38, !tbaa !24
  %t344 = add i64 %t342, 1
  store i64 %t344, ptr %l38, !tbaa !24
  br label %bb85
bb95:
  call void @__olang_scope_close(ptr %s18)
  br label %bb96
bb96:
  %t346 = load i64, ptr %l33, !tbaa !24
  %t348 = add i64 %t346, 1
  store i64 %t348, ptr %l33, !tbaa !24
  br label %bb73
bb97:
  store ptr %l28, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb98
bb98:
  store %olang.scope zeroinitializer, ptr %s24
  %t351 = load i64, ptr %l41, !tbaa !24
  store i64 %t351, ptr %l237, !tbaa !24
  %t352 = load ptr, ptr %l40, !tbaa !29
  %t354 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t352)
  store i64 %t354, ptr %l239
  br label %bb99
bb99:
  %t355 = load i64, ptr %l237, !tbaa !24
  %t356 = load i64, ptr %l239, !tbaa !24
  %t357 = icmp slt i64 %t355, %t356
  %t359 = xor i1 %t357, true
  br i1 %t359, label %bb100, label %bb101
bb100:
  call void @__olang_scope_close(ptr %s24)
  br label %bb117
bb101:
  br label %bb102
bb102:
  %t361 = load ptr, ptr %l40, !tbaa !29
  %t362 = load i64, ptr %l41, !tbaa !24
  %t365 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t361, i64 %t362)
  store i64 %t365, ptr %l244
  br label %bb103
bb103:
  %t366 = load i64, ptr %l244, !tbaa !24
  store i64 %t366, ptr %l42, !tbaa !24
  %t367 = load i64, ptr %l42, !tbaa !24
  %t370 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eRef_3ccompiler_2fprofile_3anode_3e(ptr %s0, ptr %s0, ptr %l3, i64 %t367)
  store ptr %t370, ptr %l247
  br label %bb104
bb104:
  %t371 = load ptr, ptr %l247, !tbaa !29
  store ptr %t371, ptr %l43, !tbaa !29
  %t372 = load i64, ptr %l42, !tbaa !24
  %t374 = icmp eq i64 %t372, 0
  br i1 %t374, label %bb105, label %bb106
bb105:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l250, !tbaa !27
  br label %bb108
bb106:
  %t376 = load ptr, ptr %l2, !tbaa !29
  %t378 = getelementptr %"compiler/profile:Places", ptr %t376, i32 0, i32 0
  %t379 = load ptr, ptr %l43, !tbaa !29
  %t381 = getelementptr %"compiler/profile:node", ptr %t379, i32 0, i32 0
  %t382 = load i64, ptr %t381, !tbaa !24
  %t385 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %s24, ptr %t378, i64 %t382)
  store { i64, ptr } %t385, ptr %l255
  br label %bb107
bb107:
  %t386 = load { i64, ptr }, ptr %l255, !tbaa !27
  store { i64, ptr } %t386, ptr %l250, !tbaa !27
  br label %bb108
bb108:
  %t387 = load { i64, ptr }, ptr %l250, !tbaa !27
  store { i64, ptr } %t387, ptr %l44, !tbaa !27
  %t388 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t388, ptr %l256, !tbaa !27
  %t389 = load ptr, ptr %l43, !tbaa !29
  %t391 = getelementptr %"compiler/profile:node", ptr %t389, i32 0, i32 2
  %t392 = load i64, ptr %t391, !tbaa !24
  %t393 = load ptr, ptr %l1, !tbaa !29
  %t395 = getelementptr %"compiler/profile:Profile", ptr %t393, i32 0, i32 0
  %t396 = load i64, ptr %t395, !tbaa !24
  %t399 = call { i64, ptr } @compiler_2fprofile_2emillis(ptr %s24, i64 %t392, i64 %t396)
  store { i64, ptr } %t399, ptr %l261
  br label %bb109
bb109:
  %t400 = load ptr, ptr %l43, !tbaa !29
  %t402 = getelementptr %"compiler/profile:node", ptr %t400, i32 0, i32 2
  %t403 = load i64, ptr %t402, !tbaa !24
  %t404 = load i64, ptr %l25, !tbaa !24
  %t407 = call { i64, ptr } @compiler_2fprofile_2epct(ptr %s24, i64 %t403, i64 %t404)
  store { i64, ptr } %t407, ptr %l265
  br label %bb110
bb110:
  %t408 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t408, 1
  %t410 = extractvalue { i64, ptr } %t408, 0
  %t411 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t412 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t413 = add i64 %t410, %t412
  %t414 = load { i64, ptr }, ptr %l261, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = extractvalue { i64, ptr } %t414, 0
  %t417 = add i64 %t413, %t416
  %t418 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t420 = add i64 %t417, %t419
  %t421 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t421, 1
  %t423 = extractvalue { i64, ptr } %t421, 0
  %t424 = add i64 %t420, %t423
  %t425 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t424)
  call void @olang_textcopy(ptr %t425, ptr %t409, i64 %t410)
  %t426 = getelementptr i8, ptr %t425, i64 %t410
  call void @olang_textcopy(ptr %t426, ptr %t411, i64 %t412)
  %t427 = getelementptr i8, ptr %t426, i64 %t412
  call void @olang_textcopy(ptr %t427, ptr %t415, i64 %t416)
  %t428 = getelementptr i8, ptr %t427, i64 %t416
  call void @olang_textcopy(ptr %t428, ptr %t418, i64 %t419)
  %t429 = getelementptr i8, ptr %t428, i64 %t419
  call void @olang_textcopy(ptr %t429, ptr %t422, i64 %t423)
  %t430 = insertvalue { i64, ptr } undef, i64 %t424, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr %t425, 1
  store { i64, ptr } %t431, ptr %l45, !tbaa !27
  %t433 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t435 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %s24, { i64, ptr } %t433)
  store i64 %t435, ptr %l268
  br label %bb111
bb111:
  %t436 = load i64, ptr %l268, !tbaa !24
  %t437 = and i64 %t436, 65535
  store i64 %t437, ptr %l46, !tbaa !24
  %t439 = load i64, ptr %l46, !tbaa !24
  %t441 = srem i64 %t439, 50
  %t443 = add i64 205, %t441
  store i64 %t443, ptr %l47, !tbaa !24
  %t445 = load i64, ptr %l46, !tbaa !24
  %t447 = sdiv i64 %t445, 50
  %t449 = srem i64 %t447, 140
  %t451 = add i64 90, %t449
  store i64 %t451, ptr %l48, !tbaa !24
  %t453 = load i64, ptr %l46, !tbaa !24
  %t455 = sdiv i64 %t453, 7000
  %t457 = srem i64 %t455, 55
  store i64 %t457, ptr %l49, !tbaa !24
  %t459 = load i64, ptr %l26, !tbaa !24
  %t461 = sub i64 %t459, 20
  %t462 = load ptr, ptr %l43, !tbaa !29
  %t464 = getelementptr %"compiler/profile:node", ptr %t462, i32 0, i32 1
  %t465 = load i64, ptr %t464, !tbaa !24
  %t467 = add i64 %t465, 1
  %t468 = load i64, ptr @G_2ecompiler_2fprofile_2eFrameHeight, !tbaa !24
  %t471 = mul i64 %t467, %t468
  %t474 = sub i64 %t461, %t471
  store i64 %t474, ptr %l50, !tbaa !24
  store ptr %l27, ptr %l288, !tbaa !29
  %t476 = load i64, ptr %l42, !tbaa !24
  %t479 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l29, i64 %t476)
  store i64 %t479, ptr %l291
  br label %bb112
bb112:
  %t480 = load ptr, ptr %l43, !tbaa !29
  %t482 = getelementptr %"compiler/profile:node", ptr %t480, i32 0, i32 2
  %t483 = load i64, ptr %t482, !tbaa !24
  store i64 %t483, ptr %l293, !tbaa !24
  %t484 = load ptr, ptr %l43, !tbaa !29
  %t486 = getelementptr %"compiler/profile:node", ptr %t484, i32 0, i32 1
  %t487 = load i64, ptr %t486, !tbaa !24
  store i64 %t487, ptr %l295, !tbaa !24
  %t488 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t490 = call { i64, ptr } @compiler_2fprofile_2eescapeXml(ptr %s24, ptr %s24, { i64, ptr } %t488)
  store { i64, ptr } %t490, ptr %l297
  br label %bb113
bb113:
  %t491 = load i64, ptr %l50, !tbaa !24
  store i64 %t491, ptr %l298, !tbaa !24
  %t492 = load i64, ptr @G_2ecompiler_2fprofile_2eFrameHeight, !tbaa !24
  %t494 = sub i64 %t492, 1
  store i64 %t494, ptr %l300, !tbaa !24
  %t495 = load i64, ptr %l47, !tbaa !24
  store i64 %t495, ptr %l301, !tbaa !24
  %t496 = load i64, ptr %l48, !tbaa !24
  store i64 %t496, ptr %l302, !tbaa !24
  %t497 = load i64, ptr %l49, !tbaa !24
  store i64 %t497, ptr %l303, !tbaa !24
  %t498 = load i64, ptr %l50, !tbaa !24
  %t500 = add i64 %t498, 13
  %t502 = call i64 @__olang_fmt_i64(ptr null, i64 %t500)
  %t503 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t502)
  %t504 = call i64 @__olang_fmt_i64(ptr %t503, i64 %t500)
  %t505 = insertvalue { i64, ptr } undef, i64 %t502, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr %t503, 1
  store { i64, ptr } %t506, ptr %l306, !tbaa !27
  %t507 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t509 = call { i64, ptr } @compiler_2fprofile_2eescapeXml(ptr %s24, ptr %s24, { i64, ptr } %t507)
  store { i64, ptr } %t509, ptr %l308
  br label %bb114
bb114:
  %t510 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t511 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t512 = load i64, ptr %l291, !tbaa !24
  %t513 = call i64 @__olang_fmt_i64(ptr null, i64 %t512)
  %t514 = add i64 %t511, %t513
  %t515 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t516 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t517 = add i64 %t514, %t516
  %t518 = load i64, ptr %l293, !tbaa !24
  %t519 = call i64 @__olang_fmt_i64(ptr null, i64 %t518)
  %t520 = add i64 %t517, %t519
  %t521 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t522 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t523 = add i64 %t520, %t522
  %t524 = load i64, ptr %l295, !tbaa !24
  %t525 = call i64 @__olang_fmt_i64(ptr null, i64 %t524)
  %t526 = add i64 %t523, %t525
  %t527 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t528 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t529 = add i64 %t526, %t528
  %t530 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t531 = extractvalue { i64, ptr } %t530, 1
  %t532 = extractvalue { i64, ptr } %t530, 0
  %t533 = add i64 %t529, %t532
  %t534 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t535 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t536 = add i64 %t533, %t535
  %t537 = load i64, ptr %l298, !tbaa !24
  %t538 = call i64 @__olang_fmt_i64(ptr null, i64 %t537)
  %t539 = add i64 %t536, %t538
  %t540 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t541 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t542 = add i64 %t539, %t541
  %t543 = load i64, ptr %l300, !tbaa !24
  %t544 = call i64 @__olang_fmt_i64(ptr null, i64 %t543)
  %t545 = add i64 %t542, %t544
  %t546 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t547 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t548 = add i64 %t545, %t547
  %t549 = load i64, ptr %l301, !tbaa !24
  %t550 = call i64 @__olang_fmt_i64(ptr null, i64 %t549)
  %t551 = add i64 %t548, %t550
  %t552 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t553 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t554 = add i64 %t551, %t553
  %t555 = load i64, ptr %l302, !tbaa !24
  %t556 = call i64 @__olang_fmt_i64(ptr null, i64 %t555)
  %t557 = add i64 %t554, %t556
  %t558 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t559 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t560 = add i64 %t557, %t559
  %t561 = load i64, ptr %l303, !tbaa !24
  %t562 = call i64 @__olang_fmt_i64(ptr null, i64 %t561)
  %t563 = add i64 %t560, %t562
  %t564 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t565 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t566 = add i64 %t563, %t565
  %t567 = load { i64, ptr }, ptr %l306, !tbaa !27
  %t568 = extractvalue { i64, ptr } %t567, 1
  %t569 = extractvalue { i64, ptr } %t567, 0
  %t570 = add i64 %t566, %t569
  %t571 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t572 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t573 = add i64 %t570, %t572
  %t574 = load { i64, ptr }, ptr %l308, !tbaa !27
  %t575 = extractvalue { i64, ptr } %t574, 1
  %t576 = extractvalue { i64, ptr } %t574, 0
  %t577 = add i64 %t573, %t576
  %t578 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t579 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t580 = add i64 %t577, %t579
  %t581 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t580)
  call void @olang_textcopy(ptr %t581, ptr %t510, i64 %t511)
  %t582 = getelementptr i8, ptr %t581, i64 %t511
  %t583 = call i64 @__olang_fmt_i64(ptr %t582, i64 %t512)
  %t584 = getelementptr i8, ptr %t582, i64 %t513
  call void @olang_textcopy(ptr %t584, ptr %t515, i64 %t516)
  %t585 = getelementptr i8, ptr %t584, i64 %t516
  %t586 = call i64 @__olang_fmt_i64(ptr %t585, i64 %t518)
  %t587 = getelementptr i8, ptr %t585, i64 %t519
  call void @olang_textcopy(ptr %t587, ptr %t521, i64 %t522)
  %t588 = getelementptr i8, ptr %t587, i64 %t522
  %t589 = call i64 @__olang_fmt_i64(ptr %t588, i64 %t524)
  %t590 = getelementptr i8, ptr %t588, i64 %t525
  call void @olang_textcopy(ptr %t590, ptr %t527, i64 %t528)
  %t591 = getelementptr i8, ptr %t590, i64 %t528
  call void @olang_textcopy(ptr %t591, ptr %t531, i64 %t532)
  %t592 = getelementptr i8, ptr %t591, i64 %t532
  call void @olang_textcopy(ptr %t592, ptr %t534, i64 %t535)
  %t593 = getelementptr i8, ptr %t592, i64 %t535
  %t594 = call i64 @__olang_fmt_i64(ptr %t593, i64 %t537)
  %t595 = getelementptr i8, ptr %t593, i64 %t538
  call void @olang_textcopy(ptr %t595, ptr %t540, i64 %t541)
  %t596 = getelementptr i8, ptr %t595, i64 %t541
  %t597 = call i64 @__olang_fmt_i64(ptr %t596, i64 %t543)
  %t598 = getelementptr i8, ptr %t596, i64 %t544
  call void @olang_textcopy(ptr %t598, ptr %t546, i64 %t547)
  %t599 = getelementptr i8, ptr %t598, i64 %t547
  %t600 = call i64 @__olang_fmt_i64(ptr %t599, i64 %t549)
  %t601 = getelementptr i8, ptr %t599, i64 %t550
  call void @olang_textcopy(ptr %t601, ptr %t552, i64 %t553)
  %t602 = getelementptr i8, ptr %t601, i64 %t553
  %t603 = call i64 @__olang_fmt_i64(ptr %t602, i64 %t555)
  %t604 = getelementptr i8, ptr %t602, i64 %t556
  call void @olang_textcopy(ptr %t604, ptr %t558, i64 %t559)
  %t605 = getelementptr i8, ptr %t604, i64 %t559
  %t606 = call i64 @__olang_fmt_i64(ptr %t605, i64 %t561)
  %t607 = getelementptr i8, ptr %t605, i64 %t562
  call void @olang_textcopy(ptr %t607, ptr %t564, i64 %t565)
  %t608 = getelementptr i8, ptr %t607, i64 %t565
  call void @olang_textcopy(ptr %t608, ptr %t568, i64 %t569)
  %t609 = getelementptr i8, ptr %t608, i64 %t569
  call void @olang_textcopy(ptr %t609, ptr %t571, i64 %t572)
  %t610 = getelementptr i8, ptr %t609, i64 %t572
  call void @olang_textcopy(ptr %t610, ptr %t575, i64 %t576)
  %t611 = getelementptr i8, ptr %t610, i64 %t576
  call void @olang_textcopy(ptr %t611, ptr %t578, i64 %t579)
  %t612 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t613 = insertvalue { i64, ptr } %t612, ptr %t581, 1
  %t615 = extractvalue { i64, ptr } %t613, 0
  %t616 = extractvalue { i64, ptr } %t613, 1
  %t617 = mul i64 %t615, 1
  %t618 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t617)
  call void @llvm.memcpy.p0.p0.i64(ptr %t618, ptr %t616, i64 %t617, i1 false)
  %t619 = insertvalue { i64, ptr } undef, i64 %t615, 0
  %t620 = insertvalue { i64, ptr } %t619, ptr %t618, 1
  %t621 = load ptr, ptr %l288, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s24, ptr %t621, { i64, ptr } %t620)
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s24)
  br label %bb116
bb116:
  %t623 = load i64, ptr %l41, !tbaa !24
  %t625 = add i64 %t623, 1
  store i64 %t625, ptr %l41, !tbaa !24
  br label %bb98
bb117:
  %t627 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t627, ptr %l313
  br label %bb118
bb118:
  %t628 = load %"std/prelude/text:StringBuilder", ptr %l313
  store %"std/prelude/text:StringBuilder" %t628, ptr %l51
  store ptr %l51, ptr %l314, !tbaa !29
  %t629 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t631 = call { i64, ptr } @compiler_2fprofile_2eescapeXml(ptr %v0, ptr %s0, { i64, ptr } %t629)
  store { i64, ptr } %t631, ptr %l316
  br label %bb119
bb119:
  %t632 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t633 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t634 = load { i64, ptr }, ptr %l316, !tbaa !27
  %t635 = extractvalue { i64, ptr } %t634, 1
  %t636 = extractvalue { i64, ptr } %t634, 0
  %t637 = add i64 %t633, %t636
  %t638 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t639 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t640 = add i64 %t637, %t639
  %t641 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t640)
  call void @olang_textcopy(ptr %t641, ptr %t632, i64 %t633)
  %t642 = getelementptr i8, ptr %t641, i64 %t633
  call void @olang_textcopy(ptr %t642, ptr %t635, i64 %t636)
  %t643 = getelementptr i8, ptr %t642, i64 %t636
  call void @olang_textcopy(ptr %t643, ptr %t638, i64 %t639)
  %t644 = insertvalue { i64, ptr } undef, i64 %t640, 0
  %t645 = insertvalue { i64, ptr } %t644, ptr %t641, 1
  %t647 = extractvalue { i64, ptr } %t645, 0
  %t648 = extractvalue { i64, ptr } %t645, 1
  %t649 = mul i64 %t647, 1
  %t650 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t649)
  call void @llvm.memcpy.p0.p0.i64(ptr %t650, ptr %t648, i64 %t649, i1 false)
  %t651 = insertvalue { i64, ptr } undef, i64 %t647, 0
  %t652 = insertvalue { i64, ptr } %t651, ptr %t650, 1
  %t653 = load ptr, ptr %l314, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t653, { i64, ptr } %t652)
  br label %bb120
bb120:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l51, { i64, ptr } { i64 213, ptr getelementptr inbounds (<{ i64, [213 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb121
bb121:
  %t656 = load ptr, ptr %l1, !tbaa !29
  %t658 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aProfile_2eTotal(ptr %v1, ptr %t656)
  store i64 %t658, ptr %l321
  br label %bb122
bb122:
  %t659 = load i64, ptr %l321, !tbaa !24
  %t660 = sitofp i64 %t659 to double
  %t661 = load ptr, ptr %l1, !tbaa !29
  %t663 = getelementptr %"compiler/profile:Profile", ptr %t661, i32 0, i32 0
  %t664 = load i64, ptr %t663, !tbaa !24
  %t666 = sitofp i64 %t664 to double
  %t669 = fmul double %t660, %t666
  %t671 = fdiv double %t669, 0x41cdcd6500000000
  store double %t671, ptr %l52, !tbaa !26
  store ptr %l51, ptr %l328, !tbaa !29
  %t673 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t675 = call { i64, ptr } @compiler_2fprofile_2eescapeXml(ptr %v0, ptr %s0, { i64, ptr } %t673)
  store { i64, ptr } %t675, ptr %l330
  br label %bb123
bb123:
  %t676 = load ptr, ptr %l1, !tbaa !29
  %t678 = getelementptr %"compiler/profile:Profile", ptr %t676, i32 0, i32 3
  %t680 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eLen_3ccompiler_2fprofile_3aSample_3e(ptr %v1, ptr %t678)
  store i64 %t680, ptr %l333
  br label %bb124
bb124:
  %t681 = load double, ptr %l52, !tbaa !26
  %t683 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %s0, double %t681, i64 3)
  store { i64, ptr } %t683, ptr %l335
  br label %bb125
bb125:
  %t684 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t685 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t686 = load { i64, ptr }, ptr %l330, !tbaa !27
  %t687 = extractvalue { i64, ptr } %t686, 1
  %t688 = extractvalue { i64, ptr } %t686, 0
  %t689 = add i64 %t685, %t688
  %t690 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t691 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t692 = add i64 %t689, %t691
  %t693 = load i64, ptr %l333, !tbaa !24
  %t694 = call i64 @__olang_fmt_i64(ptr null, i64 %t693)
  %t695 = add i64 %t692, %t694
  %t696 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t697 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t698 = add i64 %t695, %t697
  %t699 = load { i64, ptr }, ptr %l335, !tbaa !27
  %t700 = extractvalue { i64, ptr } %t699, 1
  %t701 = extractvalue { i64, ptr } %t699, 0
  %t702 = add i64 %t698, %t701
  %t703 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t704 = extractvalue { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t705 = add i64 %t702, %t704
  %t706 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t705)
  call void @olang_textcopy(ptr %t706, ptr %t684, i64 %t685)
  %t707 = getelementptr i8, ptr %t706, i64 %t685
  call void @olang_textcopy(ptr %t707, ptr %t687, i64 %t688)
  %t708 = getelementptr i8, ptr %t707, i64 %t688
  call void @olang_textcopy(ptr %t708, ptr %t690, i64 %t691)
  %t709 = getelementptr i8, ptr %t708, i64 %t691
  %t710 = call i64 @__olang_fmt_i64(ptr %t709, i64 %t693)
  %t711 = getelementptr i8, ptr %t709, i64 %t694
  call void @olang_textcopy(ptr %t711, ptr %t696, i64 %t697)
  %t712 = getelementptr i8, ptr %t711, i64 %t697
  call void @olang_textcopy(ptr %t712, ptr %t700, i64 %t701)
  %t713 = getelementptr i8, ptr %t712, i64 %t701
  call void @olang_textcopy(ptr %t713, ptr %t703, i64 %t704)
  %t714 = insertvalue { i64, ptr } undef, i64 %t705, 0
  %t715 = insertvalue { i64, ptr } %t714, ptr %t706, 1
  %t717 = extractvalue { i64, ptr } %t715, 0
  %t718 = extractvalue { i64, ptr } %t715, 1
  %t719 = mul i64 %t717, 1
  %t720 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t719)
  call void @llvm.memcpy.p0.p0.i64(ptr %t720, ptr %t718, i64 %t719, i1 false)
  %t721 = insertvalue { i64, ptr } undef, i64 %t717, 0
  %t722 = insertvalue { i64, ptr } %t721, ptr %t720, 1
  %t723 = load ptr, ptr %l328, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t723, { i64, ptr } %t722)
  br label %bb126
bb126:
  store ptr %l51, ptr %l338, !tbaa !29
  %t725 = load i64, ptr @G_2ecompiler_2fprofile_2eFlameWidth, !tbaa !24
  store i64 %t725, ptr %l339, !tbaa !24
  %t726 = load i64, ptr %l26, !tbaa !24
  store i64 %t726, ptr %l340, !tbaa !24
  %t727 = load i64, ptr %l25, !tbaa !24
  store i64 %t727, ptr %l341, !tbaa !24
  %t729 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l27)
  store { i64, ptr } %t729, ptr %l343
  br label %bb127
bb127:
  %t730 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t731 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t732 = load i64, ptr %l339, !tbaa !24
  %t733 = call i64 @__olang_fmt_i64(ptr null, i64 %t732)
  %t734 = add i64 %t731, %t733
  %t735 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t736 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t737 = add i64 %t734, %t736
  %t738 = load i64, ptr %l340, !tbaa !24
  %t739 = call i64 @__olang_fmt_i64(ptr null, i64 %t738)
  %t740 = add i64 %t737, %t739
  %t741 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t742 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t743 = add i64 %t740, %t742
  %t744 = load i64, ptr %l341, !tbaa !24
  %t745 = call i64 @__olang_fmt_i64(ptr null, i64 %t744)
  %t746 = add i64 %t743, %t745
  %t747 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t748 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t749 = add i64 %t746, %t748
  %t750 = load { i64, ptr }, ptr %l343, !tbaa !27
  %t751 = extractvalue { i64, ptr } %t750, 1
  %t752 = extractvalue { i64, ptr } %t750, 0
  %t753 = add i64 %t749, %t752
  %t754 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t755 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t756 = add i64 %t753, %t755
  %t757 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t756)
  call void @olang_textcopy(ptr %t757, ptr %t730, i64 %t731)
  %t758 = getelementptr i8, ptr %t757, i64 %t731
  %t759 = call i64 @__olang_fmt_i64(ptr %t758, i64 %t732)
  %t760 = getelementptr i8, ptr %t758, i64 %t733
  call void @olang_textcopy(ptr %t760, ptr %t735, i64 %t736)
  %t761 = getelementptr i8, ptr %t760, i64 %t736
  %t762 = call i64 @__olang_fmt_i64(ptr %t761, i64 %t738)
  %t763 = getelementptr i8, ptr %t761, i64 %t739
  call void @olang_textcopy(ptr %t763, ptr %t741, i64 %t742)
  %t764 = getelementptr i8, ptr %t763, i64 %t742
  %t765 = call i64 @__olang_fmt_i64(ptr %t764, i64 %t744)
  %t766 = getelementptr i8, ptr %t764, i64 %t745
  call void @olang_textcopy(ptr %t766, ptr %t747, i64 %t748)
  %t767 = getelementptr i8, ptr %t766, i64 %t748
  call void @olang_textcopy(ptr %t767, ptr %t751, i64 %t752)
  %t768 = getelementptr i8, ptr %t767, i64 %t752
  call void @olang_textcopy(ptr %t768, ptr %t754, i64 %t755)
  %t769 = insertvalue { i64, ptr } undef, i64 %t756, 0
  %t770 = insertvalue { i64, ptr } %t769, ptr %t757, 1
  %t772 = extractvalue { i64, ptr } %t770, 0
  %t773 = extractvalue { i64, ptr } %t770, 1
  %t774 = mul i64 %t772, 1
  %t775 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t774)
  call void @llvm.memcpy.p0.p0.i64(ptr %t775, ptr %t773, i64 %t774, i1 false)
  %t776 = insertvalue { i64, ptr } undef, i64 %t772, 0
  %t777 = insertvalue { i64, ptr } %t776, ptr %t775, 1
  %t778 = load ptr, ptr %l338, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t778, { i64, ptr } %t777)
  br label %bb128
bb128:
  %t780 = load { i64, ptr }, ptr @G_2ecompiler_2fprofile_2eFlameScript, !tbaa !27
  %t781 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %t781, ptr %l51, { i64, ptr } %t780)
  br label %bb129
bb129:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l51, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb130
bb130:
  %t786 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l51)
  store { i64, ptr } %t786, ptr %l350
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s0)
  %t787 = load { i64, ptr }, ptr %l350, !tbaa !27
  store { i64, ptr } %t787, ptr %rv
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
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca %"compiler/profile:Places"
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca i64
  %l75 = alloca i64
  %l80 = alloca %"compiler/profile:Sample"
  %l85 = alloca i64
  %l88 = alloca i64
  %l111 = alloca i64
  %l114 = alloca i64
  %l118 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca i64
  %l123 = alloca i64
  %l130 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca i64
  %l135 = alloca i64
  %l140 = alloca i64
  %l141 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l143 = alloca i64
  %l144 = alloca { i64, ptr }
  %l146 = alloca i64
  %l148 = alloca i64
  %l153 = alloca %"compiler/profile:mapping"
  %l157 = alloca i1
  %l162 = alloca { i64, ptr }
  %l164 = alloca i64
  %l166 = alloca i64
  %l167 = alloca { i64, ptr }
  %l174 = alloca i1
  %l177 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca { i64, ptr }
  %l182 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l183 = alloca ptr
  %l186 = alloca ptr
  %l187 = alloca i32
  %l188 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l191 = alloca i64
  %l195 = alloca i64
  %l198 = alloca i64
  %l216 = alloca i64
  %l219 = alloca i64
  %l221 = alloca i1
  %l222 = alloca i64
  %l225 = alloca i64
  %l229 = alloca i64
  %l232 = alloca i64
  %l235 = alloca i64
  %l236 = alloca i64
  %l240 = alloca i64
  %l252 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l254 = alloca i1
  %l256 = alloca %"std/prelude/text:StringBuilder"
  %l258 = alloca i64
  %l262 = alloca i64
  %l265 = alloca i64
  %l285 = alloca i64
  %l287 = alloca ptr
  %l290 = alloca { i64, ptr }
  %l293 = alloca i64
  %l294 = alloca i64
  %l295 = alloca i64
  %l296 = alloca i32
  %l297 = alloca { i64, ptr }
  %l306 = alloca %"std/os:Output"
  %l310 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l315 = alloca %"std/os:Output"
  %l316 = alloca i32
  %l318 = alloca i1
  %l321 = alloca %"std/os:Output"
  %l325 = alloca %"std/prelude/text:LineIter"
  %l326 = alloca { i64, ptr }
  %l328 = alloca { i64, ptr }
  %l329 = alloca i32
  %l331 = alloca i1
  %l334 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l336 = alloca i64
  %l340 = alloca i64
  %l343 = alloca i64
  %l361 = alloca ptr
  %l363 = alloca i64
  %l366 = alloca i64
  %l368 = alloca i1
  %l369 = alloca i64
  %l371 = alloca i64
  %l374 = alloca i64
  %l376 = alloca i64
  %l378 = alloca i1
  %l381 = alloca { i64, ptr }
  %l382 = alloca i1
  %l387 = alloca { i64, ptr }
  %l391 = alloca { i64, ptr }
  %l395 = alloca { { i64, ptr }, i64 }
  %l396 = alloca { i64, ptr }
  %l397 = alloca i64
  %l398 = alloca { i64, ptr }
  %l400 = alloca { i64, ptr }
  %l402 = alloca i1
  %l403 = alloca i1
  %l406 = alloca { i64, ptr }
  %l407 = alloca i1
  %l408 = alloca ptr
  %l411 = alloca { i64, ptr }
  %l412 = alloca i1
  %l414 = alloca ptr
  %l415 = alloca i64
  %l419 = alloca { i64, ptr }
  %l421 = alloca { i64, ptr }
  %l424 = alloca { i64, ptr }
  %l425 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l426 = alloca ptr
  %l427 = alloca ptr
  %l430 = alloca { i64, ptr }
  %l431 = alloca ptr
  %l432 = alloca i32
  %l433 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l435 = alloca ptr
  %l438 = alloca i64
  %l439 = alloca { i64, ptr }
  %l441 = alloca { i64, ptr }
  %l443 = alloca i1
  %l444 = alloca { i64, ptr }
  %l446 = alloca i1
  %l449 = alloca i64
  %l450 = alloca i64
  %l451 = alloca i64
  %l452 = alloca i32
  %l453 = alloca { i64, ptr }
  %l456 = alloca { i64, ptr }
  %l457 = alloca { i64, ptr }
  %l460 = alloca { i64, ptr }
  %l462 = alloca { i64, ptr }
  %l464 = alloca ptr
  %l467 = alloca i64
  %l470 = alloca i64
  %l472 = alloca %"compiler/profile:Frame"
  %l479 = alloca i1
  %l482 = alloca i64
  %l484 = alloca i1
  %l487 = alloca { i64, ptr }
  %l488 = alloca i1
  %l489 = alloca ptr
  %l492 = alloca { i64, ptr }
  %l493 = alloca i1
  %l495 = alloca ptr
  %l496 = alloca i64
  %l500 = alloca { i64, ptr }
  %l502 = alloca { i64, ptr }
  %l505 = alloca { i64, ptr }
  %l506 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l507 = alloca ptr
  %l508 = alloca ptr
  %l511 = alloca { i64, ptr }
  %l512 = alloca ptr
  %l513 = alloca i32
  %l514 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l516 = alloca ptr
  %l519 = alloca i64
  %l520 = alloca { i64, ptr }
  %l522 = alloca i1
  %l524 = alloca ptr
  %l525 = alloca ptr
  %l527 = alloca { i64, ptr }
  %l529 = alloca i64
  %l531 = alloca i64
  %l532 = alloca %"compiler/profile:Frame"
  %l537 = alloca { i64, ptr }
  %l538 = alloca i1
  %l540 = alloca { i64, ptr }
  %l543 = alloca { i64, ptr }
  %l544 = alloca { i64, ptr }
  %l545 = alloca ptr
  %l546 = alloca ptr
  %l549 = alloca i64
  %l550 = alloca i64
  %l551 = alloca i64
  %l552 = alloca i32
  %l553 = alloca { i64, ptr }
  %l557 = alloca i64
  %l559 = alloca i64
  %l560 = alloca %"compiler/profile:Frame"
  %l565 = alloca %"compiler/profile:Places"
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %t1 = alloca %"compiler/profile:Places", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fprofile_3aPlaces_2ector(ptr %t1, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l65, ptr %t1, i64 272, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 272, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l65, i64 272, i1 false)
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/profile:Profile", ptr %t4, i32 0, i32 5
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2emappings(ptr %v0, ptr %s0, { i64, ptr } %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l68
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l3
  %t11 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H6cf7c9f2359d1ee39cd99e769614c19f(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t11, ptr %l69
  br label %bb3
bb3:
  %t12 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %l4
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l70
  br label %bb4
bb4:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l5
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/profile:Profile", ptr %t15, i32 0, i32 3
  store ptr %t17, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t19 = load i64, ptr %l7, !tbaa !24
  store i64 %t19, ptr %l73, !tbaa !24
  %t20 = load ptr, ptr %l6, !tbaa !29
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aSample_3e_2eLen_3ccompiler_2fprofile_3aSample_3e(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l75
  br label %bb6
bb6:
  %t23 = load i64, ptr %l73, !tbaa !24
  %t24 = load i64, ptr %l75, !tbaa !24
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
  store %"compiler/profile:Sample" %t33, ptr %l80
  br label %bb10
bb10:
  %t34 = load %"compiler/profile:Sample", ptr %l80
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
  store i64 0, ptr %l85, !tbaa !24
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
  store i64 %t62, ptr %l88, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb15
bb15:
  %t64 = load i64, ptr %l88, !tbaa !24
  store i64 %t64, ptr %l85, !tbaa !24
  br label %bb16
bb16:
  %t65 = load i64, ptr %l85, !tbaa !24
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
  store i64 %t95, ptr %l111
  br label %bb21
bb21:
  %t96 = load i64, ptr %l14, !tbaa !24
  %t98 = icmp eq i64 %t96, 0
  br i1 %t98, label %bb22, label %bb23
bb22:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb24
bb23:
  store i64 1, ptr %l114, !tbaa !24
  br label %bb24
bb24:
  %t100 = load i64, ptr %l111, !tbaa !24
  %t101 = load i64, ptr %l114, !tbaa !24
  %t102 = sub i64 %t100, %t101
  store i64 %t102, ptr %l15, !tbaa !24
  %t104 = load ptr, ptr %lp2
  %t105 = getelementptr %"compiler/profile:Places", ptr %t104, i32 0, i32 5
  %t106 = load i64, ptr %l15, !tbaa !24
  %t109 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v2, ptr %t105, i64 %t106)
  store i1 %t109, ptr %l118
  br label %bb25
bb25:
  %t110 = load i1, ptr %l118, !tbaa !21
  %t111 = xor i1 %t110, true
  br i1 %t111, label %bb26, label %bb27
bb26:
  %t113 = load ptr, ptr %lp2
  %t114 = getelementptr %"compiler/profile:Places", ptr %t113, i32 0, i32 5
  store ptr %t114, ptr %l120, !tbaa !29
  %t115 = load i64, ptr %l15, !tbaa !24
  store i64 %t115, ptr %l121, !tbaa !24
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t117, ptr %l123
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t118 = load ptr, ptr %l120, !tbaa !29
  %t119 = load i64, ptr %l121, !tbaa !24
  %t120 = load i64, ptr %l123, !tbaa !24
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
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l130
  br label %bb36
bb36:
  %t133 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l130
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %l16
  %t134 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l131
  br label %bb37
bb37:
  %t135 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t135, ptr %l17
  store ptr %l5, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb38
bb38:
  %t137 = load i64, ptr %l19, !tbaa !24
  store i64 %t137, ptr %l133, !tbaa !24
  %t138 = load ptr, ptr %l18, !tbaa !29
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t138)
  store i64 %t140, ptr %l135
  br label %bb39
bb39:
  %t141 = load i64, ptr %l133, !tbaa !24
  %t142 = load i64, ptr %l135, !tbaa !24
  %t143 = icmp slt i64 %t141, %t142
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb40, label %bb41
bb40:
  br label %bb103
bb41:
  br label %bb42
bb42:
  %t147 = load ptr, ptr %l18, !tbaa !29
  %t148 = load i64, ptr %l19, !tbaa !24
  %t151 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t147, i64 %t148)
  store i64 %t151, ptr %l140
  br label %bb43
bb43:
  %t152 = load i64, ptr %l140, !tbaa !24
  store i64 %t152, ptr %l20, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l141, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t153, ptr %l142, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  store i64 %t155, ptr %l143, !tbaa !24
  %t156 = load i64, ptr %l143, !tbaa !24
  %t157 = mul i64 %t156, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t157)
  %t159 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  store { i64, ptr } %t160, ptr %l144, !tbaa !27
  %t161 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = load i64, ptr %l143, !tbaa !24
  %t166 = mul i64 %t165, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t162, ptr %t164, i64 %t166, i1 false)
  %t167 = load { i64, ptr }, ptr %l144, !tbaa !27
  store { i64, ptr } %t167, ptr %l21, !tbaa !27
  store i64 -1, ptr %l22, !tbaa !24
  store ptr %l3, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s11
  %t169 = load i64, ptr %l24, !tbaa !24
  store i64 %t169, ptr %l146, !tbaa !24
  %t170 = load ptr, ptr %l23, !tbaa !29
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2eLen__Heb6545c4cbf57678e5e8a74f397c9583(ptr %s0, ptr %t170)
  store i64 %t172, ptr %l148
  br label %bb45
bb45:
  %t173 = load i64, ptr %l146, !tbaa !24
  %t174 = load i64, ptr %l148, !tbaa !24
  %t175 = icmp slt i64 %t173, %t174
  %t177 = xor i1 %t175, true
  br i1 %t177, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s11)
  br label %bb99
bb47:
  br label %bb48
bb48:
  %t179 = load ptr, ptr %l23, !tbaa !29
  %t180 = load i64, ptr %l24, !tbaa !24
  %t183 = call %"compiler/profile:mapping" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2eAt_3ccompiler_2fprofile_3amapping_3e(ptr %s0, ptr %s0, ptr %t179, i64 %t180)
  store %"compiler/profile:mapping" %t183, ptr %l153
  br label %bb49
bb49:
  %t184 = load %"compiler/profile:mapping", ptr %l153
  store %"compiler/profile:mapping" %t184, ptr %l25
  %t185 = load i64, ptr %l20, !tbaa !24
  %t186 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 0
  %t187 = load i64, ptr %t186, !tbaa !24
  %t190 = icmp slt i64 %t185, %t187
  br i1 %t190, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb52
bb51:
  %t192 = load i64, ptr %l20, !tbaa !24
  %t193 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 1
  %t194 = load i64, ptr %t193, !tbaa !24
  %t197 = icmp sge i64 %t192, %t194
  store i1 %t197, ptr %l157, !tbaa !21
  br label %bb52
bb52:
  %t199 = load i1, ptr %l157, !tbaa !21
  br i1 %t199, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s11)
  br label %bb98
bb54:
  br label %bb55
bb55:
  %t200 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 3
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  store { i64, ptr } %t201, ptr %l162, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 0
  %t205 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t205, 0
  store i64 %t206, ptr %l164, !tbaa !24
  %t208 = load i64, ptr %l164, !tbaa !24
  %t209 = icmp eq i64 %t204, %t208
  br i1 %t209, label %bb56, label %bb57
bb56:
  %t211 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = load i64, ptr %l164, !tbaa !24
  %t216 = mul i64 %t215, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t212, ptr %t214, i64 %t216, i1 false)
  br label %bb58
bb57:
  %t217 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t217, 0
  store i64 %t218, ptr %l166, !tbaa !24
  %t219 = load i64, ptr %l166, !tbaa !24
  %t220 = mul i64 %t219, 1
  %t221 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t220)
  %t222 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  store { i64, ptr } %t223, ptr %l167, !tbaa !27
  %t224 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = load i64, ptr %l166, !tbaa !24
  %t229 = mul i64 %t228, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t225, ptr %t227, i64 %t229, i1 false)
  %t230 = load { i64, ptr }, ptr %l167, !tbaa !27
  store { i64, ptr } %t230, ptr %l21, !tbaa !27
  br label %bb58
bb58:
  %t231 = load i64, ptr %l20, !tbaa !24
  %t232 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 0
  %t233 = load i64, ptr %t232, !tbaa !24
  %t236 = sub i64 %t231, %t233
  %t237 = getelementptr %"compiler/profile:mapping", ptr %l25, i32 0, i32 2
  %t238 = load i64, ptr %t237, !tbaa !24
  %t241 = add i64 %t236, %t238
  store i64 %t241, ptr %l26, !tbaa !24
  %t243 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t245 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s11, { i64, ptr } %t243, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t245, ptr %l174
  br label %bb59
bb59:
  %t246 = load i1, ptr %l174, !tbaa !21
  br i1 %t246, label %bb60, label %bb61
bb60:
  %t247 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t250 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H67bc384d82ac3ceb3fdc5d6d25b5f02a(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } %t247)
  store i1 %t250, ptr %l177
  br label %bb62
bb61:
  br label %bb97
bb62:
  %t251 = load i1, ptr %l177, !tbaa !21
  %t252 = xor i1 %t251, true
  br i1 %t252, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s14
  store ptr %l4, ptr %l179, !tbaa !29
  %t254 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t254, ptr %l180, !tbaa !27
  %t255 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t257 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2esegments(ptr %s0, ptr %s14, { i64, ptr } %t255)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t257, ptr %l182
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t258 = load ptr, ptr %l179, !tbaa !29
  %t259 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t260 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l182
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd2a6d6393d72da4a22d0070783b9e545(ptr %s0, ptr %s0, ptr %s14, ptr %t258, { i64, ptr } %t259, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t260)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s14)
  br label %bb67
bb67:
  %t261 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t264 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H613fddb0939c6e46b95f2b1f68ba1bdb(ptr %s0, ptr %s0, ptr %s0, ptr %l4, { i64, ptr } %t261)
  %t265 = extractvalue { i32, ptr } %t264, 1
  %t266 = extractvalue { i32, ptr } %t264, 0
  store i32 %t266, ptr %l187
  %t267 = icmp ne i32 %t266, 0
  br i1 %t267, label %bb69, label %ok.268, !prof !99
ok.268:
  store ptr %t265, ptr %l186
  br label %bb68
bb68:
  %t269 = load ptr, ptr %l186, !tbaa !29
  store ptr %t269, ptr %l183, !tbaa !29
  br label %bb72
bb69:
  br label %bb70
bb70:
  %t270 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t270, ptr %l188
  br label %bb71
bb71:
  %t271 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l188
  %t272 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t271, ptr %t272
  store ptr %t272, ptr %l183, !tbaa !29
  br label %bb72
bb72:
  %t274 = load ptr, ptr %l183, !tbaa !29
  store ptr %t274, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  %t275 = load ptr, ptr %l27, !tbaa !29
  %t277 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t275)
  store i64 %t277, ptr %l191
  br label %bb73
bb73:
  %t278 = load i64, ptr %l191, !tbaa !24
  store i64 %t278, ptr %l29, !tbaa !24
  store i64 3, ptr %l30, !tbaa !24
  %t279 = load i64, ptr %l29, !tbaa !24
  %t280 = load i64, ptr %l28, !tbaa !24
  %t283 = icmp sgt i64 %t279, %t280
  br i1 %t283, label %bb74, label %bb75
bb74:
  %t285 = load i64, ptr %l30, !tbaa !24
  %t287 = icmp sgt i64 %t285, 0
  br i1 %t287, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l195, !tbaa !24
  br label %bb79
bb76:
  %t289 = load i64, ptr %l29, !tbaa !24
  %t290 = load i64, ptr %l28, !tbaa !24
  %t293 = sub i64 %t289, %t290
  %t294 = load i64, ptr %l30, !tbaa !24
  %t297 = add i64 %t293, %t294
  %t299 = sub i64 %t297, 1
  %t300 = load i64, ptr %l30, !tbaa !24
  %t303 = sdiv i64 %t299, %t300
  store i64 %t303, ptr %l198, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb78
bb78:
  %t305 = load i64, ptr %l198, !tbaa !24
  store i64 %t305, ptr %l195, !tbaa !24
  br label %bb79
bb79:
  %t306 = load i64, ptr %l195, !tbaa !24
  store i64 %t306, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb80
bb80:
  %t307 = load i64, ptr %l32, !tbaa !24
  %t308 = load i64, ptr %l31, !tbaa !24
  %t311 = icmp slt i64 %t307, %t308
  %t313 = xor i1 %t311, true
  br i1 %t313, label %bb81, label %bb82
bb81:
  br label %bb96
bb82:
  br label %bb83
bb83:
  %t315 = load i64, ptr %l28, !tbaa !24
  %t316 = load i64, ptr %l32, !tbaa !24
  %t317 = load i64, ptr %l30, !tbaa !24
  %t320 = mul i64 %t316, %t317
  %t323 = add i64 %t315, %t320
  store i64 %t323, ptr %l33, !tbaa !24
  %t325 = load i64, ptr %l26, !tbaa !24
  store i64 %t325, ptr %l216, !tbaa !24
  %t326 = load ptr, ptr %l27, !tbaa !29
  %t327 = load i64, ptr %l33, !tbaa !24
  %t330 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t326, i64 %t327)
  store i64 %t330, ptr %l219
  br label %bb84
bb84:
  %t331 = load i64, ptr %l216, !tbaa !24
  %t332 = load i64, ptr %l219, !tbaa !24
  %t333 = icmp sge i64 %t331, %t332
  br i1 %t333, label %bb85, label %bb86
bb85:
  %t335 = load i64, ptr %l26, !tbaa !24
  store i64 %t335, ptr %l222, !tbaa !24
  %t336 = load ptr, ptr %l27, !tbaa !29
  %t337 = load i64, ptr %l33, !tbaa !24
  %t340 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t336, i64 %t337)
  store i64 %t340, ptr %l225
  br label %bb87
bb86:
  store i1 false, ptr %l221, !tbaa !21
  br label %bb89
bb87:
  %t341 = load ptr, ptr %l27, !tbaa !29
  %t342 = load i64, ptr %l33, !tbaa !24
  %t344 = add i64 %t342, 1
  %t347 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t341, i64 %t344)
  store i64 %t347, ptr %l229
  br label %bb88
bb88:
  %t348 = load i64, ptr %l225, !tbaa !24
  %t349 = load i64, ptr %l229, !tbaa !24
  %t350 = add i64 %t348, %t349
  %t351 = load i64, ptr %l222, !tbaa !24
  %t353 = icmp slt i64 %t351, %t350
  store i1 %t353, ptr %l221, !tbaa !21
  br label %bb89
bb89:
  %t355 = load i1, ptr %l221, !tbaa !21
  br i1 %t355, label %bb90, label %bb91
bb90:
  %t356 = load i64, ptr %l26, !tbaa !24
  store i64 %t356, ptr %l232, !tbaa !24
  %t357 = load ptr, ptr %l27, !tbaa !29
  %t358 = load i64, ptr %l33, !tbaa !24
  %t361 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t357, i64 %t358)
  store i64 %t361, ptr %l235
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t362 = load i64, ptr %l232, !tbaa !24
  %t363 = load i64, ptr %l235, !tbaa !24
  %t364 = sub i64 %t362, %t363
  store i64 %t364, ptr %l236, !tbaa !24
  %t365 = load ptr, ptr %l27, !tbaa !29
  %t366 = load i64, ptr %l33, !tbaa !24
  %t368 = add i64 %t366, 2
  %t371 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t365, i64 %t368)
  store i64 %t371, ptr %l240
  br label %bb93
bb93:
  %t372 = load i64, ptr %l236, !tbaa !24
  %t373 = load i64, ptr %l240, !tbaa !24
  %t374 = add i64 %t372, %t373
  store i64 %t374, ptr %l22, !tbaa !24
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t376 = load i64, ptr %l32, !tbaa !24
  %t378 = add i64 %t376, 1
  store i64 %t378, ptr %l32, !tbaa !24
  br label %bb80
bb96:
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s11)
  br label %bb99
bb98:
  %t380 = load i64, ptr %l24, !tbaa !24
  %t382 = add i64 %t380, 1
  store i64 %t382, ptr %l24, !tbaa !24
  br label %bb44
bb99:
  %t384 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l16, { i64, ptr } %t384)
  br label %bb100
bb100:
  %t387 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l17, i64 %t387)
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t390 = load i64, ptr %l19, !tbaa !24
  %t392 = add i64 %t390, 1
  store i64 %t392, ptr %l19, !tbaa !24
  br label %bb38
bb103:
  %t394 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t394, ptr %l252
  br label %bb104
bb104:
  %t395 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t395, ptr %lp34
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l252
  %t397 = load ptr, ptr %lp34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %t397
  %t398 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t400 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t398, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t400, ptr %l254
  br label %bb105
bb105:
  %t401 = load i1, ptr %l254, !tbaa !21
  %t402 = xor i1 %t401, true
  br i1 %t402, label %bb106, label %bb107
bb106:
  store %olang.scope zeroinitializer, ptr %s21
  %t404 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s21)
  store %"std/prelude/text:StringBuilder" %t404, ptr %l256
  br label %bb108
bb107:
  br label %bb155
bb108:
  %t405 = load %"std/prelude/text:StringBuilder", ptr %l256
  store %"std/prelude/text:StringBuilder" %t405, ptr %l35
  store i64 0, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  %t407 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t407, ptr %l258
  br label %bb109
bb109:
  %t408 = load i64, ptr %l258, !tbaa !24
  store i64 %t408, ptr %l38, !tbaa !24
  store i64 1, ptr %l39, !tbaa !24
  %t409 = load i64, ptr %l38, !tbaa !24
  %t410 = load i64, ptr %l37, !tbaa !24
  %t413 = icmp sgt i64 %t409, %t410
  br i1 %t413, label %bb110, label %bb111
bb110:
  %t415 = load i64, ptr %l39, !tbaa !24
  %t417 = icmp sgt i64 %t415, 0
  br i1 %t417, label %bb112, label %bb113
bb111:
  store i64 0, ptr %l262, !tbaa !24
  br label %bb115
bb112:
  %t419 = load i64, ptr %l38, !tbaa !24
  %t420 = load i64, ptr %l37, !tbaa !24
  %t423 = sub i64 %t419, %t420
  %t424 = load i64, ptr %l39, !tbaa !24
  %t427 = add i64 %t423, %t424
  %t429 = sub i64 %t427, 1
  %t430 = load i64, ptr %l39, !tbaa !24
  %t433 = sdiv i64 %t429, %t430
  store i64 %t433, ptr %l265, !tbaa !24
  br label %bb114
bb113:
  store i64 0, ptr %l265, !tbaa !24
  br label %bb114
bb114:
  %t435 = load i64, ptr %l265, !tbaa !24
  store i64 %t435, ptr %l262, !tbaa !24
  br label %bb115
bb115:
  %t436 = load i64, ptr %l262, !tbaa !24
  store i64 %t436, ptr %l40, !tbaa !24
  store i64 0, ptr %l41, !tbaa !24
  br label %bb116
bb116:
  store %olang.scope zeroinitializer, ptr %s23
  %t437 = load i64, ptr %l41, !tbaa !24
  %t438 = load i64, ptr %l40, !tbaa !24
  %t441 = icmp slt i64 %t437, %t438
  %t443 = xor i1 %t441, true
  br i1 %t443, label %bb117, label %bb118
bb117:
  call void @__olang_scope_close(ptr %s23)
  br label %bb131
bb118:
  br label %bb119
bb119:
  %t445 = load i64, ptr %l37, !tbaa !24
  %t446 = load i64, ptr %l41, !tbaa !24
  %t447 = load i64, ptr %l39, !tbaa !24
  %t450 = mul i64 %t446, %t447
  %t453 = add i64 %t445, %t450
  store i64 %t453, ptr %l42, !tbaa !24
  %t455 = load i64, ptr %l42, !tbaa !24
  %t458 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t455)
  store i64 %t458, ptr %l285
  br label %bb120
bb120:
  %t459 = load i64, ptr %l285, !tbaa !24
  %t460 = icmp slt i64 %t459, 0
  br i1 %t460, label %bb121, label %bb122
bb121:
  call void @__olang_scope_close(ptr %s23)
  br label %bb130
bb122:
  br label %bb123
bb123:
  store ptr %l35, ptr %l287, !tbaa !29
  %t462 = load i64, ptr %l42, !tbaa !24
  %t465 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s23, ptr %l16, i64 %t462)
  store { i64, ptr } %t465, ptr %l290
  br label %bb124
bb124:
  %t466 = load i64, ptr %l42, !tbaa !24
  %t469 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t466)
  store i64 %t469, ptr %l293
  br label %bb125
bb125:
  %t470 = load i64, ptr %l293, !tbaa !24
  store i64 %t470, ptr %l294, !tbaa !65
  %t471 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s23, i64 16)
  %t472 = extractvalue { i32, i64 } %t471, 1
  %t473 = extractvalue { i32, i64 } %t471, 0
  store i32 %t473, ptr %l296
  %t474 = icmp ne i32 %t473, 0
  br i1 %t474, label %bb127, label %ok.475, !prof !99
ok.475:
  store i64 %t472, ptr %l295
  br label %bb126
bb126:
  %t476 = load i64, ptr %l294, !tbaa !65
  %t477 = load i64, ptr %l295, !tbaa !24
  %t478 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s23, i64 %t476, i64 %t477)
  store { i64, ptr } %t478, ptr %l297
  br label %bb128
bb127:
  call void @__olang_check_failed(ptr @olang_loc_3866f265829cb50e_54c32d3b9a091762)
  unreachable
bb128:
  %t479 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t480 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t481 = load { i64, ptr }, ptr %l290, !tbaa !27
  %t482 = extractvalue { i64, ptr } %t481, 1
  %t483 = extractvalue { i64, ptr } %t481, 0
  %t484 = add i64 %t480, %t483
  %t485 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t486 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t487 = add i64 %t484, %t486
  %t488 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t489 = extractvalue { i64, ptr } %t488, 1
  %t490 = extractvalue { i64, ptr } %t488, 0
  %t491 = add i64 %t487, %t490
  %t492 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t493 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t494 = add i64 %t491, %t493
  %t495 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t494)
  call void @olang_textcopy(ptr %t495, ptr %t479, i64 %t480)
  %t496 = getelementptr i8, ptr %t495, i64 %t480
  call void @olang_textcopy(ptr %t496, ptr %t482, i64 %t483)
  %t497 = getelementptr i8, ptr %t496, i64 %t483
  call void @olang_textcopy(ptr %t497, ptr %t485, i64 %t486)
  %t498 = getelementptr i8, ptr %t497, i64 %t486
  call void @olang_textcopy(ptr %t498, ptr %t489, i64 %t490)
  %t499 = getelementptr i8, ptr %t498, i64 %t490
  call void @olang_textcopy(ptr %t499, ptr %t492, i64 %t493)
  %t500 = insertvalue { i64, ptr } undef, i64 %t494, 0
  %t501 = insertvalue { i64, ptr } %t500, ptr %t495, 1
  %t503 = extractvalue { i64, ptr } %t501, 0
  %t504 = extractvalue { i64, ptr } %t501, 1
  %t505 = mul i64 %t503, 1
  %t506 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t505)
  call void @llvm.memcpy.p0.p0.i64(ptr %t506, ptr %t504, i64 %t505, i1 false)
  %t507 = insertvalue { i64, ptr } undef, i64 %t503, 0
  %t508 = insertvalue { i64, ptr } %t507, ptr %t506, 1
  %t509 = load ptr, ptr %l287, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s21, ptr %s23, ptr %t509, { i64, ptr } %t508)
  br label %bb129
bb129:
  %t511 = load i64, ptr %l36, !tbaa !24
  %t513 = add i64 %t511, 1
  store i64 %t513, ptr %l36, !tbaa !24
  call void @__olang_scope_close(ptr %s23)
  br label %bb130
bb130:
  %t515 = load i64, ptr %l41, !tbaa !24
  %t517 = add i64 %t515, 1
  store i64 %t517, ptr %l41, !tbaa !24
  br label %bb116
bb131:
  %t519 = load i64, ptr %l36, !tbaa !24
  %t521 = icmp sgt i64 %t519, 0
  br i1 %t521, label %bb132, label %bb133
bb132:
  store %olang.scope zeroinitializer, ptr %s27
  %t523 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t525 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } %t523, 0
  %t526 = insertvalue [3 x { i64, ptr }] %t525, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t527 = insertvalue [3 x { i64, ptr }] %t526, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d35, i32 0, i32 1) }, 2
  store [3 x { i64, ptr }] %t527, ptr %l43
  %t530 = insertvalue { i64, ptr } undef, i64 3, 0
  %t531 = insertvalue { i64, ptr } %t530, ptr %l43, 1
  store { i64, ptr } %t531, ptr %l310, !tbaa !27
  %t533 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s21, ptr %v2, ptr %l35)
  store { i64, ptr } %t533, ptr %l312
  br label %bb134
bb133:
  br label %bb154
bb134:
  %t534 = load { i64, ptr }, ptr %l312, !tbaa !27
  %t536 = extractvalue { i64, ptr } %t534, 0
  %t537 = extractvalue { i64, ptr } %t534, 1
  %t538 = mul i64 %t536, 1
  %t539 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t538)
  call void @llvm.memcpy.p0.p0.i64(ptr %t539, ptr %t537, i64 %t538, i1 false)
  %t540 = insertvalue { i64, ptr } undef, i64 %t536, 0
  %t541 = insertvalue { i64, ptr } %t540, ptr %t539, 1
  %t542 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t544 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s27, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t542, { i64, ptr } %t541, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  %t545 = extractvalue { i32, %"std/os:Output" } %t544, 1
  %t546 = extractvalue { i32, %"std/os:Output" } %t544, 0
  store i32 %t546, ptr %l316
  %t547 = icmp ne i32 %t546, 0
  br i1 %t547, label %bb136, label %ok.548, !prof !99
ok.548:
  store %"std/os:Output" %t545, ptr %l315
  br label %bb135
bb135:
  %t549 = load %"std/os:Output", ptr %l315
  store %"std/os:Output" %t549, ptr %l306
  br label %bb141
bb136:
  %t550 = load i32, ptr %l316, !tbaa !23
  %t551 = ashr i32 %t550, 16
  %t553 = icmp eq i32 %t551, 1
  store i1 %t553, ptr %l318, !tbaa !21
  %t554 = load i32, ptr %l316, !tbaa !23
  %t555 = ashr i32 %t554, 16
  %t557 = icmp eq i32 %t555, 1
  br i1 %t557, label %bb137, label %bb138
bb137:
  call void @__olang_errpay_pop()
  br label %bb138
bb138:
  br label %bb139
bb139:
  %t559 = call %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v2, ptr %v2, ptr %v2, i32 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store %"std/os:Output" %t559, ptr %l321
  br label %bb140
bb140:
  %t560 = load %"std/os:Output", ptr %l321
  store %"std/os:Output" %t560, ptr %l306
  br label %bb141
bb141:
  %t561 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store ptr %t561, ptr %lp44
  %t562 = load %"std/os:Output", ptr %l306
  %t563 = load ptr, ptr %lp44
  store %"std/os:Output" %t562, ptr %t563
  %t564 = load ptr, ptr %lp44
  %t565 = getelementptr %"std/os:Output", ptr %t564, i32 0, i32 0
  %t566 = load i32, ptr %t565, !tbaa !23
  %t568 = icmp eq i32 %t566, 0
  br i1 %t568, label %bb142, label %bb143
bb142:
  %t570 = load ptr, ptr %lp44
  %t571 = getelementptr %"std/os:Output", ptr %t570, i32 0, i32 1
  %t572 = load { i64, ptr }, ptr %t571, !tbaa !27
  %t574 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v2, ptr %v2, { i64, ptr } %t572)
  store %"std/prelude/text:LineIter" %t574, ptr %l325
  br label %bb144
bb143:
  br label %bb153
bb144:
  %t575 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store ptr %t575, ptr %lp45
  %t576 = load %"std/prelude/text:LineIter", ptr %l325
  %t577 = load ptr, ptr %lp45
  store %"std/prelude/text:LineIter" %t576, ptr %t577
  br label %bb145
bb145:
  %t578 = load ptr, ptr %lp45
  %t580 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v2, ptr %v2, ptr %t578)
  %t581 = extractvalue { i32, { i64, ptr } } %t580, 1
  %t582 = extractvalue { i32, { i64, ptr } } %t580, 0
  store i32 %t582, ptr %l329
  %t583 = icmp ne i32 %t582, 0
  br i1 %t583, label %bb147, label %ok.584, !prof !99
ok.584:
  store { i64, ptr } %t581, ptr %l328
  br label %bb146
bb146:
  %t585 = load { i64, ptr }, ptr %l328, !tbaa !27
  store { i64, ptr } %t585, ptr %l326, !tbaa !27
  br label %bb149
bb147:
  %t586 = load i32, ptr %l329, !tbaa !23
  %t587 = ashr i32 %t586, 16
  %t589 = icmp eq i32 %t587, 1
  store i1 %t589, ptr %l331, !tbaa !21
  br label %bb148
bb148:
  br label %bb152
bb149:
  %t590 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t591 = load ptr, ptr %lp34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t591, { i64, ptr } %t590)
  br label %bb150
bb150:
  br label %bb151
bb151:
  br label %bb145
bb152:
  br label %bb153
bb153:
  call void @__olang_scope_close(ptr %s27)
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s21)
  br label %bb155
bb155:
  %t595 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H84525b00cfc40be2d2c61524b3658c11(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t595, ptr %l334
  br label %bb156
bb156:
  %t596 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l334
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t596, ptr %l47
  store i64 0, ptr %l48, !tbaa !24
  store i64 0, ptr %l49, !tbaa !24
  %t598 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t598, ptr %l336
  br label %bb157
bb157:
  %t599 = load i64, ptr %l336, !tbaa !24
  store i64 %t599, ptr %l50, !tbaa !24
  store i64 1, ptr %l51, !tbaa !24
  %t600 = load i64, ptr %l50, !tbaa !24
  %t601 = load i64, ptr %l49, !tbaa !24
  %t604 = icmp sgt i64 %t600, %t601
  br i1 %t604, label %bb158, label %bb159
bb158:
  %t606 = load i64, ptr %l51, !tbaa !24
  %t608 = icmp sgt i64 %t606, 0
  br i1 %t608, label %bb160, label %bb161
bb159:
  store i64 0, ptr %l340, !tbaa !24
  br label %bb163
bb160:
  %t610 = load i64, ptr %l50, !tbaa !24
  %t611 = load i64, ptr %l49, !tbaa !24
  %t614 = sub i64 %t610, %t611
  %t615 = load i64, ptr %l51, !tbaa !24
  %t618 = add i64 %t614, %t615
  %t620 = sub i64 %t618, 1
  %t621 = load i64, ptr %l51, !tbaa !24
  %t624 = sdiv i64 %t620, %t621
  store i64 %t624, ptr %l343, !tbaa !24
  br label %bb162
bb161:
  store i64 0, ptr %l343, !tbaa !24
  br label %bb162
bb162:
  %t626 = load i64, ptr %l343, !tbaa !24
  store i64 %t626, ptr %l340, !tbaa !24
  br label %bb163
bb163:
  %t627 = load i64, ptr %l340, !tbaa !24
  store i64 %t627, ptr %l52, !tbaa !24
  store i64 0, ptr %l53, !tbaa !24
  br label %bb164
bb164:
  store %olang.scope zeroinitializer, ptr %s32
  %t628 = load i64, ptr %l53, !tbaa !24
  %t629 = load i64, ptr %l52, !tbaa !24
  %t632 = icmp slt i64 %t628, %t629
  %t634 = xor i1 %t632, true
  br i1 %t634, label %bb165, label %bb166
bb165:
  call void @__olang_scope_close(ptr %s32)
  br label %bb300
bb166:
  br label %bb167
bb167:
  %t636 = load i64, ptr %l49, !tbaa !24
  %t637 = load i64, ptr %l53, !tbaa !24
  %t638 = load i64, ptr %l51, !tbaa !24
  %t641 = mul i64 %t637, %t638
  %t644 = add i64 %t636, %t641
  store i64 %t644, ptr %l54, !tbaa !24
  %t646 = load ptr, ptr %lp2
  %t647 = getelementptr %"compiler/profile:Places", ptr %t646, i32 0, i32 3
  store ptr %t647, ptr %l361, !tbaa !29
  %t648 = load ptr, ptr %lp2
  %t649 = getelementptr %"compiler/profile:Places", ptr %t648, i32 0, i32 2
  %t651 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2eLen_3ccompiler_2fprofile_3aFrame_3e(ptr %v2, ptr %t649)
  store i64 %t651, ptr %l363
  br label %bb168
bb168:
  %t652 = load ptr, ptr %l361, !tbaa !29
  %t653 = load i64, ptr %l363, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t652, i64 %t653)
  br label %bb169
bb169:
  store i64 0, ptr %l55, !tbaa !24
  %t654 = load i64, ptr %l54, !tbaa !24
  %t657 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t654)
  store i64 %t657, ptr %l366
  br label %bb170
bb170:
  %t658 = load i64, ptr %l366, !tbaa !24
  %t659 = icmp sge i64 %t658, 0
  br i1 %t659, label %bb171, label %bb172
bb171:
  %t661 = load i64, ptr %l48, !tbaa !24
  store i64 %t661, ptr %l369, !tbaa !24
  %t662 = load ptr, ptr %lp34
  %t664 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t662)
  store i64 %t664, ptr %l371
  br label %bb173
bb172:
  store i1 false, ptr %l368, !tbaa !21
  br label %bb174
bb173:
  %t665 = load i64, ptr %l369, !tbaa !24
  %t666 = load i64, ptr %l371, !tbaa !24
  %t667 = icmp slt i64 %t665, %t666
  store i1 %t667, ptr %l368, !tbaa !21
  br label %bb174
bb174:
  %t669 = load i1, ptr %l368, !tbaa !21
  br i1 %t669, label %bb175, label %bb176
bb175:
  br label %bb177
bb176:
  br label %bb239
bb177:
  store %olang.scope zeroinitializer, ptr %s34
  %t670 = load i64, ptr %l48, !tbaa !24
  %t672 = add i64 %t670, 1
  store i64 %t672, ptr %l374, !tbaa !24
  %t673 = load ptr, ptr %lp34
  %t675 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t673)
  store i64 %t675, ptr %l376
  br label %bb178
bb178:
  %t676 = load i64, ptr %l374, !tbaa !24
  %t677 = load i64, ptr %l376, !tbaa !24
  %t678 = icmp slt i64 %t676, %t677
  br i1 %t678, label %bb179, label %bb180
bb179:
  %t680 = load ptr, ptr %lp34
  %t681 = load i64, ptr %l48, !tbaa !24
  %t684 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t680, i64 %t681)
  store { i64, ptr } %t684, ptr %l381
  br label %bb181
bb180:
  store i1 false, ptr %l378, !tbaa !21
  br label %bb183
bb181:
  %t685 = load { i64, ptr }, ptr %l381, !tbaa !27
  %t686 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s34, { i64, ptr } %t685, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t686, ptr %l382
  br label %bb182
bb182:
  %t687 = load i1, ptr %l382, !tbaa !21
  %t688 = xor i1 %t687, true
  store i1 %t688, ptr %l378, !tbaa !21
  br label %bb183
bb183:
  %t690 = load i1, ptr %l378, !tbaa !21
  %t691 = xor i1 %t690, true
  br i1 %t691, label %bb184, label %bb185
bb184:
  call void @__olang_scope_close(ptr %s34)
  br label %bb238
bb185:
  br label %bb186
bb186:
  %t693 = load ptr, ptr %lp34
  %t694 = load i64, ptr %l48, !tbaa !24
  %t697 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t693, i64 %t694)
  store { i64, ptr } %t697, ptr %l387
  br label %bb187
bb187:
  %t698 = load { i64, ptr }, ptr %l387, !tbaa !27
  store { i64, ptr } %t698, ptr %l56, !tbaa !27
  %t699 = load ptr, ptr %lp34
  %t700 = load i64, ptr %l48, !tbaa !24
  %t702 = add i64 %t700, 1
  %t705 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t699, i64 %t702)
  store { i64, ptr } %t705, ptr %l391
  br label %bb188
bb188:
  %t706 = load { i64, ptr }, ptr %l391, !tbaa !27
  %t707 = load i64, ptr %l48, !tbaa !24
  %t709 = add i64 %t707, 2
  store i64 %t709, ptr %l48, !tbaa !24
  %t713 = call { { i64, ptr }, i64 } @compiler_2fprofile_2efileLine(ptr %v2, ptr %s34, { i64, ptr } %t706)
  store { { i64, ptr }, i64 } %t713, ptr %l395
  br label %bb189
bb189:
  %t714 = load { { i64, ptr }, i64 }, ptr %l395
  store { { i64, ptr }, i64 } %t714, ptr %l58
  %t715 = getelementptr { { i64, ptr }, i64 }, ptr %l58, i32 0, i32 0
  %t716 = load { i64, ptr }, ptr %t715, !tbaa !27
  store { i64, ptr } %t716, ptr %l396, !tbaa !27
  %t717 = load { i64, ptr }, ptr %l396, !tbaa !27
  %t718 = extractvalue { i64, ptr } %t717, 0
  store i64 %t718, ptr %l397, !tbaa !24
  %t719 = load i64, ptr %l397, !tbaa !24
  %t720 = mul i64 %t719, 1
  %t721 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t720)
  %t722 = insertvalue { i64, ptr } undef, i64 %t719, 0
  %t723 = insertvalue { i64, ptr } %t722, ptr %t721, 1
  store { i64, ptr } %t723, ptr %l398, !tbaa !27
  %t724 = getelementptr { i64, ptr }, ptr %l398, i32 0, i32 1
  %t725 = load ptr, ptr %t724, !tbaa !27
  %t726 = getelementptr { i64, ptr }, ptr %l396, i32 0, i32 1
  %t727 = load ptr, ptr %t726, !tbaa !27
  %t728 = load i64, ptr %l397, !tbaa !24
  %t729 = mul i64 %t728, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t725, ptr %t727, i64 %t729, i1 false)
  %t730 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t730, ptr %lp59
  %t731 = load { i64, ptr }, ptr %l398, !tbaa !27
  %t732 = load ptr, ptr %lp59
  store { i64, ptr } %t731, ptr %t732, !tbaa !27
  %t733 = getelementptr { { i64, ptr }, i64 }, ptr %l58, i32 0, i32 1
  %t734 = load i64, ptr %t733, !tbaa !24
  store i64 %t734, ptr %l60, !tbaa !24
  %t736 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t736, ptr %l400, !tbaa !27
  %t737 = load { i64, ptr }, ptr %l400, !tbaa !27
  %t738 = extractvalue { i64, ptr } %t737, 1
  %t739 = call ptr @__olang_scope_of(ptr %t738, ptr null)
  %t740 = ptrtoint ptr %t739 to i64
  %t742 = inttoptr i64 %t740 to ptr
  %t743 = load { i64, ptr }, ptr %l400, !tbaa !27
  %t744 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t742, ptr %s34, { i64, ptr } %t743, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t744, ptr %l402
  br label %bb190
bb190:
  %t745 = load i1, ptr %l402, !tbaa !21
  br i1 %t745, label %bb191, label %bb192
bb191:
  %t746 = load i64, ptr %l54, !tbaa !24
  %t749 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t746)
  store { i64, ptr } %t749, ptr %l406
  br label %bb193
bb192:
  store i1 false, ptr %l403, !tbaa !21
  br label %bb195
bb193:
  %t750 = load { i64, ptr }, ptr %l406, !tbaa !27
  %t751 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s34, { i64, ptr } %t750, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t751, ptr %l407
  br label %bb194
bb194:
  %t752 = load i1, ptr %l407, !tbaa !21
  store i1 %t752, ptr %l403, !tbaa !21
  br label %bb195
bb195:
  %t753 = load i1, ptr %l403, !tbaa !21
  br i1 %t753, label %bb196, label %bb197
bb196:
  store %olang.scope zeroinitializer, ptr %s35
  store ptr %l47, ptr %l408, !tbaa !29
  %t754 = load i64, ptr %l54, !tbaa !24
  %t757 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t754)
  store { i64, ptr } %t757, ptr %l411
  br label %bb198
bb197:
  br label %bb221
bb198:
  %t758 = load ptr, ptr %l408, !tbaa !29
  %t759 = load { i64, ptr }, ptr %l411, !tbaa !27
  %t760 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H509117e81ae737fb138b1f364b80e611(ptr %s0, ptr %s0, ptr %t758, { i64, ptr } %t759)
  store i1 %t760, ptr %l412
  br label %bb199
bb199:
  %t761 = load i1, ptr %l412, !tbaa !21
  %t762 = xor i1 %t761, true
  br i1 %t762, label %bb200, label %bb201
bb200:
  store %olang.scope zeroinitializer, ptr %s36
  store ptr %l47, ptr %l414, !tbaa !29
  %t764 = ptrtoint ptr %s0 to i64
  store i64 %t764, ptr %l415, !tbaa !24
  %t765 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_H31300daf7c6be9b9667c9cd96eea1c7e
  br i1 %t765, label %bb202, label %bb203
bb201:
  br label %bb208
bb202:
  %t767 = call ptr @__olang_region_make(ptr %s0)
  %t768 = ptrtoint ptr %t767 to i64
  store i64 %t768, ptr %l415, !tbaa !24
  br label %bb203
bb203:
  %t769 = load i64, ptr %l54, !tbaa !24
  %t772 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s36, ptr %l16, i64 %t769)
  store { i64, ptr } %t772, ptr %l419
  br label %bb204
bb204:
  %t773 = load { i64, ptr }, ptr %l419, !tbaa !27
  %t774 = extractvalue { i64, ptr } %t773, 1
  %t775 = extractvalue { i64, ptr } %t773, 0
  %t776 = load i64, ptr %l415
  %t777 = inttoptr i64 %t776 to ptr
  %t778 = call ptr @__olang_scope_alloc(ptr %t777, i64 %t775)
  call void @olang_textcopy(ptr %t778, ptr %t774, i64 %t775)
  %t779 = insertvalue { i64, ptr } undef, i64 %t775, 0
  %t780 = insertvalue { i64, ptr } %t779, ptr %t778, 1
  %t782 = load i64, ptr %l415
  %t783 = inttoptr i64 %t782 to ptr
  %t784 = extractvalue { i64, ptr } %t780, 0
  %t785 = extractvalue { i64, ptr } %t780, 1
  %t786 = mul i64 %t784, 1
  %t787 = call ptr @__olang_scope_alloc(ptr %t783, i64 %t786)
  call void @llvm.memcpy.p0.p0.i64(ptr %t787, ptr %t785, i64 %t786, i1 false)
  %t788 = insertvalue { i64, ptr } undef, i64 %t784, 0
  %t789 = insertvalue { i64, ptr } %t788, ptr %t787, 1
  store { i64, ptr } %t789, ptr %l421, !tbaa !27
  %t790 = load i64, ptr %l54, !tbaa !24
  %t793 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t790)
  store { i64, ptr } %t793, ptr %l424
  br label %bb205
bb205:
  %t794 = load { i64, ptr }, ptr %l424, !tbaa !27
  %t795 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2efunctionSymbols(ptr %s0, ptr %s0, { i64, ptr } %t794)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t795, ptr %l425
  br label %bb206
bb206:
  %t796 = load ptr, ptr %l414, !tbaa !29
  %t797 = load { i64, ptr }, ptr %l421, !tbaa !27
  %t798 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l425
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hb4e1316c13adc554c531dbb9cf254a96(ptr %s0, ptr %s0, ptr %s0, ptr %t796, { i64, ptr } %t797, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t798)
  br label %bb207
bb207:
  call void @__olang_scope_close(ptr %s36)
  br label %bb208
bb208:
  store ptr %l47, ptr %l427, !tbaa !29
  %t799 = load i64, ptr %l54, !tbaa !24
  %t802 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t799)
  store { i64, ptr } %t802, ptr %l430
  br label %bb209
bb209:
  %t803 = load ptr, ptr %l427, !tbaa !29
  %t804 = load { i64, ptr }, ptr %l430, !tbaa !27
  %t805 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hfa095cf457cc3af0cc9715613212afd3(ptr %s0, ptr %s0, ptr %s0, ptr %t803, { i64, ptr } %t804)
  %t806 = extractvalue { i32, ptr } %t805, 1
  %t807 = extractvalue { i32, ptr } %t805, 0
  store i32 %t807, ptr %l432
  %t808 = icmp ne i32 %t807, 0
  br i1 %t808, label %bb211, label %ok.809, !prof !99
ok.809:
  store ptr %t806, ptr %l431
  br label %bb210
bb210:
  %t810 = load ptr, ptr %l431, !tbaa !29
  store ptr %t810, ptr %l426, !tbaa !29
  br label %bb214
bb211:
  br label %bb212
bb212:
  %t811 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t811, ptr %l433
  br label %bb213
bb213:
  %t812 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l433
  %t813 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t812, ptr %t813
  store ptr %t813, ptr %l426, !tbaa !29
  br label %bb214
bb214:
  %t815 = load ptr, ptr %l426, !tbaa !29
  store ptr %t815, ptr %l435, !tbaa !29
  %t817 = load i64, ptr %l54, !tbaa !24
  %t820 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t817)
  store i64 %t820, ptr %l438
  br label %bb215
bb215:
  %t821 = load ptr, ptr %l435, !tbaa !29
  %t822 = load i64, ptr %l438, !tbaa !24
  %t823 = call { i64, ptr } @compiler_2fprofile_2esymbolAt(ptr %s0, ptr %v2, ptr %t821, i64 %t822)
  store { i64, ptr } %t823, ptr %l439
  br label %bb216
bb216:
  %t824 = load { i64, ptr }, ptr %l439, !tbaa !27
  %t825 = extractvalue { i64, ptr } %t824, 0
  %t826 = extractvalue { i64, ptr } %t824, 1
  %t827 = mul i64 %t825, 1
  %t828 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t827)
  call void @llvm.memcpy.p0.p0.i64(ptr %t828, ptr %t826, i64 %t827, i1 false)
  %t829 = insertvalue { i64, ptr } undef, i64 %t825, 0
  %t830 = insertvalue { i64, ptr } %t829, ptr %t828, 1
  store { i64, ptr } %t830, ptr %l56, !tbaa !27
  %t832 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t832, ptr %l441, !tbaa !27
  %t833 = load { i64, ptr }, ptr %l441, !tbaa !27
  %t834 = extractvalue { i64, ptr } %t833, 1
  %t835 = call ptr @__olang_scope_of(ptr %t834, ptr null)
  %t836 = ptrtoint ptr %t835 to i64
  %t838 = inttoptr i64 %t836 to ptr
  %t839 = load { i64, ptr }, ptr %l441, !tbaa !27
  %t840 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t838, ptr %s35, { i64, ptr } %t839, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t840, ptr %l443
  br label %bb217
bb217:
  %t841 = load i1, ptr %l443, !tbaa !21
  br i1 %t841, label %bb218, label %bb219
bb218:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l56, !tbaa !27
  br label %bb220
bb219:
  br label %bb220
bb220:
  call void @__olang_scope_close(ptr %s35)
  br label %bb221
bb221:
  %t842 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t842, ptr %l444, !tbaa !27
  %t843 = load { i64, ptr }, ptr %l444, !tbaa !27
  %t844 = extractvalue { i64, ptr } %t843, 1
  %t845 = call ptr @__olang_scope_of(ptr %t844, ptr null)
  %t846 = ptrtoint ptr %t845 to i64
  %t848 = inttoptr i64 %t846 to ptr
  %t849 = load { i64, ptr }, ptr %l444, !tbaa !27
  %t850 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t848, ptr %s34, { i64, ptr } %t849, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t850, ptr %l446
  br label %bb222
bb222:
  %t851 = load i1, ptr %l446, !tbaa !21
  br i1 %t851, label %bb223, label %bb224
bb223:
  store %olang.scope zeroinitializer, ptr %s39
  %t852 = load i64, ptr %l54, !tbaa !24
  %t855 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t852)
  store i64 %t855, ptr %l449
  br label %bb225
bb224:
  %t856 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t856, ptr %l460, !tbaa !27
  %t857 = load { i64, ptr }, ptr %l460, !tbaa !27
  %t858 = extractvalue { i64, ptr } %t857, 1
  %t859 = call ptr @__olang_scope_of(ptr %t858, ptr null)
  %t860 = ptrtoint ptr %t859 to i64
  %t862 = inttoptr i64 %t860 to ptr
  %t863 = load { i64, ptr }, ptr %l460, !tbaa !27
  %t864 = call { i64, ptr } @compiler_2fprofile_2eReadable(ptr %t862, ptr %v2, { i64, ptr } %t863)
  store { i64, ptr } %t864, ptr %l462
  br label %bb231
bb225:
  %t865 = load i64, ptr %l449, !tbaa !24
  store i64 %t865, ptr %l450, !tbaa !65
  %t866 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s39, i64 16)
  %t867 = extractvalue { i32, i64 } %t866, 1
  %t868 = extractvalue { i32, i64 } %t866, 0
  store i32 %t868, ptr %l452
  %t869 = icmp ne i32 %t868, 0
  br i1 %t869, label %bb227, label %ok.870, !prof !99
ok.870:
  store i64 %t867, ptr %l451
  br label %bb226
bb226:
  %t871 = load i64, ptr %l450, !tbaa !65
  %t872 = load i64, ptr %l451, !tbaa !24
  %t873 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s39, i64 %t871, i64 %t872)
  store { i64, ptr } %t873, ptr %l453
  br label %bb228
bb227:
  call void @__olang_check_failed(ptr @olang_loc_698502529ad2e54f_f0e75116d399f563)
  unreachable
bb228:
  %t874 = load i64, ptr %l54, !tbaa !24
  %t877 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t874)
  store { i64, ptr } %t877, ptr %l456
  br label %bb229
bb229:
  %t878 = load { i64, ptr }, ptr %l456, !tbaa !27
  %t879 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %s0, ptr %s39, { i64, ptr } %t878)
  store { i64, ptr } %t879, ptr %l457
  br label %bb230
bb230:
  %t880 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t881 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t882 = load { i64, ptr }, ptr %l453, !tbaa !27
  %t883 = extractvalue { i64, ptr } %t882, 1
  %t884 = extractvalue { i64, ptr } %t882, 0
  %t885 = add i64 %t881, %t884
  %t886 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t887 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t888 = add i64 %t885, %t887
  %t889 = load { i64, ptr }, ptr %l457, !tbaa !27
  %t890 = extractvalue { i64, ptr } %t889, 1
  %t891 = extractvalue { i64, ptr } %t889, 0
  %t892 = add i64 %t888, %t891
  %t893 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t894 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t895 = add i64 %t892, %t894
  %t896 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t895)
  call void @olang_textcopy(ptr %t896, ptr %t880, i64 %t881)
  %t897 = getelementptr i8, ptr %t896, i64 %t881
  call void @olang_textcopy(ptr %t897, ptr %t883, i64 %t884)
  %t898 = getelementptr i8, ptr %t897, i64 %t884
  call void @olang_textcopy(ptr %t898, ptr %t886, i64 %t887)
  %t899 = getelementptr i8, ptr %t898, i64 %t887
  call void @olang_textcopy(ptr %t899, ptr %t890, i64 %t891)
  %t900 = getelementptr i8, ptr %t899, i64 %t891
  call void @olang_textcopy(ptr %t900, ptr %t893, i64 %t894)
  %t901 = insertvalue { i64, ptr } undef, i64 %t895, 0
  %t902 = insertvalue { i64, ptr } %t901, ptr %t896, 1
  %t904 = extractvalue { i64, ptr } %t902, 0
  %t905 = extractvalue { i64, ptr } %t902, 1
  %t906 = mul i64 %t904, 1
  %t907 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t906)
  call void @llvm.memcpy.p0.p0.i64(ptr %t907, ptr %t905, i64 %t906, i1 false)
  %t908 = insertvalue { i64, ptr } undef, i64 %t904, 0
  %t909 = insertvalue { i64, ptr } %t908, ptr %t907, 1
  store { i64, ptr } %t909, ptr %l56, !tbaa !27
  call void @__olang_scope_close(ptr %s39)
  br label %bb232
bb231:
  %t911 = load { i64, ptr }, ptr %l462, !tbaa !27
  %t912 = extractvalue { i64, ptr } %t911, 0
  %t913 = extractvalue { i64, ptr } %t911, 1
  %t914 = mul i64 %t912, 1
  %t915 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t914)
  call void @llvm.memcpy.p0.p0.i64(ptr %t915, ptr %t913, i64 %t914, i1 false)
  %t916 = insertvalue { i64, ptr } undef, i64 %t912, 0
  %t917 = insertvalue { i64, ptr } %t916, ptr %t915, 1
  store { i64, ptr } %t917, ptr %l56, !tbaa !27
  br label %bb232
bb232:
  %t919 = load ptr, ptr %lp2
  %t920 = getelementptr %"compiler/profile:Places", ptr %t919, i32 0, i32 2
  store ptr %t920, ptr %l464, !tbaa !29
  %t921 = load ptr, ptr %lp2
  %t922 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t925 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t921, { i64, ptr } %t922)
  store i64 %t925, ptr %l467
  br label %bb233
bb233:
  %t926 = load ptr, ptr %lp2
  %t927 = load ptr, ptr %lp59
  %t928 = load { i64, ptr }, ptr %t927, !tbaa !27
  %t931 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t926, { i64, ptr } %t928)
  store i64 %t931, ptr %l470
  br label %bb234
bb234:
  %t932 = load i64, ptr %l60, !tbaa !24
  %t933 = load i64, ptr %l467, !tbaa !24
  %t934 = load i64, ptr %l470, !tbaa !24
  %t936 = call %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %s34, i64 %t933, i64 %t934, i64 %t932)
  store %"compiler/profile:Frame" %t936, ptr %l472
  br label %bb235
bb235:
  %t937 = load ptr, ptr %l464, !tbaa !29
  %t938 = load %"compiler/profile:Frame", ptr %l472
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v2, ptr %t937, %"compiler/profile:Frame" %t938)
  br label %bb236
bb236:
  %t939 = load i64, ptr %l55, !tbaa !24
  %t941 = add i64 %t939, 1
  store i64 %t941, ptr %l55, !tbaa !24
  call void @__olang_scope_close(ptr %s34)
  br label %bb237
bb237:
  br label %bb177
bb238:
  %t943 = load i64, ptr %l48, !tbaa !24
  %t945 = add i64 %t943, 1
  store i64 %t945, ptr %l48, !tbaa !24
  br label %bb239
bb239:
  %t947 = load i64, ptr %l55, !tbaa !24
  %t949 = icmp eq i64 %t947, 0
  br i1 %t949, label %bb240, label %bb241
bb240:
  %t951 = load i64, ptr %l54, !tbaa !24
  %t954 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t951)
  store i64 %t954, ptr %l482
  br label %bb242
bb241:
  store i1 false, ptr %l479, !tbaa !21
  br label %bb243
bb242:
  %t955 = load i64, ptr %l482, !tbaa !24
  %t956 = icmp sge i64 %t955, 0
  store i1 %t956, ptr %l479, !tbaa !21
  br label %bb243
bb243:
  %t958 = load i1, ptr %l479, !tbaa !21
  br i1 %t958, label %bb244, label %bb245
bb244:
  %t959 = load i64, ptr %l54, !tbaa !24
  %t962 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t959)
  store { i64, ptr } %t962, ptr %l487
  br label %bb246
bb245:
  store i1 false, ptr %l484, !tbaa !21
  br label %bb248
bb246:
  %t963 = load { i64, ptr }, ptr %l487, !tbaa !27
  %t964 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s32, { i64, ptr } %t963, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t964, ptr %l488
  br label %bb247
bb247:
  %t965 = load i1, ptr %l488, !tbaa !21
  store i1 %t965, ptr %l484, !tbaa !21
  br label %bb248
bb248:
  %t966 = load i1, ptr %l484, !tbaa !21
  br i1 %t966, label %bb249, label %bb250
bb249:
  store %olang.scope zeroinitializer, ptr %s42
  store ptr %l47, ptr %l489, !tbaa !29
  %t967 = load i64, ptr %l54, !tbaa !24
  %t970 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t967)
  store { i64, ptr } %t970, ptr %l492
  br label %bb251
bb250:
  br label %bb279
bb251:
  %t971 = load ptr, ptr %l489, !tbaa !29
  %t972 = load { i64, ptr }, ptr %l492, !tbaa !27
  %t973 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H509117e81ae737fb138b1f364b80e611(ptr %s0, ptr %s0, ptr %t971, { i64, ptr } %t972)
  store i1 %t973, ptr %l493
  br label %bb252
bb252:
  %t974 = load i1, ptr %l493, !tbaa !21
  %t975 = xor i1 %t974, true
  br i1 %t975, label %bb253, label %bb254
bb253:
  store %olang.scope zeroinitializer, ptr %s43
  store ptr %l47, ptr %l495, !tbaa !29
  %t977 = ptrtoint ptr %s0 to i64
  store i64 %t977, ptr %l496, !tbaa !24
  %t978 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_H31300daf7c6be9b9667c9cd96eea1c7e
  br i1 %t978, label %bb255, label %bb256
bb254:
  br label %bb261
bb255:
  %t980 = call ptr @__olang_region_make(ptr %s0)
  %t981 = ptrtoint ptr %t980 to i64
  store i64 %t981, ptr %l496, !tbaa !24
  br label %bb256
bb256:
  %t982 = load i64, ptr %l54, !tbaa !24
  %t985 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s43, ptr %l16, i64 %t982)
  store { i64, ptr } %t985, ptr %l500
  br label %bb257
bb257:
  %t986 = load { i64, ptr }, ptr %l500, !tbaa !27
  %t987 = extractvalue { i64, ptr } %t986, 1
  %t988 = extractvalue { i64, ptr } %t986, 0
  %t989 = load i64, ptr %l496
  %t990 = inttoptr i64 %t989 to ptr
  %t991 = call ptr @__olang_scope_alloc(ptr %t990, i64 %t988)
  call void @olang_textcopy(ptr %t991, ptr %t987, i64 %t988)
  %t992 = insertvalue { i64, ptr } undef, i64 %t988, 0
  %t993 = insertvalue { i64, ptr } %t992, ptr %t991, 1
  %t995 = load i64, ptr %l496
  %t996 = inttoptr i64 %t995 to ptr
  %t997 = extractvalue { i64, ptr } %t993, 0
  %t998 = extractvalue { i64, ptr } %t993, 1
  %t999 = mul i64 %t997, 1
  %t1000 = call ptr @__olang_scope_alloc(ptr %t996, i64 %t999)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1000, ptr %t998, i64 %t999, i1 false)
  %t1001 = insertvalue { i64, ptr } undef, i64 %t997, 0
  %t1002 = insertvalue { i64, ptr } %t1001, ptr %t1000, 1
  store { i64, ptr } %t1002, ptr %l502, !tbaa !27
  %t1003 = load i64, ptr %l54, !tbaa !24
  %t1006 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t1003)
  store { i64, ptr } %t1006, ptr %l505
  br label %bb258
bb258:
  %t1007 = load { i64, ptr }, ptr %l505, !tbaa !27
  %t1008 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2efunctionSymbols(ptr %s0, ptr %s0, { i64, ptr } %t1007)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1008, ptr %l506
  br label %bb259
bb259:
  %t1009 = load ptr, ptr %l495, !tbaa !29
  %t1010 = load { i64, ptr }, ptr %l502, !tbaa !27
  %t1011 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l506
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hb4e1316c13adc554c531dbb9cf254a96(ptr %s0, ptr %s0, ptr %s0, ptr %t1009, { i64, ptr } %t1010, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1011)
  br label %bb260
bb260:
  call void @__olang_scope_close(ptr %s43)
  br label %bb261
bb261:
  store ptr %l47, ptr %l508, !tbaa !29
  %t1012 = load i64, ptr %l54, !tbaa !24
  %t1015 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t1012)
  store { i64, ptr } %t1015, ptr %l511
  br label %bb262
bb262:
  %t1016 = load ptr, ptr %l508, !tbaa !29
  %t1017 = load { i64, ptr }, ptr %l511, !tbaa !27
  %t1018 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hfa095cf457cc3af0cc9715613212afd3(ptr %s0, ptr %s0, ptr %s0, ptr %t1016, { i64, ptr } %t1017)
  %t1019 = extractvalue { i32, ptr } %t1018, 1
  %t1020 = extractvalue { i32, ptr } %t1018, 0
  store i32 %t1020, ptr %l513
  %t1021 = icmp ne i32 %t1020, 0
  br i1 %t1021, label %bb264, label %ok.1022, !prof !99
ok.1022:
  store ptr %t1019, ptr %l512
  br label %bb263
bb263:
  %t1023 = load ptr, ptr %l512, !tbaa !29
  store ptr %t1023, ptr %l507, !tbaa !29
  br label %bb267
bb264:
  br label %bb265
bb265:
  %t1024 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1024, ptr %l514
  br label %bb266
bb266:
  %t1025 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l514
  %t1026 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1025, ptr %t1026
  store ptr %t1026, ptr %l507, !tbaa !29
  br label %bb267
bb267:
  %t1028 = load ptr, ptr %l507, !tbaa !29
  store ptr %t1028, ptr %l516, !tbaa !29
  %t1030 = load i64, ptr %l54, !tbaa !24
  %t1033 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l17, i64 %t1030)
  store i64 %t1033, ptr %l519
  br label %bb268
bb268:
  %t1034 = load ptr, ptr %l516, !tbaa !29
  %t1035 = load i64, ptr %l519, !tbaa !24
  %t1036 = call { i64, ptr } @compiler_2fprofile_2esymbolAt(ptr %s0, ptr %s42, ptr %t1034, i64 %t1035)
  store { i64, ptr } %t1036, ptr %l520
  br label %bb269
bb269:
  %t1037 = load { i64, ptr }, ptr %l520, !tbaa !27
  store { i64, ptr } %t1037, ptr %l63, !tbaa !27
  %t1038 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t1040 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s42, ptr %s42, { i64, ptr } %t1038, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t1040, ptr %l522
  br label %bb270
bb270:
  %t1041 = load i1, ptr %l522, !tbaa !21
  %t1042 = xor i1 %t1041, true
  br i1 %t1042, label %bb271, label %bb272
bb271:
  store %olang.scope zeroinitializer, ptr %s45
  %t1044 = load ptr, ptr %lp2
  %t1045 = getelementptr %"compiler/profile:Places", ptr %t1044, i32 0, i32 2
  store ptr %t1045, ptr %l524, !tbaa !29
  %t1046 = load ptr, ptr %lp2
  store ptr %t1046, ptr %l525, !tbaa !29
  %t1047 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t1049 = call { i64, ptr } @compiler_2fprofile_2eReadable(ptr %s42, ptr %v2, { i64, ptr } %t1047)
  store { i64, ptr } %t1049, ptr %l527
  br label %bb273
bb272:
  br label %bb278
bb273:
  %t1050 = load { i64, ptr }, ptr %l527, !tbaa !27
  %t1051 = extractvalue { i64, ptr } %t1050, 0
  %t1052 = extractvalue { i64, ptr } %t1050, 1
  %t1053 = mul i64 %t1051, 1
  %t1054 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1053)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1054, ptr %t1052, i64 %t1053, i1 false)
  %t1055 = insertvalue { i64, ptr } undef, i64 %t1051, 0
  %t1056 = insertvalue { i64, ptr } %t1055, ptr %t1054, 1
  %t1057 = load ptr, ptr %l525, !tbaa !29
  %t1059 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t1057, { i64, ptr } %t1056)
  store i64 %t1059, ptr %l529
  br label %bb274
bb274:
  %t1060 = load ptr, ptr %lp2
  %t1062 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t1060, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i64 %t1062, ptr %l531
  br label %bb275
bb275:
  %t1063 = load i64, ptr %l529, !tbaa !24
  %t1064 = load i64, ptr %l531, !tbaa !24
  %t1065 = call %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %s45, i64 %t1063, i64 %t1064, i64 0)
  store %"compiler/profile:Frame" %t1065, ptr %l532
  br label %bb276
bb276:
  %t1066 = load ptr, ptr %l524, !tbaa !29
  %t1067 = load %"compiler/profile:Frame", ptr %l532
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v2, ptr %t1066, %"compiler/profile:Frame" %t1067)
  br label %bb277
bb277:
  store i64 1, ptr %l55, !tbaa !24
  call void @__olang_scope_close(ptr %s45)
  br label %bb278
bb278:
  call void @__olang_scope_close(ptr %s42)
  br label %bb279
bb279:
  %t1068 = load i64, ptr %l55, !tbaa !24
  %t1070 = icmp eq i64 %t1068, 0
  br i1 %t1070, label %bb280, label %bb281
bb280:
  store %olang.scope zeroinitializer, ptr %s46
  %t1072 = load i64, ptr %l54, !tbaa !24
  %t1075 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t1072)
  store { i64, ptr } %t1075, ptr %l537
  br label %bb282
bb281:
  br label %bb297
bb282:
  %t1076 = load { i64, ptr }, ptr %l537, !tbaa !27
  %t1077 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s46, { i64, ptr } %t1076, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t1077, ptr %l538
  br label %bb283
bb283:
  %t1078 = load i1, ptr %l538, !tbaa !21
  %t1079 = xor i1 %t1078, true
  br i1 %t1079, label %bb284, label %bb285
bb284:
  %t1081 = load i64, ptr %l54, !tbaa !24
  %t1084 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l16, i64 %t1081)
  store { i64, ptr } %t1084, ptr %l543
  br label %bb286
bb285:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l540, !tbaa !27
  br label %bb288
bb286:
  %t1085 = load { i64, ptr }, ptr %l543, !tbaa !27
  %t1086 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %s0, ptr %s46, { i64, ptr } %t1085)
  store { i64, ptr } %t1086, ptr %l544
  br label %bb287
bb287:
  %t1087 = load { i64, ptr }, ptr %l544, !tbaa !27
  store { i64, ptr } %t1087, ptr %l540, !tbaa !27
  br label %bb288
bb288:
  %t1088 = load { i64, ptr }, ptr %l540, !tbaa !27
  store { i64, ptr } %t1088, ptr %l64, !tbaa !27
  %t1089 = load ptr, ptr %lp2
  %t1090 = getelementptr %"compiler/profile:Places", ptr %t1089, i32 0, i32 2
  store ptr %t1090, ptr %l545, !tbaa !29
  %t1091 = load ptr, ptr %lp2
  store ptr %t1091, ptr %l546, !tbaa !29
  %t1092 = load i64, ptr %l54, !tbaa !24
  %t1095 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t1092)
  store i64 %t1095, ptr %l549
  br label %bb289
bb289:
  %t1096 = load i64, ptr %l549, !tbaa !24
  store i64 %t1096, ptr %l550, !tbaa !65
  %t1097 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s46, i64 16)
  %t1098 = extractvalue { i32, i64 } %t1097, 1
  %t1099 = extractvalue { i32, i64 } %t1097, 0
  store i32 %t1099, ptr %l552
  %t1100 = icmp ne i32 %t1099, 0
  br i1 %t1100, label %bb291, label %ok.1101, !prof !99
ok.1101:
  store i64 %t1098, ptr %l551
  br label %bb290
bb290:
  %t1102 = load i64, ptr %l550, !tbaa !65
  %t1103 = load i64, ptr %l551, !tbaa !24
  %t1104 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s46, i64 %t1102, i64 %t1103)
  store { i64, ptr } %t1104, ptr %l553
  br label %bb292
bb291:
  call void @__olang_check_failed(ptr @olang_loc_6b0ecf2869984314_228026d38fe8b188)
  unreachable
bb292:
  %t1105 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t1106 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t1107 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t1108 = load { i64, ptr }, ptr %l553, !tbaa !27
  %t1109 = extractvalue { i64, ptr } %t1108, 1
  %t1110 = extractvalue { i64, ptr } %t1108, 0
  %t1111 = add i64 %t1107, %t1110
  %t1112 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t1113 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t1114 = add i64 %t1111, %t1113
  %t1116 = extractvalue { i64, ptr } %t1105, 1
  %t1117 = extractvalue { i64, ptr } %t1105, 0
  %t1118 = add i64 %t1114, %t1117
  %t1119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t1120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t1121 = add i64 %t1118, %t1120
  %t1122 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1121)
  call void @olang_textcopy(ptr %t1122, ptr %t1106, i64 %t1107)
  %t1123 = getelementptr i8, ptr %t1122, i64 %t1107
  call void @olang_textcopy(ptr %t1123, ptr %t1109, i64 %t1110)
  %t1124 = getelementptr i8, ptr %t1123, i64 %t1110
  call void @olang_textcopy(ptr %t1124, ptr %t1112, i64 %t1113)
  %t1125 = getelementptr i8, ptr %t1124, i64 %t1113
  call void @olang_textcopy(ptr %t1125, ptr %t1116, i64 %t1117)
  %t1126 = getelementptr i8, ptr %t1125, i64 %t1117
  call void @olang_textcopy(ptr %t1126, ptr %t1119, i64 %t1120)
  %t1127 = insertvalue { i64, ptr } undef, i64 %t1121, 0
  %t1128 = insertvalue { i64, ptr } %t1127, ptr %t1122, 1
  %t1130 = extractvalue { i64, ptr } %t1128, 0
  %t1131 = extractvalue { i64, ptr } %t1128, 1
  %t1132 = mul i64 %t1130, 1
  %t1133 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1133, ptr %t1131, i64 %t1132, i1 false)
  %t1134 = insertvalue { i64, ptr } undef, i64 %t1130, 0
  %t1135 = insertvalue { i64, ptr } %t1134, ptr %t1133, 1
  %t1136 = load ptr, ptr %l546, !tbaa !29
  %t1138 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t1136, { i64, ptr } %t1135)
  store i64 %t1138, ptr %l557
  br label %bb293
bb293:
  %t1139 = load ptr, ptr %lp2
  %t1141 = call i64 @compiler_2fprofile_2ecompiler_2fprofile_3aPlaces_2ename(ptr %v2, ptr %v2, ptr %t1139, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i64 %t1141, ptr %l559
  br label %bb294
bb294:
  %t1142 = load i64, ptr %l557, !tbaa !24
  %t1143 = load i64, ptr %l559, !tbaa !24
  %t1144 = call %"compiler/profile:Frame" @compiler_2fprofile_3aFrame_2ector(ptr %s46, i64 %t1142, i64 %t1143, i64 0)
  store %"compiler/profile:Frame" %t1144, ptr %l560
  br label %bb295
bb295:
  %t1145 = load ptr, ptr %l545, !tbaa !29
  %t1146 = load %"compiler/profile:Frame", ptr %l560
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v2, ptr %t1145, %"compiler/profile:Frame" %t1146)
  br label %bb296
bb296:
  store i64 1, ptr %l55, !tbaa !24
  call void @__olang_scope_close(ptr %s46)
  br label %bb297
bb297:
  %t1147 = load ptr, ptr %lp2
  %t1148 = getelementptr %"compiler/profile:Places", ptr %t1147, i32 0, i32 4
  %t1149 = load i64, ptr %l55, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t1148, i64 %t1149)
  br label %bb298
bb298:
  call void @__olang_scope_close(ptr %s32)
  br label %bb299
bb299:
  %t1152 = load i64, ptr %l53, !tbaa !24
  %t1154 = add i64 %t1152, 1
  store i64 %t1154, ptr %l53, !tbaa !24
  br label %bb164
bb300:
  %t1156 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l565, ptr %t1156, i64 272, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l565, i64 272, i1 false)
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
  %t35 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t33, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d57, i32 0, i32 1) })
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
  %l106 = alloca { i64, ptr }
  %l108 = alloca i64
  %l110 = alloca i64
  %l111 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
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
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l12, !tbaa !27
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
  %t65 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s3, { i64, ptr } %t63, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) })
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
  %t96 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s3, { i64, ptr } %t94, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d60, i32 0, i32 1) })
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
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s3, { i64, ptr } %t129, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) })
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
  %t166 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t164, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) })
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
  %t259 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t257, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) })
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
  %t268 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t266, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l105, !tbaa !27
  %t290 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t290, ptr %l106, !tbaa !27
  %t291 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  %t293 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 0
  store i64 %t294, ptr %l108, !tbaa !24
  %t296 = load i64, ptr %l108, !tbaa !24
  %t297 = icmp eq i64 %t292, %t296
  br i1 %t297, label %bb78, label %bb79
bb77:
  br label %bb81
bb78:
  %t299 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = load i64, ptr %l108, !tbaa !24
  %t304 = mul i64 %t303, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t300, ptr %t302, i64 %t304, i1 false)
  br label %bb80
bb79:
  %t305 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 0
  store i64 %t306, ptr %l110, !tbaa !24
  %t307 = load i64, ptr %l110, !tbaa !24
  %t308 = mul i64 %t307, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t308)
  %t310 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  store { i64, ptr } %t311, ptr %l111, !tbaa !27
  %t312 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !27
  %t316 = load i64, ptr %l110, !tbaa !24
  %t317 = mul i64 %t316, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t313, ptr %t315, i64 %t317, i1 false)
  %t318 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t318, ptr %l7, !tbaa !27
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t319 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t319, ptr %l112, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t322 = call { i64, ptr } @compiler_2fprofile_2etypesRead(ptr %v1, ptr %s0, { i64, ptr } %t320)
  store { i64, ptr } %t322, ptr %l114
  br label %bb82
bb82:
  %t323 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t323, 1
  %t325 = extractvalue { i64, ptr } %t323, 0
  %t326 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 1
  %t328 = extractvalue { i64, ptr } %t326, 0
  %t329 = add i64 %t325, %t328
  %t330 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t329)
  call void @olang_textcopy(ptr %t330, ptr %t324, i64 %t325)
  %t331 = getelementptr i8, ptr %t330, i64 %t325
  call void @olang_textcopy(ptr %t331, ptr %t327, i64 %t328)
  %t332 = insertvalue { i64, ptr } undef, i64 %t329, 0
  %t333 = insertvalue { i64, ptr } %t332, ptr %t330, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t333, ptr %rv
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
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l67, !tbaa !27
  br label %bb8
bb7:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l67, !tbaa !27
  br label %bb8
bb8:
  %t47 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t49 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = add i64 %t48, %t51
  %t53 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = load i64, ptr %l59, !tbaa !24
  %t57 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t58 = add i64 %t55, %t57
  %t59 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = add i64 %t61, %t64
  %t66 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t68 = add i64 %t65, %t67
  %t69 = load i64, ptr %l63, !tbaa !24
  %t70 = call i64 @__olang_fmt_i64(ptr null, i64 %t69)
  %t71 = add i64 %t68, %t70
  %t72 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = add i64 %t71, %t74
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
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
  %t113 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t112)
  %t117 = add i64 %t114, %t116
  %t118 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l5, { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d75, i32 0, i32 1) })
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
  %t160 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_76, 0
  %t161 = insertvalue { ptr, ptr } %t160, ptr %t154, 1
  %t162 = load ptr, ptr %l86, !tbaa !29
  %t164 = extractvalue { ptr, ptr } %t161, 0
  %t165 = extractvalue { ptr, ptr } %t161, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, ptr %t162, ptr %t164, ptr %t165)
  br label %bb21
bb21:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d77, i32 0, i32 1) })
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
  %t254 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t255 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t256 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 1
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t259 = add i64 %t255, %t258
  %t260 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t262 = add i64 %t259, %t261
  %t263 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = add i64 %t262, %t265
  %t267 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t268 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t269 = add i64 %t266, %t268
  %t270 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = extractvalue { i64, ptr } %t270, 0
  %t273 = add i64 %t269, %t272
  %t274 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
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
  %t319 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_82, 0
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
  %t377 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v2, ptr %s11, { i64, ptr } %t376, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) })
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
  %t463 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadEnd(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d84, i32 0, i32 1) }, i64 %t461, i8 32)
  store { i64, ptr } %t463, ptr %l212
  br label %bb95
bb95:
  %t464 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t465 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t466 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t467 = extractvalue { i64, ptr } %t466, 1
  %t468 = extractvalue { i64, ptr } %t466, 0
  %t469 = add i64 %t465, %t468
  %t470 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t471 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
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
  %t580 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t581 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t582 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t583 = extractvalue { i64, ptr } %t582, 1
  %t584 = extractvalue { i64, ptr } %t582, 0
  %t585 = add i64 %t581, %t584
  %t586 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t587 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t588 = add i64 %t585, %t587
  %t589 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t590 = extractvalue { i64, ptr } %t589, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = add i64 %t588, %t591
  %t593 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t594 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t595 = add i64 %t592, %t594
  %t596 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t597 = extractvalue { i64, ptr } %t596, 1
  %t598 = extractvalue { i64, ptr } %t596, 0
  %t599 = add i64 %t595, %t598
  %t600 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t601 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d90, i32 0, i32 1) })
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
  %t730 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_91, 0
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
  %t795 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t796 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l353, !tbaa !27
  br label %bb184
bb182:
  %t837 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s25, ptr %s25, ptr %s25, ptr %l38, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d94, i32 0, i32 1) })
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
  %t846 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t847 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t848 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t849 = extractvalue { i64, ptr } %t848, 1
  %t850 = extractvalue { i64, ptr } %t848, 0
  %t851 = add i64 %t847, %t850
  %t852 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t853 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t854 = add i64 %t851, %t853
  %t855 = load { i64, ptr }, ptr %l353, !tbaa !27
  %t856 = extractvalue { i64, ptr } %t855, 1
  %t857 = extractvalue { i64, ptr } %t855, 0
  %t858 = add i64 %t854, %t857
  %t859 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t860 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
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
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d99, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb11
bb11:
  %t31 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t31, ptr %l1, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d100, i32 0, i32 1) })
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
  %t44 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
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
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t64, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) })
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
  %t73 = insertvalue [4 x { i64, ptr }] undef, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t74 = insertvalue [4 x { i64, ptr }] %t73, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t75 = insertvalue [4 x { i64, ptr }] %t74, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d105, i32 0, i32 1) }, 2
  %t76 = insertvalue [4 x { i64, ptr }] %t75, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d106, i32 0, i32 1) }, 3
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
  %t108 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s6, { i64, ptr } %t106, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d107, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d108, i32 0, i32 1) }, ptr %l51, !tbaa !27
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
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
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
  %lp3 = alloca ptr
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
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store i64 0, ptr %l4, !tbaa !24
  %t5 = getelementptr %"compiler/profile:Sample", ptr %l2, i32 0, i32 2
  %t6 = load i64, ptr %t5, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l6, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb4:
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l26, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l26, !tbaa !24
  store i64 %t34, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l23, !tbaa !24
  store i64 %t35, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l8, !tbaa !24
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb9, label %bb10
bb9:
  br label %bb39
bb10:
  br label %bb11
bb11:
  %t44 = load i64, ptr %l4, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l9, !tbaa !24
  %t56 = getelementptr %"compiler/profile:Profile", ptr %a1, i32 0, i32 4
  %t57 = getelementptr %"compiler/profile:Sample", ptr %l2, i32 0, i32 1
  %t58 = load i64, ptr %t57, !tbaa !24
  %t59 = load i64, ptr %l9, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t56, i64 %t62)
  store i64 %t65, ptr %l49
  br label %bb12
bb12:
  %t66 = load i64, ptr %l9, !tbaa !24
  %t68 = icmp eq i64 %t66, 0
  br i1 %t68, label %bb13, label %bb14
bb13:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb15
bb14:
  store i64 1, ptr %l52, !tbaa !24
  br label %bb15
bb15:
  %t70 = load i64, ptr %l49, !tbaa !24
  %t71 = load i64, ptr %l52, !tbaa !24
  %t72 = sub i64 %t70, %t71
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/profile:Places", ptr %t74, i32 0, i32 5
  %t80 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t76, i64 %t72)
  %t81 = extractvalue { i32, i64 } %t80, 1
  %t82 = extractvalue { i32, i64 } %t80, 0
  store i32 %t82, ptr %l59
  %t83 = icmp ne i32 %t82, 0
  br i1 %t83, label %bb17, label %ok.84, !prof !99
ok.84:
  store i64 %t81, ptr %l58
  br label %bb16
bb16:
  %t85 = load i64, ptr %l58, !tbaa !24
  store i64 %t85, ptr %l54, !tbaa !24
  br label %bb19
bb17:
  br label %bb18
bb18:
  store i64 -1, ptr %l54, !tbaa !24
  br label %bb19
bb19:
  %t86 = load i64, ptr %l54, !tbaa !24
  store i64 %t86, ptr %l11, !tbaa !24
  %t87 = load i64, ptr %l11, !tbaa !24
  %t89 = icmp slt i64 %t87, 0
  br i1 %t89, label %bb20, label %bb21
bb20:
  br label %bb38
bb21:
  br label %bb22
bb22:
  store i64 0, ptr %l12, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/profile:Places", ptr %t91, i32 0, i32 4
  %t94 = load i64, ptr %l11, !tbaa !24
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t93, i64 %t94)
  store i64 %t97, ptr %l65
  br label %bb23
bb23:
  %t98 = load i64, ptr %l65, !tbaa !24
  store i64 %t98, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t99 = load i64, ptr %l13, !tbaa !24
  %t100 = load i64, ptr %l12, !tbaa !24
  %t103 = icmp sgt i64 %t99, %t100
  br i1 %t103, label %bb24, label %bb25
bb24:
  %t105 = load i64, ptr %l14, !tbaa !24
  %t107 = icmp sgt i64 %t105, 0
  br i1 %t107, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb29
bb26:
  %t109 = load i64, ptr %l13, !tbaa !24
  %t110 = load i64, ptr %l12, !tbaa !24
  %t113 = sub i64 %t109, %t110
  %t114 = load i64, ptr %l14, !tbaa !24
  %t117 = add i64 %t113, %t114
  %t119 = sub i64 %t117, 1
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = sdiv i64 %t119, %t120
  store i64 %t123, ptr %l72, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb28
bb28:
  %t125 = load i64, ptr %l72, !tbaa !24
  store i64 %t125, ptr %l69, !tbaa !24
  br label %bb29
bb29:
  %t126 = load i64, ptr %l69, !tbaa !24
  store i64 %t126, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb30
bb30:
  %t127 = load i64, ptr %l16, !tbaa !24
  %t128 = load i64, ptr %l15, !tbaa !24
  %t131 = icmp slt i64 %t127, %t128
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb31, label %bb32
bb31:
  br label %bb37
bb32:
  br label %bb33
bb33:
  %t135 = load i64, ptr %l12, !tbaa !24
  %t136 = load i64, ptr %l16, !tbaa !24
  %t137 = load i64, ptr %l14, !tbaa !24
  %t140 = mul i64 %t136, %t137
  %t143 = add i64 %t135, %t140
  store i64 %t143, ptr %l17, !tbaa !24
  %t145 = load ptr, ptr %lp3
  store ptr %t145, ptr %l90, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/profile:Places", ptr %t146, i32 0, i32 3
  %t149 = load i64, ptr %l11, !tbaa !24
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t148, i64 %t149)
  store i64 %t152, ptr %l94
  br label %bb34
bb34:
  %t153 = load i64, ptr %l17, !tbaa !24
  %t154 = load i64, ptr %l94, !tbaa !24
  %t156 = add i64 %t154, %t153
  %t157 = load ptr, ptr %l90, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t157, i64 %t156)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t159 = load i64, ptr %l16, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l16, !tbaa !24
  br label %bb30
bb37:
  br label %bb38
bb38:
  %t163 = load i64, ptr %l8, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l8, !tbaa !24
  br label %bb8
bb39:
  %t167 = load ptr, ptr %lp3
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t167
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %rv
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d110, i32 0, i32 1) })
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d111, i32 0, i32 1) })
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d112, i32 0, i32 1) })
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %l1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d113, i32 0, i32 1) })
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
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) })
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
  %t60 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t58, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) })
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
  %t418 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_116, 0
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
  %lp1 = alloca ptr
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
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t7 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t7, ptr %l19
  br label %bb2
bb2:
  %t8 = load %"std/prelude/text:LineIter", ptr %l19
  store %"std/prelude/text:LineIter" %t8, ptr %l2
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t10 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l2)
  %t11 = extractvalue { i32, { i64, ptr } } %t10, 1
  %t12 = extractvalue { i32, { i64, ptr } } %t10, 0
  store i32 %t12, ptr %l23
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb5, label %ok.14, !prof !99
ok.14:
  store { i64, ptr } %t11, ptr %l22
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t15, ptr %l20, !tbaa !27
  br label %bb7
bb5:
  %t16 = load i32, ptr %l23, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l25, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb7:
  %t20 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l26
  br label %bb8
bb8:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l4
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t23, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) })
  store { i64, ptr } %t25, ptr %l28
  br label %bb9
bb9:
  %t26 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s4
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t39 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t39, ptr %l35, !tbaa !27
  %t40 = load i64, ptr %l6, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %t43, i64 %t40
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !37
  store { i64, ptr } %t45, ptr %l8, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store i1 %t49, ptr %l39
  br label %bb14
bb14:
  %t50 = load i1, ptr %l39, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %v0, ptr %l4, { i64, ptr } %t53)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s4)
  br label %bb19
bb19:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l6, !tbaa !24
  br label %bb10
bb20:
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l4)
  store i64 %t61, ptr %l46
  br label %bb21
bb21:
  %t62 = load i64, ptr %l46, !tbaa !24
  %t63 = icmp slt i64 %t62, 6
  br i1 %t63, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb23:
  br label %bb24
bb24:
  %t66 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 0)
  store { i64, ptr } %t66, ptr %l50
  br label %bb25
bb25:
  %t67 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t68 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s2, ptr %s2, { i64, ptr } %t67, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) })
  %t69 = extractvalue { i32, i64 } %t68, 1
  %t70 = extractvalue { i32, i64 } %t68, 0
  store i32 %t70, ptr %l52
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb27, label %ok.72, !prof !99
ok.72:
  store i64 %t69, ptr %l51
  br label %bb26
bb26:
  %t73 = load i64, ptr %l51, !tbaa !24
  store i64 %t73, ptr %l48, !tbaa !24
  br label %bb29
bb27:
  br label %bb28
bb28:
  store i64 -1, ptr %l48, !tbaa !24
  br label %bb29
bb29:
  %t74 = load i64, ptr %l48, !tbaa !24
  store i64 %t74, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l9, !tbaa !24
  %t77 = icmp slt i64 %t75, 0
  br i1 %t77, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb31:
  br label %bb32
bb32:
  %t79 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t79, ptr %l55
  br label %bb33
bb33:
  %t80 = load %"std/prelude/text:StringBuilder", ptr %l55
  store %"std/prelude/text:StringBuilder" %t80, ptr %l10
  store i64 5, ptr %l11, !tbaa !24
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l4)
  store i64 %t82, ptr %l57
  br label %bb34
bb34:
  %t83 = load i64, ptr %l57, !tbaa !24
  store i64 %t83, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t84 = load i64, ptr %l12, !tbaa !24
  %t85 = load i64, ptr %l11, !tbaa !24
  %t88 = icmp sgt i64 %t84, %t85
  br i1 %t88, label %bb35, label %bb36
bb35:
  %t90 = load i64, ptr %l13, !tbaa !24
  %t92 = icmp sgt i64 %t90, 0
  br i1 %t92, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb40
bb37:
  %t94 = load i64, ptr %l12, !tbaa !24
  %t95 = load i64, ptr %l11, !tbaa !24
  %t98 = sub i64 %t94, %t95
  %t99 = load i64, ptr %l13, !tbaa !24
  %t102 = add i64 %t98, %t99
  %t104 = sub i64 %t102, 1
  %t105 = load i64, ptr %l13, !tbaa !24
  %t108 = sdiv i64 %t104, %t105
  store i64 %t108, ptr %l64, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb39
bb39:
  %t110 = load i64, ptr %l64, !tbaa !24
  store i64 %t110, ptr %l61, !tbaa !24
  br label %bb40
bb40:
  %t111 = load i64, ptr %l61, !tbaa !24
  store i64 %t111, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb41
bb41:
  %t112 = load i64, ptr %l15, !tbaa !24
  %t113 = load i64, ptr %l14, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb42, label %bb43
bb42:
  br label %bb52
bb43:
  br label %bb44
bb44:
  %t120 = load i64, ptr %l11, !tbaa !24
  %t121 = load i64, ptr %l15, !tbaa !24
  %t122 = load i64, ptr %l13, !tbaa !24
  %t125 = mul i64 %t121, %t122
  %t128 = add i64 %t120, %t125
  store i64 %t128, ptr %l16, !tbaa !24
  %t130 = load i64, ptr %l16, !tbaa !24
  %t132 = icmp sgt i64 %t130, 5
  br i1 %t132, label %bb45, label %bb46
bb45:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s2, ptr %l10, i8 32)
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb48
bb48:
  store ptr %l10, ptr %l85, !tbaa !29
  %t135 = load i64, ptr %l16, !tbaa !24
  %t138 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 %t135)
  store { i64, ptr } %t138, ptr %l88
  br label %bb49
bb49:
  %t139 = load ptr, ptr %l85, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l88, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %t139, { i64, ptr } %t140)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t141 = load i64, ptr %l15, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l15, !tbaa !24
  br label %bb41
bb52:
  %t145 = load ptr, ptr %lp1
  store ptr %t145, ptr %l91, !tbaa !29
  %t147 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 0)
  store { i64, ptr } %t147, ptr %l93
  br label %bb53
bb53:
  %t148 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t148, ptr %l94, !tbaa !27
  %t149 = load i64, ptr %l9, !tbaa !24
  store i64 %t149, ptr %l95, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 0
  store i64 %t151, ptr %l96, !tbaa !24
  %t152 = icmp sge i64 0, 0
  br i1 %t152, label %bb54, label %bb55
bb54:
  %t154 = load i64, ptr %l95, !tbaa !24
  %t155 = icmp sle i64 0, %t154
  br i1 %t155, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb56:
  %t157 = load i64, ptr %l95, !tbaa !24
  %t158 = load i64, ptr %l96, !tbaa !24
  %t159 = icmp sle i64 %t157, %t158
  br i1 %t159, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb58:
  %t161 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = load i64, ptr %l95, !tbaa !24
  %t164 = getelementptr i8, ptr %t162, i64 0
  %t165 = sub i64 %t163, 0
  %t166 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t164, 1
  %t169 = call i64 @compiler_2fprofile_2ehex(ptr %s2, { i64, ptr } %t167)
  store i64 %t169, ptr %l101
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb60:
  %t171 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 0)
  store { i64, ptr } %t171, ptr %l103
  br label %bb61
bb61:
  %t172 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t172, ptr %l104, !tbaa !27
  %t173 = load i64, ptr %l9, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l106, !tbaa !24
  %t177 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 0)
  store { i64, ptr } %t177, ptr %l108
  br label %bb62
bb62:
  %t178 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t178, 0
  store i64 %t181, ptr %l111, !tbaa !24
  %t182 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 0
  store i64 %t183, ptr %l112, !tbaa !24
  %t184 = load i64, ptr %l106, !tbaa !24
  %t185 = icmp sge i64 %t184, 0
  br i1 %t185, label %bb63, label %bb64
bb63:
  %t187 = load i64, ptr %l106, !tbaa !24
  %t188 = load i64, ptr %l111, !tbaa !24
  %t189 = icmp sle i64 %t187, %t188
  br i1 %t189, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb65:
  %t191 = load i64, ptr %l111, !tbaa !24
  %t192 = load i64, ptr %l112, !tbaa !24
  %t193 = icmp sle i64 %t191, %t192
  br i1 %t193, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb67:
  %t195 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = load i64, ptr %l106, !tbaa !24
  %t198 = load i64, ptr %l111, !tbaa !24
  %t199 = getelementptr i8, ptr %t196, i64 %t197
  %t200 = sub i64 %t198, %t197
  %t201 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t199, 1
  %t204 = call i64 @compiler_2fprofile_2ehex(ptr %s2, { i64, ptr } %t202)
  store i64 %t204, ptr %l117
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_49a351722641e944_c5b141a1c073228)
  unreachable
bb69:
  %t206 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l4, i64 2)
  store { i64, ptr } %t206, ptr %l119
  br label %bb70
bb70:
  %t207 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t208 = call i64 @compiler_2fprofile_2ehex(ptr %s2, { i64, ptr } %t207)
  store i64 %t208, ptr %l120
  br label %bb71
bb71:
  %t209 = ptrtoint ptr %v1 to i64
  store i64 %t209, ptr %l121, !tbaa !24
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3amapping_2e3
  br i1 %t210, label %bb72, label %bb73
bb72:
  %t212 = call ptr @__olang_region_make(ptr %v1)
  %t213 = ptrtoint ptr %t212 to i64
  store i64 %t213, ptr %l121, !tbaa !24
  br label %bb73
bb73:
  %t214 = load i64, ptr %l121
  %t215 = inttoptr i64 %t214 to ptr
  %t217 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %t215, ptr %l10)
  store { i64, ptr } %t217, ptr %l124
  br label %bb74
bb74:
  %t218 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t219 = load i64, ptr %l121
  %t220 = inttoptr i64 %t219 to ptr
  %t221 = extractvalue { i64, ptr } %t218, 0
  %t222 = extractvalue { i64, ptr } %t218, 1
  %t223 = mul i64 %t221, 1
  %t224 = call ptr @__olang_scope_alloc(ptr %t220, i64 %t223)
  call void @llvm.memcpy.p0.p0.i64(ptr %t224, ptr %t222, i64 %t223, i1 false)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  %t227 = load i64, ptr %l101, !tbaa !24
  %t228 = load i64, ptr %l117, !tbaa !24
  %t229 = load i64, ptr %l120, !tbaa !24
  %t231 = call %"compiler/profile:mapping" @compiler_2fprofile_3amapping_2ector(ptr %v1, ptr %v1, i64 %t227, i64 %t228, i64 %t229, { i64, ptr } %t226)
  store %"compiler/profile:mapping" %t231, ptr %l126
  br label %bb75
bb75:
  %t232 = load ptr, ptr %l91, !tbaa !29
  %t233 = load %"compiler/profile:mapping", ptr %l126
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3amapping_3e_2ePush_Hc0dd0b8028ee4ec7edce99e352ae7bbd(ptr %v1, ptr %v1, ptr %t232, %"compiler/profile:mapping" %t233)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb77:
  br label %bb3
bb78:
  %t234 = load ptr, ptr %lp1
  %t235 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t234
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t235, ptr %rv
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
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d121, i32 0, i32 1) })
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
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d122, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d123, i32 0, i32 1) }, ptr %l7, !tbaa !27
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
  %t28 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) })
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
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t38 = extractvalue { i64, ptr } %a3, 1
  %t39 = extractvalue { i64, ptr } %a3, 0
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d128, i32 0, i32 1) }, ptr %l50, !tbaa !27
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
  %t118 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d130, i32 0, i32 1) }, ptr %l3, !tbaa !27
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
  %l2 = alloca i32
  %l4 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l2
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t6 = load i32, ptr %l2, !tbaa !23
  %t7 = ashr i32 %t6, 16
  %t9 = icmp eq i32 %t7, 1
  store i1 %t9, ptr %l4, !tbaa !21
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fprofile_2esegments(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t7 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %s0, { i64, ptr } %a0)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l18
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb3, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l17
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t12, ptr %l15, !tbaa !27
  br label %bb7
bb3:
  %t13 = load i32, ptr %l18, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  store i1 %t16, ptr %l20, !tbaa !21
  %t17 = load i32, ptr %l18, !tbaa !23
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
  %t25 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = icmp slt i64 %t28, 64
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t32, ptr %l28, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i8, ptr %t34, i64 0
  %t36 = load i8, ptr %t35, !tbaa !32
  %t39 = icmp ne i8 %t36, 127
  store i1 %t39, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l27, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb13
bb12:
  %t42 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t42, ptr %l33, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i8, ptr %t44, i64 1
  %t46 = load i8, ptr %t45, !tbaa !32
  %t50 = icmp ne i8 %t46, 69
  store i1 %t50, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l32, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb16
bb15:
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t53, ptr %l39, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 4
  %t57 = load i8, ptr %t56, !tbaa !32
  %t60 = icmp ne i8 %t57, 2
  store i1 %t60, ptr %l38, !tbaa !21
  br label %bb16
bb16:
  %t62 = load i1, ptr %l38, !tbaa !21
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
  %t69 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t66, i64 4)
  store i64 %t69, ptr %l46
  br label %bb20
bb20:
  %t70 = load i64, ptr %l46, !tbaa !24
  store i64 %t70, ptr %l3, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t71, ptr %l47, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i8, ptr %t73, i64 54
  %t75 = load i8, ptr %t74, !tbaa !32
  %t77 = zext i8 %t75 to i64
  %t78 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t78, ptr %l50, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 55
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = zext i8 %t82 to i64
  %t86 = shl i64 %t84, 8
  %t89 = or i64 %t77, %t86
  store i64 %t89, ptr %l4, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t91, ptr %l55, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i8, ptr %t93, i64 56
  %t95 = load i8, ptr %t94, !tbaa !32
  %t97 = zext i8 %t95 to i64
  %t98 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t98, ptr %l58, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i8, ptr %t100, i64 57
  %t102 = load i8, ptr %t101, !tbaa !32
  %t104 = zext i8 %t102 to i64
  %t106 = shl i64 %t104, 8
  %t109 = or i64 %t97, %t106
  store i64 0, ptr %l6, !tbaa !24
  store i64 %t109, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t113 = load i64, ptr %l7, !tbaa !24
  %t114 = load i64, ptr %l6, !tbaa !24
  %t117 = icmp sgt i64 %t113, %t114
  br i1 %t117, label %bb21, label %bb22
bb21:
  %t119 = load i64, ptr %l8, !tbaa !24
  %t121 = icmp sgt i64 %t119, 0
  br i1 %t121, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb26
bb23:
  %t123 = load i64, ptr %l7, !tbaa !24
  %t124 = load i64, ptr %l6, !tbaa !24
  %t127 = sub i64 %t123, %t124
  %t128 = load i64, ptr %l8, !tbaa !24
  %t131 = add i64 %t127, %t128
  %t133 = sub i64 %t131, 1
  %t134 = load i64, ptr %l8, !tbaa !24
  %t137 = sdiv i64 %t133, %t134
  store i64 %t137, ptr %l70, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb25
bb25:
  %t139 = load i64, ptr %l70, !tbaa !24
  store i64 %t139, ptr %l67, !tbaa !24
  br label %bb26
bb26:
  %t140 = load i64, ptr %l67, !tbaa !24
  store i64 %t140, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  %t141 = load i64, ptr %l10, !tbaa !24
  %t142 = load i64, ptr %l9, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb28, label %bb29
bb28:
  br label %bb48
bb29:
  br label %bb30
bb30:
  %t149 = load i64, ptr %l6, !tbaa !24
  %t150 = load i64, ptr %l10, !tbaa !24
  %t151 = load i64, ptr %l8, !tbaa !24
  %t154 = mul i64 %t150, %t151
  %t157 = add i64 %t149, %t154
  %t159 = load i64, ptr %l3, !tbaa !24
  %t161 = load i64, ptr %l4, !tbaa !24
  %t164 = mul i64 %t157, %t161
  %t167 = add i64 %t159, %t164
  store i64 %t167, ptr %l12, !tbaa !24
  %t169 = load i64, ptr %l12, !tbaa !24
  %t171 = add i64 %t169, 56
  %t172 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t172, 0
  %t177 = icmp sgt i64 %t171, %t174
  br i1 %t177, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l98, !tbaa !21
  br label %bb33
bb32:
  %t179 = load i64, ptr %l12, !tbaa !24
  %t181 = srem i64 %t179, 8
  %t183 = icmp ne i64 %t181, 0
  store i1 %t183, ptr %l98, !tbaa !21
  br label %bb33
bb33:
  %t185 = load i1, ptr %l98, !tbaa !21
  br i1 %t185, label %bb34, label %bb35
bb34:
  br label %bb48
bb35:
  br label %bb36
bb36:
  %t186 = load i64, ptr %l12, !tbaa !24
  %t188 = sdiv i64 %t186, 8
  store i64 %t188, ptr %l13, !tbaa !24
  %t190 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t192 = load i64, ptr %l13, !tbaa !24
  %t195 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t190, i64 %t192)
  store i64 %t195, ptr %l107
  br label %bb37
bb37:
  %t196 = load i64, ptr %l107, !tbaa !24
  %t197 = and i64 %t196, 4294967295
  %t199 = icmp ne i64 %t197, 1
  br i1 %t199, label %bb38, label %bb39
bb38:
  br label %bb47
bb39:
  br label %bb40
bb40:
  %t201 = load ptr, ptr %lp1
  store ptr %t201, ptr %l110, !tbaa !29
  %t202 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t204 = load i64, ptr %l13, !tbaa !24
  %t206 = add i64 %t204, 1
  %t209 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t202, i64 %t206)
  store i64 %t209, ptr %l115
  br label %bb41
bb41:
  %t210 = load ptr, ptr %l110, !tbaa !29
  %t211 = load i64, ptr %l115, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t210, i64 %t211)
  br label %bb42
bb42:
  %t212 = load ptr, ptr %lp1
  store ptr %t212, ptr %l116, !tbaa !29
  %t213 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t215 = load i64, ptr %l13, !tbaa !24
  %t217 = add i64 %t215, 4
  %t220 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t213, i64 %t217)
  store i64 %t220, ptr %l121
  br label %bb43
bb43:
  %t221 = load ptr, ptr %l116, !tbaa !29
  %t222 = load i64, ptr %l121, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t221, i64 %t222)
  br label %bb44
bb44:
  %t223 = load ptr, ptr %lp1
  store ptr %t223, ptr %l122, !tbaa !29
  %t224 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t226 = load i64, ptr %l13, !tbaa !24
  %t228 = add i64 %t226, 2
  %t231 = call i64 @compiler_2fprofile_2eword(ptr %s0, { i64, ptr } %t224, i64 %t228)
  store i64 %t231, ptr %l127
  br label %bb45
bb45:
  %t232 = load ptr, ptr %l122, !tbaa !29
  %t233 = load i64, ptr %l127, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t232, i64 %t233)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t234 = load i64, ptr %l10, !tbaa !24
  %t236 = add i64 %t234, 1
  store i64 %t236, ptr %l10, !tbaa !24
  br label %bb27
bb48:
  %t238 = load ptr, ptr %lp1
  %t239 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t238
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %rv
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t12, ptr %l1, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) })
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
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) }, ptr %l64, !tbaa !27
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
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l10, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l10
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t28, ptr %l12
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l10
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 2
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr %t38
  %t45 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr %t44
  %t51 = icmp eq ptr %t50, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t51)
  br label %bb10
bb10:
  %t52 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t52, ptr %l1
  %t53 = ptrtoint ptr %v0 to i64
  store i64 %t53, ptr %l14, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e2
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = call ptr @__olang_region_make(ptr %v0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l14, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l14
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ector(ptr %t59, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l16
  br label %bb13
bb13:
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e2
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = load i64, ptr %l14
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr null
  %t71 = icmp eq ptr %t70, %t64
  call void @__olang_region_settle(ptr %t64, i1 %t71)
  br label %bb15
bb15:
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l2
  %t73 = ptrtoint ptr %v0 to i64
  store i64 %t73, ptr %l18, !tbaa !24
  %t74 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e3
  br i1 %t74, label %bb16, label %bb17
bb16:
  %t76 = call ptr @__olang_region_make(ptr %v0)
  %t77 = ptrtoint ptr %t76 to i64
  store i64 %t77, ptr %l18, !tbaa !24
  br label %bb17
bb17:
  %t78 = load i64, ptr %l18
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t79, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %l20
  br label %bb18
bb18:
  %t81 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e3
  br i1 %t81, label %bb19, label %bb20
bb19:
  %t83 = load i64, ptr %l18
  %t84 = inttoptr i64 %t83 to ptr
  %t85 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t86 = load { i64, ptr }, ptr %t85
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = call ptr @__olang_region_or(ptr %t87, ptr null)
  %t89 = icmp ne ptr %t88, null
  %t90 = select i1 %t89, ptr %t88, ptr null
  %t91 = icmp eq ptr %t90, %t84
  call void @__olang_region_settle(ptr %t84, i1 %t91)
  br label %bb20
bb20:
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l3
  %t93 = ptrtoint ptr %v0 to i64
  store i64 %t93, ptr %l22, !tbaa !24
  %t94 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e4
  br i1 %t94, label %bb21, label %bb22
bb21:
  %t96 = call ptr @__olang_region_make(ptr %v0)
  %t97 = ptrtoint ptr %t96 to i64
  store i64 %t97, ptr %l22, !tbaa !24
  br label %bb22
bb22:
  %t98 = load i64, ptr %l22
  %t99 = inttoptr i64 %t98 to ptr
  %t100 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t99, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l24
  br label %bb23
bb23:
  %t101 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e4
  br i1 %t101, label %bb24, label %bb25
bb24:
  %t103 = load i64, ptr %l22
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %t105
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = call ptr @__olang_region_or(ptr %t107, ptr null)
  %t109 = icmp ne ptr %t108, null
  %t110 = select i1 %t109, ptr %t108, ptr null
  %t111 = icmp eq ptr %t110, %t104
  call void @__olang_region_settle(ptr %t104, i1 %t111)
  br label %bb25
bb25:
  %t112 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %l4
  %t113 = ptrtoint ptr %v0 to i64
  store i64 %t113, ptr %l26, !tbaa !24
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e5
  br i1 %t114, label %bb26, label %bb27
bb26:
  %t116 = call ptr @__olang_region_make(ptr %v0)
  %t117 = ptrtoint ptr %t116 to i64
  store i64 %t117, ptr %l26, !tbaa !24
  br label %bb27
bb27:
  %t118 = load i64, ptr %l26
  %t119 = inttoptr i64 %t118 to ptr
  %t120 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t119)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t120, ptr %l28
  br label %bb28
bb28:
  %t121 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aPlaces_2e5
  br i1 %t121, label %bb29, label %bb30
bb29:
  %t123 = load i64, ptr %l26
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 2
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = icmp ne ptr %t128, null
  %t130 = select i1 %t129, ptr %t128, ptr null
  %t131 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 1
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr %t130
  %t137 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = call ptr @__olang_region_or(ptr %t139, ptr null)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr %t136
  %t143 = icmp eq ptr %t142, %t124
  call void @__olang_region_settle(ptr %t124, i1 %t143)
  br label %bb30
bb30:
  %t144 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28
  %t145 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 0
  %t146 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %t145
  %t147 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 1
  %t148 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t148, ptr %t147
  %t149 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 2
  %t150 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %t149
  %t151 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 3
  %t152 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %t151
  %t153 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 4
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %t153
  %t155 = getelementptr %"compiler/profile:Places", ptr %l30, i32 0, i32 5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t144, ptr %t155
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
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l3
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l10, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aProfile_2e4
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l10
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l12
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aProfile_2e4
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l10
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t39)
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d141, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t41 = load i64, ptr %l0, !tbaa !24
  %t42 = insertvalue %"compiler/profile:Profile" undef, i64 %t41, 0
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = insertvalue %"compiler/profile:Profile" %t42, i64 %t43, 1
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = insertvalue %"compiler/profile:Profile" %t44, i64 %t45, 2
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t48 = insertvalue %"compiler/profile:Profile" %t46, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, 3
  %t50 = insertvalue %"compiler/profile:Profile" %t48, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, 4
  %t51 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t52 = insertvalue %"compiler/profile:Profile" %t50, { i64, ptr } %t51, 5
  store %"compiler/profile:Profile" %t52, ptr %rv
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
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr %t18
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr %t24
  %t31 = icmp eq ptr %t30, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t31)
  br label %bb5
bb5:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, ptr %l0
  %t33 = ptrtoint ptr %v0 to i64
  store i64 %t33, ptr %l11, !tbaa !24
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e1
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = call ptr @__olang_region_make(ptr %v0)
  %t37 = ptrtoint ptr %t36 to i64
  store i64 %t37, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l11
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t39)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %l13
  br label %bb8
bb8:
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e1
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load i64, ptr %l11
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr null
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = call ptr @__olang_region_or(ptr %t53, ptr null)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr %t50
  %t57 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr %t56
  %t63 = icmp eq ptr %t62, %t44
  call void @__olang_region_settle(ptr %t44, i1 %t63)
  br label %bb10
bb10:
  %t64 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t64, ptr %l1
  %t65 = ptrtoint ptr %v0 to i64
  store i64 %t65, ptr %l15, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e2
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = call ptr @__olang_region_make(ptr %v0)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l15, !tbaa !24
  br label %bb12
bb12:
  %t70 = load i64, ptr %l15
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t71)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t72, ptr %l17
  br label %bb13
bb13:
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e2
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t75 = load i64, ptr %l15
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 2
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr %t82
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr %t88
  %t95 = icmp eq ptr %t94, %t76
  call void @__olang_region_settle(ptr %t76, i1 %t95)
  br label %bb15
bb15:
  %t96 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t96, ptr %l2
  %t97 = ptrtoint ptr %v0 to i64
  store i64 %t97, ptr %l19, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e3
  br i1 %t98, label %bb16, label %bb17
bb16:
  %t100 = call ptr @__olang_region_make(ptr %v0)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l19, !tbaa !24
  br label %bb17
bb17:
  %t102 = load i64, ptr %l19
  %t103 = inttoptr i64 %t102 to ptr
  %t104 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t103)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t104, ptr %l21
  br label %bb18
bb18:
  %t105 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e3
  br i1 %t105, label %bb19, label %bb20
bb19:
  %t107 = load i64, ptr %l19
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr null
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr %t114
  %t121 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = call ptr @__olang_region_or(ptr %t123, ptr null)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr %t120
  %t127 = icmp eq ptr %t126, %t108
  call void @__olang_region_settle(ptr %t108, i1 %t127)
  br label %bb20
bb20:
  %t128 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t128, ptr %l3
  %t129 = ptrtoint ptr %v0 to i64
  store i64 %t129, ptr %l23, !tbaa !24
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e4
  br i1 %t130, label %bb21, label %bb22
bb21:
  %t132 = call ptr @__olang_region_make(ptr %v0)
  %t133 = ptrtoint ptr %t132 to i64
  store i64 %t133, ptr %l23, !tbaa !24
  br label %bb22
bb22:
  %t134 = load i64, ptr %l23
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t135)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t136, ptr %l25
  br label %bb23
bb23:
  %t137 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e4
  br i1 %t137, label %bb24, label %bb25
bb24:
  %t139 = load i64, ptr %l23
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25, i32 0, i32 2
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr null
  %t147 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25, i32 0, i32 1
  %t148 = load { i64, ptr }, ptr %t147
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = call ptr @__olang_region_or(ptr %t149, ptr null)
  %t151 = icmp ne ptr %t150, null
  %t152 = select i1 %t151, ptr %t150, ptr %t146
  %t153 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25, i32 0, i32 0
  %t154 = load { i64, ptr }, ptr %t153
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = call ptr @__olang_region_or(ptr %t155, ptr null)
  %t157 = icmp ne ptr %t156, null
  %t158 = select i1 %t157, ptr %t156, ptr %t152
  %t159 = icmp eq ptr %t158, %t140
  call void @__olang_region_settle(ptr %t140, i1 %t159)
  br label %bb25
bb25:
  %t160 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t160, ptr %l4
  %t161 = ptrtoint ptr %v0 to i64
  store i64 %t161, ptr %l27, !tbaa !24
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e5
  br i1 %t162, label %bb26, label %bb27
bb26:
  %t164 = call ptr @__olang_region_make(ptr %v0)
  %t165 = ptrtoint ptr %t164 to i64
  store i64 %t165, ptr %l27, !tbaa !24
  br label %bb27
bb27:
  %t166 = load i64, ptr %l27
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t167, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l29
  br label %bb28
bb28:
  %t169 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e5
  br i1 %t169, label %bb29, label %bb30
bb29:
  %t171 = load i64, ptr %l27
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t174 = load { i64, ptr }, ptr %t173
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = call ptr @__olang_region_or(ptr %t175, ptr null)
  %t177 = icmp ne ptr %t176, null
  %t178 = select i1 %t177, ptr %t176, ptr null
  %t179 = icmp eq ptr %t178, %t172
  call void @__olang_region_settle(ptr %t172, i1 %t179)
  br label %bb30
bb30:
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %l5
  %t181 = ptrtoint ptr %v0 to i64
  store i64 %t181, ptr %l31, !tbaa !24
  %t182 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e6
  br i1 %t182, label %bb31, label %bb32
bb31:
  %t184 = call ptr @__olang_region_make(ptr %v0)
  %t185 = ptrtoint ptr %t184 to i64
  store i64 %t185, ptr %l31, !tbaa !24
  br label %bb32
bb32:
  %t186 = load i64, ptr %l31
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t187, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l33
  br label %bb33
bb33:
  %t189 = load i1, ptr @olang_2esole_2ecompiler_2fprofile_3aTally_2e6
  br i1 %t189, label %bb34, label %bb35
bb34:
  %t191 = load i64, ptr %l31
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33, i32 0, i32 0
  %t194 = load { i64, ptr }, ptr %t193
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = call ptr @__olang_region_or(ptr %t195, ptr null)
  %t197 = icmp ne ptr %t196, null
  %t198 = select i1 %t197, ptr %t196, ptr null
  %t199 = icmp eq ptr %t198, %t192
  call void @__olang_region_settle(ptr %t192, i1 %t199)
  br label %bb35
bb35:
  %t200 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t201 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 0
  %t202 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t202, ptr %t201
  %t203 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 1
  %t204 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t204, ptr %t203
  %t205 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 2
  %t206 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t206, ptr %t205
  %t207 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 3
  %t208 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t208, ptr %t207
  %t209 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 4
  %t210 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t210, ptr %t209
  %t211 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 5
  %t212 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t212, ptr %t211
  %t213 = getelementptr %"compiler/profile:Tally", ptr %l35, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %t213
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
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t25 = load i64, ptr %l2, !tbaa !24
  %t26 = insertvalue %"compiler/profile:node" undef, i64 %t25, 0
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = insertvalue %"compiler/profile:node" %t26, i64 %t27, 1
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = insertvalue %"compiler/profile:node" %t28, i64 %t29, 2
  %t32 = insertvalue %"compiler/profile:node" %t30, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, 3
  store %"compiler/profile:node" %t32, ptr %rv
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
  %l10 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l15 = alloca %"compiler/profile:node"
  %l17 = alloca { i64, ptr }
  %l18 = alloca i1
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
  %t8 = getelementptr %"compiler/profile:node", ptr %l8, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t12 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t10, i64 %t9)
  store { i64, ptr } %t12, ptr %l10
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/profile:Places", ptr %t13, i32 0, i32 0
  store ptr %t15, ptr %l12, !tbaa !29
  %t19 = call %"compiler/profile:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3anode_3e_2eAt_3ccompiler_2fprofile_3anode_3e(ptr %vc1, ptr %s0, ptr %l3, i64 %a1)
  store %"compiler/profile:node" %t19, ptr %l15
  br label %bb3
bb3:
  %t20 = getelementptr %"compiler/profile:node", ptr %l15, i32 0, i32 0
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t24 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t22, i64 %t21)
  store { i64, ptr } %t24, ptr %l17
  br label %bb4
bb4:
  %t25 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc0, ptr %vc0, { i64, ptr } %t25, { i64, ptr } %t26)
  store i1 %t27, ptr %l18
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load i1, ptr %l18, !tbaa !21
  store i1 %t28, ptr %rv
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
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d40 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_H31300daf7c6be9b9667c9cd96eea1c7e = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d43 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@.d44 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@.d45 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0x" }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d52 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"no file" }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0x" }>, align 8
@.d54 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d56 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"??" }>, align 8
@.d57 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"OLPROF01" }>, align 8
@olang_2esole_2ecompiler_2fprofile_3aProfile_2e5 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d58 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"_2e" }>, align 8
@.d59 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"./" }>, align 8
@.d60 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"../" }>, align 8
@.d61 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"./" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" thread" }>, align 8
@.d67 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" threads" }>, align 8
@.d68 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"\0Aolang profile: " }>, align 8
@.d69 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" - " }>, align 8
@.d70 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" samples, " }>, align 8
@.d71 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" s of CPU time on " }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d73 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"  (" }>, align 8
@.d74 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" samples dropped: the buffer was full)\0A" }>, align 8
@.d75 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"  no samples: the program used less CPU time than one period\0A" }>, align 8
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

define internal i1 @olang_lambda_76(ptr %env, i64 %a0, i64 %a1) #0 {
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

@.d77 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"\0A   self   total  function\0A" }>, align 8
@.d78 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d80 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d81 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define internal i1 @olang_lambda_82(ptr %env, i64 %a0, i64 %a1) #0 {
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

@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":0" }>, align 8
@.d84 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"line" }>, align 8
@.d85 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\0A   self  " }>, align 8
@.d86 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"  function\0A" }>, align 8
@.d87 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d88 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d89 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d90 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"\0A  called from (the five hottest functions)\0A" }>, align 8
define internal i1 @olang_lambda_91(ptr %env, i64 %a0, i64 %a1) #0 {
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
@.d92 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d93 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"(the thread's first frame)" }>, align 8
@.d94 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d95 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d96 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"  <-  " }>, align 8
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d100 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d101 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"/llvm-symbolizer" }>, align 8
@.d102 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d103 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"llvm-symbolizer-20" }>, align 8
@.d104 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"llvm-symbolizer-19" }>, align 8
@.d105 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"llvm-symbolizer-18" }>, align 8
@.d106 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"llvm-symbolizer" }>, align 8
@.d107 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d108 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d109 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d110 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"&lt;" }>, align 8
@.d111 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"&gt;" }>, align 8
@.d112 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"&amp;" }>, align 8
@.d113 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"&quot;" }>, align 8
@.d114 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
define internal i1 @olang_lambda_116(ptr %env, ptr %v0, ptr %v1, %"compiler/profile:elfFn" %a0, %"compiler/profile:elfFn" %a1) #0 {
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

@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d118 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@olang_2esole_2ecompiler_2fprofile_3amapping_2e3 = weak hidden constant i1 false
@.d120 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"%" }>, align 8
@.d121 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"std/prelude" }>, align 8
@.d122 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d123 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d124 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d125 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d126 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"OLANG_PROFILE\00" }>, align 8
@.d127 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @setenv(ptr, ptr, i32)
declare i32 @fork()
declare void @_exit(i32)
@.d128 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"OLANG_PROFILE\00" }>, align 8
declare i32 @unsetenv(ptr)
declare i64 @signal(i32, i64)
declare i32 @waitpid(i32, ptr, i32)
@.d129 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/proc/" }>, align 8
@.d130 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"OLPROF01" }>, align 8
@.d131 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d132 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d134 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d135 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"hot" }>, align 8
@.d136 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"hot.olang" }>, align 8
@.d137 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d138 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"hot.olang" }>, align 8
@.d139 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"Vec<I64>.Push" }>, align 8
@.d140 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"hot.olang" }>, align 8
@olang_2esole_2ecompiler_2fprofile_3aPlaces_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
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
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H509117e81ae737fb138b1f364b80e611(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hb4e1316c13adc554c531dbb9cf254a96(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hfa095cf457cc3af0cc9715613212afd3(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aelfFn_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_698502529ad2e54f_f0e75116d399f563 = external constant [0 x i8]
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fprofile_3aFrame_3e_2ePush_3ccompiler_2fprofile_3aFrame_3e(ptr %v0, ptr %a0, %"compiler/profile:Frame" %a1)
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
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
