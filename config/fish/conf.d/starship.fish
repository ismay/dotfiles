#!/usr/bin/env fish

# Set custom config dir
set -x STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"

starship init fish | source
