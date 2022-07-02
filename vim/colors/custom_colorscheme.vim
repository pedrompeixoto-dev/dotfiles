vim9script

highlight clear
if exists("syntax_on")
    syntax reset
endif

set background=dark

def SetMultipleHL(groups: list<string>, guifg: string, guibg: string)
    for group in groups
        execute 'hi ' .. group .. ' guifg=' .. guifg .. ' guibg=' .. guibg
    endfor
enddef

SetMultipleHL(
    [
        'Normal', 'String', 'Statement', 'Type', 'PreProc', 'Special', 
        'Comment', 'MatchParen', 'Identifier', 'Todo', 'Function', 'Delimiter',
        'Error', 'Constant'
    ], 
    '#ffffff', 
    '#121212'
)

