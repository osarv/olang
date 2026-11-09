source_filename = "compiler_views-2.quick.ll"
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
%"compiler/views:Cand" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/views:Viewer" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/views:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/views:state" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/views:view" = type { %"compiler/views:place", i64, i1, %"compiler/source:Span", i64, i64, %"compiler/source:Span", i64 }
%"compiler/views:place" = type { { i64, [2 x i64] }, i64, i64, i1 }
%"compiler/views:holding" = type { i64, %"compiler/views:view" }
%"compiler/views:loopFrame" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/views:naming" = type { i64, %"compiler/views:place" }
define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aKept_2eTakeHolding(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/views:Cand"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l20 = alloca %"compiler/views:Cand"
  %l22 = alloca %"compiler/views:Cand"
  %l26 = alloca i1
  %l27 = alloca i1
  %l28 = alloca { ptr, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i32
  %l51 = alloca ptr
  %l52 = alloca i64
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l62 = alloca { i64, ptr }
  %l64 = alloca i64
  %l66 = alloca { i64, ptr }
  %l68 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i64
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Kept", ptr %t1, i32 0, i32 0
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l12, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eLen_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l14
  br label %bb2
bb2:
  %t9 = load i64, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l14, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb50
bb4:
  br label %bb5
bb5:
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call %"compiler/views:Cand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eAt_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store %"compiler/views:Cand" %t21, ptr %l20
  br label %bb6
bb6:
  %t23 = call %"compiler/views:Cand" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aCand(ptr %v0, ptr %l20)
  store %"compiler/views:Cand" %t23, ptr %l22
  br label %bb7
bb7:
  %t24 = load %"compiler/views:Cand", ptr %l22
  store %"compiler/views:Cand" %t24, ptr %l5
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/views:Kept", ptr %t25, i32 0, i32 5
  %t28 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 0
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t27, i64 %t29)
  store i1 %t32, ptr %l26
  br label %bb8
bb8:
  %t33 = load i1, ptr %l26, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb13
bb10:
  store { ptr, ptr } %pg1, ptr %l28
  %t35 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 1
  %t37 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v0, ptr %t35)
  store { i64, ptr } %t37, ptr %l30
  br label %bb11
bb11:
  %t38 = load { ptr, ptr }, ptr %l28
  %t39 = extractvalue { ptr, ptr } %t38, 0
  %t40 = extractvalue { ptr, ptr } %t38, 1
  %t41 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t42 = call i1 %t39(ptr %t40, ptr %v0, { i64, ptr } %t41)
  store i1 %t42, ptr %l31
  br label %bb12
bb12:
  %t43 = load i1, ptr %l31, !tbaa !21
  %t44 = xor i1 %t43, true
  store i1 %t44, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t46 = load i1, ptr %l27, !tbaa !21
  br i1 %t46, label %bb14, label %bb15
bb14:
  br label %bb49
bb15:
  br label %bb16
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/views:Kept", ptr %t47, i32 0, i32 5
  %t50 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t49, i64 %t51, i64 %t52)
  br label %bb17
bb17:
  %t56 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 2
  store ptr %t56, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t58 = load i64, ptr %l7, !tbaa !24
  store i64 %t58, ptr %l38, !tbaa !24
  %t59 = load ptr, ptr %l6, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l40
  br label %bb19
bb19:
  %t62 = load i64, ptr %l38, !tbaa !24
  %t63 = load i64, ptr %l40, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb48
bb21:
  br label %bb22
bb22:
  %t68 = load ptr, ptr %l6, !tbaa !29
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store { i64, ptr } %t72, ptr %l45
  br label %bb23
bb23:
  %t73 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t73, ptr %l8, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t76 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s5, { i64, ptr } %t74, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) })
  %t77 = extractvalue { i32, i64 } %t76, 1
  %t78 = extractvalue { i32, i64 } %t76, 0
  store i32 %t78, ptr %l49
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb25, label %ok.80, !prof !99
ok.80:
  store i64 %t77, ptr %l48
  br label %bb24
bb24:
  %t81 = load i64, ptr %l48, !tbaa !24
  store i64 %t81, ptr %l46, !tbaa !24
  br label %bb27
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s5)
  br label %bb47
bb27:
  %t82 = load i64, ptr %l46, !tbaa !24
  store i64 %t82, ptr %l9, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/views:Kept", ptr %t83, i32 0, i32 1
  store ptr %t85, ptr %l51, !tbaa !29
  %t86 = ptrtoint ptr %s5 to i64
  store i64 %t86, ptr %l52, !tbaa !24
  %t87 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2_H62bf8c359c1a6e2f950c3ba9da6c50f5
  br i1 %t87, label %bb28, label %bb29
bb28:
  %t89 = call ptr @__olang_region_make(ptr %s5)
  %t90 = ptrtoint ptr %t89 to i64
  store i64 %t90, ptr %l52, !tbaa !24
  br label %bb29
bb29:
  %t91 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 0
  %t92 = load i64, ptr %t91, !tbaa !24
  store i64 %t92, ptr %l54, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t93, ptr %l55, !tbaa !27
  %t94 = load i64, ptr %l9, !tbaa !24
  store i64 %t94, ptr %l56, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 0
  store i64 %t96, ptr %l57, !tbaa !24
  %t97 = icmp sge i64 0, 0
  br i1 %t97, label %bb30, label %bb31
bb30:
  %t99 = load i64, ptr %l56, !tbaa !24
  %t100 = icmp sle i64 0, %t99
  br i1 %t100, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb32:
  %t102 = load i64, ptr %l56, !tbaa !24
  %t103 = load i64, ptr %l57, !tbaa !24
  %t104 = icmp sle i64 %t102, %t103
  br i1 %t104, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb34:
  %t106 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l56, !tbaa !24
  %t109 = getelementptr i8, ptr %t107, i64 0
  %t110 = sub i64 %t108, 0
  %t111 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t109, 1
  %t113 = load i64, ptr %l54, !tbaa !24
  %t114 = call i64 @__olang_fmt_i64(ptr null, i64 %t113)
  %t115 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t117 = add i64 %t114, %t116
  %t119 = extractvalue { i64, ptr } %t112, 1
  %t120 = extractvalue { i64, ptr } %t112, 0
  %t121 = add i64 %t117, %t120
  %t122 = load i64, ptr %l52
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = call ptr @__olang_scope_alloc(ptr %t123, i64 %t121)
  %t125 = call i64 @__olang_fmt_i64(ptr %t124, i64 %t113)
  %t126 = getelementptr i8, ptr %t124, i64 %t114
  call void @olang_textcopy(ptr %t126, ptr %t115, i64 %t116)
  %t127 = getelementptr i8, ptr %t126, i64 %t116
  call void @olang_textcopy(ptr %t127, ptr %t119, i64 %t120)
  %t128 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t124, 1
  store { i64, ptr } %t129, ptr %l62, !tbaa !27
  %t130 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2_H62bf8c359c1a6e2f950c3ba9da6c50f5
  br i1 %t130, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb36:
  %t132 = load i64, ptr %l52
  %t133 = inttoptr i64 %t132 to ptr
  %t134 = load { i64, ptr }, ptr %l62
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr null
  %t139 = icmp eq ptr %t138, %t133
  call void @__olang_region_settle(ptr %t133, i1 %t139)
  br label %bb37
bb37:
  %t140 = ptrtoint ptr %v0 to i64
  store i64 %t140, ptr %l64, !tbaa !24
  %t141 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2_H62bf8b359c1a6c7c950c3ca9da6c6a3a
  br i1 %t141, label %bb38, label %bb39
bb38:
  %t143 = call ptr @__olang_region_make(ptr %v0)
  %t144 = ptrtoint ptr %t143 to i64
  store i64 %t144, ptr %l64, !tbaa !24
  br label %bb39
bb39:
  %t145 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t145, ptr %l66, !tbaa !27
  %t146 = load i64, ptr %l9, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l68, !tbaa !24
  %t149 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t149, 0
  store i64 %t152, ptr %l71, !tbaa !24
  %t153 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  store i64 %t154, ptr %l72, !tbaa !24
  %t155 = load i64, ptr %l68, !tbaa !24
  %t156 = icmp sge i64 %t155, 0
  br i1 %t156, label %bb40, label %bb41
bb40:
  %t158 = load i64, ptr %l68, !tbaa !24
  %t159 = load i64, ptr %l71, !tbaa !24
  %t160 = icmp sle i64 %t158, %t159
  br i1 %t160, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb42:
  %t162 = load i64, ptr %l71, !tbaa !24
  %t163 = load i64, ptr %l72, !tbaa !24
  %t164 = icmp sle i64 %t162, %t163
  br i1 %t164, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb44:
  %t166 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = load i64, ptr %l68, !tbaa !24
  %t169 = load i64, ptr %l71, !tbaa !24
  %t170 = getelementptr i8, ptr %t167, i64 %t168
  %t171 = sub i64 %t169, %t168
  %t172 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t170, 1
  %t175 = extractvalue { i64, ptr } %t173, 1
  %t176 = extractvalue { i64, ptr } %t173, 0
  %t177 = load i64, ptr %l64
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = call ptr @__olang_scope_alloc(ptr %t178, i64 %t176)
  call void @olang_textcopy(ptr %t179, ptr %t175, i64 %t176)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  %t183 = load i64, ptr %l64
  %t184 = inttoptr i64 %t183 to ptr
  %t185 = extractvalue { i64, ptr } %t181, 0
  %t186 = extractvalue { i64, ptr } %t181, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %t184, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t191 = load ptr, ptr %l51, !tbaa !29
  %t192 = load { i64, ptr }, ptr %l62, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_Hdbddd02cd2a4e500be7fb1cacf89c9ab(ptr %v0, ptr %v0, ptr %t191, { i64, ptr } %t192, { i64, ptr } %t190)
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb46:
  call void @__olang_scope_close(ptr %s5)
  br label %bb47
bb47:
  %t194 = load i64, ptr %l7, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l7, !tbaa !24
  br label %bb18
bb48:
  br label %bb49
bb49:
  %t198 = load i64, ptr %l3, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l3, !tbaa !24
  br label %bb1
bb50:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eBodyKeys(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l57 = alloca { i64, ptr }
  %l61 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l66 = alloca i64
  %l69 = alloca i64
  %l87 = alloca { i64, ptr }
  %l90 = alloca i1
  %l94 = alloca ptr
  %l97 = alloca { i64, ptr }
  %l101 = alloca i64
  %l104 = alloca i64
  %l105 = alloca i32
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l20
  br label %bb1
bb1:
  %t6 = load i64, ptr %l20, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l21, !tbaa !24
  %t8 = load i64, ptr %l21, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l21, !tbaa !24
  %t12 = icmp sle i64 %t11, 576460752303423487
  br i1 %t12, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_70046d00f197c345_2c505527320b9459)
  unreachable
bb4:
  %t14 = load i64, ptr %l21, !tbaa !24
  %t15 = mul i64 %t14, 16
  %t16 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, %t14
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr { i64, ptr }, ptr %t16, i64 %t21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  store { i64, ptr } %t26, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l1, !tbaa !24
  store i64 %t28, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_70046d00f197c345_2c505527320b9459)
  unreachable
bb6:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb11
bb8:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l32, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb10
bb10:
  %t56 = load i64, ptr %l32, !tbaa !24
  store i64 %t56, ptr %l29, !tbaa !24
  br label %bb11
bb11:
  %t57 = load i64, ptr %l29, !tbaa !24
  store i64 %t57, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb13, label %bb14
bb13:
  br label %bb20
bb14:
  br label %bb15
bb15:
  %t66 = load i64, ptr %l3, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l5, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l8, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t76, ptr %l50, !tbaa !27
  %t77 = load i64, ptr %l8, !tbaa !24
  store i64 %t77, ptr %l51, !tbaa !24
  %t78 = ptrtoint ptr %v1 to i64
  store i64 %t78, ptr %l52, !tbaa !24
  %t79 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t79, label %bb16, label %bb17
bb16:
  %t81 = call ptr @__olang_region_make(ptr %v1)
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l52, !tbaa !24
  br label %bb17
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l8, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t86 = load i64, ptr %l52
  %t87 = inttoptr i64 %t86 to ptr
  %t91 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebodyKey(ptr %v0, ptr %v1, ptr %t87, ptr %t83, i64 %t84, { i64, ptr } %t85)
  store { i64, ptr } %t91, ptr %l57
  br label %bb18
bb18:
  %t92 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t93 = load i64, ptr %l52
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = extractvalue { i64, ptr } %t92, 0
  %t96 = extractvalue { i64, ptr } %t92, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %t94, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t102 = load i64, ptr %l51, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %t104, i64 %t102
  store { i64, ptr } %t100, ptr %t105, !tbaa !37
  br label %bb19
bb19:
  %t106 = load i64, ptr %l7, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l7, !tbaa !24
  br label %bb12
bb20:
  %t110 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t110, ptr %l61
  br label %bb21
bb21:
  %t111 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t111, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t112 = load i64, ptr %l1, !tbaa !24
  store i64 %t112, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t114 = load i64, ptr %l11, !tbaa !24
  %t115 = load i64, ptr %l10, !tbaa !24
  %t118 = icmp sgt i64 %t114, %t115
  br i1 %t118, label %bb22, label %bb23
bb22:
  %t120 = load i64, ptr %l12, !tbaa !24
  %t122 = icmp sgt i64 %t120, 0
  br i1 %t122, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb27
bb24:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = sub i64 %t124, %t125
  %t129 = load i64, ptr %l12, !tbaa !24
  %t132 = add i64 %t128, %t129
  %t134 = sub i64 %t132, 1
  %t135 = load i64, ptr %l12, !tbaa !24
  %t138 = sdiv i64 %t134, %t135
  store i64 %t138, ptr %l69, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb26
bb26:
  %t140 = load i64, ptr %l69, !tbaa !24
  store i64 %t140, ptr %l66, !tbaa !24
  br label %bb27
bb27:
  %t141 = load i64, ptr %l66, !tbaa !24
  store i64 %t141, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t142 = load i64, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb30:
  br label %bb31
bb31:
  %t150 = load i64, ptr %l10, !tbaa !24
  %t151 = load i64, ptr %l14, !tbaa !24
  %t152 = load i64, ptr %l12, !tbaa !24
  %t155 = mul i64 %t151, %t152
  %t158 = add i64 %t150, %t155
  store i64 %t158, ptr %l15, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t160, ptr %l87, !tbaa !27
  %t161 = load i64, ptr %l15, !tbaa !24
  %t163 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr { i64, ptr }, ptr %t164, i64 %t161
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !37
  %t168 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s5, { i64, ptr } %t166, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t168, ptr %l90
  br label %bb32
bb32:
  %t169 = load i1, ptr %l90, !tbaa !21
  br i1 %t169, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb42
bb34:
  br label %bb35
bb35:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/views:Viewer", ptr %t170, i32 0, i32 1
  %t173 = load i64, ptr %l15, !tbaa !24
  %t176 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t172, i64 %t173)
  store ptr %t176, ptr %l94
  br label %bb36
bb36:
  %t177 = load ptr, ptr %l94, !tbaa !29
  %t179 = getelementptr %"compiler/typed:Body", ptr %t177, i32 0, i32 3
  %t180 = load i64, ptr %t179, !tbaa !24
  %t181 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t181, ptr %l97, !tbaa !27
  %t182 = load i64, ptr %l15, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %t185, i64 %t182
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !37
  %t189 = call i64 @__olang_fmt_i64(ptr null, i64 %t180)
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t194 = extractvalue { i64, ptr } %t187, 1
  %t195 = extractvalue { i64, ptr } %t187, 0
  %t196 = add i64 %t192, %t195
  %t197 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t196)
  %t198 = call i64 @__olang_fmt_i64(ptr %t197, i64 %t180)
  %t199 = getelementptr i8, ptr %t197, i64 %t189
  call void @olang_textcopy(ptr %t199, ptr %t190, i64 %t191)
  %t200 = getelementptr i8, ptr %t199, i64 %t191
  call void @olang_textcopy(ptr %t200, ptr %t194, i64 %t195)
  %t201 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t197, 1
  store { i64, ptr } %t202, ptr %l16, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t207 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %s0, ptr %l9, { i64, ptr } %t204)
  %t208 = extractvalue { i32, i64 } %t207, 1
  %t209 = extractvalue { i32, i64 } %t207, 0
  store i32 %t209, ptr %l105
  %t210 = icmp ne i32 %t209, 0
  br i1 %t210, label %bb38, label %ok.211, !prof !99
ok.211:
  store i64 %t208, ptr %l104
  br label %bb37
bb37:
  %t212 = load i64, ptr %l104, !tbaa !24
  store i64 %t212, ptr %l101, !tbaa !24
  br label %bb41
bb38:
  br label %bb39
bb39:
  %t213 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t214 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H3f302293c6f4c07a80dfb5e30c1500bf(ptr %s0, ptr %l9, { i64, ptr } %t213, i64 %t214)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s5)
  br label %bb42
bb41:
  %t218 = load i64, ptr %l101, !tbaa !24
  %t219 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t219, ptr %l109, !tbaa !27
  %t222 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr { i64, ptr }, ptr %t223, i64 %t218
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %t224, !tbaa !37
  %t225 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t225, ptr %l111, !tbaa !27
  %t226 = load i64, ptr %l15, !tbaa !24
  %t228 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %t229, i64 %t226
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %t230, !tbaa !37
  call void @__olang_scope_close(ptr %s5)
  br label %bb42
bb42:
  %t231 = load i64, ptr %l14, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l14, !tbaa !24
  br label %bb28
bb43:
  %t235 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t235, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eRunKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i1
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l44 = alloca i64
  %l46 = alloca i64
  %l51 = alloca ptr
  %l60 = alloca ptr
  %l62 = alloca i64
  %l72 = alloca i1
  %l79 = alloca i1
  %l85 = alloca i1
  %l91 = alloca i1
  %l101 = alloca i64
  %l104 = alloca i64
  %l108 = alloca i64
  %l111 = alloca i64
  %l130 = alloca ptr
  %l131 = alloca i64
  %l133 = alloca %"compiler/views:summary"
  %l138 = alloca ptr
  %l141 = alloca i64
  %l143 = alloca i64
  %l148 = alloca i32
  %l152 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca ptr
  %l164 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i64
  %l171 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l181 = alloca i1
  %l186 = alloca i64
  %l190 = alloca i64
  %l193 = alloca i64
  %l212 = alloca i64
  %l215 = alloca i64
  %l217 = alloca i64
  %l222 = alloca i64
  %l225 = alloca i64
  %l226 = alloca i64
  %l230 = alloca i64
  %l233 = alloca i1
  %l234 = alloca ptr
  %l236 = alloca ptr
  %l240 = alloca i64
  %l241 = alloca i64
  %l242 = alloca i1
  %l246 = alloca i64
  %l249 = alloca i64
  %l271 = alloca i64
  %l276 = alloca i64
  %l279 = alloca i64
  %l297 = alloca ptr
  %l301 = alloca i64
  %l307 = alloca i1
  %l315 = alloca i64
  %l320 = alloca i64
  %l323 = alloca i64
  %l341 = alloca ptr
  %l345 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t203 = alloca %"compiler/views:summary", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  store ptr %t9, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l44, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l46
  br label %bb2
bb2:
  %t15 = load i64, ptr %l44, !tbaa !24
  %t16 = load i64, ptr %l46, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store ptr %t25, ptr %l51
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l51, !tbaa !29
  store ptr %t26, ptr %l4, !tbaa !29
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = getelementptr %"compiler/load:Module", ptr %t27, i32 0, i32 4
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = icmp slt i64 %t30, 0
  br i1 %t32, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb8:
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t36 = getelementptr %"compiler/load:Module", ptr %t34, i32 0, i32 6
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/views:Viewer", ptr %t43, i32 0, i32 5
  store ptr %t45, ptr %l60, !tbaa !29
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = getelementptr %"compiler/load:Module", ptr %t46, i32 0, i32 4
  %t49 = load i64, ptr %t48, !tbaa !24
  store i64 %t49, ptr %l62, !tbaa !24
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/load:Module", ptr %t50, i32 0, i32 6
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = icmp eq ptr %t53, null
  br i1 %t55, label %bb12, label %bb13
bb11:
  br label %bb16
bb12:
  call void @__olang_check_failed(ptr @olang_loc_82903f089977a4a2_6ca1fe8e95ddb76e)
  unreachable
bb13:
  br label %bb14
bb14:
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 6
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t63 = getelementptr %"compiler/source:Source", ptr %t60, i32 0, i32 1
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  %t65 = load ptr, ptr %l60, !tbaa !29
  %t66 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v0, ptr %t65, i64 %t66, { i64, ptr } %t64)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/load:Module", ptr %t68, i32 0, i32 2
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t71, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t73, ptr %l72
  br label %bb17
bb17:
  %t74 = load i1, ptr %l72, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/views:Viewer", ptr %t75, i32 0, i32 6
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t80 = getelementptr %"compiler/load:Module", ptr %t78, i32 0, i32 4
  %t81 = load i64, ptr %t80, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t77, i64 %t81, i1 true)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t84 = load ptr, ptr %l4, !tbaa !29
  %t86 = getelementptr %"compiler/load:Module", ptr %t84, i32 0, i32 2
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t87, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t89, ptr %l79
  br label %bb22
bb22:
  %t90 = load i1, ptr %l79, !tbaa !21
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l4, !tbaa !29
  %t94 = getelementptr %"compiler/load:Module", ptr %t92, i32 0, i32 4
  %t95 = load i64, ptr %t94, !tbaa !24
  %t98 = getelementptr %"compiler/views:Viewer", ptr %t91, i32 0, i32 7
  store i64 %t95, ptr %t98, !tbaa !24
  br label %bb25
bb24:
  br label %bb25
bb25:
  %t99 = load ptr, ptr %l4, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t102, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t104, ptr %l85
  br label %bb26
bb26:
  %t105 = load i1, ptr %l85, !tbaa !21
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t109 = getelementptr %"compiler/load:Module", ptr %t107, i32 0, i32 4
  %t110 = load i64, ptr %t109, !tbaa !24
  %t113 = getelementptr %"compiler/views:Viewer", ptr %t106, i32 0, i32 8
  store i64 %t110, ptr %t113, !tbaa !24
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t114 = load ptr, ptr %l4, !tbaa !29
  %t116 = getelementptr %"compiler/load:Module", ptr %t114, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t117, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t119, ptr %l91
  br label %bb30
bb30:
  %t120 = load i1, ptr %l91, !tbaa !21
  br i1 %t120, label %bb31, label %bb32
bb31:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l4, !tbaa !29
  %t124 = getelementptr %"compiler/load:Module", ptr %t122, i32 0, i32 4
  %t125 = load i64, ptr %t124, !tbaa !24
  %t128 = getelementptr %"compiler/views:Viewer", ptr %t121, i32 0, i32 9
  store i64 %t125, ptr %t128, !tbaa !24
  br label %bb33
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb34:
  %t129 = load i64, ptr %l3, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l3, !tbaa !24
  br label %bb1
bb35:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/views:Viewer", ptr %t133, i32 0, i32 7
  %t136 = load i64, ptr %t135, !tbaa !24
  %t138 = icmp slt i64 %t136, 0
  br i1 %t138, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb37:
  br label %bb38
bb38:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %s0, ptr %t140, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i64 %t142, ptr %l101
  br label %bb39
bb39:
  store i64 0, ptr %l5, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/views:Viewer", ptr %t143, i32 0, i32 1
  %t147 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t145)
  store i64 %t147, ptr %l104
  br label %bb40
bb40:
  %t148 = load i64, ptr %l104, !tbaa !24
  store i64 %t148, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t149 = load i64, ptr %l6, !tbaa !24
  %t150 = load i64, ptr %l5, !tbaa !24
  %t153 = icmp sgt i64 %t149, %t150
  br i1 %t153, label %bb41, label %bb42
bb41:
  %t155 = load i64, ptr %l7, !tbaa !24
  %t157 = icmp sgt i64 %t155, 0
  br i1 %t157, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb46
bb43:
  %t159 = load i64, ptr %l6, !tbaa !24
  %t160 = load i64, ptr %l5, !tbaa !24
  %t163 = sub i64 %t159, %t160
  %t164 = load i64, ptr %l7, !tbaa !24
  %t167 = add i64 %t163, %t164
  %t169 = sub i64 %t167, 1
  %t170 = load i64, ptr %l7, !tbaa !24
  %t173 = sdiv i64 %t169, %t170
  store i64 %t173, ptr %l111, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb45
bb45:
  %t175 = load i64, ptr %l111, !tbaa !24
  store i64 %t175, ptr %l108, !tbaa !24
  br label %bb46
bb46:
  %t176 = load i64, ptr %l108, !tbaa !24
  store i64 %t176, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb47
bb47:
  %t177 = load i64, ptr %l9, !tbaa !24
  %t178 = load i64, ptr %l8, !tbaa !24
  %t181 = icmp slt i64 %t177, %t178
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb48, label %bb49
bb48:
  br label %bb69
bb49:
  br label %bb50
bb50:
  %t185 = load i64, ptr %l5, !tbaa !24
  %t186 = load i64, ptr %l9, !tbaa !24
  %t187 = load i64, ptr %l7, !tbaa !24
  %t190 = mul i64 %t186, %t187
  %t193 = add i64 %t185, %t190
  store i64 %t193, ptr %l10, !tbaa !24
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/views:Viewer", ptr %t195, i32 0, i32 2
  store ptr %t197, ptr %l130, !tbaa !29
  %t198 = ptrtoint ptr %v0 to i64
  store i64 %t198, ptr %l131, !tbaa !24
  %t199 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2fviews_3asummary_26_3e_2e_2d1
  br i1 %t199, label %bb51, label %bb52
bb51:
  %t201 = call ptr @__olang_region_make(ptr %v0)
  %t202 = ptrtoint ptr %t201 to i64
  store i64 %t202, ptr %l131, !tbaa !24
  br label %bb52
bb52:
  %t204 = load i64, ptr %l131
  %t205 = inttoptr i64 %t204 to ptr
  call void @compiler_2fviews_3asummary_2ector(ptr %t203, ptr %t205)
  call void @llvm.memmove.p0.p0.i64(ptr %l133, ptr %t203, i64 136, i1 false)
  br label %bb53
bb53:
  %t206 = load i64, ptr %l131
  %t207 = inttoptr i64 %t206 to ptr
  %t208 = call ptr @__olang_scope_alloc_a(ptr %t207, i64 136, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t208, ptr %l133, i64 136, i1 false)
  %t209 = load ptr, ptr %l130, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H23bbaa5fdc623cf1e33b32cb6290302c(ptr %v0, ptr %v0, ptr %t209, ptr %t208)
  br label %bb54
bb54:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/views:Viewer", ptr %t211, i32 0, i32 1
  %t214 = load i64, ptr %l10, !tbaa !24
  %t217 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t213, i64 %t214)
  store ptr %t217, ptr %l138
  br label %bb55
bb55:
  %t218 = load ptr, ptr %l138, !tbaa !29
  %t220 = getelementptr %"compiler/typed:Body", ptr %t218, i32 0, i32 5
  store ptr %t220, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb56
bb56:
  %t222 = load i64, ptr %l12, !tbaa !24
  store i64 %t222, ptr %l141, !tbaa !24
  %t223 = load ptr, ptr %l11, !tbaa !29
  %t225 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t223)
  store i64 %t225, ptr %l143
  br label %bb57
bb57:
  %t226 = load i64, ptr %l141, !tbaa !24
  %t227 = load i64, ptr %l143, !tbaa !24
  %t228 = icmp slt i64 %t226, %t227
  %t230 = xor i1 %t228, true
  br i1 %t230, label %bb58, label %bb59
bb58:
  br label %bb65
bb59:
  br label %bb60
bb60:
  %t232 = load ptr, ptr %l11, !tbaa !29
  %t233 = load i64, ptr %l12, !tbaa !24
  %t236 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t232, i64 %t233)
  store i32 %t236, ptr %l148
  br label %bb61
bb61:
  %t237 = load i32, ptr %l148, !tbaa !23
  store i32 %t237, ptr %l13, !tbaa !23
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/views:Viewer", ptr %t238, i32 0, i32 2
  %t241 = load i64, ptr %l10, !tbaa !24
  %t244 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t240, i64 %t241)
  store ptr %t244, ptr %l152
  br label %bb62
bb62:
  %t245 = load ptr, ptr %l152, !tbaa !29
  %t247 = getelementptr %"compiler/views:summary", ptr %t245, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t247, i1 false)
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t249 = load i64, ptr %l12, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l12, !tbaa !24
  br label %bb56
bb65:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/views:Viewer", ptr %t253, i32 0, i32 2
  %t256 = load i64, ptr %l10, !tbaa !24
  %t259 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t255, i64 %t256)
  store ptr %t259, ptr %l160
  br label %bb66
bb66:
  %t260 = load ptr, ptr %l160, !tbaa !29
  store ptr %t260, ptr %l161, !tbaa !29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i64, ptr %l10, !tbaa !24
  %t265 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalkable(ptr %v0, ptr %t261, i64 %t262)
  store i1 %t265, ptr %l164
  br label %bb67
bb67:
  %t266 = load i1, ptr %l164, !tbaa !21
  %t267 = load ptr, ptr %l161, !tbaa !29
  %t268 = getelementptr %"compiler/views:summary", ptr %t267, i32 0, i32 4
  store i1 %t266, ptr %t268, !tbaa !21
  br label %bb68
bb68:
  %t269 = load i64, ptr %l9, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l9, !tbaa !24
  br label %bb47
bb69:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l167, !tbaa !29
  %t274 = ptrtoint ptr %v0 to i64
  store i64 %t274, ptr %l168, !tbaa !24
  %t275 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e34
  br i1 %t275, label %bb70, label %bb71
bb70:
  %t277 = call ptr @__olang_region_make(ptr %v0)
  %t278 = ptrtoint ptr %t277 to i64
  store i64 %t278, ptr %l168, !tbaa !24
  br label %bb71
bb71:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load i64, ptr %l168
  %t281 = inttoptr i64 %t280 to ptr
  %t283 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eBodyKeys(ptr %v0, ptr %t281, ptr %t279)
  store { i64, ptr } %t283, ptr %l171
  br label %bb72
bb72:
  %t284 = load ptr, ptr %l167, !tbaa !29
  %t285 = getelementptr %"compiler/views:Viewer", ptr %t284, i32 0, i32 34
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  store { i64, ptr } %t286, ptr %l172, !tbaa !27
  %t287 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t288 = load ptr, ptr %l167, !tbaa !29
  %t289 = getelementptr %"compiler/views:Viewer", ptr %t288, i32 0, i32 34
  store { i64, ptr } %t287, ptr %t289, !tbaa !27
  %t290 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e34
  br i1 %t290, label %bb73, label %bb74
bb73:
  %t292 = load { i64, ptr }, ptr %l172
  %t293 = extractvalue { i64, ptr } %t292, 1
  call void @__olang_region_release(ptr %t293)
  store { i64, ptr } zeroinitializer, ptr %l172
  br label %bb74
bb74:
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = getelementptr %"compiler/views:Kept", ptr %t294, i32 0, i32 2
  %t297 = load i1, ptr %t296, !tbaa !21
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb75, label %bb76
bb75:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etake(ptr %v0, ptr %v1, ptr %t301, ptr %t302)
  br label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb78
bb78:
  %t305 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecomponents(ptr %v0, ptr %t305)
  br label %bb79
bb79:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eviewsHeld(ptr %v0, ptr %t307)
  store i1 %t309, ptr %l181
  br label %bb80
bb80:
  %t310 = load i1, ptr %l181, !tbaa !21
  %t311 = xor i1 %t310, true
  br i1 %t311, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb82:
  br label %bb83
bb83:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/views:Viewer", ptr %t313, i32 0, i32 35
  store i1 true, ptr %t315, !tbaa !21
  store i64 0, ptr %l14, !tbaa !24
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/views:Viewer", ptr %t316, i32 0, i32 19
  %t320 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t318)
  store i64 %t320, ptr %l186
  br label %bb84
bb84:
  %t321 = load i64, ptr %l186, !tbaa !24
  store i64 %t321, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t322 = load i64, ptr %l15, !tbaa !24
  %t323 = load i64, ptr %l14, !tbaa !24
  %t326 = icmp sgt i64 %t322, %t323
  br i1 %t326, label %bb85, label %bb86
bb85:
  %t328 = load i64, ptr %l16, !tbaa !24
  %t330 = icmp sgt i64 %t328, 0
  br i1 %t330, label %bb87, label %bb88
bb86:
  store i64 0, ptr %l190, !tbaa !24
  br label %bb90
bb87:
  %t332 = load i64, ptr %l15, !tbaa !24
  %t333 = load i64, ptr %l14, !tbaa !24
  %t336 = sub i64 %t332, %t333
  %t337 = load i64, ptr %l16, !tbaa !24
  %t340 = add i64 %t336, %t337
  %t342 = sub i64 %t340, 1
  %t343 = load i64, ptr %l16, !tbaa !24
  %t346 = sdiv i64 %t342, %t343
  store i64 %t346, ptr %l193, !tbaa !24
  br label %bb89
bb88:
  store i64 0, ptr %l193, !tbaa !24
  br label %bb89
bb89:
  %t348 = load i64, ptr %l193, !tbaa !24
  store i64 %t348, ptr %l190, !tbaa !24
  br label %bb90
bb90:
  %t349 = load i64, ptr %l190, !tbaa !24
  store i64 %t349, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb91
bb91:
  %t350 = load i64, ptr %l18, !tbaa !24
  %t351 = load i64, ptr %l17, !tbaa !24
  %t354 = icmp slt i64 %t350, %t351
  %t356 = xor i1 %t354, true
  br i1 %t356, label %bb92, label %bb93
bb92:
  br label %bb157
bb93:
  br label %bb94
bb94:
  %t358 = load i64, ptr %l14, !tbaa !24
  %t359 = load i64, ptr %l18, !tbaa !24
  %t360 = load i64, ptr %l16, !tbaa !24
  %t363 = mul i64 %t359, %t360
  %t366 = add i64 %t358, %t363
  store i64 %t366, ptr %l19, !tbaa !24
  %t368 = load i64, ptr %l19, !tbaa !24
  %t370 = add i64 %t368, 1
  store i64 %t370, ptr %l212, !tbaa !24
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/views:Viewer", ptr %t371, i32 0, i32 19
  %t375 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t373)
  store i64 %t375, ptr %l215
  br label %bb95
bb95:
  %t376 = load i64, ptr %l212, !tbaa !24
  %t377 = load i64, ptr %l215, !tbaa !24
  %t378 = icmp slt i64 %t376, %t377
  br i1 %t378, label %bb96, label %bb97
bb96:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/views:Viewer", ptr %t380, i32 0, i32 19
  %t383 = load i64, ptr %l19, !tbaa !24
  %t385 = add i64 %t383, 1
  %t388 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t382, i64 %t385)
  store i64 %t388, ptr %l222
  br label %bb98
bb97:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/views:Viewer", ptr %t389, i32 0, i32 20
  %t393 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t391)
  store i64 %t393, ptr %l225
  br label %bb99
bb98:
  %t394 = load i64, ptr %l222, !tbaa !24
  store i64 %t394, ptr %l217, !tbaa !24
  br label %bb100
bb99:
  %t395 = load i64, ptr %l225, !tbaa !24
  store i64 %t395, ptr %l217, !tbaa !24
  br label %bb100
bb100:
  %t396 = load i64, ptr %l217, !tbaa !24
  store i64 %t396, ptr %l20, !tbaa !24
  %t397 = load i64, ptr %l20, !tbaa !24
  store i64 %t397, ptr %l226, !tbaa !24
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = getelementptr %"compiler/views:Viewer", ptr %t398, i32 0, i32 19
  %t401 = load i64, ptr %l19, !tbaa !24
  %t404 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t400, i64 %t401)
  store i64 %t404, ptr %l230
  br label %bb101
bb101:
  %t405 = load i64, ptr %l226, !tbaa !24
  %t406 = load i64, ptr %l230, !tbaa !24
  %t407 = sub i64 %t405, %t406
  %t409 = icmp sgt i64 %t407, 1
  br i1 %t409, label %bb102, label %bb103
bb102:
  store i1 true, ptr %l233, !tbaa !21
  br label %bb107
bb103:
  %t411 = load ptr, ptr %l0, !tbaa !29
  store ptr %t411, ptr %l234, !tbaa !29
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t414 = getelementptr %"compiler/views:Viewer", ptr %t412, i32 0, i32 20
  store ptr %t414, ptr %l236, !tbaa !29
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = getelementptr %"compiler/views:Viewer", ptr %t415, i32 0, i32 19
  %t418 = load i64, ptr %l19, !tbaa !24
  %t421 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t417, i64 %t418)
  store i64 %t421, ptr %l240
  br label %bb104
bb104:
  %t422 = load ptr, ptr %l236, !tbaa !29
  %t423 = load i64, ptr %l240, !tbaa !24
  %t424 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t422, i64 %t423)
  store i64 %t424, ptr %l241
  br label %bb105
bb105:
  %t425 = load ptr, ptr %l234, !tbaa !29
  %t426 = load i64, ptr %l241, !tbaa !24
  %t427 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallsItself(ptr %v0, ptr %t425, i64 %t426)
  store i1 %t427, ptr %l242
  br label %bb106
bb106:
  %t428 = load i1, ptr %l242, !tbaa !21
  store i1 %t428, ptr %l233, !tbaa !21
  br label %bb107
bb107:
  %t429 = load i1, ptr %l233, !tbaa !21
  store i1 %t429, ptr %l21, !tbaa !21
  store i64 0, ptr %l22, !tbaa !24
  store i64 100, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t430 = load i64, ptr %l23, !tbaa !24
  %t431 = load i64, ptr %l22, !tbaa !24
  %t434 = icmp sgt i64 %t430, %t431
  br i1 %t434, label %bb108, label %bb109
bb108:
  %t436 = load i64, ptr %l24, !tbaa !24
  %t438 = icmp sgt i64 %t436, 0
  br i1 %t438, label %bb110, label %bb111
bb109:
  store i64 0, ptr %l246, !tbaa !24
  br label %bb113
bb110:
  %t440 = load i64, ptr %l23, !tbaa !24
  %t441 = load i64, ptr %l22, !tbaa !24
  %t444 = sub i64 %t440, %t441
  %t445 = load i64, ptr %l24, !tbaa !24
  %t448 = add i64 %t444, %t445
  %t450 = sub i64 %t448, 1
  %t451 = load i64, ptr %l24, !tbaa !24
  %t454 = sdiv i64 %t450, %t451
  store i64 %t454, ptr %l249, !tbaa !24
  br label %bb112
bb111:
  store i64 0, ptr %l249, !tbaa !24
  br label %bb112
bb112:
  %t456 = load i64, ptr %l249, !tbaa !24
  store i64 %t456, ptr %l246, !tbaa !24
  br label %bb113
bb113:
  %t457 = load i64, ptr %l246, !tbaa !24
  store i64 %t457, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb114
bb114:
  %t458 = load i64, ptr %l26, !tbaa !24
  %t459 = load i64, ptr %l25, !tbaa !24
  %t462 = icmp slt i64 %t458, %t459
  %t464 = xor i1 %t462, true
  br i1 %t464, label %bb115, label %bb116
bb115:
  br label %bb140
bb116:
  br label %bb117
bb117:
  %t466 = load i64, ptr %l22, !tbaa !24
  %t467 = load i64, ptr %l26, !tbaa !24
  %t468 = load i64, ptr %l24, !tbaa !24
  %t471 = mul i64 %t467, %t468
  %t474 = add i64 %t466, %t471
  store i64 %t474, ptr %l27, !tbaa !24
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = getelementptr %"compiler/views:Viewer", ptr %t476, i32 0, i32 26
  store i1 false, ptr %t478, !tbaa !21
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = getelementptr %"compiler/views:Viewer", ptr %t479, i32 0, i32 19
  %t482 = load i64, ptr %l19, !tbaa !24
  %t485 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t481, i64 %t482)
  store i64 %t485, ptr %l271
  br label %bb118
bb118:
  %t486 = load i64, ptr %l271, !tbaa !24
  store i64 %t486, ptr %l28, !tbaa !24
  %t487 = load i64, ptr %l20, !tbaa !24
  store i64 %t487, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t489 = load i64, ptr %l29, !tbaa !24
  %t490 = load i64, ptr %l28, !tbaa !24
  %t493 = icmp sgt i64 %t489, %t490
  br i1 %t493, label %bb119, label %bb120
bb119:
  %t495 = load i64, ptr %l30, !tbaa !24
  %t497 = icmp sgt i64 %t495, 0
  br i1 %t497, label %bb121, label %bb122
bb120:
  store i64 0, ptr %l276, !tbaa !24
  br label %bb124
bb121:
  %t499 = load i64, ptr %l29, !tbaa !24
  %t500 = load i64, ptr %l28, !tbaa !24
  %t503 = sub i64 %t499, %t500
  %t504 = load i64, ptr %l30, !tbaa !24
  %t507 = add i64 %t503, %t504
  %t509 = sub i64 %t507, 1
  %t510 = load i64, ptr %l30, !tbaa !24
  %t513 = sdiv i64 %t509, %t510
  store i64 %t513, ptr %l279, !tbaa !24
  br label %bb123
bb122:
  store i64 0, ptr %l279, !tbaa !24
  br label %bb123
bb123:
  %t515 = load i64, ptr %l279, !tbaa !24
  store i64 %t515, ptr %l276, !tbaa !24
  br label %bb124
bb124:
  %t516 = load i64, ptr %l276, !tbaa !24
  store i64 %t516, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb125
bb125:
  %t517 = load i64, ptr %l32, !tbaa !24
  %t518 = load i64, ptr %l31, !tbaa !24
  %t521 = icmp slt i64 %t517, %t518
  %t523 = xor i1 %t521, true
  br i1 %t523, label %bb126, label %bb127
bb126:
  br label %bb132
bb127:
  br label %bb128
bb128:
  %t525 = load i64, ptr %l28, !tbaa !24
  %t526 = load i64, ptr %l32, !tbaa !24
  %t527 = load i64, ptr %l30, !tbaa !24
  %t530 = mul i64 %t526, %t527
  %t533 = add i64 %t525, %t530
  %t535 = load ptr, ptr %l0, !tbaa !29
  store ptr %t535, ptr %l297, !tbaa !29
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/views:Viewer", ptr %t536, i32 0, i32 20
  %t542 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t538, i64 %t533)
  store i64 %t542, ptr %l301
  br label %bb129
bb129:
  %t543 = load ptr, ptr %l297, !tbaa !29
  %t544 = load i64, ptr %l301, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalk(ptr %v0, ptr %t543, i64 %t544, i1 false)
  br label %bb130
bb130:
  br label %bb131
bb131:
  %t545 = load i64, ptr %l32, !tbaa !24
  %t547 = add i64 %t545, 1
  store i64 %t547, ptr %l32, !tbaa !24
  br label %bb125
bb132:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t551 = getelementptr %"compiler/views:Viewer", ptr %t549, i32 0, i32 26
  %t552 = load i1, ptr %t551, !tbaa !21
  %t554 = xor i1 %t552, true
  br i1 %t554, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l307, !tbaa !21
  br label %bb135
bb134:
  %t556 = load i1, ptr %l21, !tbaa !21
  %t558 = xor i1 %t556, true
  store i1 %t558, ptr %l307, !tbaa !21
  br label %bb135
bb135:
  %t560 = load i1, ptr %l307, !tbaa !21
  br i1 %t560, label %bb136, label %bb137
bb136:
  br label %bb140
bb137:
  br label %bb138
bb138:
  br label %bb139
bb139:
  %t561 = load i64, ptr %l26, !tbaa !24
  %t563 = add i64 %t561, 1
  store i64 %t563, ptr %l26, !tbaa !24
  br label %bb114
bb140:
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t567 = getelementptr %"compiler/views:Viewer", ptr %t565, i32 0, i32 19
  %t568 = load i64, ptr %l19, !tbaa !24
  %t571 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t567, i64 %t568)
  store i64 %t571, ptr %l315
  br label %bb141
bb141:
  %t572 = load i64, ptr %l315, !tbaa !24
  store i64 %t572, ptr %l34, !tbaa !24
  %t573 = load i64, ptr %l20, !tbaa !24
  store i64 %t573, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t575 = load i64, ptr %l35, !tbaa !24
  %t576 = load i64, ptr %l34, !tbaa !24
  %t579 = icmp sgt i64 %t575, %t576
  br i1 %t579, label %bb142, label %bb143
bb142:
  %t581 = load i64, ptr %l36, !tbaa !24
  %t583 = icmp sgt i64 %t581, 0
  br i1 %t583, label %bb144, label %bb145
bb143:
  store i64 0, ptr %l320, !tbaa !24
  br label %bb147
bb144:
  %t585 = load i64, ptr %l35, !tbaa !24
  %t586 = load i64, ptr %l34, !tbaa !24
  %t589 = sub i64 %t585, %t586
  %t590 = load i64, ptr %l36, !tbaa !24
  %t593 = add i64 %t589, %t590
  %t595 = sub i64 %t593, 1
  %t596 = load i64, ptr %l36, !tbaa !24
  %t599 = sdiv i64 %t595, %t596
  store i64 %t599, ptr %l323, !tbaa !24
  br label %bb146
bb145:
  store i64 0, ptr %l323, !tbaa !24
  br label %bb146
bb146:
  %t601 = load i64, ptr %l323, !tbaa !24
  store i64 %t601, ptr %l320, !tbaa !24
  br label %bb147
bb147:
  %t602 = load i64, ptr %l320, !tbaa !24
  store i64 %t602, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb148
bb148:
  %t603 = load i64, ptr %l38, !tbaa !24
  %t604 = load i64, ptr %l37, !tbaa !24
  %t607 = icmp slt i64 %t603, %t604
  %t609 = xor i1 %t607, true
  br i1 %t609, label %bb149, label %bb150
bb149:
  br label %bb155
bb150:
  br label %bb151
bb151:
  %t611 = load i64, ptr %l34, !tbaa !24
  %t612 = load i64, ptr %l38, !tbaa !24
  %t613 = load i64, ptr %l36, !tbaa !24
  %t616 = mul i64 %t612, %t613
  %t619 = add i64 %t611, %t616
  %t621 = load ptr, ptr %l0, !tbaa !29
  store ptr %t621, ptr %l341, !tbaa !29
  %t622 = load ptr, ptr %l0, !tbaa !29
  %t624 = getelementptr %"compiler/views:Viewer", ptr %t622, i32 0, i32 20
  %t628 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t624, i64 %t619)
  store i64 %t628, ptr %l345
  br label %bb152
bb152:
  %t629 = load ptr, ptr %l341, !tbaa !29
  %t630 = load i64, ptr %l345, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalk(ptr %v0, ptr %t629, i64 %t630, i1 true)
  br label %bb153
bb153:
  br label %bb154
bb154:
  %t631 = load i64, ptr %l38, !tbaa !24
  %t633 = add i64 %t631, 1
  store i64 %t633, ptr %l38, !tbaa !24
  br label %bb148
bb155:
  br label %bb156
bb156:
  %t635 = load i64, ptr %l18, !tbaa !24
  %t637 = add i64 %t635, 1
  store i64 %t637, ptr %l18, !tbaa !24
  br label %bb91
bb157:
  %t639 = load ptr, ptr %l1, !tbaa !29
  %t641 = getelementptr %"compiler/views:Kept", ptr %t639, i32 0, i32 2
  %t642 = load i1, ptr %t641, !tbaa !21
  br i1 %t642, label %bb158, label %bb159
bb158:
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t645 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecompare(ptr %v0, ptr %v1, ptr %t644, ptr %t645)
  br label %bb160
bb159:
  br label %bb161
bb160:
  br label %bb161
bb161:
  %t648 = load ptr, ptr %l0, !tbaa !29
  %t649 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eGather(ptr %v0, ptr %v1, ptr %t648, ptr %t649)
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %rv = alloca { i64, [3 x i64] }
  %t24 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 21
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_bb5d94b92cb03aee_965554ec574ba44a)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:Viewer", ptr %t8, i32 0, i32 21
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 3
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t20 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t21 = load i32, ptr %t20, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t24
  %t25 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 0
  store i64 3, ptr %t25
  %t27 = insertvalue { i64, i64, i64 } undef, i64 %t15, 0
  %t29 = insertvalue { i64, i64, i64 } %t27, i64 %t19, 1
  %t31 = insertvalue { i64, i64, i64 } %t29, i64 %t23, 2
  %t32 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 1
  store { i64, i64, i64 } %t31, ptr %t32
  %t33 = load { i64, [3 x i64] }, ptr %t24
  store { i64, [3 x i64] } %t33, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l45 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l20, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l6, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/views:state", ptr %t30, i32 0, i32 0
  %t33 = load i1, ptr %t32, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %t35, ptr %t36, ptr %t38)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb4
bb13:
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr %"compiler/views:state", ptr %t46, i32 0, i32 0
  %t49 = load i1, ptr %t48, !tbaa !21
  br i1 %t49, label %bb14, label %bb15
bb14:
  br label %ret
bb15:
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Block", ptr %t51, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t58 = sub i64 %t56, 1
  store i64 %t58, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp sge i64 %t60, 0
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb18, label %bb19
bb18:
  br label %bb34
bb19:
  br label %bb20
bb20:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Block", ptr %t66, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l41, !tbaa !27
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  store ptr %t75, ptr %l8, !tbaa !29
  %t77 = load ptr, ptr %l8, !tbaa !29
  store ptr %t77, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t78 = load ptr, ptr %l44, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb21, label %bb22
bb21:
  %t81 = load ptr, ptr %l44, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 17}
  %t84 = icmp eq i64 %t82, 12
  store i1 %t84, ptr %l45, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l45, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t86 = load ptr, ptr %l8, !tbaa !29
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", ptr }, ptr %t88, i32 0, i32 1
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l9, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l9, !tbaa !29
  %t95 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t92, ptr %t93, ptr %t95)
  br label %bb26
bb26:
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_f4d9265444485b3d_7f3b362071bb80f9)
  unreachable
bb32:
  %t99 = load i64, ptr %l7, !tbaa !24
  %t101 = sub i64 %t99, 1
  store i64 %t101, ptr %l7, !tbaa !24
  br label %bb33
bb33:
  br label %bb17
bb34:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferField(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l8 = alloca i32
  %l13 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l25 = alloca i32
  %l26 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l43 = alloca i1
  %l44 = alloca i1
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l52 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %l62 = alloca i1
  %l64 = alloca i1
  %l65 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/views:Viewer", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l13
  br label %bb2
bb2:
  %t17 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t19 = trunc i64 18 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t24, ptr %l18, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l19, !tbaa !24
  %t27 = load i64, ptr %l19, !tbaa !24
  %t28 = mul i64 %t27, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l20, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = load i64, ptr %l19, !tbaa !24
  %t37 = mul i64 %t36, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %t35, i64 %t37, i1 false)
  %t38 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t38, ptr %l18, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t39 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/views:Viewer", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l2, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l25
  br label %bb6
bb6:
  %t50 = load i32, ptr %l25, !tbaa !23
  store i32 %t50, ptr %l3, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l26, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/views:Viewer", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l3, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l31
  br label %bb7
bb7:
  %t62 = load ptr, ptr %l26, !tbaa !29
  %t63 = load i32, ptr %l31, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v0, ptr %t62, i32 %t63)
  store { i64, ptr } %t64, ptr %l32
  br label %bb8
bb8:
  %t65 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t65, ptr %l4, !tbaa !27
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/views:Viewer", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = getelementptr %"compiler/types:Table", ptr %t71, i32 0, i32 14
  store ptr %t72, ptr %l35, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/views:Viewer", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %l3, !tbaa !23
  %t82 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t78, i32 %t79)
  store i64 %t82, ptr %l40
  br label %bb9
bb9:
  %t83 = load ptr, ptr %l35, !tbaa !29
  %t84 = load i64, ptr %l40, !tbaa !24
  %t85 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t83, i64 %t84)
  store { i64, ptr } %t85, ptr %l41
  br label %bb10
bb10:
  %t86 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t86, ptr %l5, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t87, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t89, ptr %l43
  br label %bb11
bb11:
  %t90 = load i1, ptr %l43, !tbaa !21
  br i1 %t90, label %bb12, label %bb13
bb12:
  %t91 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t93 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t91, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t93, ptr %l46
  br label %bb14
bb13:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb15
bb14:
  %t94 = load i1, ptr %l46, !tbaa !21
  store i1 %t94, ptr %l44, !tbaa !21
  br label %bb15
bb15:
  %t95 = load i1, ptr %l44, !tbaa !21
  br i1 %t95, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t96, ptr %l48, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  store i64 %t98, ptr %l49, !tbaa !24
  %t99 = load i64, ptr %l49, !tbaa !24
  %t100 = mul i64 %t99, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t100)
  %t102 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  store { i64, ptr } %t103, ptr %l50, !tbaa !27
  %t104 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l49, !tbaa !24
  %t109 = mul i64 %t108, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t105, ptr %t107, i64 %t109, i1 false)
  %t110 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t110, ptr %l48, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t111 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t111, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t112 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t114 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t112, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t114, ptr %l52
  br label %bb19
bb19:
  %t115 = load i1, ptr %l52, !tbaa !21
  br i1 %t115, label %bb20, label %bb21
bb20:
  %t116 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t116, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t118, ptr %l55
  br label %bb22
bb21:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb23
bb22:
  %t119 = load i1, ptr %l55, !tbaa !21
  store i1 %t119, ptr %l53, !tbaa !21
  br label %bb23
bb23:
  %t120 = load i1, ptr %l53, !tbaa !21
  br i1 %t120, label %bb24, label %bb25
bb24:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t121, ptr %l57, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l58, !tbaa !24
  %t124 = load i64, ptr %l58, !tbaa !24
  %t125 = mul i64 %t124, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l59, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = load i64, ptr %l58, !tbaa !24
  %t134 = mul i64 %t133, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t130, ptr %t132, i64 %t134, i1 false)
  %t135 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t135, ptr %l57, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t136 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t136, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t137 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t137, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t139, ptr %l61
  br label %bb27
bb27:
  %t140 = load i1, ptr %l61, !tbaa !21
  br i1 %t140, label %bb28, label %bb29
bb28:
  %t141 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t143 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t141, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t143, ptr %l64
  br label %bb30
bb29:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb31
bb30:
  %t144 = load i1, ptr %l64, !tbaa !21
  store i1 %t144, ptr %l62, !tbaa !21
  br label %bb31
bb31:
  %t145 = load i1, ptr %l62, !tbaa !21
  br i1 %t145, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l65, !tbaa !27
  %t146 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t146, ptr %l66, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l67, !tbaa !24
  %t149 = load i64, ptr %l67, !tbaa !24
  %t150 = mul i64 %t149, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l68, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l67, !tbaa !24
  %t159 = mul i64 %t158, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t155, ptr %t157, i64 %t159, i1 false)
  %t160 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t160, ptr %l66, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t161 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t161, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l69, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t162, ptr %l70, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  store i64 %t164, ptr %l71, !tbaa !24
  %t165 = load i64, ptr %l71, !tbaa !24
  %t166 = mul i64 %t165, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t166)
  %t168 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  store { i64, ptr } %t169, ptr %l72, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = load i64, ptr %l71, !tbaa !24
  %t175 = mul i64 %t174, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t171, ptr %t173, i64 %t175, i1 false)
  %t176 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t176, ptr %l70, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t177 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t177, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallTok(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l10 = alloca { i64, ptr }
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca %"compiler/source:Span"
  %l20 = alloca i1
  %l27 = alloca i64
  %l30 = alloca i8
  %l32 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca %"compiler/source:Span"
  %l41 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp sgt i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Call", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr ptr, ptr %t15, i64 0
  %t17 = load ptr, ptr %t16, !tbaa !39
  %t19 = call i64 @compiler_2fviews_2eexprEnd(ptr %v1, ptr %t17)
  store i64 %t19, ptr %l12
  br label %bb3
bb2:
  br label %bb18
bb3:
  %t20 = load i64, ptr %l12, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Call", ptr %t21, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l14, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 0
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t30 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t28)
  store %"compiler/source:Span" %t30, ptr %l16
  br label %bb4
bb4:
  %t31 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t34 = load i32, ptr %t33, !tbaa !23
  %t37 = icmp eq i32 %t32, %t34
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  %t43 = sext i32 %t41 to i64
  %t46 = icmp slt i64 %t39, %t43
  store i1 %t46, ptr %l20, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t48 = load i1, ptr %l20, !tbaa !21
  br i1 %t48, label %bb8, label %bb9
bb8:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l3, !tbaa !24
  %t53 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eskipSpace(ptr %v0, ptr %t49, i64 %t50)
  store i64 %t53, ptr %l27
  br label %bb10
bb9:
  br label %bb17
bb10:
  %t54 = load i64, ptr %l27, !tbaa !24
  store i64 %t54, ptr %l4, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = call i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %t55, i64 %t56)
  store i8 %t59, ptr %l30
  br label %bb11
bb11:
  %t60 = load i8, ptr %l30, !tbaa !22
  %t61 = icmp eq i8 %t60, 46
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l32, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l4, !tbaa !24
  %t67 = add i64 %t65, 1
  %t70 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eskipSpace(ptr %v0, ptr %t64, i64 %t67)
  store i64 %t70, ptr %l36
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t71 = load ptr, ptr %l32, !tbaa !29
  %t72 = load i64, ptr %l36, !tbaa !24
  %t73 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enameFrom(ptr %v0, ptr %t71, i64 %t72)
  store %"compiler/source:Span" %t73, ptr %l37
  br label %bb15
bb15:
  %t74 = load %"compiler/source:Span", ptr %l37
  store %"compiler/source:Span" %t74, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  %t82 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enameFrom(ptr %v0, ptr %t75, i64 %t79)
  store %"compiler/source:Span" %t82, ptr %l41
  br label %bb19
bb19:
  %t83 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t83, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l17 = alloca i1
  %l22 = alloca i8
  %l23 = alloca { i64, ptr }
  %rv = alloca i8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 5
  store ptr %t3, ptr %l5, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/views:Viewer", ptr %t4, i32 0, i32 21
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_66a9fc2455c15d42_1dde5b0b0f74f18e)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/views:Viewer", ptr %t11, i32 0, i32 21
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l14
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l13
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t26, ptr %l3, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = icmp sge i64 %t28, 0
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t38 = icmp slt i64 %t32, %t35
  store i1 %t38, ptr %l17, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l17, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t41, ptr %l23, !tbaa !27
  %t42 = load i64, ptr %l1, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  store i8 %t47, ptr %l22, !tbaa !22
  br label %bb13
bb12:
  store i8 0, ptr %l22, !tbaa !22
  br label %bb13
bb13:
  %t49 = load i8, ptr %l22, !tbaa !22
  store i8 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l4 = alloca %"compiler/views:state"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"compiler/views:state"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l18 = alloca %"compiler/views:state"
  %l20 = alloca %"compiler/views:state"
  %l28 = alloca { i64, ptr }
  %l32 = alloca %"compiler/views:state"
  %l34 = alloca %"compiler/views:state"
  %l51 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t8 = alloca %"compiler/views:state", align 8
  %t10 = alloca %"compiler/views:state", align 8
  %t35 = alloca %"compiler/views:state", align 8
  %t37 = alloca %"compiler/views:state", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t7 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t8, ptr %v2, ptr %s0, ptr %t7)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t8, i64 136, i1 false)
  br label %bb4
bb4:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t10, ptr %s0, ptr %l18)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t10, i64 136, i1 false)
  br label %bb5
bb5:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l20, i64 136, i1 false)
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l7, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb8:
  br label %bb9
bb9:
  %t26 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t26, ptr %l28, !tbaa !27
  %t27 = load i64, ptr %l6, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 %t27
  %t32 = load ptr, ptr %t31, !tbaa !39
  store ptr %t32, ptr %l8, !tbaa !29
  %t34 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t35, ptr %v2, ptr %s3, ptr %t34)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t35, i64 136, i1 false)
  br label %bb10
bb10:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t37, ptr %s3, ptr %l32)
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %t37, i64 136, i1 false)
  br label %bb11
bb11:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l34, i64 136, i1 false)
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l8, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Clause", ptr %t40, i32 0, i32 3
  %t43 = load ptr, ptr %t42, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %s3, ptr %t39, ptr %t43, ptr %l9)
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l8, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Clause", ptr %t47, i32 0, i32 4
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = load ptr, ptr %l8, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Clause", ptr %t56, i32 0, i32 4
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l12, !tbaa !24
  br label %bb15
bb14:
  br label %bb22
bb15:
  %t65 = load i64, ptr %l11, !tbaa !24
  %t66 = load i64, ptr %l12, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t73 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t73, ptr %l51, !tbaa !27
  %t74 = load i64, ptr %l11, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr ptr, ptr %t77, i64 %t74
  %t79 = load ptr, ptr %t78, !tbaa !39
  %t81 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %s3, ptr %v3, ptr %t81, ptr %t79, ptr %l9, ptr %a3)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t89 = load i64, ptr %l11, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l11, !tbaa !24
  br label %bb15
bb21:
  br label %bb22
bb22:
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s3, ptr %l4, ptr %l9)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb24:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l6, !tbaa !24
  br label %bb6
bb25:
  %t99 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v2, ptr %s0, ptr %t99, ptr %l4)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecolumnOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l21 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l29 = alloca i32
  %l32 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l44 = alloca i1
  %l45 = alloca i1
  %l49 = alloca { i64, ptr }
  %l51 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i32
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 3
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l5, !tbaa !24
  br label %bb5
bb4:
  br label %bb30
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t23)
  store i32 %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i32, ptr %l17, !tbaa !23
  %t28 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t28, ptr %l18
  br label %bb7
bb7:
  %t29 = load i32, ptr %l18, !tbaa !23
  store i32 %t29, ptr %l6, !tbaa !23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l6, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferField(ptr %v0, ptr %s1, ptr %t30, i32 %t31)
  store { i64, ptr } %t34, ptr %l21
  br label %bb8
bb8:
  %t35 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t41, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t43, ptr %l23
  br label %bb9
bb9:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/views:Viewer", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l6, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l29
  br label %bb12
bb11:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb13
bb12:
  %t55 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t57 = trunc i64 18 to i32
  %t58 = icmp eq i32 %t55, %t57
  store i1 %t58, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t60 = load i1, ptr %l24, !tbaa !21
  br i1 %t60, label %bb14, label %bb15
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l33, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/views:Viewer", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  store ptr %t67, ptr %l36, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/views:Viewer", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l6, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l41
  br label %bb16
bb15:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb20
bb16:
  %t78 = load ptr, ptr %l36, !tbaa !29
  %t79 = load i32, ptr %l41, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t80, ptr %l42
  br label %bb17
bb17:
  %t81 = load ptr, ptr %l33, !tbaa !29
  %t82 = load i32, ptr %l42, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v0, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l43
  br label %bb18
bb18:
  %t84 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t85 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t84, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t85, ptr %l44
  br label %bb19
bb19:
  %t86 = load i1, ptr %l44, !tbaa !21
  store i1 %t86, ptr %l32, !tbaa !21
  br label %bb20
bb20:
  %t87 = load i1, ptr %l32, !tbaa !21
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l6, !tbaa !23
  %t90 = load i64, ptr %l5, !tbaa !24
  %t94 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efieldName(ptr %v0, ptr %s1, ptr %t88, i32 %t89, i64 %t90)
  store { i64, ptr } %t94, ptr %l49
  br label %bb23
bb22:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb25
bb23:
  %t95 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 0
  %t97 = extractvalue { i64, ptr } %t95, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t103 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t101, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t103, ptr %l51
  br label %bb24
bb24:
  %t104 = load i1, ptr %l51, !tbaa !21
  store i1 %t104, ptr %l45, !tbaa !21
  br label %bb25
bb25:
  %t105 = load i1, ptr %l45, !tbaa !21
  br i1 %t105, label %bb26, label %bb27
bb26:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erecordPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t106, ptr %t107, ptr %a2, ptr %a3)
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s1)
  store i32 0, ptr %rv
  br label %ret
bb29:
  call void @__olang_scope_close(ptr %s1)
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
  call void @__olang_check_failed(ptr @olang_loc_dfc376be0a55e0c3_9b1743fdc36697af)
  unreachable
bb35:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
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
  %l11 = alloca ptr
  %l12 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
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
  store ptr %t5, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t6 = load ptr, ptr %l11, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l11, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l12, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l4, !tbaa !29
  br label %bb12
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t21 = load ptr, ptr %l17, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t39 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t35, ptr %t36, ptr %t38, ptr %t39)
  br label %bb13
bb13:
  br label %bb48
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l28, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 11
  store i1 %t51, ptr %l29, !tbaa !21
  br label %bb16
bb16:
  %t52 = load i1, ptr %l29, !tbaa !21
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l5, !tbaa !29
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l5, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Cond", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t65 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t59, ptr %t63, ptr %t64, ptr %t65)
  br label %bb20
bb20:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Cond", ptr %t71, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t77 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t70, ptr %t74, ptr %t76, ptr %t77)
  br label %bb21
bb21:
  br label %bb48
bb22:
  %t82 = load ptr, ptr %l1, !tbaa !29
  store ptr %t82, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t83 = load ptr, ptr %l45, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t86 = load ptr, ptr %l45, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 18}
  %t89 = icmp eq i64 %t87, 17
  store i1 %t89, ptr %l46, !tbaa !21
  br label %bb24
bb24:
  %t90 = load i1, ptr %l46, !tbaa !21
  br i1 %t90, label %bb25, label %bb26
bb25:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr { i64, [5 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t93, i32 0, i32 2
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l6, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t101 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t97, ptr %t98, ptr %t100, ptr %t101)
  br label %bb28
bb28:
  br label %bb48
bb29:
  %t106 = load ptr, ptr %l1, !tbaa !29
  store ptr %t106, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t107 = load ptr, ptr %l56, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb30, label %bb31
bb30:
  %t110 = load ptr, ptr %l56, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 18}
  %t113 = icmp eq i64 %t111, 12
  store i1 %t113, ptr %l57, !tbaa !21
  br label %bb31
bb31:
  %t114 = load i1, ptr %l57, !tbaa !21
  br i1 %t114, label %bb32, label %bb33
bb32:
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l7, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l7, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Seq", ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t126 = load ptr, ptr %l2, !tbaa !29
  %t127 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t121, ptr %t125, ptr %t126, ptr %t127)
  br label %bb35
bb35:
  br label %bb48
bb36:
  %t132 = load ptr, ptr %l1, !tbaa !29
  store ptr %t132, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t133 = load ptr, ptr %l67, !tbaa !29
  %t134 = icmp ne ptr %t133, null
  br i1 %t134, label %bb37, label %bb38
bb37:
  %t136 = load ptr, ptr %l67, !tbaa !29
  %t137 = load i64, ptr %t136, !range !{i64 0, i64 18}
  %t139 = icmp eq i64 %t137, 6
  store i1 %t139, ptr %l68, !tbaa !21
  br label %bb38
bb38:
  %t140 = load i1, ptr %l68, !tbaa !21
  br i1 %t140, label %bb39, label %bb40
bb39:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr { i64, [5 x i64] }, ptr %t141, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t143, i32 0, i32 2
  %t145 = load ptr, ptr %t144
  store ptr %t145, ptr %l8, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l8, !tbaa !29
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t150 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t147, ptr %t148, ptr %t149, ptr %t150)
  br label %bb42
bb42:
  br label %bb48
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_a471d4cd6a39e3a7_bf796cf0b70bcd93)
  unreachable
bb48:
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efileWord(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca ptr
  %rv = alloca { i32, { i64, ptr } }
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t5, ptr %l8, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l10, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t19, ptr %l8, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t21 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t20, 1
  store { i32, { i64, ptr } } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t24 = getelementptr %"compiler/views:Viewer", ptr %a0, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/load:Loader", ptr %t28, i32 0, i32 10
  store ptr %t30, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t32 = load i64, ptr %l3, !tbaa !24
  store i64 %t32, ptr %l15, !tbaa !24
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l17
  br label %bb5
bb5:
  %t36 = load i64, ptr %l15, !tbaa !24
  %t37 = load i64, ptr %l17, !tbaa !24
  %t38 = icmp slt i64 %t36, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t42, i64 %t43)
  store ptr %t46, ptr %l22
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l22, !tbaa !29
  store ptr %t47, ptr %l4, !tbaa !29
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t50 = getelementptr %"compiler/load:Module", ptr %t48, i32 0, i32 4
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr %l1, !tbaa !24
  %t55 = icmp eq i64 %t51, %t52
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 2
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 1
  %t63 = extractvalue { i64, ptr } %t60, 0
  %t64 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t62, i64 %t63)
  %t65 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  %t68 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t66, 1
  store { i32, { i64, ptr } } %t68, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t69 = load i64, ptr %l3, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l3, !tbaa !24
  br label %bb4
bb14:
  %t74 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ehandOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/views:view"
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca %"compiler/views:view"
  %l30 = alloca ptr
  %l35 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t3, ptr %a2, ptr %a3, ptr %l4)
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/views:Viewer", ptr %t10, i32 0, i32 23
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  store ptr %l4, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t16 = load i64, ptr %l6, !tbaa !24
  store i64 %t16, ptr %l18, !tbaa !24
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t17)
  store i64 %t19, ptr %l20
  br label %bb7
bb7:
  %t20 = load i64, ptr %l18, !tbaa !24
  %t21 = load i64, ptr %l20, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %bb29
bb9:
  br label %bb10
bb10:
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t26, i64 %t27)
  store %"compiler/views:view" %t30, ptr %l25
  br label %bb11
bb11:
  %t31 = load %"compiler/views:view", ptr %l25
  store %"compiler/views:view" %t31, ptr %l7
  %t32 = getelementptr %"compiler/views:view", ptr %l7, i32 0, i32 0
  %t33 = getelementptr %"compiler/views:place", ptr %t32, i32 0, i32 0
  %t34 = load { i64, [2 x i64] }, ptr %t33
  store { i64, [2 x i64] } %t34, ptr %l8
  %t36 = load { i64, [2 x i64] }, ptr %l8
  %t38 = extractvalue { i64, [2 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 2
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t42 = getelementptr { i64 }, ptr %t41, i32 0, i32 0
  %t43 = load i64, ptr %t42
  store i64 %t43, ptr %l9, !tbaa !24
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l30, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/views:Viewer", ptr %t46, i32 0, i32 2
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/views:Viewer", ptr %t49, i32 0, i32 22
  %t52 = load i64, ptr %t51, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t48, i64 %t52)
  store ptr %t55, ptr %l35
  br label %bb15
bb15:
  %t56 = load ptr, ptr %l35, !tbaa !29
  %t58 = getelementptr %"compiler/views:summary", ptr %t56, i32 0, i32 1
  %t59 = load i64, ptr %l9, !tbaa !24
  %t60 = getelementptr %"compiler/views:view", ptr %l7, i32 0, i32 0
  %t61 = load %"compiler/views:place", ptr %t60
  %t63 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactPut(ptr %v0, ptr %v0, ptr %t63, ptr %t58, i64 %t59, i64 -1, i32 0, %"compiler/views:place" %t61, %"compiler/source:Span" %a1)
  br label %bb16
bb16:
  br label %bb27
bb17:
  %t68 = load { i64, [2 x i64] }, ptr %l8
  %t70 = extractvalue { i64, [2 x i64] } %t68, 0
  %t71 = icmp eq i64 %t70, 4
  br i1 %t71, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load %"compiler/views:view", ptr %l7
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2epasses(ptr %v0, ptr %t73, %"compiler/views:view" %t74)
  br label %bb21
bb21:
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_c0119a910aee1fe3_5ce99f5c7dc6e127)
  unreachable
bb27:
  br label %bb28
bb28:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb6
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eholdsOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/views:holding"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca %"compiler/views:holding"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/views:state", ptr %a1, i32 0, i32 1
  store ptr %t3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l5, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t15, i64 %t16)
  store %"compiler/views:holding" %t19, ptr %l16
  br label %bb6
bb6:
  %t20 = load %"compiler/views:holding", ptr %l16
  store %"compiler/views:holding" %t20, ptr %l6
  %t21 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = icmp eq i64 %t22, %a2
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t29 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t30 = load %"compiler/views:view", ptr %t29
  call void @compiler_2fviews_2eviewAdd(ptr %v2, ptr %a3, %"compiler/views:view" %t30)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l5, !tbaa !24
  br label %bb1
bb12:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeyedBefore(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca i1
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp slt i64 %t5, %a2
  store i1 %t9, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l6, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store { i64, ptr } %a3, ptr %l11, !tbaa !27
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %t16, i64 %t13
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !37
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t18, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t20, ptr %l14
  br label %bb6
bb5:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb7
bb6:
  %t21 = load i1, ptr %l14, !tbaa !21
  %t22 = xor i1 %t21, true
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t24 = load i1, ptr %l10, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/views:state"
  %l6 = alloca %"compiler/views:state"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/views:state"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca %"compiler/views:state"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca %"compiler/views:state"
  %l20 = alloca i64
  %l22 = alloca ptr
  %l25 = alloca %"compiler/views:loopFrame"
  %l28 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca ptr
  %l35 = alloca %"compiler/views:state"
  %l37 = alloca %"compiler/views:state"
  %l38 = alloca %"compiler/views:state"
  %l42 = alloca i64
  %l45 = alloca i64
  %l68 = alloca %"compiler/views:state"
  %l70 = alloca %"compiler/views:state"
  %l77 = alloca i64
  %l79 = alloca i64
  %l84 = alloca %"compiler/views:state"
  %l86 = alloca %"compiler/views:state"
  %l96 = alloca i64
  %l98 = alloca i64
  %l103 = alloca %"compiler/views:state"
  %l105 = alloca %"compiler/views:state"
  %l111 = alloca i64
  %l115 = alloca i64
  %l120 = alloca ptr
  %l123 = alloca ptr
  %l124 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t29 = alloca %"compiler/views:state", align 8
  %t31 = alloca %"compiler/views:state", align 8
  %t33 = alloca %"compiler/views:state", align 8
  %t88 = alloca %"compiler/views:state", align 8
  %t90 = alloca %"compiler/views:state", align 8
  %t114 = alloca %"compiler/views:state", align 8
  %t117 = alloca %"compiler/views:state", align 8
  %t146 = alloca %"compiler/views:state", align 8
  %t149 = alloca %"compiler/views:state", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 28
  store ptr %t3, ptr %l22, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Block", ptr %t4, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = call %"compiler/views:loopFrame" @compiler_2fviews_3aloopFrame_2ector(ptr %v0, i32 %t7)
  store %"compiler/views:loopFrame" %t9, ptr %l25
  br label %bb1
bb1:
  %t10 = load %"compiler/views:loopFrame", ptr %l25
  %t11 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store %"compiler/views:loopFrame" %t10, ptr %t11
  %t12 = load ptr, ptr %l22, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H473e76678ba49e15aac3621516ab9c7a(ptr %v0, ptr %v0, ptr %t12, ptr %t11)
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:Viewer", ptr %t14, i32 0, i32 28
  store ptr %t16, ptr %l28, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/views:Viewer", ptr %t17, i32 0, i32 28
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H1e03e4f3e9fd2c184a7d157dcdc4524e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l31
  br label %bb3
bb3:
  %t22 = load i64, ptr %l31, !tbaa !24
  %t23 = sub i64 %t22, 1
  %t24 = load ptr, ptr %l28, !tbaa !29
  %t26 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H778376aca07487ba188a916552f34a0e(ptr %v0, ptr %v0, ptr %t24, i64 %t23)
  store ptr %t26, ptr %l33
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l33, !tbaa !29
  store ptr %t27, ptr %l4, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t29, ptr %v3, ptr %s0, ptr %t28)
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t29, i64 136, i1 false)
  br label %bb5
bb5:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t31, ptr %s0, ptr %l35)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t31, i64 136, i1 false)
  br label %bb6
bb6:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l37, i64 136, i1 false)
  call void @compiler_2fviews_2estate_2edead(ptr %t33, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t33, i64 136, i1 false)
  br label %bb7
bb7:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l38, i64 136, i1 false)
  store i64 0, ptr %l7, !tbaa !24
  store i64 12, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t34 = load i64, ptr %l8, !tbaa !24
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load i64, ptr %l9, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb13
bb10:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l9, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l45, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l45, !tbaa !24
  store i64 %t60, ptr %l42, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l42, !tbaa !24
  store i64 %t61, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t62 = load i64, ptr %l11, !tbaa !24
  %t63 = load i64, ptr %l10, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb51
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l11, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l12, !tbaa !24
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t82 = getelementptr %"compiler/views:loopFrame", ptr %t80, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eClear_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %t82)
  br label %bb18
bb18:
  %t84 = load ptr, ptr %l4, !tbaa !29
  %t86 = getelementptr %"compiler/views:loopFrame", ptr %t84, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eClear_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %t86)
  br label %bb19
bb19:
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t88, ptr %s0, ptr %s2, ptr %l5)
  call void @llvm.memmove.p0.p0.i64(ptr %l68, ptr %t88, i64 136, i1 false)
  br label %bb20
bb20:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t90, ptr %s2, ptr %l68)
  call void @llvm.memmove.p0.p0.i64(ptr %l70, ptr %t90, i64 136, i1 false)
  br label %bb21
bb21:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l70, i64 136, i1 false)
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %s2, ptr %t92, ptr %t93, ptr %l13)
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l4, !tbaa !29
  %t100 = getelementptr %"compiler/views:loopFrame", ptr %t98, i32 0, i32 2
  store ptr %t100, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t102 = load i64, ptr %l15, !tbaa !24
  store i64 %t102, ptr %l77, !tbaa !24
  %t103 = load ptr, ptr %l14, !tbaa !29
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eLen_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %t103)
  store i64 %t105, ptr %l79
  br label %bb24
bb24:
  %t106 = load i64, ptr %l77, !tbaa !24
  %t107 = load i64, ptr %l79, !tbaa !24
  %t108 = icmp slt i64 %t106, %t107
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb26:
  br label %bb27
bb27:
  %t112 = load ptr, ptr %l14, !tbaa !29
  %t113 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eAt_3ccompiler_2fviews_3astate_3e(ptr %t114, ptr %v0, ptr %v0, ptr %t112, i64 %t113)
  call void @llvm.memmove.p0.p0.i64(ptr %l84, ptr %t114, i64 136, i1 false)
  br label %bb28
bb28:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t117, ptr %s4, ptr %l84)
  call void @llvm.memmove.p0.p0.i64(ptr %l86, ptr %t117, i64 136, i1 false)
  br label %bb29
bb29:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l86, i64 136, i1 false)
  call void @compiler_2fviews_2emerge(ptr %s2, ptr %s4, ptr %l13, ptr %l16)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s4)
  br label %bb31
bb31:
  %t121 = load i64, ptr %l15, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l15, !tbaa !24
  br label %bb23
bb32:
  %t125 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v2, ptr %s2, ptr %t125, ptr %a2, ptr %l13)
  br label %bb33
bb33:
  %t130 = load ptr, ptr %l4, !tbaa !29
  %t132 = getelementptr %"compiler/views:loopFrame", ptr %t130, i32 0, i32 1
  store ptr %t132, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t134 = load i64, ptr %l18, !tbaa !24
  store i64 %t134, ptr %l96, !tbaa !24
  %t135 = load ptr, ptr %l17, !tbaa !29
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eLen_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %t135)
  store i64 %t137, ptr %l98
  br label %bb35
bb35:
  %t138 = load i64, ptr %l96, !tbaa !24
  %t139 = load i64, ptr %l98, !tbaa !24
  %t140 = icmp slt i64 %t138, %t139
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb43
bb37:
  br label %bb38
bb38:
  %t144 = load ptr, ptr %l17, !tbaa !29
  %t145 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eAt_3ccompiler_2fviews_3astate_3e(ptr %t146, ptr %v0, ptr %v0, ptr %t144, i64 %t145)
  call void @llvm.memmove.p0.p0.i64(ptr %l103, ptr %t146, i64 136, i1 false)
  br label %bb39
bb39:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t149, ptr %s7, ptr %l103)
  call void @llvm.memmove.p0.p0.i64(ptr %l105, ptr %t149, i64 136, i1 false)
  br label %bb40
bb40:
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %l105, i64 136, i1 false)
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s7, ptr %l6, ptr %l19)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s7)
  br label %bb42
bb42:
  %t153 = load i64, ptr %l18, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l18, !tbaa !24
  br label %bb34
bb43:
  %t158 = call i64 @compiler_2fviews_2eweight(ptr %s0, ptr %l5)
  store i64 %t158, ptr %l111
  br label %bb44
bb44:
  %t159 = load i64, ptr %l111, !tbaa !24
  store i64 %t159, ptr %l20, !tbaa !24
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s2, ptr %l5, ptr %l13)
  br label %bb45
bb45:
  %t163 = call i64 @compiler_2fviews_2eweight(ptr %s0, ptr %l5)
  store i64 %t163, ptr %l115
  br label %bb46
bb46:
  %t164 = load i64, ptr %l20, !tbaa !24
  %t165 = load i64, ptr %l115, !tbaa !24
  %t167 = icmp eq i64 %t165, %t164
  br i1 %t167, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s2)
  br label %bb51
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s2)
  br label %bb50
bb50:
  %t169 = load i64, ptr %l11, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l11, !tbaa !24
  br label %bb14
bb51:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/views:Viewer", ptr %t173, i32 0, i32 28
  %t177 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H2424d6cf963333801588b77238bf827f(ptr %v0, ptr %v0, ptr %t175)
  %t178 = extractvalue { i32, ptr } %t177, 1
  %t179 = extractvalue { i32, ptr } %t177, 0
  store i32 %t179, ptr %l124
  %t180 = icmp ne i32 %t179, 0
  br i1 %t180, label %bb53, label %ok.181, !prof !99
ok.181:
  store ptr %t178, ptr %l123
  br label %bb52
bb52:
  %t182 = load ptr, ptr %l123, !tbaa !29
  store ptr %t182, ptr %l120, !tbaa !29
  br label %bb55
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t183 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v3, ptr %s0, ptr %t183, ptr %l6)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ematchOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"compiler/views:state"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca %"compiler/views:state"
  %l14 = alloca %"compiler/views:state"
  %l23 = alloca { i64, ptr }
  %l32 = alloca %"compiler/views:state"
  %l41 = alloca { i64, ptr }
  %l45 = alloca %"compiler/views:state"
  %l47 = alloca %"compiler/views:state"
  %l61 = alloca %"compiler/views:state"
  %l63 = alloca %"compiler/views:state"
  %l64 = alloca ptr
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t37 = alloca %"compiler/views:state", align 8
  %t64 = alloca %"compiler/views:state", align 8
  %t66 = alloca %"compiler/views:state", align 8
  %t91 = alloca %"compiler/views:state", align 8
  %t96 = alloca %"compiler/views:state", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l6, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t18, ptr %l23, !tbaa !27
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %t26, ptr %t24, ptr %t29)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l5, !tbaa !24
  br label %bb1
bb7:
  call void @compiler_2fviews_2estate_2edead(ptr %t37, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t37, i64 136, i1 false)
  br label %bb8
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l32, i64 136, i1 false)
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Match", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l11, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s5
  %t47 = load i64, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l11, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s5)
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t55, ptr %l41, !tbaa !27
  %t56 = load i64, ptr %l10, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  store ptr %t61, ptr %l12, !tbaa !29
  %t63 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t64, ptr %v2, ptr %s5, ptr %t63)
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t64, i64 136, i1 false)
  br label %bb13
bb13:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t66, ptr %s5, ptr %l45)
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t66, i64 136, i1 false)
  br label %bb14
bb14:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l47, i64 136, i1 false)
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l12, !tbaa !29
  %t70 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earm(ptr %v0, ptr %v1, ptr %s5, ptr %v3, ptr %t68, ptr %t69, ptr %l13, ptr %t70)
  br label %bb15
bb15:
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s5, ptr %l8, ptr %l13)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb17
bb17:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb9
bb18:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Match", ptr %t81, i32 0, i32 2
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s7
  %t90 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t91, ptr %v2, ptr %s7, ptr %t90)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t91, i64 136, i1 false)
  br label %bb21
bb20:
  %t93 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %v2, ptr %l8, ptr %t93)
  br label %bb28
bb21:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t96, ptr %s7, ptr %l61)
  call void @llvm.memmove.p0.p0.i64(ptr %l63, ptr %t96, i64 136, i1 false)
  br label %bb22
bb22:
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %l63, i64 136, i1 false)
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l64, !tbaa !29
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Match", ptr %t99, i32 0, i32 2
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_2d854533e388acf3_9bd384635a298ef)
  unreachable
bb24:
  br label %bb25
bb25:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Match", ptr %t106, i32 0, i32 2
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t111 = load ptr, ptr %l64, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earm(ptr %v0, ptr %v1, ptr %s7, ptr %v3, ptr %t111, ptr %t109, ptr %l14, ptr %t110)
  br label %bb26
bb26:
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s7, ptr %l8, ptr %l14)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s7)
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t117 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v2, ptr %s0, ptr %t117, ptr %l8)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emeets(ptr %v0, ptr %a0, %"compiler/views:place" %a1, %"compiler/views:place" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:place"
  %l2 = alloca %"compiler/views:place"
  %l4 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, [2 x i64] }
  %l9 = alloca { i64, [2 x i64] }
  %l11 = alloca i1
  %l19 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/views:place" %a1, ptr %l1
  store %"compiler/views:place" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  %t4 = call i1 @compiler_2fviews_2ereal({ i64, [2 x i64] } %t2)
  store i1 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load i1, ptr %l4, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb3:
  %t8 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 0
  %t9 = load { i64, [2 x i64] }, ptr %t8
  store { i64, [2 x i64] } %t9, ptr %l7
  %t10 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 0
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l9
  %t14 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aRoot(ptr %l7, ptr %l9)
  store i1 %t14, ptr %l11
  br label %bb4
bb4:
  %t15 = load i1, ptr %l11, !tbaa !21
  %t16 = xor i1 %t15, true
  store i1 %t16, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l6, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t26 = icmp eq i64 %t21, %t23
  br i1 %t26, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t29 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 3
  %t30 = load i1, ptr %t29, !tbaa !21
  br i1 %t30, label %bb12, label %bb13
bb12:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 1
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  %t40 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %t32, i64 %t34, i64 %t36)
  store i1 %t40, ptr %l23
  br label %bb14
bb13:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb15
bb14:
  %t41 = load i1, ptr %l23, !tbaa !21
  store i1 %t41, ptr %l19, !tbaa !21
  br label %bb15
bb15:
  %t42 = load i1, ptr %l19, !tbaa !21
  br i1 %t42, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t44 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 3
  %t45 = load i1, ptr %t44, !tbaa !21
  br i1 %t45, label %bb19, label %bb20
bb19:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 1
  %t49 = load i64, ptr %t48, !tbaa !24
  %t50 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  %t55 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %t47, i64 %t49, i64 %t51)
  store i1 %t55, ptr %l30
  br label %bb21
bb20:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb22
bb21:
  %t56 = load i1, ptr %l30, !tbaa !21
  store i1 %t56, ptr %l26, !tbaa !21
  br label %bb22
bb22:
  %t57 = load i1, ptr %l26, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2epasses(ptr %v0, ptr %a0, %"compiler/views:view" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:view"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l12 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/views:view" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/views:view", ptr %l1, i32 0, i32 0
  %t2 = getelementptr %"compiler/views:place", ptr %t1, i32 0, i32 0
  %t3 = load { i64, [2 x i64] }, ptr %t2
  store { i64, [2 x i64] } %t3, ptr %l2
  %t5 = load { i64, [2 x i64] }, ptr %l2
  %t7 = extractvalue { i64, [2 x i64] } %t5, 0
  %t8 = icmp eq i64 %t7, 4
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t11 = getelementptr { i64 }, ptr %t10, i32 0, i32 0
  %t12 = load i64, ptr %t11
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb11
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:Viewer", ptr %t14, i32 0, i32 2
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/views:Viewer", ptr %t17, i32 0, i32 22
  %t20 = load i64, ptr %t19, !tbaa !24
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t16, i64 %t20)
  store ptr %t23, ptr %l12
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t26 = getelementptr %"compiler/views:summary", ptr %t24, i32 0, i32 3
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t26, i64 %t27)
  store i1 %t30, ptr %l16
  br label %bb5
bb5:
  %t31 = load i1, ptr %l16, !tbaa !21
  %t32 = xor i1 %t31, true
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/views:Viewer", ptr %t34, i32 0, i32 2
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/views:Viewer", ptr %t37, i32 0, i32 22
  %t40 = load i64, ptr %t39, !tbaa !24
  %t43 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t36, i64 %t40)
  store ptr %t43, ptr %l22
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t46 = getelementptr %"compiler/views:summary", ptr %t44, i32 0, i32 3
  %t47 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t46, i64 %t47, i1 true)
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/views:Viewer", ptr %t50, i32 0, i32 26
  store i1 true, ptr %t52, !tbaa !21
  br label %bb10
bb10:
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_b373ce5e6fb0acb1_b981b0fdcb20f7cd)
  unreachable
bb16:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2equoted(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l39 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t5, ptr %l8, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l10, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t19, ptr %l8, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/views:Viewer", ptr %t21, i32 0, i32 1
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t24)
  store ptr %t27, ptr %l14
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 1
  %t31 = load { i64, [2 x i64] }, ptr %t30
  store { i64, [2 x i64] } %t31, ptr %l2
  %t33 = load { i64, [2 x i64] }, ptr %l2
  %t35 = extractvalue { i64, [2 x i64] } %t33, 0
  %t36 = icmp eq i64 %t35, 0
  br i1 %t36, label %bb5, label %bb6
bb5:
  %t38 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t39 = getelementptr { i64 }, ptr %t38, i32 0, i32 0
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb7
bb6:
  br label %bb11
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l21, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/views:Viewer", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/views:Viewer", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  %t54 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l27
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l23, !tbaa !29
  %t56 = load i64, ptr %l27, !tbaa !24
  %t57 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t55, i64 %t56)
  store ptr %t57, ptr %l28
  br label %bb9
bb9:
  %t58 = load ptr, ptr %l28, !tbaa !29
  %t60 = getelementptr %"compiler/ast:Func", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = load ptr, ptr %l21, !tbaa !29
  %t64 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s2, ptr %t62, i32 %t61)
  store { i64, ptr } %t64, ptr %l31
  br label %bb10
bb10:
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t67 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = add i64 %t66, %t69
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t65, i64 %t66)
  %t75 = getelementptr i8, ptr %t74, i64 %t66
  call void @olang_textcopy(ptr %t75, ptr %t68, i64 %t69)
  %t76 = getelementptr i8, ptr %t75, i64 %t69
  call void @olang_textcopy(ptr %t76, ptr %t71, i64 %t72)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t74, 1
  store { i64, ptr } %t78, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb11:
  %t80 = load { i64, [2 x i64] }, ptr %l2
  %t82 = extractvalue { i64, [2 x i64] } %t80, 0
  %t83 = icmp eq i64 %t82, 1
  br i1 %t83, label %bb12, label %bb13
bb12:
  %t85 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t86 = getelementptr { i32, i32 }, ptr %t85, i32 0, i32 0
  %t87 = load i32, ptr %t86
  store i32 %t87, ptr %l4, !tbaa !23
  br label %bb14
bb13:
  br label %bb18
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l36, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/views:Viewer", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 2
  store ptr %t95, ptr %l39, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/views:Viewer", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l4, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l44
  br label %bb15
bb15:
  %t106 = load ptr, ptr %l39, !tbaa !29
  %t107 = load i32, ptr %l44, !tbaa !23
  %t108 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t108, ptr %l45
  br label %bb16
bb16:
  %t109 = load ptr, ptr %l36, !tbaa !29
  %t110 = load i32, ptr %l45, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s4, ptr %t109, i32 %t110)
  store { i64, ptr } %t111, ptr %l46
  br label %bb17
bb17:
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t114 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = add i64 %t113, %t116
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t112, i64 %t113)
  %t122 = getelementptr i8, ptr %t121, i64 %t113
  call void @olang_textcopy(ptr %t122, ptr %t115, i64 %t116)
  %t123 = getelementptr i8, ptr %t122, i64 %t116
  call void @olang_textcopy(ptr %t123, ptr %t118, i64 %t119)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t121, 1
  store { i64, ptr } %t125, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t127, ptr %l17, !tbaa !27
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_52eb4a404ee8e2f2_daf885f9c5247eae)
  unreachable
bb23:
  %t129 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  store i64 %t130, ptr %l50, !tbaa !24
  %t131 = load i64, ptr %l50, !tbaa !24
  %t132 = mul i64 %t131, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l51, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = load i64, ptr %l50, !tbaa !24
  %t141 = mul i64 %t140, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t137, ptr %t139, i64 %t141, i1 false)
  %t142 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t142, ptr %l17, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estoreInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/views:holding"
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/views:place"
  %l16 = alloca %"compiler/views:view"
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l56 = alloca %"compiler/views:holding"
  %l58 = alloca i64
  %l60 = alloca i64
  %l65 = alloca %"compiler/views:place"
  %l67 = alloca i1
  %l68 = alloca i1
  %l69 = alloca { i64, [2 x i64] }
  %l71 = alloca { i64, [2 x i64] }
  %l73 = alloca i1
  %l74 = alloca i1
  %l78 = alloca i1
  %l84 = alloca %"compiler/views:place"
  %l86 = alloca ptr
  %l87 = alloca i64
  %l90 = alloca %"compiler/views:holding"
  %l98 = alloca ptr
  %l100 = alloca ptr
  %l102 = alloca i32
  %l107 = alloca ptr
  %l108 = alloca i1
  %l114 = alloca i1
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t128 = alloca { i64, [2 x i64] }, align 8
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
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootLocal(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i64, ptr %l19, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l20
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v3, ptr %s0, ptr %t9, ptr %t10, ptr %t12, ptr %l5)
  br label %bb3
bb3:
  store i64 0, ptr %l6, !tbaa !24
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = getelementptr %"compiler/views:state", ptr %t17, i32 0, i32 1
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t19)
  store i64 %t21, ptr %l28
  br label %bb4
bb4:
  %t22 = load i64, ptr %l28, !tbaa !24
  store i64 %t22, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t23 = load i64, ptr %l7, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i64, ptr %l8, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb10
bb7:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l8, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l35, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l35, !tbaa !24
  store i64 %t49, ptr %l32, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l32, !tbaa !24
  store i64 %t50, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l10, !tbaa !24
  %t52 = load i64, ptr %l9, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb12, label %bb13
bb12:
  br label %bb40
bb13:
  br label %bb14
bb14:
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l10, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l11, !tbaa !24
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = getelementptr %"compiler/views:state", ptr %t69, i32 0, i32 1
  %t72 = load i64, ptr %l11, !tbaa !24
  %t75 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t71, i64 %t72)
  store %"compiler/views:holding" %t75, ptr %l56
  br label %bb15
bb15:
  %t76 = load %"compiler/views:holding", ptr %l56
  store %"compiler/views:holding" %t76, ptr %l12
  store ptr %l5, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb16
bb16:
  %t78 = load i64, ptr %l14, !tbaa !24
  store i64 %t78, ptr %l58, !tbaa !24
  %t79 = load ptr, ptr %l13, !tbaa !29
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t79)
  store i64 %t81, ptr %l60
  br label %bb17
bb17:
  %t82 = load i64, ptr %l58, !tbaa !24
  %t83 = load i64, ptr %l60, !tbaa !24
  %t84 = icmp slt i64 %t82, %t83
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb18, label %bb19
bb18:
  br label %bb38
bb19:
  br label %bb20
bb20:
  %t88 = load ptr, ptr %l13, !tbaa !29
  %t89 = load i64, ptr %l14, !tbaa !24
  %t92 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t88, i64 %t89)
  store %"compiler/views:place" %t92, ptr %l65
  br label %bb21
bb21:
  %t93 = load %"compiler/views:place", ptr %l65
  store %"compiler/views:place" %t93, ptr %l15
  %t94 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t95 = getelementptr %"compiler/views:view", ptr %t94, i32 0, i32 0
  %t96 = getelementptr %"compiler/views:place", ptr %t95, i32 0, i32 0
  %t97 = load { i64, [2 x i64] }, ptr %t96
  %t99 = call i1 @compiler_2fviews_2ereal({ i64, [2 x i64] } %t97)
  store i1 %t99, ptr %l67
  br label %bb22
bb22:
  %t100 = load i1, ptr %l67, !tbaa !21
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t101 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t102 = getelementptr %"compiler/views:view", ptr %t101, i32 0, i32 0
  %t103 = getelementptr %"compiler/views:place", ptr %t102, i32 0, i32 0
  %t104 = load { i64, [2 x i64] }, ptr %t103
  store { i64, [2 x i64] } %t104, ptr %l69
  %t105 = getelementptr %"compiler/views:place", ptr %l15, i32 0, i32 0
  %t106 = load { i64, [2 x i64] }, ptr %t105
  store { i64, [2 x i64] } %t106, ptr %l71
  %t109 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aRoot(ptr %l69, ptr %l71)
  store i1 %t109, ptr %l73
  br label %bb25
bb24:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb26
bb25:
  %t110 = load i1, ptr %l73, !tbaa !21
  store i1 %t110, ptr %l68, !tbaa !21
  br label %bb26
bb26:
  %t111 = load i1, ptr %l68, !tbaa !21
  br i1 %t111, label %bb27, label %bb28
bb27:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/views:place", ptr %l15, i32 0, i32 1
  %t114 = load i64, ptr %t113, !tbaa !24
  %t115 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t116 = getelementptr %"compiler/views:view", ptr %t115, i32 0, i32 0
  %t117 = getelementptr %"compiler/views:place", ptr %t116, i32 0, i32 1
  %t118 = load i64, ptr %t117, !tbaa !24
  %t122 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %t112, i64 %t114, i64 %t118)
  store i1 %t122, ptr %l78
  br label %bb29
bb28:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb30
bb29:
  %t123 = load i1, ptr %l78, !tbaa !21
  store i1 %t123, ptr %l74, !tbaa !21
  br label %bb30
bb30:
  %t124 = load i1, ptr %l74, !tbaa !21
  br i1 %t124, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t125 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t126 = load %"compiler/views:view", ptr %t125
  store %"compiler/views:view" %t126, ptr %l16
  store { i64, [2 x i64] } zeroinitializer, ptr %t128
  %t129 = getelementptr { i64, [2 x i64] }, ptr %t128, i32 0, i32 0
  store i64 0, ptr %t129
  %t130 = load { i64, [2 x i64] }, ptr %t128
  %t131 = getelementptr %"compiler/views:view", ptr %l16, i32 0, i32 0
  %t132 = getelementptr %"compiler/views:place", ptr %t131, i32 0, i32 1
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = getelementptr %"compiler/views:view", ptr %l16, i32 0, i32 0
  %t135 = getelementptr %"compiler/views:place", ptr %t134, i32 0, i32 2
  %t136 = load i64, ptr %t135, !tbaa !24
  %t137 = getelementptr %"compiler/views:view", ptr %l16, i32 0, i32 0
  %t138 = getelementptr %"compiler/views:place", ptr %t137, i32 0, i32 3
  %t139 = load i1, ptr %t138, !tbaa !21
  %t144 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s5, { i64, [2 x i64] } %t130, i64 %t133, i64 %t136, i1 %t139)
  store %"compiler/views:place" %t144, ptr %l84
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t145 = load %"compiler/views:place", ptr %l84
  %t146 = getelementptr %"compiler/views:view", ptr %l16, i32 0, i32 0
  store %"compiler/views:place" %t145, ptr %t146
  %t147 = load ptr, ptr %l3, !tbaa !29
  %t149 = getelementptr %"compiler/views:state", ptr %t147, i32 0, i32 1
  store ptr %t149, ptr %l86, !tbaa !29
  %t150 = load i64, ptr %l11, !tbaa !24
  store i64 %t150, ptr %l87, !tbaa !24
  %t151 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 0
  %t152 = load i64, ptr %t151, !tbaa !24
  %t153 = load %"compiler/views:view", ptr %l16
  %t156 = call %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %s5, i64 %t152, %"compiler/views:view" %t153)
  store %"compiler/views:holding" %t156, ptr %l90
  br label %bb34
bb34:
  %t157 = load ptr, ptr %l86, !tbaa !29
  %t158 = load i64, ptr %l87, !tbaa !24
  %t159 = load %"compiler/views:holding", ptr %l90
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t157, i64 %t158, %"compiler/views:holding" %t159)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb36:
  br label %bb37
bb37:
  %t160 = load i64, ptr %l14, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l14, !tbaa !24
  br label %bb16
bb38:
  br label %bb39
bb39:
  %t164 = load i64, ptr %l10, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l10, !tbaa !24
  br label %bb11
bb40:
  %t168 = load ptr, ptr %l2, !tbaa !29
  %t170 = icmp eq ptr %t168, null
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb41, label %bb42
bb41:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l98, !tbaa !29
  %t175 = load ptr, ptr %l1, !tbaa !29
  store ptr %t175, ptr %l100, !tbaa !29
  %t177 = load ptr, ptr %l1, !tbaa !29
  %t179 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t177)
  store i32 %t179, ptr %l102
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t180 = load ptr, ptr %l2, !tbaa !29
  %t181 = load ptr, ptr %l3, !tbaa !29
  %t182 = load ptr, ptr %l98, !tbaa !29
  %t183 = load ptr, ptr %l100, !tbaa !29
  %t184 = load i32, ptr %l102, !tbaa !23
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t182, ptr %t183, i32 %t184, ptr %t180, ptr %t181)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t187 = load i64, ptr %l4, !tbaa !24
  %t189 = icmp slt i64 %t187, 0
  br i1 %t189, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb47:
  br label %bb48
bb48:
  %t191 = load ptr, ptr %l1, !tbaa !29
  store ptr %t191, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t192 = load ptr, ptr %l107, !tbaa !29
  %t193 = icmp ne ptr %t192, null
  br i1 %t193, label %bb49, label %bb50
bb49:
  %t195 = load ptr, ptr %l107, !tbaa !29
  %t196 = load i64, ptr %t195, !range !{i64 0, i64 8}
  %t198 = icmp eq i64 %t196, 3
  store i1 %t198, ptr %l108, !tbaa !21
  br label %bb50
bb50:
  %t199 = load i1, ptr %l108, !tbaa !21
  br i1 %t199, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb59
bb53:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l3, !tbaa !29
  %t202 = load i64, ptr %l4, !tbaa !24
  %t206 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enamed(ptr %v0, ptr %v3, ptr %t200, ptr %t201, i64 %t202)
  store i1 %t206, ptr %l114
  br label %bb54
bb54:
  %t207 = load i1, ptr %l114, !tbaa !21
  br i1 %t207, label %bb55, label %bb56
bb55:
  %t208 = load ptr, ptr %l3, !tbaa !29
  %t209 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eunname(ptr %v3, ptr %t208, i64 %t209)
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb58
bb58:
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_551fdf32d31d54b_8fb5917c27ba1e87)
  unreachable
bb64:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etake(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %lp9 = alloca ptr
  %l12 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i32
  %l62 = alloca %"compiler/views:summary"
  %l66 = alloca %"compiler/views:summary"
  %l67 = alloca i32
  %l69 = alloca i1
  %l77 = alloca ptr
  %s3 = alloca %olang.scope
  %t125 = alloca %"compiler/views:summary", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/views:Kept", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H09ad5b70a0c5cfd6161167faed1dc325(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/views:Viewer", ptr %t9, i32 0, i32 1
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l16
  br label %bb5
bb5:
  %t14 = load i64, ptr %l16, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb11
bb8:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l23, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l23, !tbaa !24
  store i64 %t41, ptr %l20, !tbaa !24
  br label %bb11
bb11:
  %t42 = load i64, ptr %l20, !tbaa !24
  store i64 %t42, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l7, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/views:Viewer", ptr %t61, i32 0, i32 34
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l42, !tbaa !27
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %t68, i64 %t65
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !37
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t70, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t72, ptr %l45
  br label %bb16
bb16:
  %t73 = load i1, ptr %l45, !tbaa !21
  br i1 %t73, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb18:
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/views:Kept", ptr %t74, i32 0, i32 1
  store ptr %t76, ptr %l48, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/views:Viewer", ptr %t77, i32 0, i32 1
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t79, i64 %t80)
  store ptr %t83, ptr %l52
  br label %bb20
bb20:
  %t84 = load ptr, ptr %l52, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Body", ptr %t84, i32 0, i32 3
  %t87 = load i64, ptr %t86, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/views:Viewer", ptr %t88, i32 0, i32 34
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l56, !tbaa !27
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %t95, i64 %t92
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !37
  %t99 = call i64 @__olang_fmt_i64(ptr null, i64 %t87)
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t102 = add i64 %t99, %t101
  %t104 = extractvalue { i64, ptr } %t97, 1
  %t105 = extractvalue { i64, ptr } %t97, 0
  %t106 = add i64 %t102, %t105
  %t107 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t106)
  %t108 = call i64 @__olang_fmt_i64(ptr %t107, i64 %t87)
  %t109 = getelementptr i8, ptr %t107, i64 %t99
  call void @olang_textcopy(ptr %t109, ptr %t100, i64 %t101)
  %t110 = getelementptr i8, ptr %t109, i64 %t101
  call void @olang_textcopy(ptr %t110, ptr %t104, i64 %t105)
  %t111 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t107, 1
  %t113 = load ptr, ptr %l48, !tbaa !29
  %t115 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H33c414027a4af7673dd1306c9e88dc00(ptr %v1, ptr %v1, ptr %t113, { i64, ptr } %t112)
  %t116 = extractvalue { i32, { i64, ptr } } %t115, 1
  %t117 = extractvalue { i32, { i64, ptr } } %t115, 0
  store i32 %t117, ptr %l61
  %t118 = icmp ne i32 %t117, 0
  br i1 %t118, label %bb22, label %ok.119, !prof !99
ok.119:
  store { i64, ptr } %t116, ptr %l60
  br label %bb21
bb21:
  %t120 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t120, ptr %l46, !tbaa !27
  br label %bb24
bb22:
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb24:
  %t121 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i64, ptr %l7, !tbaa !24
  %t129 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ereadSummary(ptr %t125, ptr %v0, ptr %v1, ptr %v0, ptr %t122, i64 %t123, { i64, ptr } %t121)
  store i32 %t129, ptr %l67
  %t130 = icmp ne i32 %t129, 0
  br i1 %t130, label %bb26, label %ok.131, !prof !99
ok.131:
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t125, i64 136, i1 false)
  br label %bb25
bb25:
  call void @llvm.memmove.p0.p0.i64(ptr %l62, ptr %l66, i64 136, i1 false)
  br label %bb28
bb26:
  %t132 = load i32, ptr %l67, !tbaa !23
  %t133 = ashr i32 %t132, 16
  %t135 = icmp eq i32 %t133, 1
  store i1 %t135, ptr %l69, !tbaa !21
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb28:
  %t136 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 136, i64 8)
  store ptr %t136, ptr %lp9
  %t137 = load ptr, ptr %lp9
  call void @llvm.memmove.p0.p0.i64(ptr %t137, ptr %l62, i64 136, i1 false)
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/views:Viewer", ptr %t138, i32 0, i32 2
  %t141 = load i64, ptr %l7, !tbaa !24
  %t142 = load ptr, ptr %lp9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H06514334ff6679689d662404c821f2dc(ptr %v0, ptr %v0, ptr %t140, i64 %t141, ptr %t142)
  br label %bb29
bb29:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/views:Viewer", ptr %t146, i32 0, i32 33
  %t149 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t148, i64 %t149, i1 true)
  br label %bb30
bb30:
  %t152 = load ptr, ptr %l1, !tbaa !29
  store ptr %t152, ptr %l77, !tbaa !29
  %t153 = load ptr, ptr %l77, !tbaa !29
  %t154 = getelementptr %"compiler/views:Kept", ptr %t153, i32 0, i32 4
  %t155 = load i64, ptr %t154, !tbaa !24
  %t157 = add i64 %t155, 1
  %t159 = load ptr, ptr %l77, !tbaa !29
  %t160 = getelementptr %"compiler/views:Kept", ptr %t159, i32 0, i32 4
  store i64 %t157, ptr %t160, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb31:
  %t161 = load i64, ptr %l6, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l6, !tbaa !24
  br label %bb12
bb32:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca i1
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca ptr
  %l46 = alloca i1
  %l53 = alloca %"compiler/source:Span"
  %l55 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
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
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l2
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t28 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallTok(ptr %v0, ptr %v1, ptr %t22, %"compiler/source:Span" %t23, ptr %t24)
  store %"compiler/source:Span" %t28, ptr %l19
  br label %bb6
bb6:
  %t29 = load %"compiler/source:Span", ptr %l19
  store %"compiler/source:Span" %t29, ptr %l7
  br label %bb38
bb7:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t31 = load ptr, ptr %l20, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l20, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 18}
  %t37 = icmp eq i64 %t35, 2
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [5 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t41, i32 0, i32 2
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l4, !tbaa !29
  br label %bb16
bb11:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t46 = load ptr, ptr %l26, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 3
  store i1 %t52, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l27, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t64 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceTok(ptr %v0, ptr %v1, ptr %t60, ptr %t61)
  store %"compiler/source:Span" %t64, ptr %l34
  br label %bb17
bb17:
  %t65 = load %"compiler/source:Span", ptr %l34
  store %"compiler/source:Span" %t65, ptr %l7
  br label %bb38
bb18:
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t67 = load ptr, ptr %l35, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb19, label %bb20
bb19:
  %t70 = load ptr, ptr %l35, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 18}
  %t73 = icmp eq i64 %t71, 5
  store i1 %t73, ptr %l36, !tbaa !21
  br label %bb20
bb20:
  %t74 = load i1, ptr %l36, !tbaa !21
  br i1 %t74, label %bb21, label %bb22
bb21:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t77, i32 0, i32 2
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Promote", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t88 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %t81, ptr %t85)
  store %"compiler/source:Span" %t88, ptr %l44
  br label %bb24
bb24:
  %t89 = load %"compiler/source:Span", ptr %l44
  store %"compiler/source:Span" %t89, ptr %l7
  br label %bb38
bb25:
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t91 = load ptr, ptr %l45, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb26, label %bb27
bb26:
  %t94 = load ptr, ptr %l45, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 18}
  %t97 = icmp eq i64 %t95, 17
  store i1 %t97, ptr %l46, !tbaa !21
  br label %bb27
bb27:
  %t98 = load i1, ptr %l46, !tbaa !21
  br i1 %t98, label %bb28, label %bb29
bb28:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l6, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l6, !tbaa !29
  %t109 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %t105, ptr %t106)
  store %"compiler/source:Span" %t109, ptr %l53
  br label %bb31
bb31:
  %t110 = load %"compiler/source:Span", ptr %l53
  store %"compiler/source:Span" %t110, ptr %l7
  br label %bb38
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t111)
  store %"compiler/source:Span" %t113, ptr %l55
  br label %bb36
bb36:
  %t114 = load %"compiler/source:Span", ptr %l55
  store %"compiler/source:Span" %t114, ptr %l7
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a630935aa2e7253f_7098fd3403d75c2b)
  unreachable
bb38:
  %t115 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t115, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2euse(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/views:holding"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca %"compiler/diagmsg:Msg"
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l17 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/views:holding"
  %l36 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l60 = alloca i1
  %l83 = alloca i1
  %l89 = alloca i1
  %l92 = alloca { i64, ptr }
  %l101 = alloca %"compiler/typed:Local"
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l108 = alloca %"compiler/diagmsg:Msg"
  %l111 = alloca { i64, ptr }
  %l114 = alloca %"compiler/diagmsg:Msg"
  %l118 = alloca ptr
  %l121 = alloca { i64, [3 x i64] }
  %l123 = alloca i64
  %l127 = alloca { i64, ptr }
  %l131 = alloca ptr
  %l132 = alloca i64
  %l135 = alloca { i64, [3 x i64] }
  %l136 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l142 = alloca %"compiler/diagmsg:Msg"
  %l145 = alloca i1
  %l149 = alloca i1
  %l154 = alloca ptr
  %l155 = alloca i64
  %l161 = alloca { i64, [3 x i64] }
  %l163 = alloca %"compiler/diagmsg:Msg"
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %t340 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 23
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:Viewer", ptr %t8, i32 0, i32 24
  %t11 = load i1, ptr %t10, !tbaa !21
  store i1 %t11, ptr %l17, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l17, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb6
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:Viewer", ptr %t14, i32 0, i32 25
  %t17 = load i1, ptr %t16, !tbaa !21
  store i1 %t17, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l20, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t22 = getelementptr %"compiler/views:state", ptr %a3, i32 0, i32 1
  store ptr %t22, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t24 = load i64, ptr %l5, !tbaa !24
  store i64 %t24, ptr %l25, !tbaa !24
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t25)
  store i64 %t27, ptr %l27
  br label %bb11
bb11:
  %t28 = load i64, ptr %l25, !tbaa !24
  %t29 = load i64, ptr %l27, !tbaa !24
  %t30 = icmp slt i64 %t28, %t29
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb74
bb13:
  br label %bb14
bb14:
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t34, i64 %t35)
  store %"compiler/views:holding" %t38, ptr %l32
  br label %bb15
bb15:
  %t39 = load %"compiler/views:holding", ptr %l32
  store %"compiler/views:holding" %t39, ptr %l6
  %t40 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = icmp ne i64 %t41, %t42
  br i1 %t45, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb18
bb17:
  %t47 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t48 = getelementptr %"compiler/views:view", ptr %t47, i32 0, i32 2
  %t49 = load i1, ptr %t48, !tbaa !21
  %t51 = xor i1 %t49, true
  store i1 %t51, ptr %l36, !tbaa !21
  br label %bb18
bb18:
  %t53 = load i1, ptr %l36, !tbaa !21
  br i1 %t53, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb22
bb20:
  %t54 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t55 = getelementptr %"compiler/views:view", ptr %t54, i32 0, i32 0
  %t56 = getelementptr %"compiler/views:place", ptr %t55, i32 0, i32 0
  %t57 = load { i64, [2 x i64] }, ptr %t56
  %t59 = call i1 @compiler_2fviews_2ereal({ i64, [2 x i64] } %t57)
  store i1 %t59, ptr %l41
  br label %bb21
bb21:
  %t60 = load i1, ptr %l41, !tbaa !21
  %t61 = xor i1 %t60, true
  store i1 %t61, ptr %l39, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l39, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb73
bb24:
  br label %bb25
bb25:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/views:Viewer", ptr %t64, i32 0, i32 21
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb26, label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_f889b3d9696b6a08_112f010babbc7bb4)
  unreachable
bb27:
  br label %bb28
bb28:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/views:Viewer", ptr %t71, i32 0, i32 21
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 3
  %t78 = load i64, ptr %t77, !tbaa !24
  %t80 = shl i64 %t78, 40
  %t81 = load i64, ptr %l1, !tbaa !24
  %t83 = shl i64 %t81, 24
  %t86 = or i64 %t80, %t83
  %t87 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t88 = getelementptr %"compiler/views:view", ptr %t87, i32 0, i32 3
  %t89 = getelementptr %"compiler/source:Span", ptr %t88, i32 0, i32 0
  %t90 = load i32, ptr %t89, !tbaa !23
  %t92 = sext i32 %t90 to i64
  %t95 = or i64 %t86, %t92
  store i64 %t95, ptr %l7, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/views:Viewer", ptr %t97, i32 0, i32 31
  %t100 = load i64, ptr %l7, !tbaa !24
  %t103 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t99, i64 %t100)
  store i1 %t103, ptr %l60
  br label %bb29
bb29:
  %t104 = load i1, ptr %l60, !tbaa !21
  br i1 %t104, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb31:
  br label %bb32
bb32:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/views:Viewer", ptr %t105, i32 0, i32 31
  %t108 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t107, i64 %t108, i1 true)
  br label %bb33
bb33:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/views:Viewer", ptr %t111, i32 0, i32 21
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  br i1 %t116, label %bb34, label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_fbef590508ae9827_444bd78203178143)
  unreachable
bb35:
  br label %bb36
bb36:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/views:Viewer", ptr %t118, i32 0, i32 21
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Body", ptr %t121, i32 0, i32 3
  %t125 = load i64, ptr %t124, !tbaa !24
  %t127 = shl i64 %t125, 48
  %t128 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t129 = getelementptr %"compiler/views:view", ptr %t128, i32 0, i32 1
  %t130 = load i64, ptr %t129, !tbaa !24
  %t132 = and i64 %t130, 16777215
  %t134 = shl i64 %t132, 24
  %t137 = or i64 %t127, %t134
  %t138 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t139 = getelementptr %"compiler/views:view", ptr %t138, i32 0, i32 3
  %t140 = getelementptr %"compiler/source:Span", ptr %t139, i32 0, i32 0
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = sext i32 %t141 to i64
  %t145 = and i64 %t143, 16777215
  %t148 = or i64 %t137, %t145
  store i64 %t148, ptr %l8, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/views:Viewer", ptr %t150, i32 0, i32 32
  %t153 = load i64, ptr %l8, !tbaa !24
  %t156 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t152, i64 %t153)
  store i1 %t156, ptr %l83
  br label %bb37
bb37:
  %t157 = load i1, ptr %l83, !tbaa !21
  br i1 %t157, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb39:
  br label %bb40
bb40:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/views:Viewer", ptr %t158, i32 0, i32 32
  %t161 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t160, i64 %t161, i1 true)
  br label %bb41
bb41:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load %"compiler/source:Span", ptr %l2
  %t168 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eseen(ptr %v0, ptr %t164, %"compiler/source:Span" %t165)
  store i1 %t168, ptr %l89
  br label %bb42
bb42:
  %t169 = load i1, ptr %l89, !tbaa !21
  br i1 %t169, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb44:
  br label %bb45
bb45:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t172 = getelementptr %"compiler/views:view", ptr %t171, i32 0, i32 0
  %t173 = load %"compiler/views:place", ptr %t172
  %t176 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewhere(ptr %v0, ptr %s3, ptr %t170, %"compiler/views:place" %t173)
  store { i64, ptr } %t176, ptr %l92
  br label %bb46
bb46:
  %t177 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t177, ptr %l9, !tbaa !27
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/views:Viewer", ptr %t178, i32 0, i32 21
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = icmp eq ptr %t181, null
  br i1 %t183, label %bb47, label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_d673b6bd3b875b76_a50d9e4884ce91c2)
  unreachable
bb48:
  br label %bb49
bb49:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/views:Viewer", ptr %t185, i32 0, i32 21
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t191 = getelementptr %"compiler/typed:Body", ptr %t188, i32 0, i32 7
  %t192 = load i64, ptr %l1, !tbaa !24
  %t195 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t191, i64 %t192)
  store %"compiler/typed:Local" %t195, ptr %l101
  br label %bb50
bb50:
  %t196 = getelementptr %"compiler/typed:Local", ptr %l101, i32 0, i32 0
  %t197 = load i32, ptr %t196, !tbaa !23
  store i32 %t197, ptr %l10, !tbaa !23
  %t199 = load i32, ptr %l10, !tbaa !23
  %t201 = icmp eq i32 %t199, 0
  br i1 %t201, label %bb51, label %bb52
bb51:
  %t203 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t207 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecHiddenViewStale(ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t203, { i64, ptr } %t204)
  store %"compiler/diagmsg:Msg" %t207, ptr %l108
  br label %bb53
bb52:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i32, ptr %l10, !tbaa !23
  %t212 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v0, ptr %t208, i32 %t209)
  store { i64, ptr } %t212, ptr %l111
  br label %bb54
bb53:
  %t213 = load %"compiler/diagmsg:Msg", ptr %l108
  store %"compiler/diagmsg:Msg" %t213, ptr %l105
  br label %bb56
bb54:
  %t214 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t215 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t216 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t219 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewStale(ptr %v0, ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t216, { i64, ptr } %t214, { i64, ptr } %t215)
  store %"compiler/diagmsg:Msg" %t219, ptr %l114
  br label %bb55
bb55:
  %t220 = load %"compiler/diagmsg:Msg", ptr %l114
  store %"compiler/diagmsg:Msg" %t220, ptr %l105
  br label %bb56
bb56:
  %t221 = load %"compiler/diagmsg:Msg", ptr %l105
  store %"compiler/diagmsg:Msg" %t221, ptr %l11
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/views:Viewer", ptr %t222, i32 0, i32 0
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/load:Loader", ptr %t228, i32 0, i32 4
  %t231 = load ptr, ptr %t230, !tbaa !29
  store ptr %t231, ptr %l118, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l2
  %t236 = call { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %t232, %"compiler/source:Span" %t233)
  store { i64, [3 x i64] } %t236, ptr %l121
  br label %bb57
bb57:
  %t237 = load %"compiler/diagmsg:Msg", ptr %l11
  %t238 = load ptr, ptr %l118, !tbaa !29
  %t239 = load { i64, [3 x i64] }, ptr %l121
  %t241 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s3, ptr %t238, { i64, [3 x i64] } %t239, %"compiler/diagmsg:Msg" %t237)
  store i64 %t241, ptr %l123
  br label %bb58
bb58:
  %t242 = load i64, ptr %l123, !tbaa !24
  store i64 %t242, ptr %l12, !tbaa !24
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/views:Viewer", ptr %t243, i32 0, i32 3
  %t246 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t247 = getelementptr %"compiler/views:view", ptr %t246, i32 0, i32 4
  %t248 = load i64, ptr %t247, !tbaa !24
  %t251 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t245, i64 %t248)
  store { i64, ptr } %t251, ptr %l127
  br label %bb59
bb59:
  %t252 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t252, ptr %l13, !tbaa !27
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/views:Viewer", ptr %t253, i32 0, i32 0
  %t256 = load ptr, ptr %t255, !tbaa !29
  %t258 = getelementptr %"compiler/generic:Program", ptr %t256, i32 0, i32 0
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/load:Loader", ptr %t259, i32 0, i32 4
  %t262 = load ptr, ptr %t261, !tbaa !29
  store ptr %t262, ptr %l131, !tbaa !29
  %t263 = load i64, ptr %l12, !tbaa !24
  store i64 %t263, ptr %l132, !tbaa !24
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t266 = getelementptr %"compiler/views:view", ptr %t265, i32 0, i32 3
  %t267 = load %"compiler/source:Span", ptr %t266
  %t270 = call { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %t264, %"compiler/source:Span" %t267)
  store { i64, [3 x i64] } %t270, ptr %l135
  br label %bb60
bb60:
  %t271 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t271, ptr %l136, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t272, ptr %l137, !tbaa !27
  %t273 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t274 = getelementptr %"compiler/views:view", ptr %t273, i32 0, i32 7
  %t275 = load i64, ptr %t274, !tbaa !24
  %t276 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t279 = call { i64, ptr } @compiler_2fviews_2ecopyHint(ptr %s3, ptr %s3, i64 %t275, { i64, ptr } %t276)
  store { i64, ptr } %t279, ptr %l140
  br label %bb61
bb61:
  %t280 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 0
  %t282 = extractvalue { i64, ptr } %t280, 1
  %t283 = mul i64 %t281, 1
  %t284 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t284, ptr %t282, i64 %t283, i1 false)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  %t287 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t288 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t290 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsHere(ptr %s3, ptr %v0, ptr %s3, ptr %s3, { i64, ptr } %t287, { i64, ptr } %t288, { i64, ptr } %t286)
  store %"compiler/diagmsg:Msg" %t290, ptr %l142
  br label %bb62
bb62:
  %t291 = load ptr, ptr %l131, !tbaa !29
  %t292 = load i64, ptr %l132, !tbaa !24
  %t293 = load { i64, [3 x i64] }, ptr %l135
  %t294 = load %"compiler/diagmsg:Msg", ptr %l142
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s3, ptr %t291, i64 %t292, { i64, [3 x i64] } %t293, %"compiler/diagmsg:Msg" %t294)
  br label %bb63
bb63:
  %t295 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t296 = getelementptr %"compiler/views:view", ptr %t295, i32 0, i32 5
  %t297 = load i64, ptr %t296, !tbaa !24
  %t299 = icmp sge i64 %t297, 0
  br i1 %t299, label %bb64, label %bb65
bb64:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/views:Viewer", ptr %t301, i32 0, i32 6
  %t304 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t305 = getelementptr %"compiler/views:view", ptr %t304, i32 0, i32 5
  %t306 = load i64, ptr %t305, !tbaa !24
  %t309 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t303, i64 %t306)
  store i1 %t309, ptr %l149
  br label %bb66
bb65:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb67
bb66:
  %t310 = load i1, ptr %l149, !tbaa !21
  %t311 = xor i1 %t310, true
  store i1 %t311, ptr %l145, !tbaa !21
  br label %bb67
bb67:
  %t313 = load i1, ptr %l145, !tbaa !21
  br i1 %t313, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s8
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = getelementptr %"compiler/views:Viewer", ptr %t314, i32 0, i32 0
  %t317 = load ptr, ptr %t316, !tbaa !29
  %t319 = getelementptr %"compiler/generic:Program", ptr %t317, i32 0, i32 0
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t322 = getelementptr %"compiler/load:Loader", ptr %t320, i32 0, i32 4
  %t323 = load ptr, ptr %t322, !tbaa !29
  store ptr %t323, ptr %l154, !tbaa !29
  %t324 = load i64, ptr %l12, !tbaa !24
  store i64 %t324, ptr %l155, !tbaa !24
  %t325 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t326 = getelementptr %"compiler/views:view", ptr %t325, i32 0, i32 5
  %t327 = load i64, ptr %t326, !tbaa !24
  %t328 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t329 = getelementptr %"compiler/views:view", ptr %t328, i32 0, i32 6
  %t330 = getelementptr %"compiler/source:Span", ptr %t329, i32 0, i32 0
  %t331 = load i32, ptr %t330, !tbaa !23
  %t333 = sext i32 %t331 to i64
  %t334 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t335 = getelementptr %"compiler/views:view", ptr %t334, i32 0, i32 6
  %t336 = getelementptr %"compiler/source:Span", ptr %t335, i32 0, i32 1
  %t337 = load i32, ptr %t336, !tbaa !23
  %t339 = sext i32 %t337 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t340
  %t341 = getelementptr { i64, [3 x i64] }, ptr %t340, i32 0, i32 0
  store i64 3, ptr %t341
  %t343 = insertvalue { i64, i64, i64 } undef, i64 %t327, 0
  %t345 = insertvalue { i64, i64, i64 } %t343, i64 %t333, 1
  %t347 = insertvalue { i64, i64, i64 } %t345, i64 %t339, 2
  %t348 = getelementptr { i64, [3 x i64] }, ptr %t340, i32 0, i32 1
  store { i64, i64, i64 } %t347, ptr %t348
  %t349 = load { i64, [3 x i64] }, ptr %t340
  store { i64, [3 x i64] } %t349, ptr %l161
  %t350 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t352 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsInside(ptr %v0, ptr %s8, { i64, ptr } %t350)
  store %"compiler/diagmsg:Msg" %t352, ptr %l163
  br label %bb70
bb69:
  br label %bb72
bb70:
  %t353 = load ptr, ptr %l154, !tbaa !29
  %t354 = load i64, ptr %l155, !tbaa !24
  %t355 = load { i64, [3 x i64] }, ptr %l161
  %t356 = load %"compiler/diagmsg:Msg", ptr %l163
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s8, ptr %t353, i64 %t354, { i64, [3 x i64] } %t355, %"compiler/diagmsg:Msg" %t356)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s8)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb73:
  %t357 = load i64, ptr %l5, !tbaa !24
  %t359 = add i64 %t357, 1
  store i64 %t359, ptr %l5, !tbaa !24
  br label %bb10
bb74:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eviewsHeld(ptr %v0, ptr %a0) #0 {
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
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l48 = alloca ptr
  %l54 = alloca i1
  %l58 = alloca ptr
  %l64 = alloca i1
  %l68 = alloca ptr
  %l77 = alloca i64
  %l82 = alloca i64
  %l86 = alloca i64
  %l89 = alloca i64
  %l110 = alloca i64
  %l113 = alloca i1
  %l114 = alloca i64
  %l117 = alloca i64
  %l119 = alloca i1
  %l123 = alloca ptr
  %l129 = alloca i1
  %l136 = alloca i1
  %l137 = alloca i64
  %l140 = alloca i64
  %l142 = alloca i1
  %l146 = alloca ptr
  %l152 = alloca i1
  %l156 = alloca ptr
  %l164 = alloca ptr
  %l168 = alloca ptr
  %l171 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l184 = alloca i1
  %l185 = alloca i1
  %l190 = alloca i32
  %s8 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l20
  br label %bb1
bb1:
  %t6 = load i64, ptr %l20, !tbaa !24
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
  store i64 0, ptr %l24, !tbaa !24
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
  store i64 %t31, ptr %l27, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l27, !tbaa !24
  store i64 %t33, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l24, !tbaa !24
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
  br label %bb85
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
  %t55 = getelementptr %"compiler/views:Viewer", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l48
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l48, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 3
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/views:Viewer", ptr %t64, i32 0, i32 7
  %t67 = load i64, ptr %t66, !tbaa !24
  %t70 = icmp eq i64 %t63, %t67
  br i1 %t70, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb16
bb14:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/views:Viewer", ptr %t72, i32 0, i32 1
  %t75 = load i64, ptr %l6, !tbaa !24
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store ptr %t78, ptr %l58
  br label %bb15
bb15:
  %t79 = load ptr, ptr %l58, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t79, i32 0, i32 3
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/views:Viewer", ptr %t83, i32 0, i32 8
  %t86 = load i64, ptr %t85, !tbaa !24
  %t89 = icmp eq i64 %t82, %t86
  store i1 %t89, ptr %l54, !tbaa !21
  br label %bb16
bb16:
  %t91 = load i1, ptr %l54, !tbaa !21
  br i1 %t91, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb20
bb18:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/views:Viewer", ptr %t92, i32 0, i32 1
  %t95 = load i64, ptr %l6, !tbaa !24
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t94, i64 %t95)
  store ptr %t98, ptr %l68
  br label %bb19
bb19:
  %t99 = load ptr, ptr %l68, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Body", ptr %t99, i32 0, i32 3
  %t102 = load i64, ptr %t101, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/views:Viewer", ptr %t103, i32 0, i32 9
  %t106 = load i64, ptr %t105, !tbaa !24
  %t109 = icmp eq i64 %t102, %t106
  store i1 %t109, ptr %l64, !tbaa !21
  br label %bb20
bb20:
  %t111 = load i1, ptr %l64, !tbaa !21
  br i1 %t111, label %bb21, label %bb22
bb21:
  br label %bb84
bb22:
  br label %bb23
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/views:Viewer", ptr %t112, i32 0, i32 12
  %t115 = load i64, ptr %l6, !tbaa !24
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t114, i64 %t115)
  store i64 %t118, ptr %l77
  br label %bb24
bb24:
  %t119 = load i64, ptr %l77, !tbaa !24
  store i64 %t119, ptr %l7, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/views:Viewer", ptr %t120, i32 0, i32 12
  %t123 = load i64, ptr %l6, !tbaa !24
  %t125 = add i64 %t123, 1
  %t128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t122, i64 %t125)
  store i64 %t128, ptr %l82
  br label %bb25
bb25:
  %t129 = load i64, ptr %l82, !tbaa !24
  store i64 %t129, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t130 = load i64, ptr %l8, !tbaa !24
  %t131 = load i64, ptr %l7, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb26, label %bb27
bb26:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb31
bb28:
  %t140 = load i64, ptr %l8, !tbaa !24
  %t141 = load i64, ptr %l7, !tbaa !24
  %t144 = sub i64 %t140, %t141
  %t145 = load i64, ptr %l9, !tbaa !24
  %t148 = add i64 %t144, %t145
  %t150 = sub i64 %t148, 1
  %t151 = load i64, ptr %l9, !tbaa !24
  %t154 = sdiv i64 %t150, %t151
  store i64 %t154, ptr %l89, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb30
bb30:
  %t156 = load i64, ptr %l89, !tbaa !24
  store i64 %t156, ptr %l86, !tbaa !24
  br label %bb31
bb31:
  %t157 = load i64, ptr %l86, !tbaa !24
  store i64 %t157, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t158 = load i64, ptr %l11, !tbaa !24
  %t159 = load i64, ptr %l10, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb33, label %bb34
bb33:
  br label %bb83
bb34:
  br label %bb35
bb35:
  %t166 = load i64, ptr %l7, !tbaa !24
  %t167 = load i64, ptr %l11, !tbaa !24
  %t168 = load i64, ptr %l9, !tbaa !24
  %t171 = mul i64 %t167, %t168
  %t174 = add i64 %t166, %t171
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/views:Viewer", ptr %t176, i32 0, i32 13
  %t182 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t178, i64 %t174)
  store i64 %t182, ptr %l110
  br label %bb36
bb36:
  %t183 = load i64, ptr %l110, !tbaa !24
  store i64 %t183, ptr %l13, !tbaa !24
  %t184 = load i64, ptr %l13, !tbaa !24
  %t186 = icmp sge i64 %t184, 0
  br i1 %t186, label %bb37, label %bb38
bb37:
  %t188 = load i64, ptr %l13, !tbaa !24
  store i64 %t188, ptr %l114, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/views:Viewer", ptr %t189, i32 0, i32 1
  %t193 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t191)
  store i64 %t193, ptr %l117
  br label %bb39
bb38:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb40
bb39:
  %t194 = load i64, ptr %l114, !tbaa !24
  %t195 = load i64, ptr %l117, !tbaa !24
  %t196 = icmp slt i64 %t194, %t195
  store i1 %t196, ptr %l113, !tbaa !21
  br label %bb40
bb40:
  %t198 = load i1, ptr %l113, !tbaa !21
  br i1 %t198, label %bb41, label %bb42
bb41:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/views:Viewer", ptr %t199, i32 0, i32 1
  %t202 = load i64, ptr %l13, !tbaa !24
  %t205 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t201, i64 %t202)
  store ptr %t205, ptr %l123
  br label %bb43
bb42:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb44
bb43:
  %t206 = load ptr, ptr %l123, !tbaa !29
  %t208 = getelementptr %"compiler/typed:Body", ptr %t206, i32 0, i32 3
  %t209 = load i64, ptr %t208, !tbaa !24
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/views:Viewer", ptr %t210, i32 0, i32 9
  %t213 = load i64, ptr %t212, !tbaa !24
  %t216 = icmp eq i64 %t209, %t213
  store i1 %t216, ptr %l119, !tbaa !21
  br label %bb44
bb44:
  %t218 = load i1, ptr %l119, !tbaa !21
  br i1 %t218, label %bb45, label %bb46
bb45:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/views:Viewer", ptr %t219, i32 0, i32 9
  %t222 = load i64, ptr %t221, !tbaa !24
  %t224 = icmp sge i64 %t222, 0
  store i1 %t224, ptr %l129, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb47
bb47:
  %t226 = load i1, ptr %l129, !tbaa !21
  br i1 %t226, label %bb48, label %bb49
bb48:
  store i1 true, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t228 = load i64, ptr %l13, !tbaa !24
  %t230 = icmp slt i64 %t228, 0
  br i1 %t230, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb54
bb52:
  %t232 = load i64, ptr %l13, !tbaa !24
  store i64 %t232, ptr %l137, !tbaa !24
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/views:Viewer", ptr %t233, i32 0, i32 1
  %t237 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t235)
  store i64 %t237, ptr %l140
  br label %bb53
bb53:
  %t238 = load i64, ptr %l137, !tbaa !24
  %t239 = load i64, ptr %l140, !tbaa !24
  %t240 = icmp sge i64 %t238, %t239
  store i1 %t240, ptr %l136, !tbaa !21
  br label %bb54
bb54:
  %t242 = load i1, ptr %l136, !tbaa !21
  br i1 %t242, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l142, !tbaa !21
  br label %bb62
bb56:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/views:Viewer", ptr %t243, i32 0, i32 1
  %t246 = load i64, ptr %l13, !tbaa !24
  %t249 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t245, i64 %t246)
  store ptr %t249, ptr %l146
  br label %bb57
bb57:
  %t250 = load ptr, ptr %l146, !tbaa !29
  %t252 = getelementptr %"compiler/typed:Body", ptr %t250, i32 0, i32 3
  %t253 = load i64, ptr %t252, !tbaa !24
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/views:Viewer", ptr %t254, i32 0, i32 7
  %t257 = load i64, ptr %t256, !tbaa !24
  %t260 = icmp ne i64 %t253, %t257
  br i1 %t260, label %bb58, label %bb59
bb58:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/views:Viewer", ptr %t262, i32 0, i32 1
  %t265 = load i64, ptr %l13, !tbaa !24
  %t268 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t264, i64 %t265)
  store ptr %t268, ptr %l156
  br label %bb60
bb59:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb61
bb60:
  %t269 = load ptr, ptr %l156, !tbaa !29
  %t271 = getelementptr %"compiler/typed:Body", ptr %t269, i32 0, i32 3
  %t272 = load i64, ptr %t271, !tbaa !24
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/views:Viewer", ptr %t273, i32 0, i32 8
  %t276 = load i64, ptr %t275, !tbaa !24
  %t279 = icmp ne i64 %t272, %t276
  store i1 %t279, ptr %l152, !tbaa !21
  br label %bb61
bb61:
  %t281 = load i1, ptr %l152, !tbaa !21
  store i1 %t281, ptr %l142, !tbaa !21
  br label %bb62
bb62:
  %t282 = load i1, ptr %l142, !tbaa !21
  br i1 %t282, label %bb63, label %bb64
bb63:
  br label %bb82
bb64:
  br label %bb65
bb65:
  store %olang.scope zeroinitializer, ptr %s8
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/views:Viewer", ptr %t283, i32 0, i32 0
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t288 = getelementptr %"compiler/generic:Program", ptr %t286, i32 0, i32 2
  store ptr %t288, ptr %l164, !tbaa !29
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/views:Viewer", ptr %t289, i32 0, i32 1
  %t292 = load i64, ptr %l13, !tbaa !24
  %t295 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t291, i64 %t292)
  store ptr %t295, ptr %l168
  br label %bb66
bb66:
  %t296 = load ptr, ptr %l168, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Body", ptr %t296, i32 0, i32 2
  %t299 = load i32, ptr %t298, !tbaa !23
  %t300 = load ptr, ptr %l164, !tbaa !29
  %t302 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s8, ptr %t300, i32 %t299)
  store { i64, ptr } %t302, ptr %l171
  br label %bb67
bb67:
  %t303 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t303, 0
  %t305 = extractvalue { i64, ptr } %t303, 1
  %t306 = mul i64 %t304, 4
  %t307 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t306)
  call void @llvm.memcpy.p0.p0.i64(ptr %t307, ptr %t305, i64 %t306, i1 false)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  store { i64, ptr } %t309, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t311 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t311, 0
  store i64 %t313, ptr %l16, !tbaa !24
  br label %bb68
bb68:
  %t315 = load i64, ptr %l15, !tbaa !24
  %t316 = load i64, ptr %l16, !tbaa !24
  %t319 = icmp slt i64 %t315, %t316
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb69, label %bb70
bb69:
  br label %bb81
bb70:
  br label %bb71
bb71:
  %t323 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t323, ptr %l179, !tbaa !27
  %t324 = load i64, ptr %l15, !tbaa !24
  %t326 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = getelementptr i32, ptr %t327, i64 %t324
  %t329 = load i32, ptr %t328, !tbaa !33
  store i32 %t329, ptr %l17, !tbaa !23
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load i32, ptr %l17, !tbaa !23
  %t335 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earrayish(ptr %v0, ptr %t331, i32 %t332)
  store i1 %t335, ptr %l184
  br label %bb72
bb72:
  %t336 = load i1, ptr %l184, !tbaa !21
  br i1 %t336, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l185, !tbaa !21
  br label %bb76
bb74:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/views:Viewer", ptr %t337, i32 0, i32 0
  %t340 = load ptr, ptr %t339, !tbaa !29
  %t342 = getelementptr %"compiler/generic:Program", ptr %t340, i32 0, i32 2
  %t343 = load i32, ptr %l17, !tbaa !23
  %t346 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t342, i32 %t343)
  store i32 %t346, ptr %l190
  br label %bb75
bb75:
  %t347 = load i32, ptr %l190, !range !{i32 0, i32 33}
  %t349 = trunc i64 20 to i32
  %t350 = icmp eq i32 %t347, %t349
  store i1 %t350, ptr %l185, !tbaa !21
  br label %bb76
bb76:
  %t352 = load i1, ptr %l185, !tbaa !21
  br i1 %t352, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s8)
  store i1 true, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t354 = load i64, ptr %l15, !tbaa !24
  %t356 = add i64 %t354, 1
  store i64 %t356, ptr %l15, !tbaa !24
  br label %bb68
bb81:
  call void @__olang_scope_close(ptr %s8)
  br label %bb82
bb82:
  %t358 = load i64, ptr %l11, !tbaa !24
  %t360 = add i64 %t358, 1
  store i64 %t360, ptr %l11, !tbaa !24
  br label %bb32
bb83:
  br label %bb84
bb84:
  %t362 = load i64, ptr %l5, !tbaa !24
  %t364 = add i64 %t362, 1
  store i64 %t364, ptr %l5, !tbaa !24
  br label %bb8
bb85:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalk(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/typed:Local"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/views:state"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca %"compiler/views:holding"
  %l31 = alloca ptr
  %l35 = alloca i1
  %l39 = alloca i1
  %l43 = alloca ptr
  %l52 = alloca ptr
  %l58 = alloca i1
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca %"compiler/typed:Local"
  %l86 = alloca i64
  %l90 = alloca i64
  %l93 = alloca i64
  %l112 = alloca ptr
  %l116 = alloca i32
  %l121 = alloca %"compiler/views:state"
  %l126 = alloca i64
  %l130 = alloca i64
  %l133 = alloca i64
  %l154 = alloca i32
  %l156 = alloca ptr
  %l160 = alloca %"compiler/typed:Local"
  %l162 = alloca i1
  %l163 = alloca ptr
  %l164 = alloca i64
  %l167 = alloca %"compiler/views:place"
  %l171 = alloca %"compiler/typed:Local"
  %l174 = alloca %"compiler/views:view"
  %l175 = alloca %"compiler/views:holding"
  %l183 = alloca i1
  %l191 = alloca i64
  %l193 = alloca i64
  %l198 = alloca i32
  %l200 = alloca i64
  %l202 = alloca i64
  %l207 = alloca %"compiler/views:holding"
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %t191 = alloca %"compiler/views:state", align 8
  %t275 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l31
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l31, !tbaa !29
  %t10 = getelementptr %"compiler/views:summary", ptr %t8, i32 0, i32 4
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/views:Viewer", ptr %t15, i32 0, i32 33
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t17, i64 %t18)
  store i1 %t21, ptr %l39
  br label %bb4
bb4:
  %t22 = load i1, ptr %l39, !tbaa !21
  store i1 %t22, ptr %l35, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l35, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/views:Viewer", ptr %t24, i32 0, i32 1
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store ptr %t30, ptr %l43
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l43, !tbaa !29
  store ptr %t31, ptr %l3, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr %"compiler/views:Viewer", ptr %t32, i32 0, i32 21
  store ptr %t33, ptr %t37, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t42 = getelementptr %"compiler/views:Viewer", ptr %t38, i32 0, i32 22
  store i64 %t39, ptr %t42, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i1, ptr %l2, !tbaa !21
  %t47 = getelementptr %"compiler/views:Viewer", ptr %t43, i32 0, i32 23
  store i1 %t44, ptr %t47, !tbaa !21
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/views:Viewer", ptr %t48, i32 0, i32 24
  store i1 false, ptr %t50, !tbaa !21
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l52, !tbaa !29
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 3
  %t55 = load i64, ptr %t54, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/views:Viewer", ptr %t56, i32 0, i32 7
  %t59 = load i64, ptr %t58, !tbaa !24
  %t62 = icmp eq i64 %t55, %t59
  br i1 %t62, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb12
bb11:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Body", ptr %t64, i32 0, i32 3
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/views:Viewer", ptr %t68, i32 0, i32 9
  %t71 = load i64, ptr %t70, !tbaa !24
  %t74 = icmp eq i64 %t67, %t71
  store i1 %t74, ptr %l58, !tbaa !21
  br label %bb12
bb12:
  %t76 = load i1, ptr %l58, !tbaa !21
  %t77 = load ptr, ptr %l52, !tbaa !29
  %t78 = getelementptr %"compiler/views:Viewer", ptr %t77, i32 0, i32 25
  store i1 %t76, ptr %t78, !tbaa !21
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/views:Viewer", ptr %t79, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__Hfc8ba67df4afabc6715fbd3122f62db9(ptr %v0, ptr %t81)
  br label %bb13
bb13:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/views:Viewer", ptr %t83, i32 0, i32 29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %t85)
  br label %bb14
bb14:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/views:Viewer", ptr %t87, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t89)
  br label %bb15
bb15:
  %t91 = load ptr, ptr %l3, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Body", ptr %t91, i32 0, i32 7
  store ptr %t93, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  %t95 = load i64, ptr %l5, !tbaa !24
  store i64 %t95, ptr %l72, !tbaa !24
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l74
  br label %bb17
bb17:
  %t99 = load i64, ptr %l72, !tbaa !24
  %t100 = load i64, ptr %l74, !tbaa !24
  %t101 = icmp slt i64 %t99, %t100
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  br label %bb20
bb20:
  %t105 = load ptr, ptr %l4, !tbaa !29
  %t106 = load i64, ptr %l5, !tbaa !24
  %t109 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t105, i64 %t106)
  store %"compiler/typed:Local" %t109, ptr %l79
  br label %bb21
bb21:
  %t110 = load %"compiler/typed:Local", ptr %l79
  store %"compiler/typed:Local" %t110, ptr %l6
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/views:Viewer", ptr %t111, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t113, i64 -1)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t115 = load i64, ptr %l5, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l5, !tbaa !24
  br label %bb16
bb24:
  store i64 0, ptr %l7, !tbaa !24
  %t119 = load ptr, ptr %l3, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Body", ptr %t119, i32 0, i32 5
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t121)
  store i64 %t123, ptr %l86
  br label %bb25
bb25:
  %t124 = load i64, ptr %l86, !tbaa !24
  store i64 %t124, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load i64, ptr %l7, !tbaa !24
  %t129 = icmp sgt i64 %t125, %t126
  br i1 %t129, label %bb26, label %bb27
bb26:
  %t131 = load i64, ptr %l9, !tbaa !24
  %t133 = icmp sgt i64 %t131, 0
  br i1 %t133, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb31
bb28:
  %t135 = load i64, ptr %l8, !tbaa !24
  %t136 = load i64, ptr %l7, !tbaa !24
  %t139 = sub i64 %t135, %t136
  %t140 = load i64, ptr %l9, !tbaa !24
  %t143 = add i64 %t139, %t140
  %t145 = sub i64 %t143, 1
  %t146 = load i64, ptr %l9, !tbaa !24
  %t149 = sdiv i64 %t145, %t146
  store i64 %t149, ptr %l93, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb30
bb30:
  %t151 = load i64, ptr %l93, !tbaa !24
  store i64 %t151, ptr %l90, !tbaa !24
  br label %bb31
bb31:
  %t152 = load i64, ptr %l90, !tbaa !24
  store i64 %t152, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t153 = load i64, ptr %l11, !tbaa !24
  %t154 = load i64, ptr %l10, !tbaa !24
  %t157 = icmp slt i64 %t153, %t154
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb33, label %bb34
bb33:
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t161 = load i64, ptr %l7, !tbaa !24
  %t162 = load i64, ptr %l11, !tbaa !24
  %t163 = load i64, ptr %l9, !tbaa !24
  %t166 = mul i64 %t162, %t163
  %t169 = add i64 %t161, %t166
  store i64 %t169, ptr %l12, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/views:Viewer", ptr %t171, i32 0, i32 27
  store ptr %t173, ptr %l112, !tbaa !29
  %t174 = load ptr, ptr %l3, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Body", ptr %t174, i32 0, i32 5
  %t177 = load i64, ptr %l12, !tbaa !24
  %t180 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t176, i64 %t177)
  store i32 %t180, ptr %l116
  br label %bb36
bb36:
  %t181 = load i32, ptr %l116, !tbaa !23
  %t182 = sext i32 %t181 to i64
  %t183 = load i64, ptr %l12, !tbaa !24
  %t184 = load ptr, ptr %l112, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t184, i64 %t182, i64 %t183)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t187 = load i64, ptr %l11, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l11, !tbaa !24
  br label %bb32
bb39:
  call void @compiler_2fviews_3astate_2ector(ptr %t191, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l121, ptr %t191, i64 136, i1 false)
  br label %bb40
bb40:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l121, i64 136, i1 false)
  %t192 = load i1, ptr %l2, !tbaa !21
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb41, label %bb42
bb41:
  store i64 0, ptr %l14, !tbaa !24
  %t196 = load ptr, ptr %l3, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Body", ptr %t196, i32 0, i32 5
  %t200 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t198)
  store i64 %t200, ptr %l126
  br label %bb43
bb42:
  br label %bb67
bb43:
  %t201 = load i64, ptr %l126, !tbaa !24
  store i64 %t201, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t202 = load i64, ptr %l15, !tbaa !24
  %t203 = load i64, ptr %l14, !tbaa !24
  %t206 = icmp sgt i64 %t202, %t203
  br i1 %t206, label %bb44, label %bb45
bb44:
  %t208 = load i64, ptr %l16, !tbaa !24
  %t210 = icmp sgt i64 %t208, 0
  br i1 %t210, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb49
bb46:
  %t212 = load i64, ptr %l15, !tbaa !24
  %t213 = load i64, ptr %l14, !tbaa !24
  %t216 = sub i64 %t212, %t213
  %t217 = load i64, ptr %l16, !tbaa !24
  %t220 = add i64 %t216, %t217
  %t222 = sub i64 %t220, 1
  %t223 = load i64, ptr %l16, !tbaa !24
  %t226 = sdiv i64 %t222, %t223
  store i64 %t226, ptr %l133, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb48
bb48:
  %t228 = load i64, ptr %l133, !tbaa !24
  store i64 %t228, ptr %l130, !tbaa !24
  br label %bb49
bb49:
  %t229 = load i64, ptr %l130, !tbaa !24
  store i64 %t229, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb50
bb50:
  %t230 = load i64, ptr %l18, !tbaa !24
  %t231 = load i64, ptr %l17, !tbaa !24
  %t234 = icmp slt i64 %t230, %t231
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb51, label %bb52
bb51:
  br label %bb66
bb52:
  br label %bb53
bb53:
  %t238 = load i64, ptr %l14, !tbaa !24
  %t239 = load i64, ptr %l18, !tbaa !24
  %t240 = load i64, ptr %l16, !tbaa !24
  %t243 = mul i64 %t239, %t240
  %t246 = add i64 %t238, %t243
  store i64 %t246, ptr %l19, !tbaa !24
  %t248 = load ptr, ptr %l3, !tbaa !29
  %t250 = getelementptr %"compiler/typed:Body", ptr %t248, i32 0, i32 5
  %t251 = load i64, ptr %l19, !tbaa !24
  %t254 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t250, i64 %t251)
  store i32 %t254, ptr %l154
  br label %bb54
bb54:
  %t255 = load i32, ptr %l154, !tbaa !23
  %t256 = sext i32 %t255 to i64
  store i64 %t256, ptr %l20, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l156, !tbaa !29
  %t259 = load ptr, ptr %l3, !tbaa !29
  %t261 = getelementptr %"compiler/typed:Body", ptr %t259, i32 0, i32 7
  %t262 = load i64, ptr %l20, !tbaa !24
  %t265 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t261, i64 %t262)
  store %"compiler/typed:Local" %t265, ptr %l160
  br label %bb55
bb55:
  %t266 = getelementptr %"compiler/typed:Local", ptr %l160, i32 0, i32 2
  %t267 = load i32, ptr %t266, !tbaa !23
  %t268 = load ptr, ptr %l156, !tbaa !29
  %t270 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t268, i32 %t267)
  store i1 %t270, ptr %l162
  br label %bb56
bb56:
  %t271 = load i1, ptr %l162, !tbaa !21
  br i1 %t271, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s11
  %t272 = getelementptr %"compiler/views:state", ptr %l13, i32 0, i32 1
  store ptr %t272, ptr %l163, !tbaa !29
  %t273 = load i64, ptr %l20, !tbaa !24
  store i64 %t273, ptr %l164, !tbaa !24
  %t274 = load i64, ptr %l19, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t275
  %t276 = getelementptr { i64, [2 x i64] }, ptr %t275, i32 0, i32 0
  store i64 4, ptr %t276
  %t278 = insertvalue { i64 } undef, i64 %t274, 0
  %t279 = getelementptr { i64, [2 x i64] }, ptr %t275, i32 0, i32 1
  store { i64 } %t278, ptr %t279
  %t280 = load { i64, [2 x i64] }, ptr %t275
  %t282 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s11, { i64, [2 x i64] } %t280, i64 0, i64 0, i1 false)
  store %"compiler/views:place" %t282, ptr %l167
  br label %bb59
bb58:
  br label %bb64
bb59:
  %t283 = load ptr, ptr %l3, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Body", ptr %t283, i32 0, i32 7
  %t286 = load i64, ptr %l20, !tbaa !24
  %t289 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t285, i64 %t286)
  store %"compiler/typed:Local" %t289, ptr %l171
  br label %bb60
bb60:
  %t290 = getelementptr %"compiler/typed:Local", ptr %l171, i32 0, i32 1
  %t291 = getelementptr %"compiler/source:Span", ptr %t290, i32 0, i32 0
  %t292 = load i32, ptr %t291, !tbaa !23
  %t294 = sext i32 %t292 to i64
  %t295 = load %"compiler/views:place", ptr %l167
  %t297 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s11, %"compiler/views:place" %t295, i64 %t294)
  store %"compiler/views:view" %t297, ptr %l174
  br label %bb61
bb61:
  %t298 = load i64, ptr %l164, !tbaa !24
  %t299 = load %"compiler/views:view", ptr %l174
  %t300 = call %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %s11, i64 %t298, %"compiler/views:view" %t299)
  store %"compiler/views:holding" %t300, ptr %l175
  br label %bb62
bb62:
  %t301 = load ptr, ptr %l163, !tbaa !29
  %t302 = load %"compiler/views:holding", ptr %l175
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ePush_3ccompiler_2fviews_3aholding_3e(ptr %s0, ptr %t301, %"compiler/views:holding" %t302)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s11)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t303 = load i64, ptr %l18, !tbaa !24
  %t305 = add i64 %t303, 1
  store i64 %t305, ptr %l18, !tbaa !24
  br label %bb50
bb66:
  br label %bb67
bb67:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load ptr, ptr %l3, !tbaa !29
  %t310 = getelementptr %"compiler/typed:Body", ptr %t308, i32 0, i32 11
  %t311 = load ptr, ptr %t310, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v0, ptr %s0, ptr %t307, ptr %t311, ptr %l13)
  br label %bb68
bb68:
  %t315 = load i1, ptr %l2, !tbaa !21
  br i1 %t315, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l183, !tbaa !21
  br label %bb71
bb70:
  %t317 = getelementptr %"compiler/views:state", ptr %l13, i32 0, i32 0
  %t318 = load i1, ptr %t317, !tbaa !21
  store i1 %t318, ptr %l183, !tbaa !21
  br label %bb71
bb71:
  %t320 = load i1, ptr %l183, !tbaa !21
  br i1 %t320, label %bb72, label %bb73
bb72:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb73:
  br label %bb74
bb74:
  %t321 = load ptr, ptr %l3, !tbaa !29
  %t323 = getelementptr %"compiler/typed:Body", ptr %t321, i32 0, i32 1
  %t324 = load { i64, [2 x i64] }, ptr %t323
  %t328 = extractvalue { i64, [2 x i64] } %t324, 0
  %t329 = icmp eq i64 %t328, 1
  br i1 %t329, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb98
bb77:
  %t331 = load ptr, ptr %l3, !tbaa !29
  %t333 = getelementptr %"compiler/typed:Body", ptr %t331, i32 0, i32 10
  store ptr %t333, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb78
bb78:
  %t335 = load i64, ptr %l23, !tbaa !24
  store i64 %t335, ptr %l191, !tbaa !24
  %t336 = load ptr, ptr %l22, !tbaa !29
  %t338 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t336)
  store i64 %t338, ptr %l193
  br label %bb79
bb79:
  %t339 = load i64, ptr %l191, !tbaa !24
  %t340 = load i64, ptr %l193, !tbaa !24
  %t341 = icmp slt i64 %t339, %t340
  %t343 = xor i1 %t341, true
  br i1 %t343, label %bb80, label %bb81
bb80:
  br label %bb97
bb81:
  br label %bb82
bb82:
  %t345 = load ptr, ptr %l22, !tbaa !29
  %t346 = load i64, ptr %l23, !tbaa !24
  %t349 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t345, i64 %t346)
  store i32 %t349, ptr %l198
  br label %bb83
bb83:
  %t350 = load i32, ptr %l198, !tbaa !23
  store i32 %t350, ptr %l24, !tbaa !23
  %t351 = getelementptr %"compiler/views:state", ptr %l13, i32 0, i32 1
  store ptr %t351, ptr %l25, !tbaa !29
  store i64 0, ptr %l26, !tbaa !24
  br label %bb84
bb84:
  %t353 = load i64, ptr %l26, !tbaa !24
  store i64 %t353, ptr %l200, !tbaa !24
  %t354 = load ptr, ptr %l25, !tbaa !29
  %t356 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %s0, ptr %t354)
  store i64 %t356, ptr %l202
  br label %bb85
bb85:
  %t357 = load i64, ptr %l200, !tbaa !24
  %t358 = load i64, ptr %l202, !tbaa !24
  %t359 = icmp slt i64 %t357, %t358
  %t361 = xor i1 %t359, true
  br i1 %t361, label %bb86, label %bb87
bb86:
  br label %bb95
bb87:
  br label %bb88
bb88:
  %t363 = load ptr, ptr %l25, !tbaa !29
  %t364 = load i64, ptr %l26, !tbaa !24
  %t367 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %s0, ptr %t363, i64 %t364)
  store %"compiler/views:holding" %t367, ptr %l207
  br label %bb89
bb89:
  %t368 = load %"compiler/views:holding", ptr %l207
  store %"compiler/views:holding" %t368, ptr %l27
  %t369 = getelementptr %"compiler/views:holding", ptr %l27, i32 0, i32 0
  %t370 = load i64, ptr %t369, !tbaa !24
  %t371 = load i32, ptr %l24, !tbaa !23
  %t373 = sext i32 %t371 to i64
  %t376 = icmp eq i64 %t370, %t373
  br i1 %t376, label %bb90, label %bb91
bb90:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/views:holding", ptr %l27, i32 0, i32 1
  %t380 = load %"compiler/views:view", ptr %t379
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2epasses(ptr %v0, ptr %t378, %"compiler/views:view" %t380)
  br label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t383 = load i64, ptr %l26, !tbaa !24
  %t385 = add i64 %t383, 1
  store i64 %t385, ptr %l26, !tbaa !24
  br label %bb84
bb95:
  br label %bb96
bb96:
  %t387 = load i64, ptr %l23, !tbaa !24
  %t389 = add i64 %t387, 1
  store i64 %t389, ptr %l23, !tbaa !24
  br label %bb78
bb97:
  br label %bb103
bb98:
  br i1 true, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_58304325d16d56e1_1ac2a884e74450d5)
  unreachable
bb103:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca %"compiler/views:state"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"compiler/views:state"
  %t1 = alloca %"compiler/views:state", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fviews_3astate_2ector(ptr %t1, ptr %v1)
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %t1, i64 136, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 136, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l2, i64 136, i1 false)
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/views:state", ptr %t4, i32 0, i32 0
  %t7 = load i1, ptr %t6, !tbaa !21
  %t9 = load ptr, ptr %lp1
  %t10 = getelementptr %"compiler/views:state", ptr %t9, i32 0, i32 0
  store i1 %t7, ptr %t10, !tbaa !21
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/views:state", ptr %t11, i32 0, i32 1
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t13
  %t16 = load ptr, ptr %lp1
  %t17 = getelementptr %"compiler/views:state", ptr %t16, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %t17
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/views:state", ptr %t18, i32 0, i32 2
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20
  %t23 = load ptr, ptr %lp1
  %t24 = getelementptr %"compiler/views:state", ptr %t23, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %t24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/views:state", ptr %t25, i32 0, i32 3
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t27
  %t29 = load ptr, ptr %lp1
  %t30 = getelementptr %"compiler/views:state", ptr %t29, i32 0, i32 3
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l11
  %t33 = load ptr, ptr %lp1
  %t34 = getelementptr %"compiler/views:state", ptr %t33, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %t34
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3astate_2e3
  br i1 %t35, label %bb2, label %bb3
bb2:
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  call void @__olang_region_drop(ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l11
  br label %bb3
bb3:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/views:state", ptr %t43, i32 0, i32 4
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t45
  %t48 = load ptr, ptr %lp1
  %t49 = getelementptr %"compiler/views:state", ptr %t48, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %t49
  %t50 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %t50, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l15, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3astate_2eunname(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/views:naming"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"compiler/views:naming"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:state", ptr %t1, i32 0, i32 2
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l11
  %t6 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e(ptr %s0, ptr %l11)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l2
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:state", ptr %t8, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eClear_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t10)
  br label %bb2
bb2:
  store ptr %l2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  store i64 %t13, ptr %l17, !tbaa !24
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %s0, ptr %t14)
  store i64 %t16, ptr %l19
  br label %bb4
bb4:
  %t17 = load i64, ptr %l17, !tbaa !24
  %t18 = load i64, ptr %l19, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb14
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = call %"compiler/views:naming" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eAt_3ccompiler_2fviews_3anaming_3e(ptr %s0, ptr %t23, i64 %t24)
  store %"compiler/views:naming" %t27, ptr %l24
  br label %bb8
bb8:
  %t28 = load %"compiler/views:naming", ptr %l24
  store %"compiler/views:naming" %t28, ptr %l5
  %t29 = getelementptr %"compiler/views:naming", ptr %l5, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = icmp ne i64 %t30, %t31
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/views:state", ptr %t36, i32 0, i32 2
  %t39 = load %"compiler/views:naming", ptr %l5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2ePush_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t38, %"compiler/views:naming" %t39)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb3
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/views:state", ptr %t46, i32 0, i32 3
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l34
  %t51 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l34)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, ptr %l36
  br label %bb15
bb15:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l6
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/views:state", ptr %t53, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t55)
  br label %bb16
bb16:
  store ptr %l6, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb17
bb17:
  %t58 = load i64, ptr %l8, !tbaa !24
  store i64 %t58, ptr %l40, !tbaa !24
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t59)
  store i64 %t61, ptr %l42
  br label %bb18
bb18:
  %t62 = load i64, ptr %l40, !tbaa !24
  %t63 = load i64, ptr %l42, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb19, label %bb20
bb19:
  br label %bb28
bb20:
  br label %bb21
bb21:
  %t68 = load ptr, ptr %l7, !tbaa !29
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l47
  br label %bb22
bb22:
  %t73 = load i64, ptr %l47, !tbaa !24
  store i64 %t73, ptr %l9, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l1, !tbaa !24
  %t78 = icmp ne i64 %t74, %t75
  br i1 %t78, label %bb23, label %bb24
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/views:state", ptr %t80, i32 0, i32 3
  %t83 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t82, i64 %t83)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t86 = load i64, ptr %l8, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l8, !tbaa !24
  br label %bb17
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2eplaceAdd(ptr %v0, ptr %a0, %"compiler/views:place" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:place"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca %"compiler/views:place"
  %l14 = alloca %"compiler/views:place"
  %l16 = alloca %"compiler/views:place"
  %l18 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/views:place" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l8
  br label %bb2
bb2:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l8, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %t13, i64 %t14)
  store %"compiler/views:place" %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load %"compiler/views:place", ptr %l13
  store %"compiler/views:place" %t18, ptr %l14
  %t20 = load %"compiler/views:place", ptr %l1
  store %"compiler/views:place" %t20, ptr %l16
  %t23 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aplace(ptr %l14, ptr %l16)
  store i1 %t23, ptr %l18
  br label %bb7
bb7:
  %t24 = load i1, ptr %l18, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = add i64 %t25, 1
  store i64 %t27, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load %"compiler/views:place", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %t29, %"compiler/views:place" %t30)
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fviews_2ereal({ i64, [2 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb7
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l0
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 2
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  %t11 = load { i64, [2 x i64] }, ptr %l0
  %t13 = extractvalue { i64, [2 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 3
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_cc40afa1f47574c5_1b87777640286ce9)
  unreachable
bb13:
  %t16 = load i1, ptr %l1, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fviews_2etaskCopy(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = icmp eq i64 %a0, 2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t9 = extractvalue { i64, ptr } %t5, 1
  %t10 = extractvalue { i64, ptr } %t5, 0
  %t11 = add i64 %t7, %t10
  %t12 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t6, i64 %t7)
  %t16 = getelementptr i8, ptr %t15, i64 %t7
  call void @olang_textcopy(ptr %t16, ptr %t9, i64 %t10)
  %t17 = getelementptr i8, ptr %t16, i64 %t10
  call void @olang_textcopy(ptr %t17, ptr %t12, i64 %t13)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t15, 1
  store { i64, ptr } %t19, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  call void @olang_textcopy(ptr %t32, ptr %t25, i64 %t26)
  %t33 = getelementptr i8, ptr %t32, i64 %t26
  call void @olang_textcopy(ptr %t33, ptr %t28, i64 %t29)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  store { i64, ptr } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fviews_2eviewAdd(ptr %v0, ptr %a0, %"compiler/views:view" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:view"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/views:view"
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l37 = alloca %"compiler/views:view"
  %l41 = alloca i1
  %l42 = alloca %"compiler/views:place"
  %l44 = alloca %"compiler/views:place"
  %l46 = alloca i1
  %l49 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/views:view" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i64, ptr %l10, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l14, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb28
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %t51, i64 %t52)
  store %"compiler/views:view" %t55, ptr %l37
  br label %bb12
bb12:
  %t56 = load %"compiler/views:view", ptr %l37
  store %"compiler/views:view" %t56, ptr %l8
  %t57 = getelementptr %"compiler/views:view", ptr %l8, i32 0, i32 1
  %t58 = load i64, ptr %t57, !tbaa !24
  %t59 = getelementptr %"compiler/views:view", ptr %l1, i32 0, i32 1
  %t60 = load i64, ptr %t59, !tbaa !24
  %t63 = icmp ne i64 %t58, %t60
  br i1 %t63, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb16
bb14:
  %t65 = getelementptr %"compiler/views:view", ptr %l8, i32 0, i32 0
  %t66 = load %"compiler/views:place", ptr %t65
  store %"compiler/views:place" %t66, ptr %l42
  %t67 = getelementptr %"compiler/views:view", ptr %l1, i32 0, i32 0
  %t68 = load %"compiler/views:place", ptr %t67
  store %"compiler/views:place" %t68, ptr %l44
  %t71 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aplace(ptr %l42, ptr %l44)
  store i1 %t71, ptr %l46
  br label %bb15
bb15:
  %t72 = load i1, ptr %l46, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t75 = load i1, ptr %l41, !tbaa !21
  br i1 %t75, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  br label %bb19
bb19:
  %t76 = getelementptr %"compiler/views:view", ptr %l1, i32 0, i32 2
  %t77 = load i1, ptr %t76, !tbaa !21
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t79 = getelementptr %"compiler/views:view", ptr %l8, i32 0, i32 2
  %t80 = load i1, ptr %t79, !tbaa !21
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l49, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb22
bb22:
  %t84 = load i1, ptr %l49, !tbaa !21
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l7, !tbaa !24
  %t87 = load %"compiler/views:view", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eSetAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %t85, i64 %t86, %"compiler/views:view" %t87)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %ret
bb27:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l6, !tbaa !24
  br label %bb8
bb28:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load %"compiler/views:view", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ePush_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %t95, %"compiler/views:view" %t96)
  br label %bb29
bb29:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fviews_2eweight(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/views:holding"
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l23 = alloca i64
  %l25 = alloca i64
  %l30 = alloca %"compiler/views:holding"
  %l31 = alloca i64
  %l33 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:state", ptr %t1, i32 0, i32 0
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/views:state", ptr %t7, i32 0, i32 4
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l10
  br label %bb4
bb4:
  %t12 = load i64, ptr %l10, !tbaa !24
  %t13 = add i64 1, %t12
  store i64 %t13, ptr %l11, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:state", ptr %t14, i32 0, i32 2
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l14
  br label %bb5
bb5:
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = mul i64 2, %t19
  %t21 = load i64, ptr %l11, !tbaa !24
  %t23 = add i64 %t21, %t20
  store i64 %t23, ptr %l16, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/views:state", ptr %t24, i32 0, i32 3
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l19
  br label %bb6
bb6:
  %t29 = load i64, ptr %l16, !tbaa !24
  %t30 = load i64, ptr %l19, !tbaa !24
  %t31 = add i64 %t29, %t30
  store i64 %t31, ptr %l1, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/views:state", ptr %t33, i32 0, i32 1
  store ptr %t35, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l3, !tbaa !24
  store i64 %t37, ptr %l23, !tbaa !24
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l25
  br label %bb8
bb8:
  %t41 = load i64, ptr %l23, !tbaa !24
  %t42 = load i64, ptr %l25, !tbaa !24
  %t43 = icmp slt i64 %t41, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t48 = load i64, ptr %l3, !tbaa !24
  %t51 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t47, i64 %t48)
  store %"compiler/views:holding" %t51, ptr %l30
  br label %bb12
bb12:
  %t52 = load %"compiler/views:holding", ptr %l30
  store %"compiler/views:holding" %t52, ptr %l4
  %t53 = load i64, ptr %l1, !tbaa !24
  store i64 %t53, ptr %l31, !tbaa !24
  %t54 = getelementptr %"compiler/views:holding", ptr %l4, i32 0, i32 1
  %t55 = getelementptr %"compiler/views:view", ptr %t54, i32 0, i32 2
  %t56 = load i1, ptr %t55, !tbaa !21
  br i1 %t56, label %bb13, label %bb14
bb13:
  store i64 5, ptr %l33, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l33, !tbaa !24
  %t59 = add i64 3, %t58
  %t60 = load i64, ptr %l31, !tbaa !24
  %t62 = add i64 %t60, %t59
  store i64 %t62, ptr %l1, !tbaa !24
  br label %bb16
bb16:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l3, !tbaa !24
  br label %bb7
bb17:
  %t68 = load i64, ptr %l1, !tbaa !24
  store i64 %t68, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/views:loopFrame" @compiler_2fviews_3aloopFrame_2ector(ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/views:loopFrame"
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l1, !tbaa !23
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l6
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = insertvalue %"compiler/views:loopFrame" undef, i32 %t7, 0
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t10 = insertvalue %"compiler/views:loopFrame" %t8, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, 1
  %t12 = insertvalue %"compiler/views:loopFrame" %t10, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, 2
  store %"compiler/views:loopFrame" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:loopFrame", ptr %rv
  ret %"compiler/views:loopFrame" %rr
}

define dso_local %"compiler/views:naming" @compiler_2fviews_3anaming_2ector(ptr %v0, i64 %a0, %"compiler/views:place" %a1) #0 {
entry:
  %rv = alloca %"compiler/views:naming"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/views:naming" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/views:naming" %t6, %"compiler/views:place" %a1, 1
  store %"compiler/views:naming" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:naming", ptr %rv
  ret %"compiler/views:naming" %rr
}

define linkonce_odr %"compiler/views:Cand" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aCand(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/views:Cand"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/views:Cand"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/views:Cand", ptr %a0
  store %"compiler/views:Cand" %t2, ptr %l1
  %t3 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/views:Cand", ptr %l1
  store %"compiler/views:Cand" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:Cand", ptr %rv
  ret %"compiler/views:Cand" %rr
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2_H62bf8c359c1a6e2f950c3ba9da6c50f5 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_check_failed(ptr) cold noreturn
declare i64 @__olang_fmt_i64(ptr, i64)
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2_H62bf8b359c1a6c7c950c3ca9da6c6a3a = weak hidden constant i1 false
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
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

@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d8 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/vec" }>, align 8
@.d9 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/map" }>, align 8
@.d10 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/columns" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cmut_20compiler_2fviews_3asummary_26_3e_2e_2d1 = weak hidden constant i1 false
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
@olang_2esole_2ecompiler_2fviews_3aViewer_2e34 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Vec" }>, align 8
@.d14 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/vec" }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Map" }>, align 8
@.d17 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/map" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ents" }>, align 8
@.d19 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ColumnVec" }>, align 8
@.d20 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/columns" }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/views:state"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 136, i1 false)
  %t2 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 1
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 2
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 3
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 4
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d25 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ColumnVec" }>, align 8
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aRoot(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 5}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 5}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb13
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 3, label %bb6 i64 4, label %bb7 ]
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i64 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i64 }, ptr %t15, i32 0, i32 0
  %t17 = load i64, ptr %t16
  %t20 = icmp eq i64 %t13, %t17
  br i1 %t20, label %bb8, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb9, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i64, i32 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i64, i32 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  %t44 = icmp eq i64 %t37, %t41
  br i1 %t44, label %bb10, label %bb1
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i64 }, ptr %t47, i32 0, i32 0
  %t49 = load i64, ptr %t48
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i64 }, ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52
  %t56 = icmp eq i64 %t49, %t53
  br i1 %t56, label %bb12, label %bb1
bb8:
  br label %bb3
bb9:
  br label %bb3
bb10:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  %t60 = getelementptr { i64, i32 }, ptr %t59, i32 0, i32 1
  %t61 = load i32, ptr %t60
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 1
  %t64 = getelementptr { i64, i32 }, ptr %t63, i32 0, i32 1
  %t65 = load i32, ptr %t64
  %t68 = icmp eq i32 %t61, %t65
  br i1 %t68, label %bb11, label %bb1
bb11:
  br label %bb3
bb12:
  br label %bb3
bb13:
  %t70 = load i1, ptr %l2, !tbaa !21
  store i1 %t70, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d29 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"a call through a function value" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d32 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a lambda" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@olang_2esole_2ecompiler_2fviews_3astate_2e3 = weak hidden constant i1 false
declare void @__olang_region_drop(ptr) noinline
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 56
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 56
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aplace(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l5 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/views:place", ptr %t1, i32 0, i32 0
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/views:place", ptr %t3, i32 0, i32 0
  %t7 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aRoot(ptr %t2, ptr %t4)
  store i1 %t7, ptr %l5
  br label %bb2
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb7
bb2:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb3, label %bb1
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:place", ptr %t9, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/views:place", ptr %t12, i32 0, i32 1
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = icmp eq i64 %t11, %t14
  br i1 %t17, label %bb4, label %bb1
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/views:place", ptr %t19, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/views:place", ptr %t22, i32 0, i32 2
  %t24 = load i64, ptr %t23, !tbaa !24
  %t27 = icmp eq i64 %t21, %t24
  br i1 %t27, label %bb5, label %bb1
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/views:place", ptr %t29, i32 0, i32 3
  %t31 = load i1, ptr %t30, !tbaa !21
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/views:place", ptr %t32, i32 0, i32 3
  %t34 = load i1, ptr %t33, !tbaa !21
  %t37 = icmp eq i1 %t31, %t34
  br i1 %t37, label %bb6, label %bb1
bb6:
  br label %bb7
bb7:
  %t39 = load i1, ptr %l2, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d35 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a copy of the value: '" }>, align 8
@.d36 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".Get(k)'" }>, align 8
@.d37 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"a copy: '" }>, align 8
@.d38 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c".ToArray()'" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
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
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 112
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 112
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 112
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 112
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

declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eLen_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %a0)
declare %"compiler/views:Cand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eAt_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_5e5efcf403984e55_303b2c2551632479 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_Hdbddd02cd2a4e500be7fb1cacf89c9ab(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
@olang_loc_70046d00f197c345_2c505527320b9459 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebodyKey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H3f302293c6f4c07a80dfb5e30c1500bf(ptr %v0, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_82903f089977a4a2_6ca1fe8e95ddb76e = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fviews_3asummary_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H23bbaa5fdc623cf1e33b32cb6290302c(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalkable(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecomponents(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallsItself(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecompare(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eGather(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_bb5d94b92cb03aee_965554ec574ba44a = external constant [0 x i8]
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_f4d9265444485b3d_7f3b362071bb80f9 = external constant [0 x i8]
declare i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fviews_2eexprEnd(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eskipSpace(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enameFrom(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_66a9fc2455c15d42_1dde5b0b0f74f18e = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @compiler_2fviews_2emerge(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efieldName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erecordPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_dfc376be0a55e0c3_9b1743fdc36697af = external constant [0 x i8]
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_a471d4cd6a39e3a7_bf796cf0b70bcd93 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0)
declare %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactPut(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3, i32 %a4, %"compiler/views:place" %a5, %"compiler/source:Span" %a6)
@olang_loc_c0119a910aee1fe3_5ce99f5c7dc6e127 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0)
declare %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H473e76678ba49e15aac3621516ab9c7a(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H1e03e4f3e9fd2c184a7d157dcdc4524e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H778376aca07487ba188a916552f34a0e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2estate_2edead(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eClear_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eLen_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eAt_3ccompiler_2fviews_3astate_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H2424d6cf963333801588b77238bf827f(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_2d854533e388acf3_9bd384635a298ef = external constant [0 x i8]
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_b373ce5e6fb0acb1_b981b0fdcb20f7cd = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_52eb4a404ee8e2f2_daf885f9c5247eae = external constant [0 x i8]
declare i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0)
declare %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %v0, { i64, [2 x i64] } %a0, i64 %a1, i64 %a2, i1 %a3)
declare %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %v0, i64 %a0, %"compiler/views:view" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:holding" %a2)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_551fdf32d31d54b_8fb5917c27ba1e87 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H09ad5b70a0c5cfd6161167faed1dc325(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H33c414027a4af7673dd1306c9e88dc00(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ereadSummary(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H06514334ff6679689d662404c821f2dc(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceTok(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a630935aa2e7253f_7098fd3403d75c2b = external constant [0 x i8]
@olang_loc_f889b3d9696b6a08_112f010babbc7bb4 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_fbef590508ae9827_444bd78203178143 = external constant [0 x i8]
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eseen(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewhere(ptr %v0, ptr %v1, ptr %a0, %"compiler/views:place" %a1)
@olang_loc_d673b6bd3b875b76_a50d9e4884ce91c2 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecHiddenViewStale(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewStale(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, ptr } @compiler_2fviews_2ecopyHint(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsInside(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earrayish(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__Hfc8ba67df4afabc6715fbd3122f62db9(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fviews_3astate_2ector(ptr %out, ptr %v0)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %v0, %"compiler/views:place" %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ePush_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, %"compiler/views:holding" %a1)
@olang_loc_58304325d16d56e1_1ac2a884e74450d5 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eClear_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0)
declare %"compiler/views:naming" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eAt_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2ePush_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0, %"compiler/views:naming" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0, %"compiler/views:place" %a1)
@olang_loc_cc40afa1f47574c5_1b87777640286ce9 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eSetAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:view" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ePush_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0, %"compiler/views:view" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ector(ptr %v0, i64 %a0)
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
