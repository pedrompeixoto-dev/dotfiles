vim9script
if exists("g:current_compiler")
    finish
endif
g:current_compiler = "nglint"

CompilerSet errorformat=%-P%f,%\\s%#%l:%c%\\s%\\+%trror%\\s%\\+%m,%\\s%#%l:%c%\\s%\\+%tarning%\\s%\\+%m,%-Q,%-G%.%#
CompilerSet makeprg=npm\ run\ lint
