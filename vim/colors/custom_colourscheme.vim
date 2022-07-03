vim9script

highlight clear
if exists("syntax_on")
    syntax reset
endif

set background=dark

def SetMultipleHL(groups: list<string>, guifg: string, guibg: string, ctermfg: string, ctermbg: string, gui: string = 'NONE')
    for group in groups
        execute 'hi ' .. group .. ' guifg=' .. guifg .. ' guibg=' .. guibg .. ' gui=' .. gui .. ' ctermfg=' .. ctermfg .. ' ctermbg=' .. ctermbg
    endfor
enddef

SetMultipleHL(
    [
        'lCursor', 'MatchParen', 'PMenuSel', 'MatchParen', 'PMenuSel'
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
    '#ffffff',
    '#121212',
    '15',
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
    '#ffffff',
    '0',
    '15'
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
    [
        'Error', 
    ], 
    '#ff0000',
    'NONE',
    '9',
    'NONE',
    'undercurl'
)

SetMultipleHL(
    [
        'WarningMsg' 
    ], 
    '#d7d700',
    'NONE',
    '184',
    'NONE',
    'undercurl'
)

SetMultipleHL(
    [
        'Pmenu' 
    ], 
    '#ffffff',
    '#000000',
    '15',
    '0'
)

SetMultipleHL(
    [
        'PMenuSel'
    ], 
    '#ffffff',
    '#3a3a3a',
    '15',
    '237'
)

SetMultipleHL(
    [
        'PMenuThumb'
    ], 
    'NONE',
    '#3a3a3a',
    'NONE',
    '237'
)

SetMultipleHL(
    [
        'PMenuSbar'
    ], 
    'NONE',
    '#000000',
    'NONE',
    '0'
)
