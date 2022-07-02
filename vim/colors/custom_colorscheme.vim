vim9script

highlight clear
if exists("syntax_on")
    syntax reset
endif

set background=dark

def SetMultipleHL(groups: list<string>, guifg: string, guibg: string, gui: string = 'NONE')
    for group in groups
        execute 'hi ' .. group .. ' guifg=' .. guifg .. ' guibg=' .. guibg .. ' gui=' .. gui
    endfor
enddef

SetMultipleHL(
    [
        'lCursor', 'MatchParen', 'PMenuSel', 'MatchParen', 'PMenuSel'
    ], 
    '#000000',
    '#ffffff' 
)

SetMultipleHL(
    [
        'Normal', 'Special', 
        'Identifier',
        'Constant'
    ], 
    '#ffffff',
    '#121212'
)

SetMultipleHL(
    [
        'Statement', 'Type', 'PreProc' 
    ], 
    '#d7af00',
    'NONE'
)

SetMultipleHL(
    [
        'String' 
    ], 
    '#87af87',
    'NONE'
)

SetMultipleHL(
    [
        'MatchParen' 
    ], 
    '#000000',
    '#ffffff'
)

SetMultipleHL(
    [
        'Comment' 
    ], 
    '#767676',
    'NONE'
)

SetMultipleHL(
    [
        'Todo', 'ErrorMsg'
    ], 
    '#ff0000',
    'NONE'
)

SetMultipleHL(
    [
        'Error', 
    ], 
    '#ff0000',
    'NONE',
    'undercurl'
)

SetMultipleHL(
    [
        'WarningMsg' 
    ], 
    '#d7d700',
    'NONE',
    'undercurl'
)

SetMultipleHL(
    [
        'Pmenu' 
    ], 
    '#ffffff',
    '#000000',
)

SetMultipleHL(
    [
        'PMenuSel'
    ], 
    '#ffffff',
    '#3a3a3a',
)

SetMultipleHL(
    [
        'PMenuThumb'
    ], 
    'NONE',
    '#3a3a3a',
)

SetMultipleHL(
    [
        'PMenuSbar'
    ], 
    'NONE',
    '#000000',
)
