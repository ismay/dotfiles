# ##################################################################################################
# Suppress fish welcome message
# ##################################################################################################

set fish_greeting

# ##################################################################################################
# Base environment vars
# ##################################################################################################

# Preferred editor
set -x EDITOR "vim"
set -x GIT_EDITOR "vim"

# Set locale
set -x LC_ALL "en_US.UTF-8"

# ##################################################################################################
# Add installed go binaries to path
# ##################################################################################################

set -a -x PATH "$HOME/go/bin"

# ##################################################################################################
# Aliases
# ##################################################################################################

# super-short shortcuts
alias v="vim"
alias g="git"
alias c="clear"
alias d="cd ~/.dotfiles"
alias p="cd ~/Projects"
alias n="npm"
alias y="yarn"

# symlink dotfiles (ignores anything passed with -x, symlinks dirs specified with -S directly)
alias dotsup="rcup -v -x README.md -x install.sh -x themes"

# dry run for symlinking dotfiles
alias dotsls="lsrc -v -x README.md -x install.sh -x themes"

# serve local directory
alias serve="python -m SimpleHTTPServer 8000"

# exa aliases
alias ll="exa -lh --group-directories-first"
alias la="exa -lh --group-directories-first -a"

# ##################################################################################################
# Fzf 
# ##################################################################################################

# colorscheme (https://github.com/junegunn/fzf/wiki/Color-schemes#color-configuration)
set -x FZF_DEFAULT_OPTS "
  --color fg:-1
  --color bg:-1
  --color hl:-1
  --color fg+:-1
  --color bg+:-1
  --color hl+:-1
  --color info:8
  --color prompt:11
  --color pointer:1
  --color marker:-1
  --color spinner:-1
  --color header:-1
"

# set command for fzf in vim
set -x FZF_DEFAULT_COMMAND 'fd --type f --color=never'

# bind fuzzy file/directory insertion to ctrl-t
bind \ct fzf_insert

# ##################################################################################################
# Set fish colors
# ##################################################################################################

set -x fish_color_normal normal
set -x fish_color_command brgreen
set -x fish_color_param brblue
set -x fish_color_redirection bryellow
set -x fish_color_comment brmagenta
set -x fish_color_error brred
set -x fish_color_escape brcyan
set -x fish_color_operator cyan
set -x fish_color_end brmagenta
set -x fish_color_quote yellow
set -x fish_color_autosuggestion brblack
set -x fish_color_user brgreen
set -x fish_color_host normal
set -x fish_color_valid_path --underline
set -x fish_color_cwd green
set -x fish_color_cwd_root red
set -x fish_color_cancel -r
set -x fish_color_match --background=brblue
set -x fish_color_search_match bryellow --background=brblack
set -x fish_color_selection white --bold --background=brblack
set -x fish_pager_color_prefix white --bold --underline
set -x fish_pager_color_completion normal
set -x fish_pager_color_description yellow
set -x fish_pager_color_progress brwhite --background=cyan
set -x fish_color_history_current --bold

# ##################################################################################################
# Initialize zoxide
# ##################################################################################################

zoxide init fish | source

# ##################################################################################################
# Initialize fnm
# ##################################################################################################

fnm env | source

# ##################################################################################################
# Initialize starship prompt
# ##################################################################################################

# Set custom config dir
set -x STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"

starship init fish | source
