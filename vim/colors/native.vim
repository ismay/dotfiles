" http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/
" https://github.com/jeffkreeftmeijer/vim-dim
" https://vi.stackexchange.com/a/2783
" https://alvinalexander.com/linux/vi-vim-editor-color-scheme-syntax
" https://jonasjacek.github.io/colors

" 0 black
" 1 darkred
" 2 darkgreen
" 3 darkyellow
" 4 darkblue
" 5 darkmagenta
" 6 darkcyan
" 7 grey
" 8 darkgrey
" 9 red
" 10 green
" 11 yellow
" 12 blue
" 13 magenta
" 14 cyan
" 15 white

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "native"

" Allow for undercurl to be used
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

" Spell
hi SpellBad cterm=undercurl ctermul=red ctermfg=none ctermbg=none
hi SpellCap cterm=undercurl ctermul=yellow ctermfg=none ctermbg=none
hi SpellLocal cterm=undercurl ctermul=cyan ctermfg=none ctermbg=none
hi SpellRare cterm=undercurl ctermul=darkmagenta ctermfg=none ctermbg=none

" Search
hi Search ctermfg=black ctermbg=yellow cterm=none
hi IncSearch ctermfg=black ctermbg=yellow cterm=none

" Gitgutter
hi GitGutterAdd ctermfg=darkgreen ctermbg=darkgrey cterm=bold
hi GitGutterAddIntraLine cterm=reverse
hi GitGutterAddInvisible ctermfg=darkgrey ctermbg=darkgrey
hi link GitGutterAddLine DiffAdd
hi link GitGutterAddLineNr CursorLineNr
hi GitGutterChange ctermfg=darkyellow ctermbg=darkgrey cterm=bold
hi link GitGutterChangeDelete GitGutterChange
hi link GitGutterChangeDeleteInvisible GitGutterChangeInvisible
hi link GitGutterChangeDeleteLine GitGutterChangeLine
hi link GitGutterChangeDeleteLineNr CursorLineNr
hi GitGutterChangeInvisible ctermfg=darkgrey ctermbg=darkgrey
hi link GitGutterChangeLine DiffChange
hi link GitGutterChangeLineNr CursorLineNr
hi GitGutterDelete ctermfg=darkred ctermbg=darkgrey cterm=bold
hi GitGutterDeleteIntraLine cterm=reverse
hi GitGutterDeleteInvisible ctermfg=darkgrey ctermbg=darkgrey
hi link GitGutterDeleteLine DiffDelete
hi link GitGutterDeleteLineNr CursorLineNr

"Fern
hi link FernBranchSymbol Statement
hi link FernBranchText Statement
hi FernGitStatusBracket ctermfg=darkgrey cterm=none
hi FernGitStatusIgnored ctermfg=darkgrey cterm=none
hi link FernGitStatusIndex Special
hi link FernGitStatusUnmerged ErrorMsg
hi FernGitStatusUntracked ctermfg=darkgrey cterm=none
hi link FernGitStatusWorktree WarningMsg
hi link FernLeafSymbol Directory
hi link FernLeafText none
hi link FernMarkedLine Title
hi FernMarkedText ctermfg=magenta ctermbg=darkgrey
hi link FernRootText Comment
hi link FernWindowSelectIndicator VitalWindowSelectorIndicator
hi link FernWindowSelectStatusLine VitalWindowSelectorStatusLine

" Fern glyphs
hi GlyphPalette0 ctermfg=0 
hi GlyphPalette1 ctermfg=1 
hi GlyphPalette2 ctermfg=2 
hi GlyphPalette3 ctermfg=3 
hi GlyphPalette4 ctermfg=4 
hi GlyphPalette5 ctermfg=5 
hi GlyphPalette6 ctermfg=6 
hi GlyphPalette7 ctermfg=7 
hi GlyphPalette8 ctermfg=8 
hi GlyphPalette9 ctermfg=9 
hi GlyphPalette10 ctermfg=10 
hi GlyphPalette11 ctermfg=11 
hi GlyphPalette12 ctermfg=12 
hi GlyphPalette13 ctermfg=13 
hi GlyphPalette14 ctermfg=14 
hi GlyphPalette15 ctermfg=15 
hi link GlyphPaletteDirectory Directory

" Used in the statusline as a warning color
hi User1 ctermfg=red ctermbg=darkgrey

" Regular
hi link Boolean Constant
hi link Character Constant
hi ColorColumn ctermfg=grey ctermbg=darkgrey
hi Comment ctermfg=darkgrey cterm=italic
hi Conceal ctermfg=grey ctermbg=grey
hi link Conditional Statement
hi Constant ctermfg=darkred
hi CursorColumn ctermbg=grey
hi CursorLine cterm=none
hi CursorLineNr ctermfg=darkyellow cterm=none
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi DiffAdd ctermfg=black ctermbg=darkgreen
hi DiffChange ctermfg=black ctermbg=darkyellow
hi DiffDelete ctermfg=black ctermbg=darkred
hi DiffText ctermfg=black ctermbg=yellow cterm=bold
hi Directory ctermfg=darkblue
hi link EndOfBuffer NonText
hi Error ctermfg=white ctermbg=red
hi ErrorMsg ctermfg=white ctermbg=darkred
hi link Exception Statement
hi link Float Number
hi FoldColumn ctermfg=grey ctermbg=darkgrey
hi Folded ctermfg=grey ctermbg=darkgrey
hi link Function Identifier
hi Identifier ctermfg=darkcyan cterm=none
hi Ignore ctermfg=white
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi LineNr ctermfg=darkgrey
hi LineNrAbove cterm=none
hi LineNrBelow cterm=none
hi link Macro PreProc
hi MatchParen ctermfg=grey ctermbg=darkgrey
hi ModeMsg cterm=bold
hi MoreMsg ctermfg=darkgreen
hi NonText ctermfg=blue
hi None cterm=none
hi Normal cterm=none
hi link Number Constant
hi link Operator Statement
hi Pmenu ctermfg=white ctermbg=darkgrey
hi PmenuSbar ctermbg=darkgrey
hi PmenuSel ctermfg=darkgrey ctermbg=white
hi PmenuThumb ctermbg=black
hi link PreCondit PreProc
hi PreProc ctermfg=darkmagenta
hi Question ctermfg=darkgreen
hi link QuickFixLine Search
hi link Repeat Statement
hi SignColumn ctermbg=darkgrey
hi Special ctermfg=darkmagenta
hi link SpecialChar Special
hi link SpecialComment Special
hi SpecialKey ctermfg=darkblue
hi Statement ctermfg=darkyellow
hi StatusLine ctermfg=white ctermbg=darkgrey cterm=bold
hi StatusLineNC ctermfg=grey ctermbg=darkgrey cterm=none
hi StatusLineTerm cterm=bold ctermfg=black ctermbg=green
hi StatusLineTermNC ctermfg=black ctermbg=green
hi link StorageClass Type
hi link String Constant
hi link Structure Type
hi TabLine ctermfg=black ctermbg=grey cterm=underline
hi TabLineFill cterm=reverse
hi TabLineSel cterm=bold
hi link Tag Special
hi TermCursor cterm=reverse
hi Title ctermfg=darkmagenta
hi Todo ctermfg=black ctermbg=yellow
hi ToolbarButton cterm=bold ctermfg=black ctermbg=grey
hi ToolbarLine ctermbg=darkgrey
hi Type ctermfg=darkgreen
hi link Typedef Type
hi Underlined ctermfg=darkmagenta cterm=underline
hi VertSplit ctermfg=grey ctermbg=darkgrey cterm=none
hi Visual ctermfg=none ctermbg=none cterm=reverse
hi VisualNOS cterm=bold,underline
hi link VitalWindowSelectorIndicator DiffText
hi link VitalWindowSelectorStatusLine StatusLineNC
hi WarningMsg ctermfg=darkred
hi WildMenu ctermfg=black ctermbg=yellow
hi diffAdded cterm=none
hi diffChanged cterm=none
hi diffRemoved cterm=none
