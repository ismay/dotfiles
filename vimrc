" ==================================================================================================
" Theme
" ==================================================================================================

colorscheme native

" ==================================================================================================
" General
" ==================================================================================================

" enable filetype detection and also load indent files
filetype plugin indent on

" turn on syntax highlighting and override preexisting settings
syntax on

" enable statusline
set laststatus=2                      

" show cursor position at all times
set ruler

" disable wrapping by default
set nowrap

" if wrapping is on, wrap at character in 'breakat', rather than last character that fits on screen
set linebreak

" when wrapping lines, indent same amount as original line
set breakindent

" prefix wrapped lines with this string
let &showbreak='↳ '

" show current line number at cursor location
set number

" show relative line numbers
set relativenumber

" horizontally scroll one character at a time to reveal more text as needed
set sidescroll=1

" keep at least 5 lines above/below the cursor
set scrolloff=5

" keep at least 5 lines left/right of the cursor
set sidescrolloff=5

" create new splits below
set splitbelow

" create new splits to the right
set splitright

" enable autocompleting vim commands with tab
set wildmenu

" copy indent from current line when starting a new line
set autoindent

" use spaces to insert a tab
set expandtab

" disable inserting two spaces after joining a line that ends in '.', '?' or '!'
set nojoinspaces

" round indent to a multiple of shiftwidth
set shiftround

" number of spaces used for each indent
set shiftwidth=2

" appearance of tabs
set softtabstop=2

" number of spaces that a tab counts for
set tabstop=2

" disable folds
set nofoldenable

" stop syntax highlighting after 200 columns
set synmaxcol=200

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" enable mouse support
set mouse=a

" highlight search matches
set hlsearch

" show pattern matches whilst typing a search command
set incsearch

" set case insensitive searching
set ignorecase

" overrides ignorecase if there are uppercase characters in the search pattern
set smartcase

" update file when changed outside of vim and there are no local changes
set autoread

" make unnamed register same as "* register, to simplify using the native clipboard in macos
set clipboard+=unnamed

" store last 200 commands as history
set history=200

" kitty doesn't get recognised as a fast terminal, set this manually
set ttyfast

" disable comment continuation
au FileType * setlocal formatoptions-=c
au FileType * setlocal formatoptions-=r
au FileType * setlocal formatoptions-=o

" set character encoding used inside vim
set encoding=utf-8

" Enable fzf (has to be installed with homebrew)
set rtp+=/usr/local/opt/fzf

" Enable persistent undo
set undodir=~/.vim/undo
set undofile

" Store swap files here
set directory=~/.vim/swap

" Store backup files here
set backupdir=~/.vim/backup

" show a popup menu for completions, even when only one option is available
set completeopt=menuone

" do not insert any text until the user selects a match
set completeopt+=noinsert

" do not select a match from the menu, force the user to select
set completeopt+=noselect

" do not log completion messages
set shortmess+=c

" suppress intro text
set shortmess+=I

" do not redraw when executing macros
set lazyredraw

" wrap h and l as well
set whichwrap+=h,l

" show as much as possible of the last line
set display+=lastline

" ==================================================================================================
" Keys
" ==================================================================================================

" set leader to space
let mapleader=" "

" map semicolon to colon and vice versa
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" adjust window size with arrow keys
noremap <right> <C-w>5>
noremap <left> <C-w>5<
noremap <up> <C-w>5+
noremap <down> <C-w>5-

" move by visual lines, unless using line count for the movement
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" super star without going to the next match
nnoremap <silent> <Leader>* :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" clear search
nnoremap <leader>c :nohlsearch<CR>

" select all
nnoremap <leader>v ggVG

" copy all
nnoremap <leader>y :%y<CR>

" toggle wrapping
nnoremap <leader>w :set wrap!<CR>

" open/close Fern
nnoremap <leader>d :Fern . -drawer -toggle<CR><C-w>=
noremap <Leader>f :Fern . -drawer -reveal=%<CR><C-w>=
noremap <Leader>. :Fern %:h -drawer<CR><C-w>=

" fix file with available fixers
nnoremap <leader>x :ALEFix<CR>

" find files by filename fuzzily with fzf
nnoremap <C-f> :FZF<CR>

" copy to end of line
nnoremap Y yg_

" ==================================================================================================
" Plugin settings
" ==================================================================================================

" Fzf
let g:fzf_action={
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout={ 'down': '~20%' }

" Ale
let g:ale_set_highlights=0
let g:ale_sign_column_always=1
let g:ale_sign_error='>>'
let g:ale_sign_warning='--'
let g:ale_fixers = {
\ 'css': ['stylelint', 'prettier'],
\ 'javascript': ['eslint', 'prettier'],
\ 'javascriptreact': ['eslint', 'prettier'],
\ 'json': ['prettier'],
\ 'yml': ['prettier'],
\ 'go': ['gofmt'],
\}
let g:ale_linters = {
\ 'css': ['stylelint'],
\ 'javascript': ['eslint'],
\ 'javascriptreact': ['eslint'],
\}

" Mucomplete
let g:mucomplete#chains={ 'default' : ['path', 'c-n', 'uspl', 'incl'] }
let g:mucomplete#buffer_relative_paths=1
let g:mucomplete#enable_auto_at_startup=1

" Gitgutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = 'cc'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'c-'
let g:gitgutter_grep = 'rg'

" Indentline
let g:indentLine_char = '|'

" Clever-f
let g:clever_f_across_no_line = 1
let g:clever_f_fix_key_direction = 1

" Ripgrep
let g:rg_command = 'rg --vimgrep --smart-case --fixed-strings'

"Cheat 40
let g:cheat40_use_default = 0

" ==================================================================================================
" Fern settings
" ==================================================================================================

let g:fern#renderer = 'nerdfont'
let g:fern#disable_default_mappings = 1
let g:fern#disable_drawer_smart_quit = 1
let g:fern#drawer_width = 35

function! s:init_fern() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> l <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> h <Plug>(fern-action-collapse)
  nmap <buffer> m <Plug>(fern-action-mark:toggle)
  nmap <buffer> n <Plug>(fern-action-new-file)
  nmap <buffer> f <Plug>(fern-action-new-dir)
  nmap <buffer> R <Plug>(fern-action-rename)
  nmap <buffer> D <Plug>(fern-action-remove)
  nmap <buffer> x <Plug>(fern-action-move)
  nmap <buffer> c <Plug>(fern-action-copy)
  nmap <buffer> s <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> <nowait> ! <Plug>(fern-action-hidden:toggle)
  nmap <buffer> <nowait> < <Plug>(fern-action-leave)
  nmap <buffer> <nowait> > <Plug>(fern-action-enter)
endfunction

augroup fern-custom
  autocmd! *
  " Set nerdfont icon colors automatically
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType fern call s:init_fern()
augroup END

" ==================================================================================================
" Statusline https://www.tdaly.co.uk/projects/vim-statusline-generator
" ==================================================================================================

set statusline=
set statusline+=\ \ 

" file name
set statusline+=%f
set statusline+=\ 

" modified flag
set statusline+=%1*
set statusline+=%{&modified?'':''}
set statusline+=%#<Statusline>#

" right align from here on
set statusline+=%=

" current line and column
set statusline+=\ \ \ 
set statusline+=%l
set statusline+=:
set statusline+=%c

" current percentage of file
set statusline+=\ \ \ 
set statusline+=%p%%
set statusline+=\ 
