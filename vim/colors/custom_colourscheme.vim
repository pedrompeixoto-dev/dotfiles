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
            ' ctermfg=' .. ctermfg .. ' ctermbg=' .. ctermbg
    endfor
enddef

SetMultipleHL(
    [
        'lCursor', 'MatchParen', 'PMenuSel', 'MatchParen', 'PMenuSel'
    ], 
    '#000000',
    '#dadada',
    '0', 
    '252' 
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
        'Statement', 'Type', 'PreProc' 
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
    '#000000',
    '#dadada',
    '0',
    '253'
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
    ['PMenuSel'], 
    '#dadada',
    '#3a3a3a',
    '253',
    '237'
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
    ['StatusLine'],
    '#eeeeee',
    '#000000',
    '243',
    '0',
    'bold',
    'bold',
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
    '#eeeeee',
    '#000000',
    '255',
    '0',
    'bold',
    'bold',
)


