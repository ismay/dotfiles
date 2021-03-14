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

" reload vim config
nnoremap <leader>q :source $MYVIMRC<CR>

" super star without going to the next match
nnoremap <silent> <Leader>* :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" clear search
nnoremap <leader>c :nohlsearch<CR>

" select all
nnoremap <leader>v ggVG

" delete all
nnoremap <leader>d :%d<CR>

" copy all
nnoremap <leader>y :%y<CR>

" toggle wrapping
nnoremap <leader>w :set wrap!<CR>

" open/close nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>

" fix file with available fixers
nnoremap <leader>f :ALEFix<CR>

" find files by filename fuzzily with fzf
nnoremap <C-f> :FZF<CR>

" copy to end of line
nnoremap Y yg_

" ==================================================================================================
" Plugin settings
" ==================================================================================================

" Fzf
let g:fzf_action={
  \ 'ctrl-i': 'split',
  \ 'ctrl-s': 'vsplit' }
let g:fzf_layout={ 'down': '~20%' }

" Closetag
let g:closetag_filenames='*.html,*.njk,*.js,*.jsx'
let g:closetag_regions={
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut='>'

" Ale
let g:ale_set_highlights=0
let g:ale_sign_column_always=1
let g:ale_sign_error='>>'
let g:ale_sign_warning='--'
let g:ale_fixers={
  \ 'javascript': ['eslint', 'prettier'],
  \ 'javascriptreact': ['eslint', 'prettier'],
  \ 'go': ['gofmt'],
  \ 'css': ['stylelint', 'prettier'],
  \ }

" Nerdtree
let NERDTreeHighlightCursorline=0	
let NERDTreeMapActivateNode='l'	
let NERDTreeMapCloseDir='h'	
let NERDTreeMapOpenSplit='i'
let NERDTreeMapOpenVSplit='s'
let NERDTreeMinimalUI=1	
let NERDTreeAutoDeleteBuffer=1	
let NERDTreeShowLineNumbers=1

" Mucomplete
let g:mucomplete#chains={ 'default' : ['path', 'c-n', 'uspl', 'incl'] }
let g:mucomplete#buffer_relative_paths=1
let g:mucomplete#enable_auto_at_startup=1

" QFEnter (same bindings as nerdtree and fzf)
let g:qfenter_keymap = {}
let g:qfenter_keymap.open = ['<CR>']
let g:qfenter_keymap.vopen = ['s']
let g:qfenter_keymap.hopen = ['i']

" Gitgutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = 'cc'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'c-'
let g:gitgutter_grep = 'rg'
