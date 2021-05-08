#!/usr/bin/env fish

function ds -d "Recursively delete all DS_Store files"
    find . -name '.DS_Store' -type f -delete
end
