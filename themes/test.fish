#!/usr/bin/env fish

# Prints colors in the colors of the theme
function print_xresources_colors --description "Convert xresources to kitty theme"
    # Extract colors from xresources format
    set -l col_bg (printf '%s\n' $argv | grep '*.background:' | cut -d'#' -f2-)
    set -l col_fg (printf '%s\n' $argv | grep '*.foreground:' | cut -d'#' -f2-)
    set -l col_00 (printf '%s\n' $argv | grep '*.color0:' | cut -d'#' -f2-)
    set -l col_01 (printf '%s\n' $argv | grep '*.color1:' | cut -d'#' -f2-)
    set -l col_02 (printf '%s\n' $argv | grep '*.color2:' | cut -d'#' -f2-)
    set -l col_03 (printf '%s\n' $argv | grep '*.color3:' | cut -d'#' -f2-)
    set -l col_04 (printf '%s\n' $argv | grep '*.color4:' | cut -d'#' -f2-)
    set -l col_05 (printf '%s\n' $argv | grep '*.color5:' | cut -d'#' -f2-)
    set -l col_06 (printf '%s\n' $argv | grep '*.color6:' | cut -d'#' -f2-)
    set -l col_07 (printf '%s\n' $argv | grep '*.color7:' | cut -d'#' -f2-)
    set -l col_08 (printf '%s\n' $argv | grep '*.color8:' | cut -d'#' -f2-)
    set -l col_09 (printf '%s\n' $argv | grep '*.color9:' | cut -d'#' -f2-)
    set -l col_10 (printf '%s\n' $argv | grep '*.color10:' | cut -d'#' -f2-)
    set -l col_11 (printf '%s\n' $argv | grep '*.color11:' | cut -d'#' -f2-)
    set -l col_12 (printf '%s\n' $argv | grep '*.color12:' | cut -d'#' -f2-)
    set -l col_13 (printf '%s\n' $argv | grep '*.color13:' | cut -d'#' -f2-)
    set -l col_14 (printf '%s\n' $argv | grep '*.color14:' | cut -d'#' -f2-)
    set -l col_15 (printf '%s\n' $argv | grep '*.color15:' | cut -d'#' -f2-)

    # Set background color
    set_color -b $col_bg

    # Print colors
    set_color -o $col_fg
    printf "%s\n" COLOR_FG
    set_color -o $col_00
    printf "%s\n" COLOR_00
    set_color -o $col_01
    printf "%s\n" COLOR_01
    set_color -o $col_02
    printf "%s\n" COLOR_02
    set_color -o $col_03
    printf "%s\n" COLOR_03
    set_color -o $col_04
    printf "%s\n" COLOR_04
    set_color -o $col_05
    printf "%s\n" COLOR_05
    set_color -o $col_06
    printf "%s\n" COLOR_06
    set_color -o $col_07
    printf "%s\n" COLOR_07
    set_color -o $col_08
    printf "%s\n" COLOR_08
    set_color -o $col_09
    printf "%s\n" COLOR_09
    set_color -o $col_10
    printf "%s\n" COLOR_10
    set_color -o $col_11
    printf "%s\n" COLOR_11
    set_color -o $col_12
    printf "%s\n" COLOR_12
    set_color -o $col_13
    printf "%s\n" COLOR_13
    set_color -o $col_14
    printf "%s\n" COLOR_14
    set_color -o $col_15
    printf "%s\n" COLOR_15
    set_color normal
end

# Prints colors for all themes in the modified dir
for theme_path in (status dirname)/modified/*.xresources
    set -l theme_contents (cat $theme_path)
    set -l theme_name (basename $theme_path .xresources)

    set_color -o -u
    printf '%s\n' (string upper $theme_name)
    set_color normal
    print_xresources_colors $theme_contents
    printf '\n'
end
