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
