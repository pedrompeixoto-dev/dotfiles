vim9script
if exists("g:current_compiler")
    finish
endif
g:current_compiler = "ngbuild"

CompilerSet errorformat=Error:\ %f:%l:%c\ -\ %trror\ %m,%-G%.%#
CompilerSet makeprg=npm\ run\ build
