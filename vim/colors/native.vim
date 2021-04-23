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

" From cterm-colors:
" 0 Black
" 1 DarkBlue
" 2 DarkGreen
" 3 DarkCyan
" 4 DarkRed
" 5 DarkMagenta
" 6 Brown, DarkYellow
" 7 LightGray, LightGrey, Gray, Grey
" 8 DarkGray, DarkGrey
" 9 Blue, LightBlue
" 10 Green, LightGreen
" 11 Cyan, LightCyan
" 12 Red, LightRed
" 13 Magenta, LightMagenta
" 14 Yellow, LightYellow
" 15 White

hi ColorColumn ctermfg=gray ctermbg=darkgray
hi Comment ctermfg=darkgray cterm=italic
hi Conceal ctermfg=gray ctermbg=gray
hi Constant ctermfg=darkblue
hi CursorColumn ctermbg=gray
hi CursorLine cterm=NONE
hi CursorLineNr ctermfg=darkcyan cterm=NONE
hi DiffAdd ctermfg=black ctermbg=darkgreen
hi DiffChange ctermfg=black ctermbg=darkcyan
hi DiffDelete ctermfg=black ctermbg=darkblue
hi DiffText ctermfg=black ctermbg=cyan cterm=bold
hi Directory ctermfg=darkred
hi Error ctermfg=white ctermbg=blue
hi ErrorMsg ctermfg=white ctermbg=darkblue
hi FoldColumn ctermfg=gray ctermbg=darkgray
hi Folded ctermfg=gray ctermbg=darkgray
hi Identifier ctermfg=brown cterm=NONE
hi Ignore ctermfg=white
hi IncSearch cterm=inverse
hi LineNr ctermfg=darkgray
hi MatchParen ctermfg=gray ctermbg=darkgray
hi ModeMsg cterm=bold
hi MoreMsg ctermfg=darkgreen
hi NonText ctermfg=red
hi Pmenu ctermfg=white ctermbg=darkgray
hi PmenuSbar ctermbg=darkgray
hi PmenuSel ctermfg=darkgray ctermbg=white
hi PmenuThumb ctermbg=black
hi PreProc ctermfg=darkmagenta
hi Question ctermfg=darkgreen
hi Search ctermfg=black ctermbg=cyan
hi SignColumn ctermbg=darkgray
hi Special ctermfg=darkmagenta
hi SpecialKey ctermfg=darkred
hi SpellBad ctermbg=darkgreen
hi SpellCap ctermfg=gray ctermbg=darkgray
hi SpellLocal ctermbg=yellow
hi SpellRare ctermbg=darkmagenta
hi Statement ctermfg=darkcyan
hi StatusLine ctermfg=white ctermbg=darkgray cterm=bold
hi StatusLineNC ctermfg=gray ctermbg=darkgray cterm=NONE
hi TabLine ctermfg=black ctermbg=gray cterm=underline
hi TabLineFill cterm=inverse
hi TabLineSel cterm=bold
hi TermCursor cterm=inverse
hi Title ctermfg=darkmagenta
hi Todo ctermfg=black ctermbg=cyan
hi Type ctermfg=darkgreen
hi Underlined ctermfg=darkmagenta cterm=underline
hi VertSplit ctermfg=gray ctermbg=darkgray cterm=NONE
hi Visual ctermfg=NONE ctermbg=NONE cterm=inverse
hi WarningMsg ctermfg=darkblue
hi WildMenu ctermfg=black ctermbg=cyan

" Ale
hi ALEError cterm=undercurl ctermul=red
hi ALEWarning cterm=undercurl ctermul=yellow

" Gitgutter
hi GitGutterAdd ctermfg=darkgreen ctermbg=darkgray cterm=bold
hi GitGutterChange ctermfg=darkcyan ctermbg=darkgray cterm=bold
hi GitGutterDelete ctermfg=darkblue ctermbg=darkgray cterm=bold

"Fern
hi FernGitStatusBracket ctermfg=darkgray cterm=NONE
hi FernGitStatusIgnored ctermfg=darkgray cterm=NONE
hi FernGitStatusUntracked ctermfg=darkgray cterm=NONE
hi FernMarkedText ctermfg=magenta ctermbg=darkgray

" Used in the statusline as a warning color
hi User1 ctermfg=blue ctermbg=darkgray
