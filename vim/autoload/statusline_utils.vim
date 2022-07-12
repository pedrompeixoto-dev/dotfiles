if !has('vim9script')
    finish
endif

vim9script

export var mode = {
    'n': 'NORMAL ',
    'v': 'VISUAL ',
    'V': 'V·Line ',
    "\<C-V>": 'V·Block ',
    'i': 'INSERT ',
    'R': 'R ',
    'Rv': 'V·Replace ',
    'c': 'Command ',
    't': 'terminal ',
}

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
            result = result .. ' ' .. format
        else 
            result = format
        endif 
    endif

    if (encoding != '')
        if (result != '')
            result = result .. ' ' .. encoding
        else 
            result = encoding
        endif 
    endif

    return result 
enddef
