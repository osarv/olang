" olang syntax: keywords, types, literals, comments (# to the line's end, ## ... ## a block), rules in comments
if exists("b:current_syntax")
  finish
endif

syn keyword olangKeyword fn type struct enum trait extends import test extern destruct
syn keyword olangStatement return break continue error defer errdefer assert unreachable noreturn spawn join yield become comptime
syn keyword olangConditional if else match case
syn keyword olangRepeat for in range do
syn keyword olangException try catch default
syn keyword olangOperator and or not xor as embed
syn keyword olangStorage mut any unique immut packed commutes
syn keyword olangKeyword returns noalloc noblock nospawn norecurse noextern pure keeps borrows noborrow weak
syn keyword olangBoolean true false
syn keyword olangConstant null
syn keyword olangType Bool I8 I16 I32 I64 U8 U16 U32 U64 F16 BF16 F32 F64 Array String Char List Map Vec StringBuilder
syn match olangType "\<[IU][0-9]\+\>"
syn keyword olangType F8E4M3 F8E5M2 C16 C32 C64 Place Axis Display Displayable
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

" olang's own palette, the same as the interpreter's (compiler/paint.olang; DEPENDENTS.md): colours readable on a dark
" background, none dark blue or black. It replaces the colorscheme's for olang's groups; `let g:olang_palette = 0`
" keeps the links above instead. Re-applied after every :colorscheme.
let s:purple = 'guifg=#c792ea ctermfg=177'
let s:yellow = 'guifg=#ffcb6b ctermfg=221'
let s:teal = 'guifg=#7fdbca ctermfg=116'
let s:orange = 'guifg=#f78c6c ctermfg=209'
let s:green = 'guifg=#c3e88d ctermfg=150'
let s:grey = 'guifg=#a6accd ctermfg=250 gui=italic cterm=italic'
let s:cyan = 'guifg=#89ddff ctermfg=117'
let s:palette = {
  \ 'olangKeyword': s:purple, 'olangStatement': s:purple, 'olangConditional': s:purple, 'olangRepeat': s:purple,
  \ 'olangException': s:purple, 'olangStorage': s:purple, 'olangBoolean': s:purple, 'olangConstant': s:purple,
  \ 'olangOperator': s:cyan, 'olangRender': s:cyan, 'olangType': s:yellow, 'olangTypeName': s:yellow,
  \ 'olangFunction': s:teal, 'olangNumber': s:orange, 'olangString': s:green, 'olangRawString': s:green,
  \ 'olangChar': s:green, 'olangEscape': s:green, 'olangComment': s:grey, 'olangBlockComment': s:grey,
  \ 'olangTodo': s:yellow . ' gui=bold cterm=bold guibg=NONE ctermbg=NONE',
  \ 'olangRule': s:cyan . ' gui=underline cterm=underline'}

function! s:OlangPalette() abort
  if !get(g:, 'olang_palette', 1)
    return
  endif
  for [group, spec] in items(s:palette)
    exe 'hi! link ' . group . ' NONE'
    exe 'hi ' . group . ' ' . spec
  endfor
endfunction
call s:OlangPalette()
augroup olangPalette
  autocmd!
  autocmd ColorScheme * call s:OlangPalette()
augroup END

let b:current_syntax = "olang"
