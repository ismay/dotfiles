" http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/
" https://github.com/jeffkreeftmeijer/vim-dim
" https://vi.stackexchange.com/a/2783
" https://alvinalexander.com/linux/vi-vim-editor-color-scheme-syntax

highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "native"

highlight SpecialKey        ctermfg=4
highlight TermCursor                                    cterm=reverse
highlight NonText           ctermfg=12
highlight Directory         ctermfg=4
highlight ErrorMsg          ctermfg=15    ctermbg=1
highlight IncSearch                                     cterm=reverse
highlight MoreMsg           ctermfg=2
highlight ModeMsg                                       cterm=bold
highlight CursorLineNr      ctermfg=3                   cterm=NONE
highlight Question          ctermfg=2
highlight Title             ctermfg=5
highlight WarningMsg        ctermfg=1
highlight WildMenu          ctermfg=0     ctermbg=11
highlight Conceal           ctermfg=7     ctermbg=7
highlight SpellBad                        ctermbg=2
highlight SpellRare                       ctermbg=5
highlight SpellLocal                      ctermbg=14
highlight PmenuSbar                       ctermbg=8
highlight PmenuThumb                      ctermbg=0
highlight TabLine           ctermfg=0     ctermbg=7     cterm=underline
highlight TabLineSel                                    cterm=bold
highlight TabLineFill                                   cterm=reverse
highlight CursorColumn                    ctermbg=7
highlight CursorLine                                    cterm=NONE
highlight MatchParen        ctermfg=7     ctermbg=8
highlight Constant          ctermfg=1
highlight Special           ctermfg=5
highlight Identifier        ctermfg=6                   cterm=NONE
highlight Statement         ctermfg=3
highlight PreProc           ctermfg=5
highlight Type              ctermfg=2
highlight Underlined        ctermfg=5                   cterm=underline
highlight Ignore            ctermfg=15
highlight Error             ctermfg=15    ctermbg=9
highlight Todo              ctermfg=0     ctermbg=11
highlight DiffAdd           ctermfg=0     ctermbg=2
highlight DiffChange        ctermfg=0     ctermbg=3
highlight DiffDelete        ctermfg=0     ctermbg=1
highlight DiffText          ctermfg=0     ctermbg=11    cterm=bold
highlight Visual            ctermfg=NONE  ctermbg=NONE  cterm=inverse
highlight Search            ctermfg=0     ctermbg=11
highlight GitGutterAdd      ctermfg=2     ctermbg=8     cterm=bold
highlight GitGutterChange   ctermfg=3     ctermbg=8     cterm=bold
highlight GitGutterDelete   ctermfg=1     ctermbg=8     cterm=bold
highlight LineNr            ctermfg=8
highlight Comment           ctermfg=8                   cterm=italic
highlight ColorColumn       ctermfg=7     ctermbg=8
highlight Folded            ctermfg=7     ctermbg=8
highlight FoldColumn        ctermfg=7     ctermbg=8
highlight Pmenu             ctermfg=15    ctermbg=8
highlight PmenuSel          ctermfg=8     ctermbg=15
highlight SpellCap          ctermfg=7     ctermbg=8
highlight StatusLine        ctermfg=15    ctermbg=8     cterm=bold
highlight StatusLineNC      ctermfg=7     ctermbg=8     cterm=NONE
highlight VertSplit         ctermfg=7     ctermbg=8     cterm=NONE
highlight SignColumn                      ctermbg=8
highlight FernGitStatusBracket            ctermfg=8     cterm=NONE
highlight FernGitStatusIgnored            ctermfg=8     cterm=NONE
highlight FernGitStatusUntracked          ctermfg=8     cterm=NONE

" Used in the statusline as a warning color
highlight User1             ctermfg=9     ctermbg=8
