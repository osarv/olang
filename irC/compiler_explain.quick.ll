source_filename = "compiler_explain.quick.ll"
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
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/explain:Code" = type { { i64, ptr }, { i64, ptr }, i64, { i64, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:ContractBlock" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
@G_2ecompiler_2fexplain_2eLongValue = constant <{ [8 x i8] }> <{ [8 x i8] c"\90\01\00\00\00\00\00\00" }>, align 8
define dso_local { i64, ptr } @compiler_2fexplain_2eAsValueWhere(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t5, ptr %l8, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t9)
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
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 3
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t36 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eObligations(ptr %v1, ptr %v0, ptr %s0, ptr %t21, i64 %t22, ptr %t32)
  store { i64, ptr } %t36, ptr %l17
  br label %bb4
bb4:
  %t37 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t37, ptr %l3, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb5, label %bb6
bb5:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eValueCovered(ptr %v1, ptr %t44, i64 %t45)
  store i1 %t48, ptr %l24
  br label %bb7
bb6:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb8
bb7:
  %t49 = load i1, ptr %l24, !tbaa !21
  %t50 = xor i1 %t49, true
  store i1 %t50, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t52 = load i1, ptr %l21, !tbaa !21
  br i1 %t52, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = call { i64, ptr } @std_2fprelude_2ftext_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s2, ptr %s2, { i64, ptr } %t53, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store { i64, ptr } %t55, ptr %l27
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t56 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t58 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t65 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t64)
  call void @olang_textcopy(ptr %t65, ptr %t56, i64 %t57)
  %t66 = getelementptr i8, ptr %t65, i64 %t57
  call void @olang_textcopy(ptr %t66, ptr %t59, i64 %t60)
  %t67 = getelementptr i8, ptr %t66, i64 %t60
  call void @olang_textcopy(ptr %t67, ptr %t62, i64 %t63)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t65, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb12:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t72 = load i64, ptr %l2, !tbaa !24
  %t75 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eGivesHeld(ptr %v1, ptr %s0, ptr %t71, i64 %t72)
  store { i64, ptr } %t75, ptr %l31
  br label %bb13
bb13:
  %t76 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t76, ptr %l4, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t77, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t79, ptr %l33
  br label %bb14
bb14:
  %t80 = load i1, ptr %l33, !tbaa !21
  br i1 %t80, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t81, ptr %l35, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l36, !tbaa !24
  %t84 = load i64, ptr %l36, !tbaa !24
  %t85 = mul i64 %t84, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l37, !tbaa !27
  %t89 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l36, !tbaa !24
  %t94 = mul i64 %t93, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %t92, i64 %t94, i1 false)
  %t95 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t95, ptr %l35, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t96 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t96, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t97 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t98 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t99 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t101 = extractvalue { i64, ptr } %t97, 1
  %t102 = extractvalue { i64, ptr } %t97, 0
  %t103 = add i64 %t99, %t102
  %t104 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t106 = add i64 %t103, %t105
  %t107 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t106)
  call void @olang_textcopy(ptr %t107, ptr %t98, i64 %t99)
  %t108 = getelementptr i8, ptr %t107, i64 %t99
  call void @olang_textcopy(ptr %t108, ptr %t101, i64 %t102)
  %t109 = getelementptr i8, ptr %t108, i64 %t102
  call void @olang_textcopy(ptr %t109, ptr %t104, i64 %t105)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t107, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t111, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fexplain_2eBuilderOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l15 = alloca i32
  %l24 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t4, i64 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l15
  br label %bb4
bb4:
  %t26 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t28 = trunc i64 18 to i32
  %t29 = icmp eq i32 %t26, %t28
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l10, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  store i32 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l24
  br label %bb9
bb9:
  %t45 = load i32, ptr %l24, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fexplain_2eBuilders(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l45 = alloca ptr
  %l47 = alloca i1
  %l49 = alloca i1
  %l52 = alloca i32
  %l61 = alloca { i64, ptr }
  %l65 = alloca i1
  %l69 = alloca i1
  %l71 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %t8)
  br label %bb2
bb2:
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l17
  br label %bb3
bb3:
  %t16 = load i64, ptr %l17, !tbaa !24
  store i64 %t16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb6:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l24, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l24, !tbaa !24
  store i64 %t43, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l21, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb12:
  br label %bb13
bb13:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l9, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load i64, ptr %l9, !tbaa !24
  %t70 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t66, i64 %t67)
  store ptr %t70, ptr %l45
  br label %bb14
bb14:
  %t71 = load ptr, ptr %l45, !tbaa !29
  store ptr %t71, ptr %l10, !tbaa !29
  %t72 = load ptr, ptr %l10, !tbaa !29
  %t74 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t72)
  store i1 %t74, ptr %l47
  br label %bb15
bb15:
  %t75 = load i1, ptr %l47, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb19
bb17:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = call i32 @compiler_2fexplain_2eBuilderOf(ptr %v0, ptr %t78, i64 %t79)
  store i32 %t82, ptr %l52
  br label %bb18
bb18:
  %t84 = load i32, ptr %l52, !tbaa !23
  %t86 = icmp ne i32 %t84, %a1
  store i1 %t86, ptr %l49, !tbaa !21
  br label %bb19
bb19:
  %t88 = load i1, ptr %l49, !tbaa !21
  br i1 %t88, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb21:
  br label %bb22
bb22:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 3
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t99 = load ptr, ptr %l10, !tbaa !29
  %t101 = getelementptr %"compiler/ast:Func", ptr %t99, i32 0, i32 10
  %t102 = load i32, ptr %t101, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s2, ptr %t98, i32 %t102)
  store { i64, ptr } %t105, ptr %l61
  br label %bb23
bb23:
  %t106 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t108)
  call void @olang_textcopy(ptr %t109, ptr %t107, i64 %t108)
  %t110 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l11, !tbaa !27
  %t115 = xor i1 %a2, true
  br i1 %t115, label %bb24, label %bb25
bb24:
  %t117 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t121 = icmp sgt i64 %t119, 0
  br i1 %t121, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb30
bb26:
  %t123 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr i8, ptr %t124, i64 0
  %t126 = load i8, ptr %t125, !tbaa !32
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t126)
  store i1 %t128, ptr %l71
  br label %bb28
bb27:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb29
bb28:
  %t129 = load i1, ptr %l71, !tbaa !21
  store i1 %t129, ptr %l69, !tbaa !21
  br label %bb29
bb29:
  %t130 = load i1, ptr %l69, !tbaa !21
  %t131 = xor i1 %t130, true
  store i1 %t131, ptr %l65, !tbaa !21
  br label %bb30
bb30:
  %t133 = load i1, ptr %l65, !tbaa !21
  br i1 %t133, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t134 = load ptr, ptr %lp3
  %t135 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t134, i64 %t135)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb35:
  %t138 = load i64, ptr %l8, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l8, !tbaa !24
  br label %bb10
bb36:
  %t142 = load ptr, ptr %lp3
  %t143 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t142
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fexplain_2eCodes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i64
  %lp9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %lp19 = alloca ptr
  %l25 = alloca i64
  %l32 = alloca ptr
  %l40 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca ptr
  %l61 = alloca i64
  %l62 = alloca i64
  %l67 = alloca i64
  %l68 = alloca ptr
  %l69 = alloca i64
  %l71 = alloca ptr
  %l72 = alloca i64
  %l76 = alloca i32
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca i64
  %l87 = alloca { i64, ptr }
  %l88 = alloca %"compiler/explain:Code"
  %l92 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i64
  %l120 = alloca i64
  %l125 = alloca i64
  %l128 = alloca ptr
  %l132 = alloca i32
  %l138 = alloca i32
  %l145 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l150 = alloca i32
  %l151 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l157 = alloca ptr
  %l158 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l160 = alloca i64
  %l164 = alloca { i64, ptr }
  %l165 = alloca %"compiler/explain:Code"
  %s4 = alloca %olang.scope
  %rv = alloca { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eSpellFrom(ptr %v0, ptr %t1, i64 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t11 = call i64 @compiler_2fexplain_2efnNamed(ptr %v0, ptr %v1, ptr %t5, i64 %t6, { i64, ptr } %a2)
  store i64 %t11, ptr %l25
  br label %bb2
bb2:
  %t12 = load i64, ptr %l25, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp slt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t18 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 65536, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t18, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store ptr %t26, ptr %l32
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l32, !tbaa !29
  store ptr %t27, ptr %l4, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/load:Loader", ptr %t34, i32 0, i32 4
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l5, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/load:Loader", ptr %t45, i32 0, i32 10
  store ptr %t47, ptr %l40, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t51, i64 %t52)
  store i64 %t55, ptr %l44
  br label %bb7
bb7:
  %t56 = load ptr, ptr %l40, !tbaa !29
  %t57 = load i64, ptr %l44, !tbaa !24
  %t58 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store ptr %t58, ptr %l45
  br label %bb8
bb8:
  %t59 = load ptr, ptr %l45, !tbaa !29
  %t61 = getelementptr %"compiler/load:Module", ptr %t59, i32 0, i32 4
  %t62 = load i64, ptr %t61, !tbaa !24
  store i64 %t62, ptr %l6, !tbaa !24
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %v2, ptr %t64, i64 %t65)
  store { i64, ptr } %t68, ptr %l50
  br label %bb9
bb9:
  %t69 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t69, ptr %lp7
  %t70 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t71 = load ptr, ptr %lp7
  store { i64, ptr } %t70, ptr %t71, !tbaa !27
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t73 = load i64, ptr %l6, !tbaa !24
  %t74 = load ptr, ptr %l4, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Func", ptr %t74, i32 0, i32 0
  %t77 = getelementptr %"compiler/source:Span", ptr %t76, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = sext i32 %t78 to i64
  %t84 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t72, i64 %t73, i64 %t80)
  store i64 %t84, ptr %l56
  br label %bb10
bb10:
  %t85 = load i64, ptr %l56, !tbaa !24
  store i64 %t85, ptr %l8, !tbaa !24
  %t86 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l57
  br label %bb11
bb11:
  %t87 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t87, ptr %lp9
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  %t89 = load ptr, ptr %lp9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %t89
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  store ptr %t93, ptr %l59, !tbaa !29
  %t94 = load i64, ptr %l3, !tbaa !24
  %t96 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t94)
  store i64 %t96, ptr %l61
  br label %bb12
bb12:
  %t97 = load ptr, ptr %l59, !tbaa !29
  %t98 = load i64, ptr %l61, !tbaa !24
  %t99 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t97, i64 %t98)
  store i64 %t99, ptr %l62
  br label %bb13
bb13:
  %t100 = load i64, ptr %l62, !tbaa !24
  %t101 = icmp eq i64 %t100, 0
  br i1 %t101, label %bb14, label %bb15
bb14:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t107 = load i64, ptr %l3, !tbaa !24
  %t110 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t106, i64 %t107, i32 0)
  store i64 %t110, ptr %l67
  br label %bb16
bb15:
  br label %bb25
bb16:
  %t111 = load i64, ptr %l67, !tbaa !24
  store i64 %t111, ptr %l10, !tbaa !24
  %t112 = load ptr, ptr %lp9
  store ptr %t112, ptr %l68, !tbaa !29
  %t113 = ptrtoint ptr %v2 to i64
  store i64 %t113, ptr %l69, !tbaa !24
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2fexplain_3aCode_2e0
  br i1 %t114, label %bb17, label %bb18
bb17:
  %t116 = call ptr @__olang_region_make(ptr %v2)
  %t117 = ptrtoint ptr %t116 to i64
  store i64 %t117, ptr %l69, !tbaa !24
  br label %bb18
bb18:
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l71, !tbaa !29
  %t119 = load i64, ptr %l3, !tbaa !24
  store i64 %t119, ptr %l72, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t124 = load i64, ptr %l10, !tbaa !24
  %t127 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t123, i64 %t124)
  store i32 %t127, ptr %l76
  br label %bb19
bb19:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i64, ptr %l10, !tbaa !24
  %t132 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t128, i64 %t129)
  store i64 %t132, ptr %l79
  br label %bb20
bb20:
  %t133 = load i64, ptr %l69
  %t134 = inttoptr i64 %t133 to ptr
  %t135 = load ptr, ptr %l71, !tbaa !29
  %t136 = load i64, ptr %l72, !tbaa !24
  %t137 = load i32, ptr %l76, !tbaa !23
  %t138 = load i64, ptr %l79, !tbaa !24
  %t139 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %t134, ptr %t135, i64 %t136, i32 %t137, i64 %t138)
  store { i64, ptr } %t139, ptr %l80
  br label %bb21
bb21:
  %t140 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t141 = load i64, ptr %l69
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = extractvalue { i64, ptr } %t140, 0
  %t144 = extractvalue { i64, ptr } %t140, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %t142, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l81, !tbaa !27
  %t149 = load ptr, ptr %lp7
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  store { i64, ptr } %t150, ptr %l82, !tbaa !27
  %t151 = load i64, ptr %l8, !tbaa !24
  store i64 %t151, ptr %l83, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t156 = load i64, ptr %l10, !tbaa !24
  %t159 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v0, ptr %t155, i64 %t156)
  store { i64, ptr } %t159, ptr %l87
  br label %bb22
bb22:
  %t160 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t162 = load i64, ptr %l83, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t164 = call %"compiler/explain:Code" @compiler_2fexplain_3aCode_2ector(ptr %v2, ptr %v2, ptr %v0, ptr %v2, { i64, ptr } %t160, { i64, ptr } %t161, i64 %t162, { i64, ptr } %t163)
  store %"compiler/explain:Code" %t164, ptr %l88
  br label %bb23
bb23:
  %t165 = load ptr, ptr %l68, !tbaa !29
  %t166 = load %"compiler/explain:Code", ptr %l88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ePush_3ccompiler_2fexplain_3aCode_3e(ptr %v2, ptr %v2, ptr %t165, %"compiler/explain:Code" %t166)
  br label %bb24
bb24:
  %t167 = load ptr, ptr %lp9
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t167
  %t170 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t170, ptr %rv
  br label %ret
bb25:
  store i64 0, ptr %l11, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceCount(ptr %v0, ptr %t174)
  store i64 %t176, ptr %l92
  br label %bb26
bb26:
  %t177 = load i64, ptr %l92, !tbaa !24
  store i64 %t177, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t178 = load i64, ptr %l12, !tbaa !24
  %t179 = load i64, ptr %l11, !tbaa !24
  %t182 = icmp sgt i64 %t178, %t179
  br i1 %t182, label %bb27, label %bb28
bb27:
  %t184 = load i64, ptr %l13, !tbaa !24
  %t186 = icmp sgt i64 %t184, 0
  br i1 %t186, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb32
bb29:
  %t188 = load i64, ptr %l12, !tbaa !24
  %t189 = load i64, ptr %l11, !tbaa !24
  %t192 = sub i64 %t188, %t189
  %t193 = load i64, ptr %l13, !tbaa !24
  %t196 = add i64 %t192, %t193
  %t198 = sub i64 %t196, 1
  %t199 = load i64, ptr %l13, !tbaa !24
  %t202 = sdiv i64 %t198, %t199
  store i64 %t202, ptr %l99, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb31
bb31:
  %t204 = load i64, ptr %l99, !tbaa !24
  store i64 %t204, ptr %l96, !tbaa !24
  br label %bb32
bb32:
  %t205 = load i64, ptr %l96, !tbaa !24
  store i64 %t205, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s4
  %t206 = load i64, ptr %l15, !tbaa !24
  %t207 = load i64, ptr %l14, !tbaa !24
  %t210 = icmp slt i64 %t206, %t207
  %t212 = xor i1 %t210, true
  br i1 %t212, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb35:
  br label %bb36
bb36:
  %t214 = load i64, ptr %l11, !tbaa !24
  %t215 = load i64, ptr %l15, !tbaa !24
  %t216 = load i64, ptr %l13, !tbaa !24
  %t219 = mul i64 %t215, %t216
  %t222 = add i64 %t214, %t219
  store i64 %t222, ptr %l16, !tbaa !24
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/check:Checker", ptr %t224, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t228 = load i64, ptr %l16, !tbaa !24
  %t231 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t227, i64 %t228)
  store i64 %t231, ptr %l120
  br label %bb37
bb37:
  %t232 = load i64, ptr %l3, !tbaa !24
  %t233 = load i64, ptr %l120, !tbaa !24
  %t235 = icmp ne i64 %t233, %t232
  br i1 %t235, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb39:
  br label %bb40
bb40:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load i64, ptr %l16, !tbaa !24
  %t241 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t237, i64 %t238)
  store i64 %t241, ptr %l125
  br label %bb41
bb41:
  %t242 = load i64, ptr %l125, !tbaa !24
  store i64 %t242, ptr %l17, !tbaa !24
  %t243 = load i64, ptr %l17, !tbaa !24
  %t245 = icmp slt i64 %t243, 0
  br i1 %t245, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb43:
  br label %bb44
bb44:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l128, !tbaa !29
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/check:Checker", ptr %t248, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !29
  %t252 = load i64, ptr %l16, !tbaa !24
  %t255 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t251, i64 %t252)
  store i32 %t255, ptr %l132
  br label %bb45
bb45:
  %t256 = load ptr, ptr %l4, !tbaa !29
  %t258 = getelementptr %"compiler/ast:Func", ptr %t256, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t260 = load ptr, ptr %l4, !tbaa !29
  %t262 = getelementptr %"compiler/ast:Func", ptr %t260, i32 0, i32 3
  %t263 = load ptr, ptr %t262, !tbaa !29
  %t265 = getelementptr %"compiler/ast:Sig", ptr %t263, i32 0, i32 0
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !27
  %t267 = load ptr, ptr %l128, !tbaa !29
  %t268 = load i32, ptr %l132, !tbaa !23
  %t271 = call i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %v0, ptr %v0, ptr %t267, i32 %t268, ptr %t259, { i64, ptr } %t266)
  store i32 %t271, ptr %l138
  br label %bb46
bb46:
  %t272 = load i32, ptr %l138, !tbaa !23
  store i32 %t272, ptr %l18, !tbaa !23
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/check:Checker", ptr %t273, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 0
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = getelementptr %"compiler/load:Loader", ptr %t279, i32 0, i32 3
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t283 = load ptr, ptr %l4, !tbaa !29
  %t285 = getelementptr %"compiler/ast:Func", ptr %t283, i32 0, i32 2
  %t286 = load i32, ptr %t285, !tbaa !23
  %t289 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t282, i32 %t286)
  store { i64, ptr } %t289, ptr %l145
  br label %bb47
bb47:
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l146, !tbaa !29
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/check:Checker", ptr %t291, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t295 = load i64, ptr %l16, !tbaa !24
  %t298 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t294, i64 %t295)
  store i32 %t298, ptr %l150
  br label %bb48
bb48:
  %t299 = load ptr, ptr %l146, !tbaa !29
  %t300 = load i32, ptr %l150, !tbaa !23
  %t301 = call { i64, ptr } @compiler_2fexplain_2etypeArgs(ptr %v0, ptr %s4, ptr %t299, i32 %t300)
  store { i64, ptr } %t301, ptr %l151
  br label %bb49
bb49:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load i32, ptr %l18, !tbaa !23
  %t304 = load i64, ptr %l17, !tbaa !24
  %t308 = call { i64, ptr } @compiler_2fexplain_2esigOf(ptr %v0, ptr %s4, ptr %t302, i32 %t303, i64 %t304)
  store { i64, ptr } %t308, ptr %l155
  br label %bb50
bb50:
  %t309 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t311 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 1
  %t313 = extractvalue { i64, ptr } %t311, 0
  %t314 = add i64 %t310, %t313
  %t315 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 1
  %t317 = extractvalue { i64, ptr } %t315, 0
  %t318 = add i64 %t314, %t317
  %t319 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t321 = add i64 %t318, %t320
  %t322 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t322, 1
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t325 = add i64 %t321, %t324
  %t326 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t325)
  call void @olang_textcopy(ptr %t326, ptr %t309, i64 %t310)
  %t327 = getelementptr i8, ptr %t326, i64 %t310
  call void @olang_textcopy(ptr %t327, ptr %t312, i64 %t313)
  %t328 = getelementptr i8, ptr %t327, i64 %t313
  call void @olang_textcopy(ptr %t328, ptr %t316, i64 %t317)
  %t329 = getelementptr i8, ptr %t328, i64 %t317
  call void @olang_textcopy(ptr %t329, ptr %t319, i64 %t320)
  %t330 = getelementptr i8, ptr %t329, i64 %t320
  call void @olang_textcopy(ptr %t330, ptr %t323, i64 %t324)
  %t331 = insertvalue { i64, ptr } undef, i64 %t325, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t326, 1
  %t333 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t333, ptr %lp19
  %t335 = load ptr, ptr %lp19
  store { i64, ptr } %t332, ptr %t335, !tbaa !27
  %t336 = load ptr, ptr %lp9
  store ptr %t336, ptr %l157, !tbaa !29
  %t337 = load ptr, ptr %lp19
  %t338 = load { i64, ptr }, ptr %t337, !tbaa !27
  store { i64, ptr } %t338, ptr %l158, !tbaa !27
  %t339 = load ptr, ptr %lp7
  %t340 = load { i64, ptr }, ptr %t339, !tbaa !27
  store { i64, ptr } %t340, ptr %l159, !tbaa !27
  %t341 = load i64, ptr %l8, !tbaa !24
  store i64 %t341, ptr %l160, !tbaa !24
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/check:Checker", ptr %t342, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !29
  %t346 = load i64, ptr %l16, !tbaa !24
  %t349 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v0, ptr %t345, i64 %t346)
  store { i64, ptr } %t349, ptr %l164
  br label %bb51
bb51:
  %t350 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t351 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t352 = load i64, ptr %l160, !tbaa !24
  %t353 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t354 = call %"compiler/explain:Code" @compiler_2fexplain_3aCode_2ector(ptr %v2, ptr %v2, ptr %v0, ptr %v2, { i64, ptr } %t350, { i64, ptr } %t351, i64 %t352, { i64, ptr } %t353)
  store %"compiler/explain:Code" %t354, ptr %l165
  br label %bb52
bb52:
  %t355 = load ptr, ptr %l157, !tbaa !29
  %t356 = load %"compiler/explain:Code", ptr %l165
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ePush_3ccompiler_2fexplain_3aCode_3e(ptr %v2, ptr %v2, ptr %t355, %"compiler/explain:Code" %t356)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb54:
  %t357 = load i64, ptr %l15, !tbaa !24
  %t359 = add i64 %t357, 1
  store i64 %t359, ptr %l15, !tbaa !24
  br label %bb33
bb55:
  %t361 = load ptr, ptr %lp9
  %t362 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t361
  %t364 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t364, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }, ptr %rv
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2eFnLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l18 = alloca i32
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l24 = alloca i64
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t5)
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t8, i64 %t9)
  store i64 %t10, ptr %l7
  br label %bb2
bb2:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = icmp eq i64 %t11, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t17, i64 %t18, i32 0)
  store i64 %t21, ptr %l12
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load i64, ptr %l12, !tbaa !24
  store i64 %t22, ptr %l2, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  store i64 %t24, ptr %l14, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t28, i64 %t29)
  store i32 %t32, ptr %l18
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l2, !tbaa !24
  %t37 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t33, i64 %t34)
  store i64 %t37, ptr %l21
  br label %bb7
bb7:
  %t38 = load ptr, ptr %l13, !tbaa !29
  %t39 = load i64, ptr %l14, !tbaa !24
  %t40 = load i32, ptr %l18, !tbaa !23
  %t41 = load i64, ptr %l21, !tbaa !24
  %t42 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %v1, ptr %t38, i64 %t39, i32 %t40, i64 %t41)
  store { i64, ptr } %t42, ptr %l22
  br label %bb8
bb8:
  %t43 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l23, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  store i64 %t45, ptr %l24, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t49, i64 %t50)
  store i32 %t53, ptr %l28
  br label %bb10
bb10:
  %t54 = load ptr, ptr %l23, !tbaa !29
  %t55 = load i64, ptr %l24, !tbaa !24
  %t56 = load i32, ptr %l28, !tbaa !23
  %t57 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %v1, ptr %t54, i64 %t55, i32 %t56, i64 -1)
  store { i64, ptr } %t57, ptr %l29
  br label %bb11
bb11:
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t58, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2eNoValueWhy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca i64
  %l41 = alloca i1
  %l42 = alloca i64
  %l46 = alloca i64
  %l51 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %l61 = alloca i64
  %l63 = alloca i1
  %l65 = alloca i1
  %l71 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l83 = alloca i64
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l11, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 3
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Func", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t19, i32 %t23)
  store { i64, ptr } %t26, ptr %l18
  br label %bb2
bb2:
  %t27 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t27, ptr %l5, !tbaa !27
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t30 = getelementptr %"compiler/ast:Func", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t37, ptr %l24, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l25, !tbaa !24
  %t40 = load i64, ptr %l25, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l26, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l25, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t51, ptr %l24, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t56, i64 %t57)
  store i1 %t60, ptr %l30
  br label %bb6
bb6:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t62, ptr %l32, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l33, !tbaa !24
  %t65 = load i64, ptr %l33, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l34, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l33, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t76, ptr %l32, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t77, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t78 = load i64, ptr %l2, !tbaa !24
  %t80 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t78)
  store i64 %t80, ptr %l36
  br label %bb10
bb10:
  %t81 = load i64, ptr %l36, !tbaa !24
  store i64 %t81, ptr %l6, !tbaa !24
  %t82 = load ptr, ptr %l4, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Func", ptr %t82, i32 0, i32 5
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  store i64 %t87, ptr %l39, !tbaa !24
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t90 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t88)
  store i1 %t90, ptr %l41
  br label %bb11
bb11:
  %t91 = load i1, ptr %l41, !tbaa !21
  br i1 %t91, label %bb12, label %bb13
bb12:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load i64, ptr %l2, !tbaa !24
  %t99 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerVarCount(ptr %v0, ptr %t95, i64 %t96)
  store i64 %t99, ptr %l46
  br label %bb14
bb13:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb15
bb14:
  %t100 = load i64, ptr %l46, !tbaa !24
  store i64 %t100, ptr %l42, !tbaa !24
  br label %bb15
bb15:
  %t101 = load i64, ptr %l39, !tbaa !24
  %t102 = load i64, ptr %l42, !tbaa !24
  %t103 = add i64 %t101, %t102
  store i64 %t103, ptr %l7, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t109 = load i64, ptr %l6, !tbaa !24
  %t112 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t108, i64 %t109)
  store i64 %t112, ptr %l51
  br label %bb16
bb16:
  %t113 = load i64, ptr %l7, !tbaa !24
  %t114 = load i64, ptr %l51, !tbaa !24
  %t116 = icmp sgt i64 %t114, %t113
  br i1 %t116, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l54, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t118, ptr %l55, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  store i64 %t120, ptr %l56, !tbaa !24
  %t121 = load i64, ptr %l56, !tbaa !24
  %t122 = mul i64 %t121, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t122)
  %t124 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  store { i64, ptr } %t125, ptr %l57, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = load i64, ptr %l56, !tbaa !24
  %t131 = mul i64 %t130, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t127, ptr %t129, i64 %t131, i1 false)
  %t132 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t132, ptr %l55, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t133, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t138 = load i64, ptr %l6, !tbaa !24
  %t141 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t137, i64 %t138)
  store i64 %t141, ptr %l61
  br label %bb20
bb20:
  %t142 = load i64, ptr %l61, !tbaa !24
  %t143 = icmp sgt i64 %t142, 0
  br i1 %t143, label %bb21, label %bb22
bb21:
  %t145 = load ptr, ptr %l4, !tbaa !29
  %t147 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t145)
  store i1 %t147, ptr %l65
  br label %bb23
bb22:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb24
bb23:
  %t148 = load i1, ptr %l65, !tbaa !21
  store i1 %t148, ptr %l63, !tbaa !21
  br label %bb24
bb24:
  %t149 = load i1, ptr %l63, !tbaa !21
  br i1 %t149, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t150 = load ptr, ptr %l4, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/check:Checker", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 0
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/load:Loader", ptr %t157, i32 0, i32 3
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t163 = call { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v0, ptr %s4, ptr %t150, ptr %t160)
  store { i64, ptr } %t163, ptr %l71
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 0
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/load:Loader", ptr %t170, i32 0, i32 3
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t174 = load ptr, ptr %l4, !tbaa !29
  %t176 = getelementptr %"compiler/ast:Func", ptr %t174, i32 0, i32 10
  %t177 = load i32, ptr %t176, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t173, i32 %t177)
  store { i64, ptr } %t180, ptr %l78
  br label %bb28
bb28:
  %t181 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t183 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = add i64 %t182, %t185
  %t187 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t189 = add i64 %t186, %t188
  %t190 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t193 = add i64 %t189, %t192
  %t194 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t196 = add i64 %t193, %t195
  %t197 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t196)
  call void @olang_textcopy(ptr %t197, ptr %t181, i64 %t182)
  %t198 = getelementptr i8, ptr %t197, i64 %t182
  call void @olang_textcopy(ptr %t198, ptr %t184, i64 %t185)
  %t199 = getelementptr i8, ptr %t198, i64 %t185
  call void @olang_textcopy(ptr %t199, ptr %t187, i64 %t188)
  %t200 = getelementptr i8, ptr %t199, i64 %t188
  call void @olang_textcopy(ptr %t200, ptr %t191, i64 %t192)
  %t201 = getelementptr i8, ptr %t200, i64 %t192
  call void @olang_textcopy(ptr %t201, ptr %t194, i64 %t195)
  %t202 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t197, 1
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t203, ptr %rv
  br label %ret
bb29:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/check:Checker", ptr %t205, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t209 = load i64, ptr %l6, !tbaa !24
  %t212 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t208, i64 %t209)
  store i64 %t212, ptr %l83
  br label %bb30
bb30:
  %t213 = load i64, ptr %l83, !tbaa !24
  %t214 = icmp sgt i64 %t213, 0
  br i1 %t214, label %bb31, label %bb32
bb31:
  %t216 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t217 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t218 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t220 = extractvalue { i64, ptr } %t216, 1
  %t221 = extractvalue { i64, ptr } %t216, 0
  %t222 = add i64 %t218, %t221
  %t223 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t226 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t225)
  call void @olang_textcopy(ptr %t226, ptr %t217, i64 %t218)
  %t227 = getelementptr i8, ptr %t226, i64 %t218
  call void @olang_textcopy(ptr %t227, ptr %t220, i64 %t221)
  %t228 = getelementptr i8, ptr %t227, i64 %t221
  call void @olang_textcopy(ptr %t228, ptr %t223, i64 %t224)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t226, 1
  store { i64, ptr } %t230, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l87, !tbaa !27
  %t232 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t232, ptr %l88, !tbaa !27
  %t233 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  store i64 %t234, ptr %l89, !tbaa !24
  %t235 = load i64, ptr %l89, !tbaa !24
  %t236 = mul i64 %t235, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t236)
  %t238 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  store { i64, ptr } %t239, ptr %l90, !tbaa !27
  %t240 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = load i64, ptr %l89, !tbaa !24
  %t245 = mul i64 %t244, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t241, ptr %t243, i64 %t245, i1 false)
  %t246 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t246, ptr %l88, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t247, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2eattrLines(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l19 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l42 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %s3 = alloca %olang.scope
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = getelementptr %"compiler/check:Checker", ptr %a1, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/load:Loader", ptr %t13, i32 0, i32 10
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v1, ptr %v1, ptr %t15, i64 %a2)
  store ptr %t19, ptr %l19
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l19, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 6
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l5, !tbaa !29
  %t25 = load ptr, ptr %l5, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_e4b17f5ad4d0393_dacada4c9c892187)
  unreachable
bb6:
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/source:Source", ptr %t29, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l6, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t35, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l9, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t49 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t49, ptr %l34, !tbaa !27
  %t50 = load i64, ptr %l8, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr ptr, ptr %t53, i64 %t50
  %t55 = load ptr, ptr %t54, !tbaa !39
  store ptr %t55, ptr %l10, !tbaa !29
  store ptr %a0, ptr %l37, !tbaa !29
  store { i64, ptr } %a4, ptr %l38, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t59, ptr %l39, !tbaa !27
  %t60 = load ptr, ptr %l10, !tbaa !29
  %t62 = getelementptr %"compiler/ast:Attr", ptr %t60, i32 0, i32 0
  %t63 = getelementptr %"compiler/source:Span", ptr %t62, i32 0, i32 0
  %t64 = load i32, ptr %t63, !tbaa !23
  %t66 = sext i32 %t64 to i64
  store i64 %t66, ptr %l42, !tbaa !24
  %t67 = load ptr, ptr %l10, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Attr", ptr %t67, i32 0, i32 0
  %t70 = getelementptr %"compiler/source:Span", ptr %t69, i32 0, i32 1
  %t71 = load i32, ptr %t70, !tbaa !23
  %t73 = sext i32 %t71 to i64
  store i64 %t73, ptr %l45, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l46, !tbaa !24
  %t76 = load i64, ptr %l42, !tbaa !24
  %t77 = icmp sge i64 %t76, 0
  br i1 %t77, label %bb12, label %bb13
bb12:
  %t79 = load i64, ptr %l42, !tbaa !24
  %t80 = load i64, ptr %l45, !tbaa !24
  %t81 = icmp sle i64 %t79, %t80
  br i1 %t81, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_31b785093080fa1c_de0f6dc4f3b337d0)
  unreachable
bb14:
  %t83 = load i64, ptr %l45, !tbaa !24
  %t84 = load i64, ptr %l46, !tbaa !24
  %t85 = icmp sle i64 %t83, %t84
  br i1 %t85, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_31b785093080fa1c_de0f6dc4f3b337d0)
  unreachable
bb16:
  %t87 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = load i64, ptr %l42, !tbaa !24
  %t90 = load i64, ptr %l45, !tbaa !24
  %t91 = getelementptr i8, ptr %t88, i64 %t89
  %t92 = sub i64 %t90, %t89
  %t93 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t91, 1
  %t95 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t99 = extractvalue { i64, ptr } %t94, 1
  %t100 = extractvalue { i64, ptr } %t94, 0
  %t101 = add i64 %t97, %t100
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t105 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t104)
  call void @olang_textcopy(ptr %t105, ptr %t96, i64 %t97)
  %t106 = getelementptr i8, ptr %t105, i64 %t97
  call void @olang_textcopy(ptr %t106, ptr %t99, i64 %t100)
  %t107 = getelementptr i8, ptr %t106, i64 %t100
  call void @olang_textcopy(ptr %t107, ptr %t102, i64 %t103)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t105, 1
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t112 = extractvalue { i64, ptr } %t109, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t117, { i64, ptr } %t116)
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_31b785093080fa1c_de0f6dc4f3b337d0)
  unreachable
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t119 = load i64, ptr %l8, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l8, !tbaa !24
  br label %bb8
bb20:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fexplain_2ebuilders(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fexplain_2eBuilders(ptr %v1, ptr %s1, ptr %t1, i32 %a2, i1 false)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t7 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  store ptr %t7, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l4, !tbaa !24
  store i64 %t9, ptr %l10, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t10)
  store i64 %t12, ptr %l12
  br label %bb3
bb3:
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l12, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l17
  br label %bb7
bb7:
  %t24 = load i64, ptr %l17, !tbaa !24
  store ptr %a0, ptr %l18, !tbaa !29
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t30 = call { i64, ptr } @compiler_2fexplain_2eFnLine(ptr %v1, ptr %s2, ptr %t26, i64 %t24)
  store { i64, ptr } %t30, ptr %l21
  br label %bb8
bb8:
  %t31 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t33 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t31, i64 %t32)
  %t41 = getelementptr i8, ptr %t40, i64 %t32
  call void @olang_textcopy(ptr %t41, ptr %t34, i64 %t35)
  %t42 = getelementptr i8, ptr %t41, i64 %t35
  call void @olang_textcopy(ptr %t42, ptr %t37, i64 %t38)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t40, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load ptr, ptr %l18, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t52, { i64, ptr } %t51)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l4, !tbaa !24
  br label %bb2
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fexplain_2ecapsShown(ptr %v0, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = xor i1 %a1, true
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t7, ptr %l6
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t8 = load i1, ptr %l6, !tbaa !21
  %t9 = xor i1 %t8, true
  store i1 %t9, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l4, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t14, ptr %l10
  br label %bb7
bb6:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb8
bb7:
  %t15 = load i1, ptr %l10, !tbaa !21
  %t16 = xor i1 %t15, true
  store i1 %t16, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t21, ptr %l14
  br label %bb11
bb10:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t22 = load i1, ptr %l14, !tbaa !21
  %t23 = xor i1 %t22, true
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t25 = load i1, ptr %l12, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2ecasePayload(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:TypeDecl", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 1
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [6 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { { i64, ptr }, ptr }, ptr %t17, i32 0, i32 0
  %t19 = load { i64, ptr }, ptr %t18
  store { i64, ptr } %t19, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %a1
  %t27 = load ptr, ptr %t26, !tbaa !39
  %t29 = getelementptr %"compiler/ast:CaseDecl", ptr %t27, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t32 = icmp sge i64 0, 0
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = icmp sle i64 0, 1152921504606846975
  br i1 %t34, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_430839a36fc86f5_d60a2ea9e5c9a99)
  unreachable
bb12:
  %t36 = mul i64 0, 8
  %t37 = insertvalue { i64, ptr } undef, i64 0, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t38, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_430839a36fc86f5_d60a2ea9e5c9a99)
  unreachable
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8ab7a894dba5a8d7_a5979f5013b78ba3)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2econtract(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l25 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l53 = alloca %"compiler/source:Span"
  %l55 = alloca i64
  %l57 = alloca %"compiler/source:Span"
  %l59 = alloca i64
  %l60 = alloca i64
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Sig", ptr %t1, i32 0, i32 6
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t14 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t13)
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = getelementptr i8, ptr %t14, i64 %t10
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t14, 1
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = extractvalue { i64, ptr } %t17, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t6, { i64, ptr } %t24)
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = getelementptr %"compiler/ast:Sig", ptr %t27, i32 0, i32 5
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  br i1 %t32, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t36 = getelementptr %"compiler/check:Checker", ptr %a1, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/load:Loader", ptr %t40, i32 0, i32 10
  %t46 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v1, ptr %v1, ptr %t42, i64 %a3)
  store ptr %t46, ptr %l25
  br label %bb8
bb8:
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t49 = getelementptr %"compiler/load:Module", ptr %t47, i32 0, i32 6
  %t50 = load ptr, ptr %t49, !tbaa !29
  store ptr %t50, ptr %l5, !tbaa !29
  %t52 = load ptr, ptr %l5, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  br i1 %t54, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e7ca39a48e286d3f_b849249cb4ab4933)
  unreachable
bb10:
  br label %bb11
bb11:
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t59 = getelementptr %"compiler/source:Source", ptr %t56, i32 0, i32 1
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l6, !tbaa !27
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"compiler/ast:Sig", ptr %t62, i32 0, i32 5
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = icmp eq ptr %t65, null
  br i1 %t67, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_ec0929e0cef23b20_10aa079683981964)
  unreachable
bb13:
  br label %bb14
bb14:
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t71 = getelementptr %"compiler/ast:Sig", ptr %t69, i32 0, i32 5
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t75 = getelementptr %"compiler/ast:ContractBlock", ptr %t72, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  store i64 %t80, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  %t82 = load i64, ptr %l8, !tbaa !24
  %t83 = load i64, ptr %l9, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb29
bb17:
  br label %bb18
bb18:
  %t90 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t90, ptr %l46, !tbaa !27
  %t91 = load i64, ptr %l8, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr ptr, ptr %t94, i64 %t91
  %t96 = load ptr, ptr %t95, !tbaa !39
  store ptr %t96, ptr %l10, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l49, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t99, ptr %l50, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t100, ptr %l51, !tbaa !27
  %t101 = load ptr, ptr %l10, !tbaa !29
  %t103 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v2, ptr %t101)
  store %"compiler/source:Span" %t103, ptr %l53
  br label %bb19
bb19:
  %t104 = getelementptr %"compiler/source:Span", ptr %l53, i32 0, i32 0
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = sext i32 %t105 to i64
  store i64 %t107, ptr %l55, !tbaa !24
  %t108 = load ptr, ptr %l10, !tbaa !29
  %t110 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v2, ptr %t108)
  store %"compiler/source:Span" %t110, ptr %l57
  br label %bb20
bb20:
  %t111 = getelementptr %"compiler/source:Span", ptr %l57, i32 0, i32 1
  %t112 = load i32, ptr %t111, !tbaa !23
  %t114 = sext i32 %t112 to i64
  store i64 %t114, ptr %l59, !tbaa !24
  %t115 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  store i64 %t116, ptr %l60, !tbaa !24
  %t117 = load i64, ptr %l55, !tbaa !24
  %t118 = icmp sge i64 %t117, 0
  br i1 %t118, label %bb21, label %bb22
bb21:
  %t120 = load i64, ptr %l55, !tbaa !24
  %t121 = load i64, ptr %l59, !tbaa !24
  %t122 = icmp sle i64 %t120, %t121
  br i1 %t122, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_f15d5c61f6a9e0c3_25b5f938bbb7b67)
  unreachable
bb23:
  %t124 = load i64, ptr %l59, !tbaa !24
  %t125 = load i64, ptr %l60, !tbaa !24
  %t126 = icmp sle i64 %t124, %t125
  br i1 %t126, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_f15d5c61f6a9e0c3_25b5f938bbb7b67)
  unreachable
bb25:
  %t128 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = load i64, ptr %l55, !tbaa !24
  %t131 = load i64, ptr %l59, !tbaa !24
  %t132 = getelementptr i8, ptr %t129, i64 %t130
  %t133 = sub i64 %t131, %t130
  %t134 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t132, 1
  %t136 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t141 = add i64 %t138, %t140
  %t143 = extractvalue { i64, ptr } %t135, 1
  %t144 = extractvalue { i64, ptr } %t135, 0
  %t145 = add i64 %t141, %t144
  %t146 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t137, i64 %t138)
  %t150 = getelementptr i8, ptr %t149, i64 %t138
  call void @olang_textcopy(ptr %t150, ptr %t139, i64 %t140)
  %t151 = getelementptr i8, ptr %t150, i64 %t140
  call void @olang_textcopy(ptr %t151, ptr %t143, i64 %t144)
  %t152 = getelementptr i8, ptr %t151, i64 %t144
  call void @olang_textcopy(ptr %t152, ptr %t146, i64 %t147)
  %t153 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t149, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = extractvalue { i64, ptr } %t154, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t162 = load ptr, ptr %l49, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t162, { i64, ptr } %t161)
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_f15d5c61f6a9e0c3_25b5f938bbb7b67)
  unreachable
bb27:
  call void @__olang_scope_close(ptr %s5)
  br label %bb28
bb28:
  %t164 = load i64, ptr %l8, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l8, !tbaa !24
  br label %bb15
bb29:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fexplain_2ectorParams(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:TypeDecl", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t7 = load ptr, ptr %l5, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [6 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { ptr }, ptr %t17, i32 0, i32 0
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:StructBody", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t26 = icmp sge i64 0, 0
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = icmp sle i64 0, 1152921504606846975
  br i1 %t28, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_6448edf003c535f3_ebaded49d6e07c97)
  unreachable
bb12:
  %t30 = mul i64 0, 8
  %t31 = insertvalue { i64, ptr } undef, i64 0, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t32, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_6448edf003c535f3_ebaded49d6e07c97)
  unreachable
bb14:
  call void @__olang_check_failed(ptr @olang_loc_979fe2e14fb6de05_5947910940c194f1)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2edeclWord(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t10, ptr %l7, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l8, !tbaa !24
  %t13 = load i64, ptr %l8, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l9, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l8, !tbaa !24
  %t23 = mul i64 %t22, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t24, ptr %l7, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaredUnique(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l14
  br label %bb5
bb5:
  %t36 = load i1, ptr %l14, !tbaa !21
  br i1 %t36, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t37, ptr %l16, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l17, !tbaa !24
  %t40 = load i64, ptr %l17, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l18, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l17, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t51, ptr %l16, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t53, ptr %l20, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l21, !tbaa !24
  %t56 = load i64, ptr %l21, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l22, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l21, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t67, ptr %l20, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fexplain_2efirstClose(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t2, 0
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = icmp sge i64 3, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sle i64 3, %t10
  br i1 %t11, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_6896438a508f3415_b4ea8b5a918f5051)
  unreachable
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sle i64 %t13, %t14
  br i1 %t15, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_6896438a508f3415_b4ea8b5a918f5051)
  unreachable
bb5:
  %t17 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = getelementptr i8, ptr %t18, i64 3
  %t21 = sub i64 %t19, 3
  %t22 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  %t25 = call i64 @compiler_2fexplain_2efirstItemEndAll(ptr %v0, { i64, ptr } %t23)
  store i64 %t25, ptr %l10
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6896438a508f3415_b4ea8b5a918f5051)
  unreachable
bb7:
  %t26 = load i64, ptr %l10, !tbaa !24
  %t27 = add i64 3, %t26
  store i64 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fexplain_2efirstItemEnd(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i8
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l40 = alloca i1
  %l43 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i1
  %l56 = alloca i1
  %l63 = alloca i1
  %l66 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
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
  store i64 0, ptr %l14, !tbaa !24
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
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l14, !tbaa !24
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
  br label %bb42
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
  store { i64, ptr } %t51, ptr %l35, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  store i8 %t57, ptr %l8, !tbaa !22
  %t59 = load i8, ptr %l8, !tbaa !22
  %t61 = icmp eq i8 %t59, 40
  br i1 %t61, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb13
bb12:
  %t63 = load i8, ptr %l8, !tbaa !22
  %t65 = icmp eq i8 %t63, 60
  store i1 %t65, ptr %l40, !tbaa !21
  br label %bb13
bb13:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb16
bb15:
  %t68 = load i8, ptr %l8, !tbaa !22
  %t70 = icmp eq i8 %t68, 91
  store i1 %t70, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t72 = load i1, ptr %l43, !tbaa !21
  br i1 %t72, label %bb17, label %bb18
bb17:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l1, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t77 = load i8, ptr %l8, !tbaa !22
  %t79 = icmp eq i8 %t77, 41
  br i1 %t79, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb22
bb21:
  %t81 = load i8, ptr %l8, !tbaa !22
  %t83 = icmp eq i8 %t81, 62
  store i1 %t83, ptr %l50, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb25
bb24:
  %t86 = load i8, ptr %l8, !tbaa !22
  %t88 = icmp eq i8 %t86, 93
  store i1 %t88, ptr %l53, !tbaa !21
  br label %bb25
bb25:
  %t90 = load i1, ptr %l53, !tbaa !21
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t91 = load i64, ptr %l1, !tbaa !24
  %t93 = icmp sgt i64 %t91, 0
  store i1 %t93, ptr %l56, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb28
bb28:
  %t95 = load i1, ptr %l56, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t96 = load i64, ptr %l1, !tbaa !24
  %t98 = sub i64 %t96, 1
  store i64 %t98, ptr %l1, !tbaa !24
  br label %bb41
bb30:
  br label %bb31
bb31:
  %t100 = load i64, ptr %l1, !tbaa !24
  %t102 = icmp eq i64 %t100, 0
  br i1 %t102, label %bb32, label %bb33
bb32:
  %t104 = load i8, ptr %l8, !tbaa !22
  %t106 = icmp eq i8 %t104, 44
  br i1 %t106, label %bb34, label %bb35
bb33:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb37
bb34:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb36
bb35:
  %t108 = load i8, ptr %l8, !tbaa !22
  %t110 = icmp eq i8 %t108, 41
  store i1 %t110, ptr %l66, !tbaa !21
  br label %bb36
bb36:
  %t112 = load i1, ptr %l66, !tbaa !21
  store i1 %t112, ptr %l63, !tbaa !21
  br label %bb37
bb37:
  %t113 = load i1, ptr %l63, !tbaa !21
  br i1 %t113, label %bb38, label %bb39
bb38:
  %t114 = load i64, ptr %l7, !tbaa !24
  store i64 %t114, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l6, !tbaa !24
  br label %bb7
bb42:
  %t120 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 0
  store i64 %t122, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i8
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l40 = alloca i64
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l47 = alloca i1
  %l51 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca ptr
  %l69 = alloca %"compiler/source:Span"
  %l70 = alloca { i64, ptr }
  %l72 = alloca i64
  %l74 = alloca i64
  %l75 = alloca i64
  %l79 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l89 = alloca i64
  %l93 = alloca i64
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l97 = alloca i64
  %l99 = alloca ptr
  %l107 = alloca i32
  %l109 = alloca { i64, ptr }
  %l113 = alloca i1
  %l114 = alloca ptr
  %l119 = alloca i32
  %l120 = alloca { i64, ptr }
  %l123 = alloca i1
  %l124 = alloca i1
  %l126 = alloca i1
  %l131 = alloca i64
  %l132 = alloca i64
  %l136 = alloca { i64, ptr }
  %l138 = alloca i64
  %l139 = alloca i64
  %l145 = alloca { i64, ptr }
  %l147 = alloca i64
  %l151 = alloca i1
  %l152 = alloca i1
  %l154 = alloca i1
  %l156 = alloca i64
  %l157 = alloca i64
  %l170 = alloca i64
  %l173 = alloca i64
  %l191 = alloca { i64, ptr }
  %l196 = alloca i1
  %l203 = alloca i1
  %l206 = alloca i1
  %l213 = alloca i1
  %l216 = alloca i1
  %l219 = alloca i1
  %l222 = alloca i1
  %l228 = alloca i1
  %l229 = alloca { i64, ptr }
  %l241 = alloca i64
  %l242 = alloca i64
  %l246 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %l248 = alloca i64
  %l249 = alloca i64
  %l253 = alloca { i64, ptr }
  %l254 = alloca { i64, ptr }
  %l255 = alloca i64
  %l258 = alloca i64
  %l259 = alloca i64
  %l265 = alloca { i64, ptr }
  %l267 = alloca i64
  %l272 = alloca i1
  %l273 = alloca { i64, ptr }
  %l275 = alloca i64
  %l276 = alloca ptr
  %l277 = alloca i64
  %l278 = alloca i64
  %l282 = alloca { i64, ptr }
  %l285 = alloca { i64, ptr }
  %l289 = alloca i64
  %l294 = alloca i64
  %l295 = alloca { i64, ptr }
  %l296 = alloca i64
  %l298 = alloca i64
  %l299 = alloca i64
  %l313 = alloca i64
  %l314 = alloca i64
  %l315 = alloca i64
  %l323 = alloca { i64, ptr }
  %l325 = alloca i64
  %l327 = alloca i64
  %l328 = alloca i64
  %l333 = alloca i64
  %l335 = alloca i64
  %l336 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l30
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l30, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 3
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Func", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s0, ptr %t19, i32 %t23)
  store { i64, ptr } %t26, ptr %l37
  br label %bb2
bb2:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l38, !tbaa !29
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t28)
  store i64 %t30, ptr %l40
  br label %bb3
bb3:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = call i64 @compiler_2fexplain_2ereceiverVars(ptr %v0, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l43
  br label %bb4
bb4:
  %t36 = load ptr, ptr %l38, !tbaa !29
  %t37 = load i64, ptr %l40, !tbaa !24
  %t38 = load i64, ptr %l43, !tbaa !24
  %t39 = call { i64, ptr } @compiler_2fexplain_2etypeVars(ptr %v0, ptr %s0, ptr %t36, i64 %t37, i64 %t38)
  store { i64, ptr } %t39, ptr %l44
  br label %bb5
bb5:
  %t40 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 1
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t46 = add i64 %t42, %t45
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t41, i64 %t42)
  %t48 = getelementptr i8, ptr %t47, i64 %t42
  call void @olang_textcopy(ptr %t48, ptr %t44, i64 %t45)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  store { i64, ptr } %t50, ptr %l5, !tbaa !27
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t54 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t52)
  store i1 %t54, ptr %l47
  br label %bb6
bb6:
  %t55 = load i1, ptr %l47, !tbaa !21
  br i1 %t55, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/load:Loader", ptr %t62, i32 0, i32 10
  store ptr %t64, ptr %l51, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t72 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l55
  br label %bb9
bb8:
  br label %bb31
bb9:
  %t73 = load ptr, ptr %l51, !tbaa !29
  %t74 = load i64, ptr %l55, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t73, i64 %t74)
  store ptr %t75, ptr %l56
  br label %bb10
bb10:
  %t76 = load ptr, ptr %l56, !tbaa !29
  %t78 = getelementptr %"compiler/load:Module", ptr %t76, i32 0, i32 6
  %t79 = load ptr, ptr %t78, !tbaa !29
  store ptr %t79, ptr %l6, !tbaa !29
  %t81 = load ptr, ptr %l6, !tbaa !29
  %t83 = icmp eq ptr %t81, null
  br i1 %t83, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_fc7f64fd7b454af3_cf2a3e2278d9fc1f)
  unreachable
bb12:
  br label %bb13
bb13:
  %t85 = load ptr, ptr %l6, !tbaa !29
  %t88 = getelementptr %"compiler/source:Source", ptr %t85, i32 0, i32 1
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  store { i64, ptr } %t89, ptr %l7, !tbaa !27
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t93 = getelementptr %"compiler/ast:Func", ptr %t91, i32 0, i32 9
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = icmp eq ptr %t94, null
  br i1 %t96, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_499d9639469ba124_2d1e6838c6dcdf80)
  unreachable
bb15:
  br label %bb16
bb16:
  %t98 = load ptr, ptr %l4, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Func", ptr %t98, i32 0, i32 9
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t101)
  store %"compiler/source:Span" %t103, ptr %l69
  br label %bb17
bb17:
  %t104 = load %"compiler/source:Span", ptr %l69
  store %"compiler/source:Span" %t104, ptr %l8
  %t105 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t105, ptr %l70, !tbaa !27
  %t106 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = sext i32 %t107 to i64
  store i64 %t109, ptr %l72, !tbaa !24
  %t110 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t111 = load i32, ptr %t110, !tbaa !23
  %t113 = sext i32 %t111 to i64
  store i64 %t113, ptr %l74, !tbaa !24
  %t114 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  store i64 %t115, ptr %l75, !tbaa !24
  %t116 = load i64, ptr %l72, !tbaa !24
  %t117 = icmp sge i64 %t116, 0
  br i1 %t117, label %bb18, label %bb19
bb18:
  %t119 = load i64, ptr %l72, !tbaa !24
  %t120 = load i64, ptr %l74, !tbaa !24
  %t121 = icmp sle i64 %t119, %t120
  br i1 %t121, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_fb9ea6e5b3ca71a7_d8a084b91cdc3d23)
  unreachable
bb20:
  %t123 = load i64, ptr %l74, !tbaa !24
  %t124 = load i64, ptr %l75, !tbaa !24
  %t125 = icmp sle i64 %t123, %t124
  br i1 %t125, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_fb9ea6e5b3ca71a7_d8a084b91cdc3d23)
  unreachable
bb22:
  %t127 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = load i64, ptr %l72, !tbaa !24
  %t130 = load i64, ptr %l74, !tbaa !24
  %t131 = getelementptr i8, ptr %t128, i64 %t129
  %t132 = sub i64 %t130, %t129
  %t133 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t131, 1
  store { i64, ptr } %t134, ptr %l79, !tbaa !27
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/load:Loader", ptr %t141, i32 0, i32 3
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t145 = load ptr, ptr %l4, !tbaa !29
  %t147 = getelementptr %"compiler/ast:Func", ptr %t145, i32 0, i32 10
  %t148 = load i32, ptr %t147, !tbaa !23
  %t151 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s2, ptr %t144, i32 %t148)
  store { i64, ptr } %t151, ptr %l86
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_fb9ea6e5b3ca71a7_d8a084b91cdc3d23)
  unreachable
bb24:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l87, !tbaa !29
  %t153 = load i64, ptr %l1, !tbaa !24
  %t155 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t153)
  store i64 %t155, ptr %l89
  br label %bb25
bb25:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t160 = load i64, ptr %l1, !tbaa !24
  %t163 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerVarCount(ptr %v0, ptr %t159, i64 %t160)
  store i64 %t163, ptr %l93
  br label %bb26
bb26:
  %t164 = load ptr, ptr %l87, !tbaa !29
  %t165 = load i64, ptr %l89, !tbaa !24
  %t166 = load i64, ptr %l93, !tbaa !24
  %t167 = call { i64, ptr } @compiler_2fexplain_2etypeVars(ptr %v0, ptr %s2, ptr %t164, i64 %t165, i64 %t166)
  store { i64, ptr } %t167, ptr %l94
  br label %bb27
bb27:
  %t168 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t174 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t177 = add i64 %t173, %t176
  %t178 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t181 = add i64 %t177, %t180
  %t182 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t181)
  call void @olang_textcopy(ptr %t182, ptr %t169, i64 %t170)
  %t183 = getelementptr i8, ptr %t182, i64 %t170
  call void @olang_textcopy(ptr %t183, ptr %t171, i64 %t172)
  %t184 = getelementptr i8, ptr %t183, i64 %t172
  call void @olang_textcopy(ptr %t184, ptr %t175, i64 %t176)
  %t185 = getelementptr i8, ptr %t184, i64 %t176
  call void @olang_textcopy(ptr %t185, ptr %t179, i64 %t180)
  %t186 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t182, 1
  store { i64, ptr } %t187, ptr %l95, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 0
  %t190 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 0
  store i64 %t191, ptr %l97, !tbaa !24
  %t193 = load i64, ptr %l97, !tbaa !24
  %t194 = icmp eq i64 %t189, %t193
  br i1 %t194, label %bb28, label %bb29
bb28:
  %t196 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = load i64, ptr %l97, !tbaa !24
  %t201 = mul i64 %t200, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t197, ptr %t199, i64 %t201, i1 false)
  br label %bb30
bb29:
  %t202 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t202, ptr %l5, !tbaa !27
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb31:
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l99, !tbaa !29
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i32, ptr %l2, !tbaa !23
  %t206 = load ptr, ptr %l4, !tbaa !29
  %t208 = getelementptr %"compiler/ast:Func", ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t210 = load ptr, ptr %l4, !tbaa !29
  %t212 = getelementptr %"compiler/ast:Func", ptr %t210, i32 0, i32 3
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = getelementptr %"compiler/ast:Sig", ptr %t213, i32 0, i32 0
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  %t221 = call i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %v0, ptr %v0, ptr %t204, i32 %t205, ptr %t209, { i64, ptr } %t216)
  store i32 %t221, ptr %l107
  br label %bb32
bb32:
  %t223 = load ptr, ptr %l99, !tbaa !29
  %t224 = load i32, ptr %l107, !tbaa !23
  %t226 = call { i64, ptr } @compiler_2fexplain_2esigOf(ptr %v0, ptr %s0, ptr %t223, i32 %t224, i64 %a3)
  store { i64, ptr } %t226, ptr %l109
  br label %bb33
bb33:
  %t227 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t227, ptr %l9, !tbaa !27
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/check:Checker", ptr %t228, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t232 = load i64, ptr %l1, !tbaa !24
  %t235 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t231, i64 %t232)
  store i1 %t235, ptr %l113
  br label %bb34
bb34:
  %t236 = load i1, ptr %l113, !tbaa !21
  br i1 %t236, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s4
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l114, !tbaa !29
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/check:Checker", ptr %t238, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t243 = getelementptr %"compiler/generic:Program", ptr %t241, i32 0, i32 2
  %t244 = load i32, ptr %l2, !tbaa !23
  %t247 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t243, i32 %t244)
  store i32 %t247, ptr %l119
  br label %bb37
bb36:
  br label %bb142
bb37:
  %t248 = load ptr, ptr %l114, !tbaa !29
  %t249 = load i32, ptr %l119, !tbaa !23
  %t250 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s4, ptr %t248, i32 %t249)
  store { i64, ptr } %t250, ptr %l120
  br label %bb38
bb38:
  %t251 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t251, ptr %l10, !tbaa !27
  %t252 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t253 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t256 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s4, { i64, ptr } %t252, { i64, ptr } %t253)
  store i1 %t256, ptr %l123
  br label %bb39
bb39:
  %t257 = load i1, ptr %l123, !tbaa !21
  br i1 %t257, label %bb40, label %bb41
bb40:
  %t258 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t260 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s4, ptr %s4, { i64, ptr } %t258, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t260, ptr %l126
  br label %bb42
bb41:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb43
bb42:
  %t261 = load i1, ptr %l126, !tbaa !21
  store i1 %t261, ptr %l124, !tbaa !21
  br label %bb43
bb43:
  %t262 = load i1, ptr %l124, !tbaa !21
  br i1 %t262, label %bb44, label %bb45
bb44:
  %t263 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t266, 0
  %t271 = sub i64 %t265, %t268
  store i64 %t271, ptr %l131, !tbaa !24
  %t272 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 0
  store i64 %t273, ptr %l132, !tbaa !24
  %t274 = icmp sge i64 0, 0
  br i1 %t274, label %bb46, label %bb47
bb45:
  store %olang.scope zeroinitializer, ptr %s7
  %t276 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t277 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t280 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s4, { i64, ptr } %t276, { i64, ptr } %t277)
  store i1 %t280, ptr %l151
  br label %bb61
bb46:
  %t281 = load i64, ptr %l131, !tbaa !24
  %t282 = icmp sle i64 0, %t281
  br i1 %t282, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb48:
  %t284 = load i64, ptr %l131, !tbaa !24
  %t285 = load i64, ptr %l132, !tbaa !24
  %t286 = icmp sle i64 %t284, %t285
  br i1 %t286, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb50:
  %t288 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !27
  %t290 = load i64, ptr %l131, !tbaa !24
  %t291 = getelementptr i8, ptr %t289, i64 0
  %t292 = sub i64 %t290, 0
  %t293 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t291, 1
  store { i64, ptr } %t294, ptr %l136, !tbaa !27
  %t295 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t295, 0
  store i64 %t297, ptr %l138, !tbaa !24
  %t298 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t298, 0
  store i64 %t299, ptr %l139, !tbaa !24
  %t300 = icmp sge i64 9, 0
  br i1 %t300, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb52:
  %t302 = load i64, ptr %l138, !tbaa !24
  %t303 = icmp sle i64 9, %t302
  br i1 %t303, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb54:
  %t305 = load i64, ptr %l138, !tbaa !24
  %t306 = load i64, ptr %l139, !tbaa !24
  %t307 = icmp sle i64 %t305, %t306
  br i1 %t307, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb56:
  %t309 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = load i64, ptr %l138, !tbaa !24
  %t312 = getelementptr i8, ptr %t310, i64 9
  %t313 = sub i64 %t311, 9
  %t314 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t312, 1
  %t316 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t317 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t317, 1
  %t319 = extractvalue { i64, ptr } %t317, 0
  %t320 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t321 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t322 = add i64 %t319, %t321
  %t324 = extractvalue { i64, ptr } %t315, 1
  %t325 = extractvalue { i64, ptr } %t315, 0
  %t326 = add i64 %t322, %t325
  %t327 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t329 = add i64 %t326, %t328
  %t331 = extractvalue { i64, ptr } %t316, 1
  %t332 = extractvalue { i64, ptr } %t316, 0
  %t333 = add i64 %t329, %t332
  %t334 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t333)
  call void @olang_textcopy(ptr %t334, ptr %t318, i64 %t319)
  %t335 = getelementptr i8, ptr %t334, i64 %t319
  call void @olang_textcopy(ptr %t335, ptr %t320, i64 %t321)
  %t336 = getelementptr i8, ptr %t335, i64 %t321
  call void @olang_textcopy(ptr %t336, ptr %t324, i64 %t325)
  %t337 = getelementptr i8, ptr %t336, i64 %t325
  call void @olang_textcopy(ptr %t337, ptr %t327, i64 %t328)
  %t338 = getelementptr i8, ptr %t337, i64 %t328
  call void @olang_textcopy(ptr %t338, ptr %t331, i64 %t332)
  %t339 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t334, 1
  store { i64, ptr } %t340, ptr %l145, !tbaa !27
  %t341 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t341, 0
  %t343 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 0
  store i64 %t344, ptr %l147, !tbaa !24
  %t346 = load i64, ptr %l147, !tbaa !24
  %t347 = icmp eq i64 %t342, %t346
  br i1 %t347, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb58:
  %t349 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !27
  %t353 = load i64, ptr %l147, !tbaa !24
  %t354 = mul i64 %t353, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t350, ptr %t352, i64 %t354, i1 false)
  br label %bb60
bb59:
  %t355 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t355, ptr %l9, !tbaa !27
  br label %bb60
bb60:
  br label %bb141
bb61:
  %t356 = load i1, ptr %l151, !tbaa !21
  br i1 %t356, label %bb62, label %bb63
bb62:
  %t357 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t359 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s4, ptr %s7, { i64, ptr } %t357, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t359, ptr %l154
  br label %bb64
bb63:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb65
bb64:
  %t360 = load i1, ptr %l154, !tbaa !21
  store i1 %t360, ptr %l152, !tbaa !21
  br label %bb65
bb65:
  %t361 = load i1, ptr %l152, !tbaa !21
  br i1 %t361, label %bb66, label %bb67
bb66:
  %t362 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t362, 0
  store i64 %t364, ptr %l156, !tbaa !24
  %t365 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t365, 0
  store i64 %t366, ptr %l157, !tbaa !24
  %t367 = icmp sge i64 13, 0
  br i1 %t367, label %bb68, label %bb69
bb67:
  br label %bb140
bb68:
  %t369 = load i64, ptr %l156, !tbaa !24
  %t370 = icmp sle i64 13, %t369
  br i1 %t370, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_904aca603cad2e45_e62ac09e4cb76009)
  unreachable
bb70:
  %t372 = load i64, ptr %l156, !tbaa !24
  %t373 = load i64, ptr %l157, !tbaa !24
  %t374 = icmp sle i64 %t372, %t373
  br i1 %t374, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_904aca603cad2e45_e62ac09e4cb76009)
  unreachable
bb72:
  %t376 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = load i64, ptr %l156, !tbaa !24
  %t379 = getelementptr i8, ptr %t377, i64 13
  %t380 = sub i64 %t378, 13
  %t381 = insertvalue { i64, ptr } undef, i64 %t380, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t379, 1
  store { i64, ptr } %t382, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t384 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t384, 0
  %t388 = sub i64 %t386, 1
  store i64 %t388, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t390 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t392 = extractvalue { i64, ptr } %t390, 0
  store i64 %t392, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t394 = load i64, ptr %l15, !tbaa !24
  %t395 = load i64, ptr %l14, !tbaa !24
  %t398 = icmp sgt i64 %t394, %t395
  br i1 %t398, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_904aca603cad2e45_e62ac09e4cb76009)
  unreachable
bb74:
  %t400 = load i64, ptr %l16, !tbaa !24
  %t402 = icmp sgt i64 %t400, 0
  br i1 %t402, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l170, !tbaa !24
  br label %bb79
bb76:
  %t404 = load i64, ptr %l15, !tbaa !24
  %t405 = load i64, ptr %l14, !tbaa !24
  %t408 = sub i64 %t404, %t405
  %t409 = load i64, ptr %l16, !tbaa !24
  %t412 = add i64 %t408, %t409
  %t414 = sub i64 %t412, 1
  %t415 = load i64, ptr %l16, !tbaa !24
  %t418 = sdiv i64 %t414, %t415
  store i64 %t418, ptr %l173, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l173, !tbaa !24
  br label %bb78
bb78:
  %t420 = load i64, ptr %l173, !tbaa !24
  store i64 %t420, ptr %l170, !tbaa !24
  br label %bb79
bb79:
  %t421 = load i64, ptr %l170, !tbaa !24
  store i64 %t421, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb80
bb80:
  %t422 = load i64, ptr %l18, !tbaa !24
  %t423 = load i64, ptr %l17, !tbaa !24
  %t426 = icmp slt i64 %t422, %t423
  %t428 = xor i1 %t426, true
  br i1 %t428, label %bb81, label %bb82
bb81:
  br label %bb118
bb82:
  br label %bb83
bb83:
  %t430 = load i64, ptr %l14, !tbaa !24
  %t431 = load i64, ptr %l18, !tbaa !24
  %t432 = load i64, ptr %l16, !tbaa !24
  %t435 = mul i64 %t431, %t432
  %t438 = add i64 %t430, %t435
  store i64 %t438, ptr %l19, !tbaa !24
  %t440 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t440, ptr %l191, !tbaa !27
  %t441 = load i64, ptr %l19, !tbaa !24
  %t443 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t444 = load ptr, ptr %t443, !tbaa !27
  %t445 = getelementptr i8, ptr %t444, i64 %t441
  %t446 = load i8, ptr %t445, !tbaa !32
  store i8 %t446, ptr %l20, !tbaa !22
  %t448 = load i8, ptr %l20, !tbaa !22
  %t450 = icmp eq i8 %t448, 60
  br i1 %t450, label %bb84, label %bb85
bb84:
  store i1 true, ptr %l196, !tbaa !21
  br label %bb86
bb85:
  %t452 = load i8, ptr %l20, !tbaa !22
  %t454 = icmp eq i8 %t452, 40
  store i1 %t454, ptr %l196, !tbaa !21
  br label %bb86
bb86:
  %t456 = load i1, ptr %l196, !tbaa !21
  br i1 %t456, label %bb87, label %bb88
bb87:
  %t457 = load i64, ptr %l12, !tbaa !24
  %t459 = add i64 %t457, 1
  store i64 %t459, ptr %l12, !tbaa !24
  br label %bb89
bb88:
  br label %bb89
bb89:
  %t461 = load i8, ptr %l20, !tbaa !22
  %t463 = icmp eq i8 %t461, 62
  br i1 %t463, label %bb90, label %bb91
bb90:
  store i1 true, ptr %l203, !tbaa !21
  br label %bb92
bb91:
  %t465 = load i8, ptr %l20, !tbaa !22
  %t467 = icmp eq i8 %t465, 41
  store i1 %t467, ptr %l203, !tbaa !21
  br label %bb92
bb92:
  %t469 = load i1, ptr %l203, !tbaa !21
  br i1 %t469, label %bb93, label %bb94
bb93:
  %t470 = load i64, ptr %l12, !tbaa !24
  %t472 = icmp sgt i64 %t470, 0
  store i1 %t472, ptr %l206, !tbaa !21
  br label %bb95
bb94:
  store i1 false, ptr %l206, !tbaa !21
  br label %bb95
bb95:
  %t474 = load i1, ptr %l206, !tbaa !21
  br i1 %t474, label %bb96, label %bb97
bb96:
  %t475 = load i64, ptr %l12, !tbaa !24
  %t477 = sub i64 %t475, 1
  store i64 %t477, ptr %l12, !tbaa !24
  br label %bb117
bb97:
  br label %bb98
bb98:
  %t479 = load i64, ptr %l12, !tbaa !24
  %t481 = icmp eq i64 %t479, 0
  br i1 %t481, label %bb99, label %bb100
bb99:
  %t483 = load i8, ptr %l20, !tbaa !22
  %t485 = icmp eq i8 %t483, 62
  br i1 %t485, label %bb101, label %bb102
bb100:
  store i1 false, ptr %l213, !tbaa !21
  br label %bb113
bb101:
  store i1 true, ptr %l216, !tbaa !21
  br label %bb103
bb102:
  %t487 = load i8, ptr %l20, !tbaa !22
  %t489 = icmp eq i8 %t487, 44
  store i1 %t489, ptr %l216, !tbaa !21
  br label %bb103
bb103:
  %t491 = load i1, ptr %l216, !tbaa !21
  br i1 %t491, label %bb104, label %bb105
bb104:
  store i1 true, ptr %l219, !tbaa !21
  br label %bb112
bb105:
  %t492 = load i8, ptr %l20, !tbaa !22
  %t494 = icmp eq i8 %t492, 32
  br i1 %t494, label %bb106, label %bb107
bb106:
  %t496 = load i64, ptr %l19, !tbaa !24
  %t498 = add i64 %t496, 1
  %t499 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t501 = extractvalue { i64, ptr } %t499, 0
  %t504 = icmp slt i64 %t498, %t501
  store i1 %t504, ptr %l222, !tbaa !21
  br label %bb108
bb107:
  store i1 false, ptr %l222, !tbaa !21
  br label %bb108
bb108:
  %t506 = load i1, ptr %l222, !tbaa !21
  br i1 %t506, label %bb109, label %bb110
bb109:
  %t507 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t507, ptr %l229, !tbaa !27
  %t508 = load i64, ptr %l19, !tbaa !24
  %t510 = add i64 %t508, 1
  %t512 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t513 = load ptr, ptr %t512, !tbaa !27
  %t514 = getelementptr i8, ptr %t513, i64 %t510
  %t515 = load i8, ptr %t514, !tbaa !32
  %t517 = icmp eq i8 %t515, 63
  store i1 %t517, ptr %l228, !tbaa !21
  br label %bb111
bb110:
  store i1 false, ptr %l228, !tbaa !21
  br label %bb111
bb111:
  %t519 = load i1, ptr %l228, !tbaa !21
  store i1 %t519, ptr %l219, !tbaa !21
  br label %bb112
bb112:
  %t520 = load i1, ptr %l219, !tbaa !21
  store i1 %t520, ptr %l213, !tbaa !21
  br label %bb113
bb113:
  %t521 = load i1, ptr %l213, !tbaa !21
  br i1 %t521, label %bb114, label %bb115
bb114:
  %t522 = load i64, ptr %l19, !tbaa !24
  store i64 %t522, ptr %l13, !tbaa !24
  br label %bb118
bb115:
  br label %bb116
bb116:
  br label %bb117
bb117:
  %t524 = load i64, ptr %l18, !tbaa !24
  %t526 = add i64 %t524, 1
  store i64 %t526, ptr %l18, !tbaa !24
  br label %bb80
bb118:
  %t528 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t530 = extractvalue { i64, ptr } %t528, 0
  %t531 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t533 = extractvalue { i64, ptr } %t531, 0
  %t536 = sub i64 %t530, %t533
  store i64 %t536, ptr %l241, !tbaa !24
  %t537 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t538 = extractvalue { i64, ptr } %t537, 0
  store i64 %t538, ptr %l242, !tbaa !24
  %t539 = icmp sge i64 0, 0
  br i1 %t539, label %bb119, label %bb120
bb119:
  %t541 = load i64, ptr %l241, !tbaa !24
  %t542 = icmp sle i64 0, %t541
  br i1 %t542, label %bb121, label %bb122
bb120:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb121:
  %t544 = load i64, ptr %l241, !tbaa !24
  %t545 = load i64, ptr %l242, !tbaa !24
  %t546 = icmp sle i64 %t544, %t545
  br i1 %t546, label %bb123, label %bb124
bb122:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb123:
  %t548 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t549 = load ptr, ptr %t548, !tbaa !27
  %t550 = load i64, ptr %l241, !tbaa !24
  %t551 = getelementptr i8, ptr %t549, i64 0
  %t552 = sub i64 %t550, 0
  %t553 = insertvalue { i64, ptr } undef, i64 %t552, 0
  %t554 = insertvalue { i64, ptr } %t553, ptr %t551, 1
  store { i64, ptr } %t554, ptr %l246, !tbaa !27
  %t555 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t555, ptr %l247, !tbaa !27
  %t556 = load i64, ptr %l13, !tbaa !24
  store i64 %t556, ptr %l248, !tbaa !24
  %t557 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t558 = extractvalue { i64, ptr } %t557, 0
  store i64 %t558, ptr %l249, !tbaa !24
  %t559 = icmp sge i64 0, 0
  br i1 %t559, label %bb125, label %bb126
bb124:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb125:
  %t561 = load i64, ptr %l248, !tbaa !24
  %t562 = icmp sle i64 0, %t561
  br i1 %t562, label %bb127, label %bb128
bb126:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb127:
  %t564 = load i64, ptr %l248, !tbaa !24
  %t565 = load i64, ptr %l249, !tbaa !24
  %t566 = icmp sle i64 %t564, %t565
  br i1 %t566, label %bb129, label %bb130
bb128:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb129:
  %t568 = getelementptr { i64, ptr }, ptr %l247, i32 0, i32 1
  %t569 = load ptr, ptr %t568, !tbaa !27
  %t570 = load i64, ptr %l248, !tbaa !24
  %t571 = getelementptr i8, ptr %t569, i64 0
  %t572 = sub i64 %t570, 0
  %t573 = insertvalue { i64, ptr } undef, i64 %t572, 0
  %t574 = insertvalue { i64, ptr } %t573, ptr %t571, 1
  store { i64, ptr } %t574, ptr %l253, !tbaa !27
  %t575 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t575, ptr %l254, !tbaa !27
  %t576 = load i64, ptr %l13, !tbaa !24
  store i64 %t576, ptr %l255, !tbaa !24
  %t577 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t580 = extractvalue { i64, ptr } %t577, 0
  store i64 %t580, ptr %l258, !tbaa !24
  %t581 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t582 = extractvalue { i64, ptr } %t581, 0
  store i64 %t582, ptr %l259, !tbaa !24
  %t583 = load i64, ptr %l255, !tbaa !24
  %t584 = icmp sge i64 %t583, 0
  br i1 %t584, label %bb131, label %bb132
bb130:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb131:
  %t586 = load i64, ptr %l255, !tbaa !24
  %t587 = load i64, ptr %l258, !tbaa !24
  %t588 = icmp sle i64 %t586, %t587
  br i1 %t588, label %bb133, label %bb134
bb132:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb133:
  %t590 = load i64, ptr %l258, !tbaa !24
  %t591 = load i64, ptr %l259, !tbaa !24
  %t592 = icmp sle i64 %t590, %t591
  br i1 %t592, label %bb135, label %bb136
bb134:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb135:
  %t594 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t595 = load ptr, ptr %t594, !tbaa !27
  %t596 = load i64, ptr %l255, !tbaa !24
  %t597 = load i64, ptr %l258, !tbaa !24
  %t598 = getelementptr i8, ptr %t595, i64 %t596
  %t599 = sub i64 %t597, %t596
  %t600 = insertvalue { i64, ptr } undef, i64 %t599, 0
  %t601 = insertvalue { i64, ptr } %t600, ptr %t598, 1
  %t602 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t603 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t604 = extractvalue { i64, ptr } %t603, 1
  %t605 = extractvalue { i64, ptr } %t603, 0
  %t606 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t607 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t608 = add i64 %t605, %t607
  %t609 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t610 = extractvalue { i64, ptr } %t609, 1
  %t611 = extractvalue { i64, ptr } %t609, 0
  %t612 = add i64 %t608, %t611
  %t613 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t614 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t615 = add i64 %t612, %t614
  %t617 = extractvalue { i64, ptr } %t601, 1
  %t618 = extractvalue { i64, ptr } %t601, 0
  %t619 = add i64 %t615, %t618
  %t620 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t621 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t622 = add i64 %t619, %t621
  %t624 = extractvalue { i64, ptr } %t602, 1
  %t625 = extractvalue { i64, ptr } %t602, 0
  %t626 = add i64 %t622, %t625
  %t627 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t626)
  call void @olang_textcopy(ptr %t627, ptr %t604, i64 %t605)
  %t628 = getelementptr i8, ptr %t627, i64 %t605
  call void @olang_textcopy(ptr %t628, ptr %t606, i64 %t607)
  %t629 = getelementptr i8, ptr %t628, i64 %t607
  call void @olang_textcopy(ptr %t629, ptr %t610, i64 %t611)
  %t630 = getelementptr i8, ptr %t629, i64 %t611
  call void @olang_textcopy(ptr %t630, ptr %t613, i64 %t614)
  %t631 = getelementptr i8, ptr %t630, i64 %t614
  call void @olang_textcopy(ptr %t631, ptr %t617, i64 %t618)
  %t632 = getelementptr i8, ptr %t631, i64 %t618
  call void @olang_textcopy(ptr %t632, ptr %t620, i64 %t621)
  %t633 = getelementptr i8, ptr %t632, i64 %t621
  call void @olang_textcopy(ptr %t633, ptr %t624, i64 %t625)
  %t634 = insertvalue { i64, ptr } undef, i64 %t626, 0
  %t635 = insertvalue { i64, ptr } %t634, ptr %t627, 1
  store { i64, ptr } %t635, ptr %l265, !tbaa !27
  %t636 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t637 = extractvalue { i64, ptr } %t636, 0
  %t638 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t639 = extractvalue { i64, ptr } %t638, 0
  store i64 %t639, ptr %l267, !tbaa !24
  %t641 = load i64, ptr %l267, !tbaa !24
  %t642 = icmp eq i64 %t637, %t641
  br i1 %t642, label %bb137, label %bb138
bb136:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb137:
  %t644 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t645 = load ptr, ptr %t644, !tbaa !27
  %t646 = getelementptr { i64, ptr }, ptr %l265, i32 0, i32 1
  %t647 = load ptr, ptr %t646, !tbaa !27
  %t648 = load i64, ptr %l267, !tbaa !24
  %t649 = mul i64 %t648, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t645, ptr %t647, i64 %t649, i1 false)
  br label %bb139
bb138:
  %t650 = load { i64, ptr }, ptr %l265, !tbaa !27
  store { i64, ptr } %t650, ptr %l9, !tbaa !27
  br label %bb139
bb139:
  br label %bb140
bb140:
  call void @__olang_scope_close(ptr %s7)
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s4)
  br label %bb142
bb142:
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t653 = getelementptr %"compiler/check:Checker", ptr %t651, i32 0, i32 1
  %t654 = load ptr, ptr %t653, !tbaa !29
  %t655 = load i64, ptr %l1, !tbaa !24
  %t658 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t654, i64 %t655)
  store i1 %t658, ptr %l272
  br label %bb143
bb143:
  %t659 = load i1, ptr %l272, !tbaa !21
  br i1 %t659, label %bb144, label %bb145
bb144:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l273, !tbaa !27
  br label %bb146
bb145:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l273, !tbaa !27
  br label %bb146
bb146:
  %t660 = load { i64, ptr }, ptr %l273, !tbaa !27
  store { i64, ptr } %t660, ptr %l21, !tbaa !27
  %t661 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t663 = call i64 @compiler_2fexplain_2efirstClose(ptr %s0, { i64, ptr } %t661)
  store i64 %t663, ptr %l275
  br label %bb147
bb147:
  %t664 = load i64, ptr %l275, !tbaa !24
  store i64 %t664, ptr %l22, !tbaa !24
  %t665 = load ptr, ptr %l0, !tbaa !29
  store ptr %t665, ptr %l276, !tbaa !29
  %t666 = load i64, ptr %l22, !tbaa !24
  store i64 %t666, ptr %l277, !tbaa !24
  %t667 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t668 = extractvalue { i64, ptr } %t667, 0
  store i64 %t668, ptr %l278, !tbaa !24
  %t669 = icmp sge i64 3, 0
  br i1 %t669, label %bb148, label %bb149
bb148:
  %t671 = load i64, ptr %l277, !tbaa !24
  %t672 = icmp sle i64 3, %t671
  br i1 %t672, label %bb150, label %bb151
bb149:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb150:
  %t674 = load i64, ptr %l277, !tbaa !24
  %t675 = load i64, ptr %l278, !tbaa !24
  %t676 = icmp sle i64 %t674, %t675
  br i1 %t676, label %bb152, label %bb153
bb151:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb152:
  %t678 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t679 = load ptr, ptr %t678, !tbaa !27
  %t680 = load i64, ptr %l277, !tbaa !24
  %t681 = getelementptr i8, ptr %t679, i64 3
  %t682 = sub i64 %t680, 3
  %t683 = insertvalue { i64, ptr } undef, i64 %t682, 0
  %t684 = insertvalue { i64, ptr } %t683, ptr %t681, 1
  store { i64, ptr } %t684, ptr %l282, !tbaa !27
  %t685 = load ptr, ptr %l4, !tbaa !29
  %t687 = getelementptr %"compiler/ast:Func", ptr %t685, i32 0, i32 3
  %t688 = load ptr, ptr %t687, !tbaa !29
  %t690 = getelementptr %"compiler/ast:Sig", ptr %t688, i32 0, i32 0
  %t691 = load { i64, ptr }, ptr %t690, !tbaa !27
  store { i64, ptr } %t691, ptr %l285, !tbaa !27
  %t692 = load ptr, ptr %l0, !tbaa !29
  %t694 = getelementptr %"compiler/check:Checker", ptr %t692, i32 0, i32 1
  %t695 = load ptr, ptr %t694, !tbaa !29
  %t696 = load i64, ptr %l1, !tbaa !24
  %t699 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t695, i64 %t696)
  store i64 %t699, ptr %l289
  br label %bb154
bb153:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb154:
  %t700 = load ptr, ptr %l4, !tbaa !29
  %t702 = getelementptr %"compiler/ast:Func", ptr %t700, i32 0, i32 1
  %t703 = load ptr, ptr %t702, !tbaa !29
  %t705 = icmp eq ptr %t703, null
  %t707 = xor i1 %t705, true
  br i1 %t707, label %bb155, label %bb156
bb155:
  store i64 1, ptr %l294, !tbaa !24
  br label %bb157
bb156:
  store i64 0, ptr %l294, !tbaa !24
  br label %bb157
bb157:
  %t709 = load ptr, ptr %l276, !tbaa !29
  %t710 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t711 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t712 = load i64, ptr %l289, !tbaa !24
  %t713 = load i64, ptr %l294, !tbaa !24
  %t714 = call { i64, ptr } @compiler_2fexplain_2ewithDefaults(ptr %v0, ptr %s0, ptr %v0, ptr %s0, ptr %t709, { i64, ptr } %t710, { i64, ptr } %t711, i64 %t712, i64 %t713)
  store { i64, ptr } %t714, ptr %l295
  br label %bb158
bb158:
  %t715 = load i64, ptr %l22, !tbaa !24
  store i64 %t715, ptr %l296, !tbaa !24
  %t716 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t718 = extractvalue { i64, ptr } %t716, 0
  store i64 %t718, ptr %l298, !tbaa !24
  %t719 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t720 = extractvalue { i64, ptr } %t719, 0
  store i64 %t720, ptr %l299, !tbaa !24
  %t721 = load i64, ptr %l296, !tbaa !24
  %t722 = icmp sge i64 %t721, 0
  br i1 %t722, label %bb159, label %bb160
bb159:
  %t724 = load i64, ptr %l296, !tbaa !24
  %t725 = load i64, ptr %l298, !tbaa !24
  %t726 = icmp sle i64 %t724, %t725
  br i1 %t726, label %bb161, label %bb162
bb160:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb161:
  %t728 = load i64, ptr %l298, !tbaa !24
  %t729 = load i64, ptr %l299, !tbaa !24
  %t730 = icmp sle i64 %t728, %t729
  br i1 %t730, label %bb163, label %bb164
bb162:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb163:
  %t732 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t733 = load ptr, ptr %t732, !tbaa !27
  %t734 = load i64, ptr %l296, !tbaa !24
  %t735 = load i64, ptr %l298, !tbaa !24
  %t736 = getelementptr i8, ptr %t733, i64 %t734
  %t737 = sub i64 %t735, %t734
  %t738 = insertvalue { i64, ptr } undef, i64 %t737, 0
  %t739 = insertvalue { i64, ptr } %t738, ptr %t736, 1
  %t740 = load { i64, ptr }, ptr %l295, !tbaa !27
  %t741 = extractvalue { i64, ptr } %t740, 1
  %t742 = extractvalue { i64, ptr } %t740, 0
  %t744 = extractvalue { i64, ptr } %t739, 1
  %t745 = extractvalue { i64, ptr } %t739, 0
  %t746 = add i64 %t742, %t745
  %t747 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t746)
  call void @olang_textcopy(ptr %t747, ptr %t741, i64 %t742)
  %t748 = getelementptr i8, ptr %t747, i64 %t742
  call void @olang_textcopy(ptr %t748, ptr %t744, i64 %t745)
  %t749 = insertvalue { i64, ptr } undef, i64 %t746, 0
  %t750 = insertvalue { i64, ptr } %t749, ptr %t747, 1
  store { i64, ptr } %t750, ptr %l23, !tbaa !27
  %t752 = load ptr, ptr %l4, !tbaa !29
  %t754 = getelementptr %"compiler/ast:Func", ptr %t752, i32 0, i32 1
  %t755 = load ptr, ptr %t754, !tbaa !29
  %t757 = icmp eq ptr %t755, null
  br i1 %t757, label %bb165, label %bb166
bb164:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb165:
  %t759 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t760 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t761 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t763 = extractvalue { i64, ptr } %t759, 1
  %t764 = extractvalue { i64, ptr } %t759, 0
  %t766 = extractvalue { i64, ptr } %t760, 1
  %t767 = extractvalue { i64, ptr } %t760, 0
  %t768 = add i64 %t764, %t767
  %t769 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t770 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t771 = add i64 %t768, %t770
  %t773 = extractvalue { i64, ptr } %t761, 1
  %t774 = extractvalue { i64, ptr } %t761, 0
  %t775 = add i64 %t771, %t774
  %t776 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t775)
  call void @olang_textcopy(ptr %t776, ptr %t763, i64 %t764)
  %t777 = getelementptr i8, ptr %t776, i64 %t764
  call void @olang_textcopy(ptr %t777, ptr %t766, i64 %t767)
  %t778 = getelementptr i8, ptr %t777, i64 %t767
  call void @olang_textcopy(ptr %t778, ptr %t769, i64 %t770)
  %t779 = getelementptr i8, ptr %t778, i64 %t770
  call void @olang_textcopy(ptr %t779, ptr %t773, i64 %t774)
  %t780 = insertvalue { i64, ptr } undef, i64 %t775, 0
  %t781 = insertvalue { i64, ptr } %t780, ptr %t776, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t781, ptr %rv
  br label %ret
bb166:
  br label %bb167
bb167:
  %t783 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t785 = call i64 @compiler_2fexplain_2efirstItemEnd(ptr %s0, { i64, ptr } %t783)
  store i64 %t785, ptr %l313
  br label %bb168
bb168:
  %t786 = load i64, ptr %l313, !tbaa !24
  store i64 %t786, ptr %l24, !tbaa !24
  %t787 = load i64, ptr %l24, !tbaa !24
  store i64 %t787, ptr %l314, !tbaa !24
  %t788 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t789 = extractvalue { i64, ptr } %t788, 0
  store i64 %t789, ptr %l315, !tbaa !24
  %t790 = icmp sge i64 0, 0
  br i1 %t790, label %bb169, label %bb170
bb169:
  %t792 = load i64, ptr %l314, !tbaa !24
  %t793 = icmp sle i64 0, %t792
  br i1 %t793, label %bb171, label %bb172
bb170:
  call void @__olang_check_failed(ptr @olang_loc_87334f8237d1e26_d87acd2b8515436a)
  unreachable
bb171:
  %t795 = load i64, ptr %l314, !tbaa !24
  %t796 = load i64, ptr %l315, !tbaa !24
  %t797 = icmp sle i64 %t795, %t796
  br i1 %t797, label %bb173, label %bb174
bb172:
  call void @__olang_check_failed(ptr @olang_loc_87334f8237d1e26_d87acd2b8515436a)
  unreachable
bb173:
  %t799 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t800 = load ptr, ptr %t799, !tbaa !27
  %t801 = load i64, ptr %l314, !tbaa !24
  %t802 = getelementptr i8, ptr %t800, i64 0
  %t803 = sub i64 %t801, 0
  %t804 = insertvalue { i64, ptr } undef, i64 %t803, 0
  %t805 = insertvalue { i64, ptr } %t804, ptr %t802, 1
  store { i64, ptr } %t805, ptr %l25, !tbaa !27
  %t807 = load i64, ptr %l24, !tbaa !24
  %t809 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t810 = load ptr, ptr %t809, !tbaa !27
  %t811 = getelementptr i8, ptr %t810, i64 %t807
  %t812 = load i8, ptr %t811, !tbaa !32
  %t814 = icmp eq i8 %t812, 44
  br i1 %t814, label %bb175, label %bb176
bb174:
  call void @__olang_check_failed(ptr @olang_loc_87334f8237d1e26_d87acd2b8515436a)
  unreachable
bb175:
  %t816 = load i64, ptr %l24, !tbaa !24
  %t818 = add i64 %t816, 2
  store i64 %t818, ptr %l325, !tbaa !24
  %t819 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t821 = extractvalue { i64, ptr } %t819, 0
  store i64 %t821, ptr %l327, !tbaa !24
  %t822 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t823 = extractvalue { i64, ptr } %t822, 0
  store i64 %t823, ptr %l328, !tbaa !24
  %t824 = load i64, ptr %l325, !tbaa !24
  %t825 = icmp sge i64 %t824, 0
  br i1 %t825, label %bb177, label %bb178
bb176:
  %t827 = load i64, ptr %l24, !tbaa !24
  store i64 %t827, ptr %l333, !tbaa !24
  %t828 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t830 = extractvalue { i64, ptr } %t828, 0
  store i64 %t830, ptr %l335, !tbaa !24
  %t831 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t832 = extractvalue { i64, ptr } %t831, 0
  store i64 %t832, ptr %l336, !tbaa !24
  %t833 = load i64, ptr %l333, !tbaa !24
  %t834 = icmp sge i64 %t833, 0
  br i1 %t834, label %bb183, label %bb184
bb177:
  %t836 = load i64, ptr %l325, !tbaa !24
  %t837 = load i64, ptr %l327, !tbaa !24
  %t838 = icmp sle i64 %t836, %t837
  br i1 %t838, label %bb179, label %bb180
bb178:
  call void @__olang_check_failed(ptr @olang_loc_96b8876366bd9a81_fe1335b03e31611d)
  unreachable
bb179:
  %t840 = load i64, ptr %l327, !tbaa !24
  %t841 = load i64, ptr %l328, !tbaa !24
  %t842 = icmp sle i64 %t840, %t841
  br i1 %t842, label %bb181, label %bb182
bb180:
  call void @__olang_check_failed(ptr @olang_loc_96b8876366bd9a81_fe1335b03e31611d)
  unreachable
bb181:
  %t844 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t845 = load ptr, ptr %t844, !tbaa !27
  %t846 = load i64, ptr %l325, !tbaa !24
  %t847 = load i64, ptr %l327, !tbaa !24
  %t848 = getelementptr i8, ptr %t845, i64 %t846
  %t849 = sub i64 %t847, %t846
  %t850 = insertvalue { i64, ptr } undef, i64 %t849, 0
  %t851 = insertvalue { i64, ptr } %t850, ptr %t848, 1
  store { i64, ptr } %t851, ptr %l323, !tbaa !27
  br label %bb189
bb182:
  call void @__olang_check_failed(ptr @olang_loc_96b8876366bd9a81_fe1335b03e31611d)
  unreachable
bb183:
  %t853 = load i64, ptr %l333, !tbaa !24
  %t854 = load i64, ptr %l335, !tbaa !24
  %t855 = icmp sle i64 %t853, %t854
  br i1 %t855, label %bb185, label %bb186
bb184:
  call void @__olang_check_failed(ptr @olang_loc_96b8876366bd9a81_fe1335b03e31611d)
  unreachable
bb185:
  %t857 = load i64, ptr %l335, !tbaa !24
  %t858 = load i64, ptr %l336, !tbaa !24
  %t859 = icmp sle i64 %t857, %t858
  br i1 %t859, label %bb187, label %bb188
bb186:
  call void @__olang_check_failed(ptr @olang_loc_96b8876366bd9a81_fe1335b03e31611d)
  unreachable
bb187:
  %t861 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t862 = load ptr, ptr %t861, !tbaa !27
  %t863 = load i64, ptr %l333, !tbaa !24
  %t864 = load i64, ptr %l335, !tbaa !24
  %t865 = getelementptr i8, ptr %t862, i64 %t863
  %t866 = sub i64 %t864, %t863
  %t867 = insertvalue { i64, ptr } undef, i64 %t866, 0
  %t868 = insertvalue { i64, ptr } %t867, ptr %t865, 1
  store { i64, ptr } %t868, ptr %l323, !tbaa !27
  br label %bb189
bb188:
  call void @__olang_check_failed(ptr @olang_loc_96b8876366bd9a81_fe1335b03e31611d)
  unreachable
bb189:
  %t870 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t871 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t872 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t873 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t876 = extractvalue { i64, ptr } %t871, 1
  %t877 = extractvalue { i64, ptr } %t871, 0
  %t878 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t879 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t880 = add i64 %t877, %t879
  %t882 = extractvalue { i64, ptr } %t872, 1
  %t883 = extractvalue { i64, ptr } %t872, 0
  %t884 = add i64 %t880, %t883
  %t885 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t886 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t887 = add i64 %t884, %t886
  %t889 = extractvalue { i64, ptr } %t873, 1
  %t890 = extractvalue { i64, ptr } %t873, 0
  %t891 = add i64 %t887, %t890
  %t892 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t893 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t894 = add i64 %t891, %t893
  %t896 = extractvalue { i64, ptr } %t870, 1
  %t897 = extractvalue { i64, ptr } %t870, 0
  %t898 = add i64 %t894, %t897
  %t899 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t898)
  call void @olang_textcopy(ptr %t899, ptr %t876, i64 %t877)
  %t900 = getelementptr i8, ptr %t899, i64 %t877
  call void @olang_textcopy(ptr %t900, ptr %t878, i64 %t879)
  %t901 = getelementptr i8, ptr %t900, i64 %t879
  call void @olang_textcopy(ptr %t901, ptr %t882, i64 %t883)
  %t902 = getelementptr i8, ptr %t901, i64 %t883
  call void @olang_textcopy(ptr %t902, ptr %t885, i64 %t886)
  %t903 = getelementptr i8, ptr %t902, i64 %t886
  call void @olang_textcopy(ptr %t903, ptr %t889, i64 %t890)
  %t904 = getelementptr i8, ptr %t903, i64 %t890
  call void @olang_textcopy(ptr %t904, ptr %t892, i64 %t893)
  %t905 = getelementptr i8, ptr %t904, i64 %t893
  call void @olang_textcopy(ptr %t905, ptr %t896, i64 %t897)
  %t906 = insertvalue { i64, ptr } undef, i64 %t898, 0
  %t907 = insertvalue { i64, ptr } %t906, ptr %t899, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t907, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2egenLine(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/check:Checker", ptr %a1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 5
  %t9 = sext i32 %a2 to i64
  %t12 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v1, ptr %s0, ptr %t6, i64 %t9)
  %t13 = extractvalue { i32, { i64, ptr } } %t12, 1
  %t14 = extractvalue { i32, { i64, ptr } } %t12, 0
  store i32 %t14, ptr %l11
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb2, label %ok.16, !prof !99
ok.16:
  store { i64, ptr } %t13, ptr %l10
  br label %bb1
bb1:
  %t17 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l12, !tbaa !24
  %t19 = load i64, ptr %l12, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l13, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l12, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t30, ptr %l4, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t31 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t34 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %t31, 1
  %t38 = extractvalue { i64, ptr } %t31, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t34, i64 %t35)
  %t44 = getelementptr i8, ptr %t43, i64 %t35
  call void @olang_textcopy(ptr %t44, ptr %t37, i64 %t38)
  %t45 = getelementptr i8, ptr %t44, i64 %t38
  call void @olang_textcopy(ptr %t45, ptr %t40, i64 %t41)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t43, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = extractvalue { i64, ptr } %t47, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %a0, { i64, ptr } %t54)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fexplain_2eglobalItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, %"compiler/names:Entry" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/names:Entry"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l18 = alloca i32
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i32
  %l47 = alloca i32
  %l50 = alloca i32
  %l55 = alloca i32
  %l57 = alloca i32
  %l59 = alloca i32
  %l61 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store %"compiler/names:Entry" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eGlobalType(ptr %v0, ptr %t12, i64 %t13, i32 %t15)
  store i32 %t19, ptr %l18
  br label %bb1
bb1:
  %t20 = load i32, ptr %l18, !tbaa !23
  store i32 %t20, ptr %l5, !tbaa !23
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s0, ptr %t21, i32 %t23)
  store { i64, ptr } %t26, ptr %l21
  br label %bb2
bb2:
  %t27 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 3
  %t28 = load i1, ptr %t27, !tbaa !21
  br i1 %t28, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l5, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s0, ptr %t30, i32 %t31)
  store { i64, ptr } %t34, ptr %l26
  br label %bb6
bb6:
  %t35 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = add i64 %t37, %t40
  %t42 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = add i64 %t41, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t36, i64 %t37)
  %t47 = getelementptr i8, ptr %t46, i64 %t37
  call void @olang_textcopy(ptr %t47, ptr %t39, i64 %t40)
  %t48 = getelementptr i8, ptr %t47, i64 %t40
  call void @olang_textcopy(ptr %t48, ptr %t43, i64 %t44)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t46, 1
  store { i64, ptr } %t50, ptr %l6, !tbaa !27
  %t52 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 3
  %t53 = load i1, ptr %t52, !tbaa !21
  br i1 %t53, label %bb7, label %bb8
bb7:
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = extractvalue { i64, ptr } %t55, 0
  %t59 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t57, i64 %t58)
  %t63 = getelementptr i8, ptr %t62, i64 %t58
  call void @olang_textcopy(ptr %t63, ptr %t59, i64 %t60)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t62, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t65, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t71 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 1
  %t72 = load %"compiler/source:Span", ptr %t71
  %t77 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRenderBody(ptr %v0, ptr %t67, i64 %t68, i32 %t70, %"compiler/source:Span" %t72)
  store i64 %t77, ptr %l35
  br label %bb10
bb10:
  %t78 = load i64, ptr %l35, !tbaa !24
  %t83 = call { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v1, ptr %s0, ptr %a1, i64 %t78)
  %t84 = extractvalue { i32, { i64, ptr } } %t83, 1
  %t85 = extractvalue { i32, { i64, ptr } } %t83, 0
  store i32 %t85, ptr %l40
  %t86 = icmp ne i32 %t85, 0
  br i1 %t86, label %bb12, label %ok.87, !prof !99
ok.87:
  store { i64, ptr } %t84, ptr %l39
  br label %bb11
bb11:
  %t88 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t88, ptr %l36, !tbaa !27
  br label %bb14
bb12:
  br label %bb13
bb13:
  %t89 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 1
  %t92 = extractvalue { i64, ptr } %t89, 0
  %t93 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t91, i64 %t92)
  %t97 = getelementptr i8, ptr %t96, i64 %t92
  call void @olang_textcopy(ptr %t97, ptr %t93, i64 %t94)
  %t98 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t96, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t99, ptr %rv
  br label %ret
bb14:
  %t101 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t101, ptr %l8, !tbaa !27
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load i32, ptr %l5, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l47
  br label %bb15
bb15:
  %t112 = load i32, ptr %l47, !range !{i32 0, i32 33}
  %t114 = trunc i64 20 to i32
  %t115 = icmp eq i32 %t112, %t114
  br i1 %t115, label %bb16, label %bb17
bb16:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l5, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l55
  br label %bb18
bb17:
  %t127 = load i32, ptr %l5, !tbaa !23
  store i32 %t127, ptr %l50, !tbaa !23
  br label %bb19
bb18:
  %t129 = load i32, ptr %l55, !tbaa !23
  store i32 %t129, ptr %l50, !tbaa !23
  br label %bb19
bb19:
  %t130 = load i32, ptr %l50, !tbaa !23
  store i32 %t130, ptr %l57, !tbaa !23
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTextType(ptr %v0, ptr %t132)
  store i32 %t134, ptr %l59
  br label %bb20
bb20:
  %t135 = load i32, ptr %l57, !tbaa !23
  %t136 = load i32, ptr %l59, !tbaa !23
  %t137 = icmp eq i32 %t135, %t136
  br i1 %t137, label %bb21, label %bb22
bb21:
  %t139 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t141 = call { i64, ptr } @compiler_2fexplain_2equoted(ptr %s0, ptr %s0, { i64, ptr } %t139)
  store { i64, ptr } %t141, ptr %l63
  br label %bb23
bb22:
  %t142 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = extractvalue { i64, ptr } %t142, 0
  %t146 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t145)
  call void @olang_textcopy(ptr %t146, ptr %t144, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l61, !tbaa !27
  br label %bb24
bb23:
  %t150 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t153 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t152)
  call void @olang_textcopy(ptr %t153, ptr %t151, i64 %t152)
  %t154 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l61, !tbaa !27
  br label %bb24
bb24:
  %t157 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t157, ptr %l10, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t161 = load i64, ptr @G_2ecompiler_2fexplain_2eLongValue, !tbaa !24
  %t164 = icmp sgt i64 %t160, %t161
  br i1 %t164, label %bb25, label %bb26
bb25:
  %t166 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t166, ptr %l71, !tbaa !27
  %t167 = load i64, ptr @G_2ecompiler_2fexplain_2eLongValue, !tbaa !24
  store i64 %t167, ptr %l72, !tbaa !24
  %t168 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  store i64 %t169, ptr %l73, !tbaa !24
  %t170 = icmp sge i64 0, 0
  br i1 %t170, label %bb27, label %bb28
bb26:
  br label %bb33
bb27:
  %t172 = load i64, ptr %l72, !tbaa !24
  %t173 = icmp sle i64 0, %t172
  br i1 %t173, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_8383a0ec0de75e1f_623ffa8ab7fe468b)
  unreachable
bb29:
  %t175 = load i64, ptr %l72, !tbaa !24
  %t176 = load i64, ptr %l73, !tbaa !24
  %t177 = icmp sle i64 %t175, %t176
  br i1 %t177, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_8383a0ec0de75e1f_623ffa8ab7fe468b)
  unreachable
bb31:
  %t179 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = load i64, ptr %l72, !tbaa !24
  %t182 = getelementptr i8, ptr %t180, i64 0
  %t183 = sub i64 %t181, 0
  %t184 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t182, 1
  %t186 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 1
  %t191 = extractvalue { i64, ptr } %t189, 0
  %t192 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t194 = add i64 %t191, %t193
  %t196 = extractvalue { i64, ptr } %t185, 1
  %t197 = extractvalue { i64, ptr } %t185, 0
  %t198 = add i64 %t194, %t197
  %t199 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t203 = call i64 @__olang_fmt_i64(ptr null, i64 %t188)
  %t204 = add i64 %t201, %t203
  %t205 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t206 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t207 = add i64 %t204, %t206
  %t208 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t207)
  call void @olang_textcopy(ptr %t208, ptr %t190, i64 %t191)
  %t209 = getelementptr i8, ptr %t208, i64 %t191
  call void @olang_textcopy(ptr %t209, ptr %t192, i64 %t193)
  %t210 = getelementptr i8, ptr %t209, i64 %t193
  call void @olang_textcopy(ptr %t210, ptr %t196, i64 %t197)
  %t211 = getelementptr i8, ptr %t210, i64 %t197
  call void @olang_textcopy(ptr %t211, ptr %t199, i64 %t200)
  %t212 = getelementptr i8, ptr %t211, i64 %t200
  %t213 = call i64 @__olang_fmt_i64(ptr %t212, i64 %t188)
  %t214 = getelementptr i8, ptr %t212, i64 %t203
  call void @olang_textcopy(ptr %t214, ptr %t205, i64 %t206)
  %t215 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t208, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t216, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_8383a0ec0de75e1f_623ffa8ab7fe468b)
  unreachable
bb33:
  %t218 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t219 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t218, 1
  %t222 = extractvalue { i64, ptr } %t218, 0
  %t223 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t227 = extractvalue { i64, ptr } %t219, 1
  %t228 = extractvalue { i64, ptr } %t219, 0
  %t229 = add i64 %t225, %t228
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t232 = add i64 %t229, %t231
  %t233 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t232)
  call void @olang_textcopy(ptr %t233, ptr %t221, i64 %t222)
  %t234 = getelementptr i8, ptr %t233, i64 %t222
  call void @olang_textcopy(ptr %t234, ptr %t223, i64 %t224)
  %t235 = getelementptr i8, ptr %t234, i64 %t224
  call void @olang_textcopy(ptr %t235, ptr %t227, i64 %t228)
  %t236 = getelementptr i8, ptr %t235, i64 %t228
  call void @olang_textcopy(ptr %t236, ptr %t230, i64 %t231)
  %t237 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t233, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t238, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2emethods(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca ptr
  %l48 = alloca i1
  %l54 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i32
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l75 = alloca i32
  %l82 = alloca i32
  %l87 = alloca i32
  %l91 = alloca i1
  %l96 = alloca i32
  %l101 = alloca i32
  %l104 = alloca ptr
  %l106 = alloca i64
  %l107 = alloca i64
  %l112 = alloca i64
  %l113 = alloca ptr
  %l114 = alloca ptr
  %l115 = alloca i64
  %l119 = alloca i32
  %l122 = alloca i64
  %l123 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l127 = alloca ptr
  %l128 = alloca i64
  %l131 = alloca i64
  %l132 = alloca ptr
  %l133 = alloca ptr
  %l134 = alloca i64
  %l138 = alloca i32
  %l139 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v1, ptr %t4)
  br label %bb1
bb1:
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v1, ptr %t9)
  store i64 %t11, ptr %l16
  br label %bb2
bb2:
  %t12 = load i64, ptr %l16, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l23, !tbaa !24
  store i64 %t39, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l20, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb54
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l8, !tbaa !24
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v1, ptr %v1, ptr %t62, i64 %t63)
  store ptr %t66, ptr %l44
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l44, !tbaa !29
  store ptr %t67, ptr %l9, !tbaa !29
  %t68 = load ptr, ptr %l9, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Func", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb17
bb15:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load i32, ptr %l2, !tbaa !23
  %t80 = load ptr, ptr %l9, !tbaa !29
  %t82 = getelementptr %"compiler/ast:Func", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %t82, !tbaa !23
  %t87 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v1, ptr %t78, i32 %t79, i32 %t83)
  store i64 %t87, ptr %l54
  br label %bb16
bb16:
  %t88 = load i64, ptr %l8, !tbaa !24
  %t89 = load i64, ptr %l54, !tbaa !24
  %t91 = icmp ne i64 %t89, %t88
  store i1 %t91, ptr %l48, !tbaa !21
  br label %bb17
bb17:
  %t93 = load i1, ptr %l48, !tbaa !21
  br i1 %t93, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb53
bb19:
  br label %bb20
bb20:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  store ptr %t99, ptr %l59, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  store ptr %t105, ptr %l62, !tbaa !29
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i64, ptr %l8, !tbaa !24
  %t113 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v1, ptr %t109, i64 %t110)
  store i32 %t113, ptr %l66
  br label %bb21
bb21:
  %t114 = load ptr, ptr %l62, !tbaa !29
  %t115 = load i32, ptr %l66, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v1, ptr %t114, i32 %t115)
  store i32 %t116, ptr %l67
  br label %bb22
bb22:
  %t117 = load ptr, ptr %l59, !tbaa !29
  %t118 = load i32, ptr %l67, !tbaa !23
  %t119 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %s2, ptr %t117, i32 %t118)
  store { i64, ptr } %t119, ptr %l68
  br label %bb23
bb23:
  %t120 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t120, ptr %l69, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i32, ptr %t122, i64 0
  %t124 = load i32, ptr %t123, !tbaa !33
  store i32 %t124, ptr %l10, !tbaa !23
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l10, !tbaa !23
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l75
  br label %bb24
bb24:
  %t136 = load i32, ptr %l75, !range !{i32 0, i32 33}
  %t138 = trunc i64 20 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb25, label %bb26
bb25:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  %t147 = load i32, ptr %l10, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v1, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l82
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t151 = load i32, ptr %l82, !tbaa !23
  store i32 %t151, ptr %l10, !tbaa !23
  br label %bb28
bb28:
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/generic:Program", ptr %t155, i32 0, i32 2
  %t158 = load i32, ptr %l10, !tbaa !23
  %t161 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t157, i32 %t158)
  store i32 %t161, ptr %l87
  br label %bb29
bb29:
  %t162 = load i32, ptr %l87, !range !{i32 0, i32 33}
  %t164 = trunc i64 18 to i32
  %t165 = icmp eq i32 %t162, %t164
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb34
bb31:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/generic:Program", ptr %t172, i32 0, i32 2
  %t175 = load i32, ptr %l10, !tbaa !23
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t174, i32 %t175)
  store i32 %t178, ptr %l96
  br label %bb32
bb32:
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/generic:Program", ptr %t182, i32 0, i32 2
  %t185 = load i32, ptr %l2, !tbaa !23
  %t188 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t184, i32 %t185)
  store i32 %t188, ptr %l101
  br label %bb33
bb33:
  %t189 = load i32, ptr %l96, !tbaa !23
  %t190 = load i32, ptr %l101, !tbaa !23
  %t191 = icmp ne i32 %t189, %t190
  store i1 %t191, ptr %l91, !tbaa !21
  br label %bb34
bb34:
  %t193 = load i1, ptr %l91, !tbaa !21
  br i1 %t193, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s2)
  br label %bb53
bb36:
  br label %bb37
bb37:
  %t194 = load ptr, ptr %l1, !tbaa !29
  %t196 = getelementptr %"compiler/check:Checker", ptr %t194, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !29
  store ptr %t197, ptr %l104, !tbaa !29
  %t198 = load i64, ptr %l8, !tbaa !24
  %t200 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t198)
  store i64 %t200, ptr %l106
  br label %bb38
bb38:
  %t201 = load ptr, ptr %l104, !tbaa !29
  %t202 = load i64, ptr %l106, !tbaa !24
  %t203 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v1, ptr %t201, i64 %t202)
  store i64 %t203, ptr %l107
  br label %bb39
bb39:
  %t204 = load i64, ptr %l107, !tbaa !24
  %t205 = icmp eq i64 %t204, 0
  br i1 %t205, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s6
  %t207 = load ptr, ptr %l1, !tbaa !29
  %t209 = getelementptr %"compiler/check:Checker", ptr %t207, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t211 = load i64, ptr %l8, !tbaa !24
  %t214 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v1, ptr %t210, i64 %t211, i32 0)
  store i64 %t214, ptr %l112
  br label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s8
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l132, !tbaa !29
  %t216 = load ptr, ptr %l1, !tbaa !29
  store ptr %t216, ptr %l133, !tbaa !29
  %t217 = load i64, ptr %l8, !tbaa !24
  store i64 %t217, ptr %l134, !tbaa !24
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr %"compiler/check:Checker", ptr %t218, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t222 = load i64, ptr %l8, !tbaa !24
  %t225 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v1, ptr %t221, i64 %t222)
  store i32 %t225, ptr %l138
  br label %bb49
bb42:
  %t226 = load i64, ptr %l112, !tbaa !24
  store i64 %t226, ptr %l11, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l113, !tbaa !29
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l114, !tbaa !29
  %t229 = load i64, ptr %l8, !tbaa !24
  store i64 %t229, ptr %l115, !tbaa !24
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t232 = getelementptr %"compiler/check:Checker", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t234 = load i64, ptr %l11, !tbaa !24
  %t237 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v1, ptr %t233, i64 %t234)
  store i32 %t237, ptr %l119
  br label %bb43
bb43:
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t239 = load i64, ptr %l11, !tbaa !24
  %t242 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v1, ptr %t238, i64 %t239)
  store i64 %t242, ptr %l122
  br label %bb44
bb44:
  %t243 = load ptr, ptr %l114, !tbaa !29
  %t244 = load i64, ptr %l115, !tbaa !24
  %t245 = load i32, ptr %l119, !tbaa !23
  %t246 = load i64, ptr %l122, !tbaa !24
  %t247 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v1, ptr %s6, ptr %t243, i64 %t244, i32 %t245, i64 %t246)
  store { i64, ptr } %t247, ptr %l123
  br label %bb45
bb45:
  %t248 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t250 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t250, 1
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t253 = add i64 %t249, %t252
  %t254 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t256 = add i64 %t253, %t255
  %t257 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t256)
  call void @olang_textcopy(ptr %t257, ptr %t248, i64 %t249)
  %t258 = getelementptr i8, ptr %t257, i64 %t249
  call void @olang_textcopy(ptr %t258, ptr %t251, i64 %t252)
  %t259 = getelementptr i8, ptr %t258, i64 %t252
  call void @olang_textcopy(ptr %t259, ptr %t254, i64 %t255)
  %t260 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t257, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = extractvalue { i64, ptr } %t261, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  %t269 = load ptr, ptr %l113, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s6, ptr %t269, { i64, ptr } %t268)
  br label %bb46
bb46:
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l126, !tbaa !29
  %t272 = load ptr, ptr %l1, !tbaa !29
  store ptr %t272, ptr %l127, !tbaa !29
  %t273 = load i64, ptr %l8, !tbaa !24
  store i64 %t273, ptr %l128, !tbaa !24
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t275 = load i64, ptr %l11, !tbaa !24
  %t278 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v1, ptr %t274, i64 %t275)
  store i64 %t278, ptr %l131
  br label %bb47
bb47:
  %t279 = load ptr, ptr %l126, !tbaa !29
  %t280 = load ptr, ptr %l127, !tbaa !29
  %t281 = load i64, ptr %l128, !tbaa !24
  %t282 = load i64, ptr %l131, !tbaa !24
  call void @compiler_2fexplain_2eeffectLine(ptr %v0, ptr %v1, ptr %s6, ptr %t279, ptr %t280, i64 %t281, i64 %t282, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s6)
  br label %bb52
bb49:
  %t283 = load ptr, ptr %l133, !tbaa !29
  %t284 = load i64, ptr %l134, !tbaa !24
  %t285 = load i32, ptr %l138, !tbaa !23
  %t286 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v1, ptr %s8, ptr %t283, i64 %t284, i32 %t285, i64 -1)
  store { i64, ptr } %t286, ptr %l139
  br label %bb50
bb50:
  %t287 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t288 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t289 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 1
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t292 = add i64 %t288, %t291
  %t293 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t294 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t295 = add i64 %t292, %t294
  %t296 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t295)
  call void @olang_textcopy(ptr %t296, ptr %t287, i64 %t288)
  %t297 = getelementptr i8, ptr %t296, i64 %t288
  call void @olang_textcopy(ptr %t297, ptr %t290, i64 %t291)
  %t298 = getelementptr i8, ptr %t297, i64 %t291
  call void @olang_textcopy(ptr %t298, ptr %t293, i64 %t294)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t296, 1
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t303 = extractvalue { i64, ptr } %t300, 1
  %t304 = mul i64 %t302, 1
  %t305 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t304)
  call void @llvm.memcpy.p0.p0.i64(ptr %t305, ptr %t303, i64 %t304, i1 false)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t308 = load ptr, ptr %l132, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s8, ptr %t308, { i64, ptr } %t307)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s8)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s2)
  br label %bb53
bb53:
  %t310 = load i64, ptr %l7, !tbaa !24
  %t312 = add i64 %t310, 1
  store i64 %t312, ptr %l7, !tbaa !24
  br label %bb9
bb54:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fexplain_2enoValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca i1
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = load i64, ptr %l4, !tbaa !24
  %t9 = call { i64, ptr } @compiler_2fexplain_2eNoValueWhy(ptr %v1, ptr %v2, ptr %s0, ptr %t1, ptr %t2, i64 %a3, i64 %t4)
  store { i64, ptr } %t9, ptr %l12
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t10, ptr %l6, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t13, ptr %l14
  br label %bb2
bb2:
  %t14 = load i1, ptr %l14, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t18, 1
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t19, 1
  %t28 = extractvalue { i64, ptr } %t19, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t33 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t21, i64 %t22)
  %t34 = getelementptr i8, ptr %t33, i64 %t22
  call void @olang_textcopy(ptr %t34, ptr %t23, i64 %t24)
  %t35 = getelementptr i8, ptr %t34, i64 %t24
  call void @olang_textcopy(ptr %t35, ptr %t27, i64 %t28)
  %t36 = getelementptr i8, ptr %t35, i64 %t28
  call void @olang_textcopy(ptr %t36, ptr %t30, i64 %t31)
  %t37 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t33, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t17, { i64, ptr } %t45)
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t50 = load i64, ptr %l4, !tbaa !24
  %t54 = call { i64, ptr } @compiler_2fexplain_2eAsValueWhere(ptr %v1, ptr %v2, ptr %s0, ptr %t48, ptr %t49, i64 %t50)
  store { i64, ptr } %t54, ptr %l24
  br label %bb7
bb7:
  %t55 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t55, ptr %l7, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t56, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t58, ptr %l26
  br label %bb8
bb8:
  %t59 = load i1, ptr %l26, !tbaa !21
  %t60 = xor i1 %t59, true
  br i1 %t60, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t63, 1
  %t67 = extractvalue { i64, ptr } %t63, 0
  %t68 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t72 = extractvalue { i64, ptr } %t64, 1
  %t73 = extractvalue { i64, ptr } %t64, 0
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t78 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t77)
  call void @olang_textcopy(ptr %t78, ptr %t66, i64 %t67)
  %t79 = getelementptr i8, ptr %t78, i64 %t67
  call void @olang_textcopy(ptr %t79, ptr %t68, i64 %t69)
  %t80 = getelementptr i8, ptr %t79, i64 %t69
  call void @olang_textcopy(ptr %t80, ptr %t72, i64 %t73)
  %t81 = getelementptr i8, ptr %t80, i64 %t73
  call void @olang_textcopy(ptr %t81, ptr %t75, i64 %t76)
  %t82 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t78, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = extractvalue { i64, ptr } %t83, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t62, { i64, ptr } %t90)
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fexplain_2epushPayload(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca ptr
  %l24 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l43 = alloca i32
  %l47 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v1, ptr %v1, ptr %t4, i32 %t5)
  store ptr %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l11, !tbaa !29
  store ptr %t9, ptr %l5, !tbaa !29
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_267284e461664677_b2c2386ba62ab5d3)
  unreachable
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = call i1 @compiler_2fexplain_2ecaseWhole(ptr %v1, ptr %t14, i64 %t15)
  store i1 %t18, ptr %l16
  br label %bb5
bb5:
  %t19 = load i1, ptr %l16, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l18, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l21, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  store ptr %t33, ptr %l24, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load i32, ptr %l3, !tbaa !23
  %t39 = load i64, ptr %l4, !tbaa !24
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v1, ptr %t37, i32 %t38, i64 %t39)
  store i32 %t43, ptr %l29
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = load i32, ptr %l29, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v1, ptr %t44, i32 %t45)
  store i32 %t46, ptr %l30
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l21, !tbaa !29
  %t48 = load i32, ptr %l30, !tbaa !23
  %t49 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %s1, ptr %t47, i32 %t48)
  store { i64, ptr } %t49, ptr %l31
  br label %bb10
bb10:
  %t50 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t50, ptr %l32, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i32, ptr %t52, i64 0
  %t54 = load i32, ptr %t53, !tbaa !33
  %t55 = load ptr, ptr %l18, !tbaa !29
  %t57 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v1, ptr %s1, ptr %t55, i32 %t54)
  store { i64, ptr } %t57, ptr %l34
  br label %bb11
bb11:
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t60 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = add i64 %t59, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t58, i64 %t59)
  %t65 = getelementptr i8, ptr %t64, i64 %t59
  call void @olang_textcopy(ptr %t65, ptr %t61, i64 %t62)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } %t67, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t75 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t75, { i64, ptr } %t74)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l37, !tbaa !29
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l38, !tbaa !29
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load i32, ptr %l3, !tbaa !23
  %t84 = load i64, ptr %l4, !tbaa !24
  %t88 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v1, ptr %t82, i32 %t83, i64 %t84)
  store i32 %t88, ptr %l43
  br label %bb14
bb14:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t93 = load i32, ptr %l2, !tbaa !23
  %t96 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v1, ptr %v1, ptr %t92, i32 %t93)
  store ptr %t96, ptr %l47
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l47, !tbaa !29
  store ptr %t97, ptr %l6, !tbaa !29
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = icmp eq ptr %t98, null
  br i1 %t100, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_66f7703ccaf4f658_ca46a1b97aa24804)
  unreachable
bb17:
  br label %bb18
bb18:
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t103 = load i64, ptr %l4, !tbaa !24
  %t106 = call { i64, ptr } @compiler_2fexplain_2ecasePayload(ptr %v1, ptr %s0, ptr %t102, i64 %t103)
  store { i64, ptr } %t106, ptr %l52
  br label %bb19
bb19:
  %t107 = load ptr, ptr %l38, !tbaa !29
  %t108 = load i32, ptr %l43, !tbaa !23
  %t109 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t110 = call i32 @compiler_2fexplain_2enamed(ptr %v1, ptr %s0, ptr %s0, ptr %t107, i32 %t108, ptr null, { i64, ptr } %t109)
  store i32 %t110, ptr %l53
  br label %bb20
bb20:
  %t111 = load ptr, ptr %l37, !tbaa !29
  %t112 = load i32, ptr %l53, !tbaa !23
  %t113 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v1, ptr %s0, ptr %t111, i32 %t112)
  store { i64, ptr } %t113, ptr %l54
  br label %bb21
bb21:
  %t114 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t114, ptr %l7, !tbaa !27
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l55, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t118 = call i64 @compiler_2fexplain_2efirstClose(ptr %s0, { i64, ptr } %t116)
  store i64 %t118, ptr %l57
  br label %bb22
bb22:
  %t119 = load i64, ptr %l57, !tbaa !24
  %t120 = add i64 %t119, 1
  store i64 %t120, ptr %l58, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  store i64 %t122, ptr %l59, !tbaa !24
  %t123 = icmp sge i64 2, 0
  br i1 %t123, label %bb23, label %bb24
bb23:
  %t125 = load i64, ptr %l58, !tbaa !24
  %t126 = icmp sle i64 2, %t125
  br i1 %t126, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_f786d30f5b15881b_2a3d6cb8e4e51887)
  unreachable
bb25:
  %t128 = load i64, ptr %l58, !tbaa !24
  %t129 = load i64, ptr %l59, !tbaa !24
  %t130 = icmp sle i64 %t128, %t129
  br i1 %t130, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_f786d30f5b15881b_2a3d6cb8e4e51887)
  unreachable
bb27:
  %t132 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l58, !tbaa !24
  %t135 = getelementptr i8, ptr %t133, i64 2
  %t136 = sub i64 %t134, 2
  %t137 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t135, 1
  %t139 = load ptr, ptr %l55, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t139, { i64, ptr } %t138)
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_f786d30f5b15881b_2a3d6cb8e4e51887)
  unreachable
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fexplain_2equoted(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca { i64, ptr }
  %l20 = alloca i1
  %l38 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 34)
  br label %bb2
bb2:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb25
bb5:
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 %t19
  %t24 = load i8, ptr %t23, !tbaa !32
  store i8 %t24, ptr %l5, !tbaa !22
  %t26 = load i8, ptr %l5, !tbaa !22
  %t28 = icmp eq i8 %t26, 34
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  %t30 = load i8, ptr %l5, !tbaa !22
  %t32 = icmp eq i8 %t30, 92
  store i1 %t32, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l20, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 92)
  br label %bb12
bb11:
  %t36 = load i8, ptr %l5, !tbaa !22
  %t38 = icmp eq i8 %t36, 10
  br i1 %t38, label %bb14, label %bb15
bb12:
  %t40 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t40)
  br label %bb13
bb13:
  br label %bb23
bb14:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d67, i32 0, i32 1) })
  br label %bb16
bb15:
  %t44 = load i8, ptr %l5, !tbaa !22
  %t46 = icmp eq i8 %t44, 9
  br i1 %t46, label %bb17, label %bb18
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb22
bb17:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb19
bb18:
  %t49 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t49)
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s7)
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l3, !tbaa !24
  br label %bb3
bb25:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 34)
  br label %bb26
bb26:
  %t58 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t58, ptr %l38
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2esigOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l7 = alloca i1
  %l10 = alloca i1
  %l14 = alloca { i64, ptr }
  %l17 = alloca i32
  %l20 = alloca ptr
  %l25 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l36 = alloca i32
  %l41 = alloca i64
  %l42 = alloca i32
  %l45 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInfersErrors(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l10
  br label %bb3
bb3:
  %t10 = load i1, ptr %l10, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l7, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %v1, ptr %t14, i32 %t15)
  store { i64, ptr } %t18, ptr %l14
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t19, ptr %rv
  br label %ret
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eErrorsOf(ptr %v0, ptr %t20, i64 %t21)
  store i32 %t24, ptr %l17
  br label %bb9
bb9:
  %t25 = load i32, ptr %l17, !tbaa !23
  store i32 %t25, ptr %l3, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  store ptr %t31, ptr %l20, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l25
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l30
  br label %bb11
bb11:
  %t52 = load i32, ptr %l3, !tbaa !23
  store i32 %t52, ptr %l31, !tbaa !23
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l36
  br label %bb12
bb12:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l1, !tbaa !23
  %t72 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t68, i32 %t69)
  store i64 %t72, ptr %l41
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l20, !tbaa !29
  %t74 = load i32, ptr %l25, !tbaa !23
  %t75 = load i32, ptr %l30, !tbaa !23
  %t76 = load i32, ptr %l31, !tbaa !23
  %t77 = load i32, ptr %l36, !tbaa !23
  %t78 = load i64, ptr %l41, !tbaa !24
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t73, i32 %t74, i32 %t75, i32 %t76, i32 %t77, i64 %t78, i1 false, i32 0, i64 0)
  store i32 %t79, ptr %l42
  br label %bb14
bb14:
  %t80 = load i32, ptr %l42, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t85 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %s0, ptr %t81, i32 %t80)
  store { i64, ptr } %t85, ptr %l45
  br label %bb15
bb15:
  %t86 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t92 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t87, i64 %t88)
  %t93 = getelementptr i8, ptr %t92, i64 %t88
  call void @olang_textcopy(ptr %t93, ptr %t89, i64 %t90)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t92, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2etypeVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/generic:varRow"
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"std/prelude/text:StringBuilder"
  %l34 = alloca i64
  %l37 = alloca i64
  %l59 = alloca %"compiler/generic:varRow"
  %l64 = alloca i1
  %l65 = alloca ptr
  %l69 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l95 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l115 = alloca ptr
  %l118 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t4, i64 %t5)
  store i64 %t8, ptr %l19
  br label %bb1
bb1:
  %t9 = load i64, ptr %l19, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sle i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t16, ptr %l24, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l25, !tbaa !24
  %t19 = load i64, ptr %l25, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l26, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l25, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t30, ptr %l24, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t32 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t32, ptr %l27
  br label %bb5
bb5:
  %t33 = load %"std/prelude/text:StringBuilder", ptr %l27
  store %"std/prelude/text:StringBuilder" %t33, ptr %l4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l4, i8 60)
  br label %bb6
bb6:
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  store i64 %t37, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb7, label %bb8
bb7:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb12
bb9:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l37, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb11
bb11:
  %t65 = load i64, ptr %l37, !tbaa !24
  store i64 %t65, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t66 = load i64, ptr %l34, !tbaa !24
  store i64 %t66, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb14, label %bb15
bb14:
  br label %bb51
bb15:
  br label %bb16
bb16:
  %t75 = load i64, ptr %l5, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l10, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t89 = load i64, ptr %l1, !tbaa !24
  %t90 = load i64, ptr %l10, !tbaa !24
  %t94 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t88, i64 %t89, i64 %t90)
  store %"compiler/generic:varRow" %t94, ptr %l59
  br label %bb17
bb17:
  %t95 = load %"compiler/generic:varRow", ptr %l59
  store %"compiler/generic:varRow" %t95, ptr %l11
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t100 = load i64, ptr %l1, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t105 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t99, i64 %t100, i64 %t101)
  store i1 %t105, ptr %l64
  br label %bb18
bb18:
  %t106 = load i1, ptr %l64, !tbaa !21
  br i1 %t106, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l4, ptr %l65, !tbaa !29
  %t107 = load i64, ptr %l10, !tbaa !24
  %t108 = load i64, ptr %l2, !tbaa !24
  %t111 = icmp sgt i64 %t107, %t108
  br i1 %t111, label %bb21, label %bb22
bb20:
  br label %bb26
bb21:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb23
bb23:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/load:Loader", ptr %t119, i32 0, i32 3
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 1
  %t124 = load i32, ptr %t123, !tbaa !23
  %t127 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t122, i32 %t124)
  store { i64, ptr } %t127, ptr %l75
  br label %bb24
bb24:
  %t128 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t131 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 1
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t134 = add i64 %t130, %t133
  %t135 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t134)
  call void @olang_textcopy(ptr %t135, ptr %t129, i64 %t130)
  %t136 = getelementptr i8, ptr %t135, i64 %t130
  call void @olang_textcopy(ptr %t136, ptr %t132, i64 %t133)
  %t137 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t135, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = extractvalue { i64, ptr } %t138, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t146 = load ptr, ptr %l65, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t146, { i64, ptr } %t145)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb50
bb26:
  %t148 = load i64, ptr %l10, !tbaa !24
  %t149 = load i64, ptr %l2, !tbaa !24
  %t152 = icmp sgt i64 %t148, %t149
  br i1 %t152, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l4, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s6)
  br label %bb30
bb30:
  store ptr %l4, ptr %l82, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/generic:Program", ptr %t158, i32 0, i32 0
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/load:Loader", ptr %t161, i32 0, i32 3
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t165 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 1
  %t166 = load i32, ptr %t165, !tbaa !23
  %t169 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t164, i32 %t166)
  store { i64, ptr } %t169, ptr %l88
  br label %bb31
bb31:
  %t170 = load ptr, ptr %l82, !tbaa !29
  %t171 = load { i64, ptr }, ptr %l88, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t170, { i64, ptr } %t171)
  br label %bb32
bb32:
  %t172 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 2
  %t173 = load i32, ptr %t172, !tbaa !23
  %t174 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t177 = icmp ne i32 %t173, %t174
  br i1 %t177, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  store ptr %l4, ptr %l92, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 2
  %t181 = load i32, ptr %t180, !tbaa !23
  %t184 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s7, ptr %t179, i32 %t181)
  store { i64, ptr } %t184, ptr %l95
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t187 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = add i64 %t186, %t189
  %t191 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t190)
  call void @olang_textcopy(ptr %t191, ptr %t185, i64 %t186)
  %t192 = getelementptr i8, ptr %t191, i64 %t186
  call void @olang_textcopy(ptr %t192, ptr %t188, i64 %t189)
  %t193 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t191, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = extractvalue { i64, ptr } %t194, 1
  %t198 = mul i64 %t196, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t198)
  call void @llvm.memcpy.p0.p0.i64(ptr %t199, ptr %t197, i64 %t198, i1 false)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  %t202 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t202, { i64, ptr } %t201)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb37
bb37:
  %t204 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 3
  %t205 = load i32, ptr %t204, !tbaa !23
  %t206 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t209 = icmp ne i32 %t205, %t206
  br i1 %t209, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s10
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t215 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 3
  %t216 = load i32, ptr %t215, !tbaa !23
  %t219 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundTraits(ptr %v0, ptr %s10, ptr %t214, i32 %t216)
  store { i64, ptr } %t219, ptr %l104
  br label %bb40
bb39:
  br label %bb49
bb40:
  %t220 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  %t222 = extractvalue { i64, ptr } %t220, 1
  %t223 = mul i64 %t221, 4
  %t224 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t223)
  call void @llvm.memcpy.p0.p0.i64(ptr %t224, ptr %t222, i64 %t223, i1 false)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  store { i64, ptr } %t226, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 0
  store i64 %t230, ptr %l14, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s11
  %t232 = load i64, ptr %l13, !tbaa !24
  %t233 = load i64, ptr %l14, !tbaa !24
  %t236 = icmp slt i64 %t232, %t233
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s11)
  br label %bb48
bb43:
  br label %bb44
bb44:
  %t240 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t240, ptr %l112, !tbaa !27
  %t241 = load i64, ptr %l13, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr i32, ptr %t244, i64 %t241
  %t246 = load i32, ptr %t245, !tbaa !33
  store ptr %l4, ptr %l115, !tbaa !29
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t252 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s11, ptr %t248, i32 %t246)
  store { i64, ptr } %t252, ptr %l118
  br label %bb45
bb45:
  %t253 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t255 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t255, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = add i64 %t254, %t257
  %t259 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t258)
  call void @olang_textcopy(ptr %t259, ptr %t253, i64 %t254)
  %t260 = getelementptr i8, ptr %t259, i64 %t254
  call void @olang_textcopy(ptr %t260, ptr %t256, i64 %t257)
  %t261 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t259, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = extractvalue { i64, ptr } %t262, 1
  %t266 = mul i64 %t264, 1
  %t267 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t267, ptr %t265, i64 %t266, i1 false)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  %t270 = load ptr, ptr %l115, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t270, { i64, ptr } %t269)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s11)
  br label %bb47
bb47:
  %t272 = load i64, ptr %l13, !tbaa !24
  %t274 = add i64 %t272, 1
  store i64 %t274, ptr %l13, !tbaa !24
  br label %bb41
bb48:
  call void @__olang_scope_close(ptr %s10)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t276 = load i64, ptr %l9, !tbaa !24
  %t278 = add i64 %t276, 1
  store i64 %t278, ptr %l9, !tbaa !24
  br label %bb13
bb51:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l4, i8 62)
  br label %bb52
bb52:
  %t282 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l4)
  store { i64, ptr } %t282, ptr %l127
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t283 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t283, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2ewithDefaults(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l17 = alloca i1
  %l27 = alloca ptr
  %l35 = alloca %"std/prelude/text:StringBuilder"
  %l42 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l56 = alloca i1
  %l61 = alloca i1
  %l62 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l79 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l95 = alloca ptr
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l99 = alloca i64
  %l100 = alloca i64
  %l105 = alloca { i64, ptr }
  %l107 = alloca i64
  %l110 = alloca i64
  %l111 = alloca i64
  %l117 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  store i1 %t9, ptr %l17, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l17, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 1
  %t15 = extractvalue { i64, ptr } %t12, 0
  %t16 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t14, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t22 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/load:Loader", ptr %t26, i32 0, i32 10
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store ptr %t32, ptr %l27
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l27, !tbaa !29
  %t35 = getelementptr %"compiler/load:Module", ptr %t33, i32 0, i32 6
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l5, !tbaa !29
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_ff0e4b22591d4baf_6e63db52d9d49f33)
  unreachable
bb9:
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l5, !tbaa !29
  %t45 = getelementptr %"compiler/source:Source", ptr %t42, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l6, !tbaa !27
  %t48 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t48, ptr %l35
  br label %bb11
bb11:
  %t49 = load %"std/prelude/text:StringBuilder", ptr %l35
  store %"std/prelude/text:StringBuilder" %t49, ptr %l7
  %t50 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t50, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t52 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t56 = icmp sgt i64 %t54, 0
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb13, label %bb14
bb13:
  br label %bb61
bb14:
  br label %bb15
bb15:
  %t60 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t62 = call i64 @compiler_2fexplain_2efirstItemEnd(ptr %v1, { i64, ptr } %t60)
  store i64 %t62, ptr %l42
  br label %bb16
bb16:
  %t63 = load i64, ptr %l42, !tbaa !24
  store i64 %t63, ptr %l10, !tbaa !24
  store ptr %l7, ptr %l43, !tbaa !29
  %t64 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t64, ptr %l44, !tbaa !27
  %t65 = load i64, ptr %l10, !tbaa !24
  store i64 %t65, ptr %l45, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l46, !tbaa !24
  %t68 = icmp sge i64 0, 0
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = load i64, ptr %l45, !tbaa !24
  %t71 = icmp sle i64 0, %t70
  br i1 %t71, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_9a288766c4af6878_87d82d450b86e5bc)
  unreachable
bb19:
  %t73 = load i64, ptr %l45, !tbaa !24
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = icmp sle i64 %t73, %t74
  br i1 %t75, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_9a288766c4af6878_87d82d450b86e5bc)
  unreachable
bb21:
  %t77 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = load i64, ptr %l45, !tbaa !24
  %t80 = getelementptr i8, ptr %t78, i64 0
  %t81 = sub i64 %t79, 0
  %t82 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t80, 1
  %t84 = load ptr, ptr %l43, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t84, { i64, ptr } %t83)
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_9a288766c4af6878_87d82d450b86e5bc)
  unreachable
bb23:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t90 = sub i64 %t86, %a4
  store i64 %t90, ptr %l11, !tbaa !24
  %t92 = load i64, ptr %l11, !tbaa !24
  %t94 = icmp sge i64 %t92, 0
  br i1 %t94, label %bb24, label %bb25
bb24:
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t102 = icmp slt i64 %t96, %t99
  store i1 %t102, ptr %l56, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb26
bb26:
  %t104 = load i1, ptr %l56, !tbaa !21
  br i1 %t104, label %bb27, label %bb28
bb27:
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t105, ptr %l62, !tbaa !27
  %t106 = load i64, ptr %l11, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr ptr, ptr %t109, i64 %t106
  %t111 = load ptr, ptr %t110, !tbaa !39
  %t113 = getelementptr %"compiler/ast:Param", ptr %t111, i32 0, i32 3
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  %t118 = xor i1 %t116, true
  store i1 %t118, ptr %l61, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb29
bb29:
  %t120 = load i1, ptr %l61, !tbaa !21
  br i1 %t120, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s4
  %t121 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t121, ptr %l68, !tbaa !27
  %t122 = load i64, ptr %l11, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr ptr, ptr %t125, i64 %t122
  %t127 = load ptr, ptr %t126, !tbaa !39
  %t129 = getelementptr %"compiler/ast:Param", ptr %t127, i32 0, i32 3
  %t130 = load ptr, ptr %t129, !tbaa !29
  store ptr %t130, ptr %l12, !tbaa !29
  %t132 = load ptr, ptr %l12, !tbaa !29
  %t134 = icmp eq ptr %t132, null
  br i1 %t134, label %bb32, label %bb33
bb31:
  br label %bb43
bb32:
  call void @__olang_check_failed(ptr @olang_loc_dff7162f9e8224a5_8282e6f3b3a12619)
  unreachable
bb33:
  br label %bb34
bb34:
  %t136 = load ptr, ptr %l12, !tbaa !29
  %t138 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t136)
  store %"compiler/source:Span" %t138, ptr %l75
  br label %bb35
bb35:
  %t139 = load %"compiler/source:Span", ptr %l75
  store %"compiler/source:Span" %t139, ptr %l13
  store ptr %l7, ptr %l76, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t140, ptr %l77, !tbaa !27
  %t141 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 0
  %t142 = load i32, ptr %t141, !tbaa !23
  %t144 = sext i32 %t142 to i64
  store i64 %t144, ptr %l79, !tbaa !24
  %t145 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 1
  %t146 = load i32, ptr %t145, !tbaa !23
  %t148 = sext i32 %t146 to i64
  store i64 %t148, ptr %l81, !tbaa !24
  %t149 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  store i64 %t150, ptr %l82, !tbaa !24
  %t151 = load i64, ptr %l79, !tbaa !24
  %t152 = icmp sge i64 %t151, 0
  br i1 %t152, label %bb36, label %bb37
bb36:
  %t154 = load i64, ptr %l79, !tbaa !24
  %t155 = load i64, ptr %l81, !tbaa !24
  %t156 = icmp sle i64 %t154, %t155
  br i1 %t156, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a8ae3786bbd05e76_8adb6c8ffb4c6a8a)
  unreachable
bb38:
  %t158 = load i64, ptr %l81, !tbaa !24
  %t159 = load i64, ptr %l82, !tbaa !24
  %t160 = icmp sle i64 %t158, %t159
  br i1 %t160, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_a8ae3786bbd05e76_8adb6c8ffb4c6a8a)
  unreachable
bb40:
  %t162 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = load i64, ptr %l79, !tbaa !24
  %t165 = load i64, ptr %l81, !tbaa !24
  %t166 = getelementptr i8, ptr %t163, i64 %t164
  %t167 = sub i64 %t165, %t164
  %t168 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  %t170 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t173 = extractvalue { i64, ptr } %t169, 1
  %t174 = extractvalue { i64, ptr } %t169, 0
  %t175 = add i64 %t171, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t170, i64 %t171)
  %t177 = getelementptr i8, ptr %t176, i64 %t171
  call void @olang_textcopy(ptr %t177, ptr %t173, i64 %t174)
  %t178 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t176, 1
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t182 = extractvalue { i64, ptr } %t179, 1
  %t183 = mul i64 %t181, 1
  %t184 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t183)
  call void @llvm.memcpy.p0.p0.i64(ptr %t184, ptr %t182, i64 %t183, i1 false)
  %t185 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  %t187 = load ptr, ptr %l76, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t187, { i64, ptr } %t186)
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_a8ae3786bbd05e76_8adb6c8ffb4c6a8a)
  unreachable
bb42:
  call void @__olang_scope_close(ptr %s4)
  br label %bb43
bb43:
  %t189 = load i64, ptr %l9, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l9, !tbaa !24
  %t193 = load i64, ptr %l10, !tbaa !24
  %t194 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t199 = icmp sge i64 %t193, %t196
  br i1 %t199, label %bb44, label %bb45
bb44:
  br label %bb61
bb45:
  br label %bb46
bb46:
  store ptr %l7, ptr %l95, !tbaa !29
  %t201 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t201, ptr %l96, !tbaa !27
  %t202 = load i64, ptr %l10, !tbaa !24
  store i64 %t202, ptr %l97, !tbaa !24
  %t203 = load i64, ptr %l10, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l99, !tbaa !24
  %t206 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 0
  store i64 %t207, ptr %l100, !tbaa !24
  %t208 = load i64, ptr %l97, !tbaa !24
  %t209 = icmp sge i64 %t208, 0
  br i1 %t209, label %bb47, label %bb48
bb47:
  %t211 = load i64, ptr %l97, !tbaa !24
  %t212 = load i64, ptr %l99, !tbaa !24
  %t213 = icmp sle i64 %t211, %t212
  br i1 %t213, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_5d08aa5c1c4e2139_c45b4cae2d84e405)
  unreachable
bb49:
  %t215 = load i64, ptr %l99, !tbaa !24
  %t216 = load i64, ptr %l100, !tbaa !24
  %t217 = icmp sle i64 %t215, %t216
  br i1 %t217, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_5d08aa5c1c4e2139_c45b4cae2d84e405)
  unreachable
bb51:
  %t219 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = load i64, ptr %l97, !tbaa !24
  %t222 = load i64, ptr %l99, !tbaa !24
  %t223 = getelementptr i8, ptr %t220, i64 %t221
  %t224 = sub i64 %t222, %t221
  %t225 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t223, 1
  %t227 = load ptr, ptr %l95, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t227, { i64, ptr } %t226)
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_5d08aa5c1c4e2139_c45b4cae2d84e405)
  unreachable
bb53:
  %t229 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t229, ptr %l105, !tbaa !27
  %t230 = load i64, ptr %l10, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l107, !tbaa !24
  %t233 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t233, 0
  store i64 %t236, ptr %l110, !tbaa !24
  %t237 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t237, 0
  store i64 %t238, ptr %l111, !tbaa !24
  %t239 = load i64, ptr %l107, !tbaa !24
  %t240 = icmp sge i64 %t239, 0
  br i1 %t240, label %bb54, label %bb55
bb54:
  %t242 = load i64, ptr %l107, !tbaa !24
  %t243 = load i64, ptr %l110, !tbaa !24
  %t244 = icmp sle i64 %t242, %t243
  br i1 %t244, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_6ea1601f041f7d0c_6257690dec820828)
  unreachable
bb56:
  %t246 = load i64, ptr %l110, !tbaa !24
  %t247 = load i64, ptr %l111, !tbaa !24
  %t248 = icmp sle i64 %t246, %t247
  br i1 %t248, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_6ea1601f041f7d0c_6257690dec820828)
  unreachable
bb58:
  %t250 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = load i64, ptr %l107, !tbaa !24
  %t253 = load i64, ptr %l110, !tbaa !24
  %t254 = getelementptr i8, ptr %t251, i64 %t252
  %t255 = sub i64 %t253, %t252
  %t256 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t254, 1
  store { i64, ptr } %t257, ptr %l8, !tbaa !27
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_6ea1601f041f7d0c_6257690dec820828)
  unreachable
bb60:
  br label %bb12
bb61:
  %t260 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l7)
  store { i64, ptr } %t260, ptr %l117
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  %t261 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t261, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2ewordPayload(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l9 = alloca i32
  %l15 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l37 = alloca i32
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v1, ptr %t4, i32 %a2)
  store i32 %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load i32, ptr %l9, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  %t10 = load i32, ptr %l4, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l15, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l4, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v1, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l20
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l15, !tbaa !29
  %t33 = load i32, ptr %l20, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %v1, ptr %t32, i32 %t33)
  store { i64, ptr } %t34, ptr %l21
  br label %bb6
bb6:
  %t35 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  %t36 = load i64, ptr %l3, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t42 = icmp sge i64 %t36, %t39
  br i1 %t42, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb9
bb8:
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t44, ptr %l27, !tbaa !27
  %t45 = load i64, ptr %l3, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i32, ptr %t48, i64 %t45
  %t50 = load i32, ptr %t49, !tbaa !33
  %t52 = icmp eq i32 %t50, 0
  store i1 %t52, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb10, label %bb11
bb10:
  br label %ret
bb11:
  br label %bb12
bb12:
  store ptr %a0, ptr %l31, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l32, !tbaa !29
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l4, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l37
  br label %bb13
bb13:
  %t67 = load i32, ptr %l4, !tbaa !23
  %t68 = load i64, ptr %l3, !tbaa !24
  %t69 = load ptr, ptr %l31, !tbaa !29
  %t70 = load ptr, ptr %l32, !tbaa !29
  %t71 = load i32, ptr %l37, !tbaa !23
  call void @compiler_2fexplain_2epushPayload(ptr %v0, ptr %v1, ptr %t69, ptr %t70, i32 %t71, i32 %t67, i64 %t68)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fexplain_2ewrittenMethod(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l43 = alloca ptr
  %l47 = alloca i64
  %l50 = alloca i1
  %l54 = alloca i1
  %l64 = alloca { i64, ptr }
  %l67 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %t4)
  br label %bb1
bb1:
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l22, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l22, !tbaa !24
  store i64 %t39, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l19, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l9, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t62, i64 %t63)
  store ptr %t66, ptr %l43
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l43, !tbaa !29
  store ptr %t67, ptr %l10, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t71, i64 %t72)
  store i64 %t75, ptr %l47
  br label %bb14
bb14:
  %t77 = load i64, ptr %l47, !tbaa !24
  %t79 = icmp ne i64 %t77, %a1
  br i1 %t79, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb17
bb16:
  %t81 = load ptr, ptr %l10, !tbaa !29
  %t83 = getelementptr %"compiler/ast:Func", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  store i1 %t86, ptr %l50, !tbaa !21
  br label %bb17
bb17:
  %t88 = load i1, ptr %l50, !tbaa !21
  br i1 %t88, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb20
bb19:
  %t89 = load ptr, ptr %l10, !tbaa !29
  %t91 = getelementptr %"compiler/ast:Func", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %t91, !tbaa !23
  %t96 = icmp ne i32 %t92, %a3
  store i1 %t96, ptr %l54, !tbaa !21
  br label %bb20
bb20:
  %t98 = load i1, ptr %l54, !tbaa !21
  br i1 %t98, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb22:
  br label %bb23
bb23:
  %t99 = load ptr, ptr %l10, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/load:Loader", ptr %t106, i32 0, i32 3
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t112 = call { i64, ptr } @compiler_2fast_2eRecvTarget(ptr %v0, ptr %v0, ptr %s2, ptr %t99, ptr %t109)
  store { i64, ptr } %t112, ptr %l64
  br label %bb24
bb24:
  %t113 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t123 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %v1, { i64, ptr } %t119, { i64, ptr } %a2)
  store i1 %t123, ptr %l67
  br label %bb25
bb25:
  %t124 = load i1, ptr %l67, !tbaa !21
  br i1 %t124, label %bb26, label %bb27
bb26:
  %t125 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  store i64 %t125, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb29:
  %t127 = load i64, ptr %l8, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l8, !tbaa !24
  br label %bb9
bb30:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/explain:Code" @compiler_2fexplain_3aCode_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/explain:Code"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/explain:Code" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/explain:Code" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/explain:Code" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/explain:Code" %t14, { i64, ptr } %a3, 3
  store %"compiler/explain:Code" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/explain:Code", ptr %rv
  ret %"compiler/explain:Code" %rr
}

@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d1 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d2 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"held in locals and results only - its scopes (" }>, align 8
@.d3 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c") are more than a written function type says of every call (T22a)" }>, align 8
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
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"held in locals and results only - the function it gives, " }>, align 8
@.d7 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c", ties scopes more than a written function type says of every call (T22a)" }>, align 8
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
@olang_2esole_2ecompiler_2fexplain_3aCode_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d8 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"instance " }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d10 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"a method is called as one (M19) - a lambda calling it is a value" }>, align 8
@.d11 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"an extern fn is called by its name (X1) - a lambda calling it is a value" }>, align 8
@.d12 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"it is compiled once per length of an array it takes by value (G29) - pass a lambda calling it" }>, align 8
@.d13 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"a generic builder is a value only named with its type arguments, '" }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"<...>." }>, align 8
@.d15 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"' (G12, D19)" }>, align 8
@.d16 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"a generic is a value only named with its type arguments, '" }>, align 8
@.d17 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"<...>' (G12)" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d20 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".h" }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d25 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"# commutes: the operator applies with its operands the other way round too (E31c)\0A" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]\0A" }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" immut" }>, align 8
@.d29 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" unique" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d32 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Generator" }>, align 8
@.d33 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Iterator" }>, align 8
@.d34 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"   # a generator: a call gives a " }>, align 8
@.d35 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"ViewGenerator<" }>, align 8
@.d36 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Iterator" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d38 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"   # a generator: a call gives a " }>, align 8
@.d39 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"extern fn " }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d43 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c") " }>, align 8
@.d44 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"    # generational: held by reference; weak from " }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d46 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" mut " }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d48 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"   # set at startup\0A" }>, align 8
@.d49 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"   # set at startup\0A" }>, align 8
@.d50 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d51 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"...   # " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d52 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" characters\0A" }>, align 8
@.d53 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d55 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d57 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"        " }>, align 8
@.d58 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"# not a value: " }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d64 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"# as a value: " }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d67 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cn" }>, align 8
@.d68 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Ct" }>, align 8
@.d69 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"   # its error set inferred" }>, align 8
@.d70 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d71 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"? " }>, align 8
@.d73 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d76 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
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
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eObligations(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eValueCovered(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eGivesHeld(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eSpellFrom(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fexplain_2efnNamed(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ePush_3ccompiler_2fexplain_3aCode_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/explain:Code" %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceCount(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, { i64, ptr } %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fexplain_2etypeArgs(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerVarCount(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_e4b17f5ad4d0393_dacada4c9c892187 = external constant [0 x i8]
@olang_loc_31b785093080fa1c_de0f6dc4f3b337d0 = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_430839a36fc86f5_d60a2ea9e5c9a99 = external constant [0 x i8]
@olang_loc_8ab7a894dba5a8d7_a5979f5013b78ba3 = external constant [0 x i8]
@olang_loc_e7ca39a48e286d3f_b849249cb4ab4933 = external constant [0 x i8]
@olang_loc_ec0929e0cef23b20_10aa079683981964 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
@olang_loc_f15d5c61f6a9e0c3_25b5f938bbb7b67 = external constant [0 x i8]
@olang_loc_6448edf003c535f3_ebaded49d6e07c97 = external constant [0 x i8]
@olang_loc_979fe2e14fb6de05_5947910940c194f1 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaredUnique(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_6896438a508f3415_b4ea8b5a918f5051 = external constant [0 x i8]
declare i64 @compiler_2fexplain_2efirstItemEndAll(ptr %v0, { i64, ptr } %a0)
declare i64 @compiler_2fexplain_2ereceiverVars(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_fc7f64fd7b454af3_cf2a3e2278d9fc1f = external constant [0 x i8]
@olang_loc_499d9639469ba124_2d1e6838c6dcdf80 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
@olang_loc_fb9ea6e5b3ca71a7_d8a084b91cdc3d23 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546 = external constant [0 x i8]
@olang_loc_904aca603cad2e45_e62ac09e4cb76009 = external constant [0 x i8]
@olang_loc_e59c902bb0ddc268_5b11d99e1c27629c = external constant [0 x i8]
@olang_loc_f3704e37964cb683_929f8ce39c458747 = external constant [0 x i8]
@olang_loc_87334f8237d1e26_d87acd2b8515436a = external constant [0 x i8]
@olang_loc_96b8876366bd9a81_fe1335b03e31611d = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eGlobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRenderBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTextType(ptr %v0, ptr %a0)
@olang_loc_8383a0ec0de75e1f_623ffa8ab7fe468b = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fexplain_2eeffectLine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i64 %a3, { i64, ptr } %a4)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_267284e461664677_b2c2386ba62ab5d3 = external constant [0 x i8]
declare i1 @compiler_2fexplain_2ecaseWhole(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_66f7703ccaf4f658_ca46a1b97aa24804 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_f786d30f5b15881b_2a3d6cb8e4e51887 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInfersErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eErrorsOf(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundTraits(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_ff0e4b22591d4baf_6e63db52d9d49f33 = external constant [0 x i8]
@olang_loc_9a288766c4af6878_87d82d450b86e5bc = external constant [0 x i8]
@olang_loc_dff7162f9e8224a5_8282e6f3b3a12619 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_a8ae3786bbd05e76_8adb6c8ffb4c6a8a = external constant [0 x i8]
@olang_loc_5d08aa5c1c4e2139_c45b4cae2d84e405 = external constant [0 x i8]
@olang_loc_6ea1601f041f7d0c_6257690dec820828 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fast_2eRecvTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)

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
