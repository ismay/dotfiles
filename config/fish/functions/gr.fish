#!/usr/bin/env fish

function gr -d "Cd up to git root if in git repo"
    git rev-parse --is-inside-work-tree >/dev/null 2>&1
    or return

    cd (git rev-parse --show-toplevel)
end
