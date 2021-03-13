#!/usr/bin/env fish

function dn -d "Change directory downwards with fzf"
  fd --type d . --color=never | fzf --height 40% --reverse | read -l result

  if [ -n "$result" ]
    cd $result
  end

  commandline -f repaint
end
