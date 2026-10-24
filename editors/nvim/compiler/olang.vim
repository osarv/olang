" :compiler olang - :make checks the current file as "olang compile" does, and lists the compiler's one-row
" diagnostics (B11): "path:line:col: error[RULE]: message", then its notes
if exists("current_compiler")
  finish
endif
let current_compiler = "olang"

CompilerSet makeprg=olang\ compile\ %:S
CompilerSet errorformat=%f:%l:%c:\ %trror[%*[^]]]:\ %m,
      \%f:%l:%c:\ %trror:\ %m,
      \%f:%l:%c:\ %tote:\ %m,
      \%f:%l:\ %trror[%*[^]]]:\ %m,
      \%f:\ %trror[%*[^]]]:\ %m,
      \olang:\ %trror[%*[^]]]:\ %m,
      \%-G%.%#
