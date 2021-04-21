#!/usr/bin/env fish

function fzf_insert -d "Insert directory or file with fzf"
    fd --color=never | fzf --height 40% --reverse | read -l result

    if [ -n "$result" ]
        commandline -i (string escape $result)
        commandline -i ' '
    end

    commandline -f repaint
end
