" http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/
" https://github.com/jeffkreeftmeijer/vim-dim
" https://vi.stackexchange.com/a/2783
" https://alvinalexander.com/linux/vi-vim-editor-color-scheme-syntax

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "native"

" Allow for undercurl to be used
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

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

hi ColorColumn ctermfg=grey ctermbg=darkgrey
hi Comment ctermfg=darkgrey cterm=italic
hi Conceal ctermfg=grey ctermbg=grey
hi Constant ctermfg=darkred
hi CursorColumn ctermbg=grey
hi CursorLine cterm=NONE
hi CursorLineNr ctermfg=darkyellow cterm=NONE
hi DiffAdd ctermfg=black ctermbg=darkgreen
hi DiffChange ctermfg=black ctermbg=darkyellow
hi DiffDelete ctermfg=black ctermbg=darkred
hi DiffText ctermfg=black ctermbg=yellow cterm=bold
hi Directory ctermfg=darkblue
hi Error ctermfg=white ctermbg=red
hi ErrorMsg ctermfg=white ctermbg=darkred
hi FoldColumn ctermfg=grey ctermbg=darkgrey
hi Folded ctermfg=grey ctermbg=darkgrey
hi Identifier ctermfg=darkcyan cterm=NONE
hi Ignore ctermfg=white
hi IncSearch cterm=inverse
hi LineNr ctermfg=darkgrey
hi MatchParen ctermfg=grey ctermbg=darkgrey
hi ModeMsg cterm=bold
hi MoreMsg ctermfg=darkgreen
hi NonText ctermfg=blue
hi Pmenu ctermfg=white ctermbg=darkgrey
hi PmenuSbar ctermbg=darkgrey
hi PmenuSel ctermfg=darkgrey ctermbg=white
hi PmenuThumb ctermbg=black
hi PreProc ctermfg=darkmagenta
hi Question ctermfg=darkgreen
hi Search ctermfg=black ctermbg=yellow
hi SignColumn ctermbg=darkgrey
hi Special ctermfg=darkmagenta
hi SpecialKey ctermfg=darkblue
hi SpellBad ctermbg=darkgreen
hi SpellCap ctermfg=grey ctermbg=darkgrey
hi SpellLocal ctermbg=cyan
hi SpellRare ctermbg=darkmagenta
hi Statement ctermfg=darkyellow
hi StatusLine ctermfg=white ctermbg=darkgrey cterm=bold
hi StatusLineNC ctermfg=grey ctermbg=darkgrey cterm=NONE
hi TabLine ctermfg=black ctermbg=grey cterm=underline
hi TabLineFill cterm=inverse
hi TabLineSel cterm=bold
hi TermCursor cterm=inverse
hi Title ctermfg=darkmagenta
hi Todo ctermfg=black ctermbg=yellow
hi Type ctermfg=darkgreen
hi Underlined ctermfg=darkmagenta cterm=underline
hi VertSplit ctermfg=grey ctermbg=darkgrey cterm=NONE
hi Visual ctermfg=NONE ctermbg=NONE cterm=inverse
hi WarningMsg ctermfg=darkred
hi WildMenu ctermfg=black ctermbg=yellow

" Ale
hi ALEError cterm=undercurl ctermul=red
hi ALEWarning cterm=undercurl ctermul=yellow

" Gitgutter
hi GitGutterAdd ctermfg=darkgreen ctermbg=darkgrey cterm=bold
hi GitGutterChange ctermfg=darkyellow ctermbg=darkgrey cterm=bold
hi GitGutterDelete ctermfg=darkred ctermbg=darkgrey cterm=bold

"Fern
hi FernGitStatusBracket ctermfg=darkgrey cterm=NONE
hi FernGitStatusIgnored ctermfg=darkgrey cterm=NONE
hi FernGitStatusUntracked ctermfg=darkgrey cterm=NONE
hi FernMarkedText ctermfg=magenta ctermbg=darkgrey

" Used in the statusline as a warning color
hi User1 ctermfg=red ctermbg=darkgrey
