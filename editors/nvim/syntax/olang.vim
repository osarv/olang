" olang syntax: keywords, types, literals, comments (# to the line's end, ## ... ## a block), rules in comments
if exists("b:current_syntax")
  finish
endif

syn keyword olangKeyword fn type struct enum trait extends import test extern destruct
syn keyword olangStatement return break continue error defer assert unreachable noreturn spawn join yield
syn keyword olangConditional if else match case nomatch
syn keyword olangRepeat for in range do
syn keyword olangException try catch checked default
syn keyword olangOperator and or not xor is as
syn keyword olangStorage mut
syn keyword olangBoolean true false
syn keyword olangConstant null
syn keyword olangType Bool I8 I16 I32 I64 U8 U16 U32 U64 F16 BF16 F32 F64 Array String Char List Map Vec StringBuilder
syn keyword olangTodo TODO FIXME XXX contained

" a declared type, a constant: a name with a capital first letter after "type", and any CapitalisedName
syn match olangTypeName "\<[A-Z][A-Za-z0-9_]*\>"
syn match olangFunction "\<[A-Za-z_][A-Za-z0-9_]*\>\ze\s*("

syn match olangNumber "\<\d[0-9_]*\(\.\d[0-9_]*\)\=\([eE][+-]\=\d\+\)\=\>"
syn match olangNumber "\<0[xX][0-9A-Fa-f_]\+\>"
syn match olangNumber "\<0[bB][01_]\+\>"
syn match olangEscape "\\[nrt0\\'\"]" contained
syn match olangEscape "\\x\x\x" contained
syn match olangEscape "\\u{\x\{1,6}}" contained
syn region olangRawString start=+"""+ end=+"""+
syn region olangString start=+"\(""\)\@!+ skip=+\\\\\|\\"+ end=+"+ oneline contains=olangEscape
syn match olangChar "'\(\\x\x\x\|\\u{\x\{1,6}}\|\\.\|[^\\']\)'" contains=olangEscape
syn match olangRender "\$" 

syn match olangRule "\<[A-Z]\{1,2}\d\+[a-z]\=\>" contained
syn region olangBlockComment start="##" end="##" contains=olangTodo,olangRule
syn match olangComment "#\(#\)\@!.*$" contains=olangTodo,olangRule

hi def link olangKeyword Keyword
hi def link olangStatement Statement
hi def link olangConditional Conditional
hi def link olangRepeat Repeat
hi def link olangException Exception
hi def link olangOperator Operator
hi def link olangStorage StorageClass
hi def link olangBoolean Boolean
hi def link olangConstant Constant
hi def link olangType Type
hi def link olangTypeName Type
hi def link olangFunction Function
hi def link olangNumber Number
hi def link olangString String
hi def link olangRawString String
hi def link olangChar Character
hi def link olangEscape SpecialChar
hi def link olangRender Special
hi def link olangComment Comment
hi def link olangBlockComment Comment
hi def link olangTodo Todo
hi def link olangRule Underlined

let b:current_syntax = "olang"
