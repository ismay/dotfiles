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
alias c="clear"
alias d="cd ~/.dotfiles"
alias f="fnm"
alias g="git"
alias n="npm"
alias p="cd ~/Projects"
alias v="vim"
alias y="yarn"

# serve local directory
alias serve="python -m SimpleHTTPServer 8000"

# exa aliases
alias ll="exa -lh --group-directories-first"
alias la="exa -lh --group-directories-first -a"

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
