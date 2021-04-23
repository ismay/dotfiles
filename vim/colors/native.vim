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

hi ColorColumn ctermfg=7 ctermbg=8
hi Comment ctermfg=8 cterm=italic
hi Conceal ctermfg=7 ctermbg=7
hi Constant ctermfg=1
hi CursorColumn ctermbg=7
hi CursorLine cterm=NONE
hi CursorLineNr ctermfg=3 cterm=NONE
hi DiffAdd ctermfg=0 ctermbg=2
hi DiffChange ctermfg=0 ctermbg=3
hi DiffDelete ctermfg=0 ctermbg=1
hi DiffText ctermfg=0 ctermbg=11 cterm=bold
hi Directory ctermfg=4
hi Error ctermfg=15 ctermbg=9
hi ErrorMsg ctermfg=15 ctermbg=1
hi FoldColumn ctermfg=7 ctermbg=8
hi Folded ctermfg=7 ctermbg=8
hi Identifier ctermfg=6 cterm=NONE
hi Ignore ctermfg=15
hi IncSearch cterm=inverse
hi LineNr ctermfg=8
hi MatchParen ctermfg=7 ctermbg=8
hi ModeMsg cterm=bold
hi MoreMsg ctermfg=2
hi NonText ctermfg=12
hi Pmenu ctermfg=15 ctermbg=8
hi PmenuSbar ctermbg=8
hi PmenuSel ctermfg=8 ctermbg=15
hi PmenuThumb ctermbg=0
hi PreProc ctermfg=5
hi Question ctermfg=2
hi Search ctermfg=0 ctermbg=11
hi SignColumn ctermbg=8
hi Special ctermfg=5
hi SpecialKey ctermfg=4
hi SpellBad ctermbg=2
hi SpellCap ctermfg=7 ctermbg=8
hi SpellLocal ctermbg=14
hi SpellRare ctermbg=5
hi Statement ctermfg=3
hi StatusLine ctermfg=15 ctermbg=8 cterm=bold
hi StatusLineNC ctermfg=7 ctermbg=8 cterm=NONE
hi TabLine ctermfg=0 ctermbg=7 cterm=underline
hi TabLineFill cterm=inverse
hi TabLineSel cterm=bold
hi TermCursor cterm=inverse
hi Title ctermfg=5
hi Todo ctermfg=0 ctermbg=11
hi Type ctermfg=2
hi Underlined ctermfg=5 cterm=underline
hi VertSplit ctermfg=7 ctermbg=8 cterm=NONE
hi Visual ctermfg=NONE ctermbg=NONE cterm=inverse
hi WarningMsg ctermfg=1
hi WildMenu ctermfg=0 ctermbg=11

" Ale
hi ALEError cterm=undercurl ctermul=red
hi ALEWarning cterm=undercurl ctermul=yellow

" Gitgutter
hi GitGutterAdd ctermfg=2 ctermbg=8 cterm=bold
hi GitGutterChange ctermfg=3 ctermbg=8 cterm=bold
hi GitGutterDelete ctermfg=1 ctermbg=8 cterm=bold

"Fern
hi FernGitStatusBracket ctermfg=8 cterm=NONE
hi FernGitStatusIgnored ctermfg=8 cterm=NONE
hi FernGitStatusUntracked ctermfg=8 cterm=NONE
hi FernMarkedText ctermfg=13 ctermbg=8

" Used in the statusline as a warning color
hi User1 ctermfg=9 ctermbg=8
