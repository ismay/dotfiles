" http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/
" https://github.com/jeffkreeftmeijer/vim-dim
" https://vi.stackexchange.com/a/2783
" https://alvinalexander.com/linux/vi-vim-editor-color-scheme-syntax

highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "native"

highlight ColorColumn       ctermfg=7     ctermbg=8
highlight Comment           ctermfg=8                   cterm=italic
highlight Conceal           ctermfg=7     ctermbg=7
highlight Constant          ctermfg=1
highlight CursorColumn                    ctermbg=7
highlight CursorLine                                    cterm=NONE
highlight CursorLineNr      ctermfg=3                   cterm=NONE
highlight DiffAdd           ctermfg=0     ctermbg=2
highlight DiffChange        ctermfg=0     ctermbg=3
highlight DiffDelete        ctermfg=0     ctermbg=1
highlight DiffText          ctermfg=0     ctermbg=11    cterm=bold
highlight Directory         ctermfg=4
highlight Error             ctermfg=15    ctermbg=9
highlight ErrorMsg          ctermfg=15    ctermbg=1
highlight FoldColumn        ctermfg=7     ctermbg=8
highlight Folded            ctermfg=7     ctermbg=8
highlight Identifier        ctermfg=6                   cterm=NONE
highlight Ignore            ctermfg=15
highlight IncSearch                                     cterm=reverse
highlight LineNr            ctermfg=8
highlight MatchParen        ctermfg=7     ctermbg=8
highlight ModeMsg                                       cterm=bold
highlight MoreMsg           ctermfg=2
highlight NonText           ctermfg=12
highlight Pmenu             ctermfg=15    ctermbg=8
highlight PmenuSbar                       ctermbg=8
highlight PmenuSel          ctermfg=8     ctermbg=15
highlight PmenuThumb                      ctermbg=0
highlight PreProc           ctermfg=5
highlight Question          ctermfg=2
highlight Search            ctermfg=0     ctermbg=11
highlight SignColumn                      ctermbg=8
highlight Special           ctermfg=5
highlight SpecialKey        ctermfg=4
highlight SpellBad                        ctermbg=2
highlight SpellCap          ctermfg=7     ctermbg=8
highlight SpellLocal                      ctermbg=14
highlight SpellRare                       ctermbg=5
highlight Statement         ctermfg=3
highlight StatusLine        ctermfg=15    ctermbg=8     cterm=bold
highlight StatusLineNC      ctermfg=7     ctermbg=8     cterm=NONE
highlight TabLine           ctermfg=0     ctermbg=7     cterm=underline
highlight TabLineFill                                   cterm=reverse
highlight TabLineSel                                    cterm=bold
highlight TermCursor                                    cterm=reverse
highlight Title             ctermfg=5
highlight Todo              ctermfg=0     ctermbg=11
highlight Type              ctermfg=2
highlight Underlined        ctermfg=5                   cterm=underline
highlight VertSplit         ctermfg=7     ctermbg=8     cterm=NONE
highlight Visual            ctermfg=NONE  ctermbg=NONE  cterm=inverse
highlight WarningMsg        ctermfg=1
highlight WildMenu          ctermfg=0     ctermbg=11

" Gitgutter
highlight GitGutterAdd      ctermfg=2     ctermbg=8     cterm=bold
highlight GitGutterChange   ctermfg=3     ctermbg=8     cterm=bold
highlight GitGutterDelete   ctermfg=1     ctermbg=8     cterm=bold

"Fern
hi FernGitStatusBracket     ctermfg=8                   cterm=NONE
hi FernGitStatusIgnored     ctermfg=8                   cterm=NONE
hi FernGitStatusUntracked   ctermfg=8                   cterm=NONE
hi FernMarkedText           ctermfg=13    ctermbg=8

" Used in the statusline as a warning color
highlight User1             ctermfg=9     ctermbg=8
