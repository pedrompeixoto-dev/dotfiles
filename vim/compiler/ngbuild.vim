vim9script
if exists("g:current_compiler")
    finish
endif
g:current_compiler = "ngbuild"

set makeprg=npm\ run\ build
set errorformat=Error:\ %f:%l:%c\ -\ error\ %m,
			\%-G%.%#
