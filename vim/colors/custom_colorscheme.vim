vim9script

highlight clear
if exists("syntax_on")
    syntax reset
endif

set background=dark

def SetMultipleHL(groups: list<string>, guifg: string, guibg: string,
    ctermfg: string, ctermbg: string,
    gui: string = 'NONE', cterm='NONE')
    for group in groups
        execute 'hi ' .. group .. ' guifg=' .. guifg .. ' guibg=' .. guibg .. ' gui=' .. gui ..
            ' ctermfg=' .. ctermfg .. ' ctermbg=' .. ctermbg .. ' cterm=' .. cterm
    endfor
enddef

SetMultipleHL(
    [
        'Cursor', 'iCursor',
    ],
    '#000000',
    '#ffffff',
    '0',
    '15'
)

SetMultipleHL(
    [
        'Normal', 'Special', 'Identifier', 'Constant', 'NonText'
    ],
    '#dadada',
    '#121212',
    '253',
    '233'
)

SetMultipleHL(
    [
        'Title',
    ],
    '#dadada',
    '#121212',
    '253',
    '233'
)

SetMultipleHL(
    [
        'Statement', 'Type', 'PreProc', 'Directory'
    ],
    '#d7af00',
    'NONE',
    '178',
    'NONE'
)

SetMultipleHL(
    [
        'String'
    ],
    '#87af87',
    'NONE',
    '108',
    'NONE'
)

SetMultipleHL(
    [
        'MatchParen'
    ],
    '#dadada',
    '#000000',
    '253',
    '0',
)

SetMultipleHL(
    [
        'Comment', 'LineNr'
    ],
    '#767676',
    'NONE',
    '243',
    'NONE'
)

SetMultipleHL(
    [
        'Todo', 'ErrorMsg'
    ],
    '#ff0000',
    'NONE',
    '9',
    'NONE'
)

SetMultipleHL(
    ['Error'],
    '#ff0000',
    'NONE',
    '9',
    'NONE',
    'undercurl'
)

SetMultipleHL(
    ['WarningMsg'],
    '#d7d700',
    'NONE',
    '184',
    'NONE',
    'undercurl'
)

SetMultipleHL(
    ['Pmenu'],
    '#dadada',
    '#000000',
    '253',
    '0'
)

SetMultipleHL(
    ['PMenuSel', 'WildMenu', 'Search', 'Visual', 'QuickFixLine'],
    '#000000',
    '#a8a8a8',
    '0',
    '248'
)

SetMultipleHL(
    ['PMenuThumb'],
    'NONE',
    '#3a3a3a',
    'NONE',
    '237'
)

SetMultipleHL(
    ['PMenuSbar'],
    'NONE',
    '#000000',
    'NONE',
    '0'
)

SetMultipleHL(
    ['StatusLineNC'],
    '#767676',
    '#000000',
    '243',
    '0',
)

SetMultipleHL(
    ['StatusLine', 'VertSplit'],
    '#dadada',
    '#000000',
    '0',
    '253',
    'bold',
    'bold',
)

SetMultipleHL(
    ['ColorColumn'],
    'NONE',
    '#1c1c1c',
    'NONE',
    '234',
)

match RedundantSpaces /\s\+$/
SetMultipleHL(
    ['RedundantSpaces'],
    'NONE',
    '#ff0000',
    'NONE',
    '9',
)
