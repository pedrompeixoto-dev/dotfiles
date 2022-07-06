if !has('vim9script')
    finish
endif

vim9script

export def GitBranch(): string
    if !isdirectory('.git') 
        return ''
    endif
    var gitBranch = substitute(system("git rev-parse --abbrev-ref HEAD"), '\n', '', 'g')

    if (gitBranch != '')
        return 'branch:' .. gitBranch
    endif

    return ''
enddef

export def FileInfo(): string
    var type = &filetype
    var encoding = &fileencoding
    var format = &fileformat
    var result = ''

    if (type != '')
        result = result .. type
    endif

    if (format != '')
        if (result != '')
            result = result .. ' '
        endif 
        result = result .. format
    endif

    if (encoding != '')
        if (result != '')
            result = result .. ' '
        endif 
        result = result .. encoding
    endif

    return result 
enddef
