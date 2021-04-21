#!/usr/bin/env fish

function kitty_to_xresources --description "Convert kitty to xresources theme"
    # Extract colors from kitty format
    set -l col_bg (printf '%s\n' $argv | grep '^background ' | cut -d'#' -f2-)
    set -l col_fg (printf '%s\n' $argv | grep '^foreground ' | cut -d'#' -f2-)
    set -l col_00 (printf '%s\n' $argv | grep '^color0 ' | cut -d'#' -f2-)
    set -l col_01 (printf '%s\n' $argv | grep '^color1 ' | cut -d'#' -f2-)
    set -l col_02 (printf '%s\n' $argv | grep '^color2 ' | cut -d'#' -f2-)
    set -l col_03 (printf '%s\n' $argv | grep '^color3 ' | cut -d'#' -f2-)
    set -l col_04 (printf '%s\n' $argv | grep '^color4 ' | cut -d'#' -f2-)
    set -l col_05 (printf '%s\n' $argv | grep '^color5 ' | cut -d'#' -f2-)
    set -l col_06 (printf '%s\n' $argv | grep '^color6 ' | cut -d'#' -f2-)
    set -l col_07 (printf '%s\n' $argv | grep '^color7 ' | cut -d'#' -f2-)
    set -l col_08 (printf '%s\n' $argv | grep '^color8 ' | cut -d'#' -f2-)
    set -l col_09 (printf '%s\n' $argv | grep '^color9 ' | cut -d'#' -f2-)
    set -l col_10 (printf '%s\n' $argv | grep '^color10 ' | cut -d'#' -f2-)
    set -l col_11 (printf '%s\n' $argv | grep '^color11 ' | cut -d'#' -f2-)
    set -l col_12 (printf '%s\n' $argv | grep '^color12 ' | cut -d'#' -f2-)
    set -l col_13 (printf '%s\n' $argv | grep '^color13 ' | cut -d'#' -f2-)
    set -l col_14 (printf '%s\n' $argv | grep '^color14 ' | cut -d'#' -f2-)
    set -l col_15 (printf '%s\n' $argv | grep '^color15 ' | cut -d'#' -f2-)

    # Print to xresources format
    printf "%s\n" \
    "*.foreground:   #$col_fg"\
    "*.background:   #$col_bg"\
    "*.color0:       #$col_00"\
    "*.color8:       #$col_08"\
    "*.color1:       #$col_01"\
    "*.color9:       #$col_09"\
    "*.color2:       #$col_02"\
    "*.color10:      #$col_10"\
    "*.color3:       #$col_03"\
    "*.color11:      #$col_11"\
    "*.color4:       #$col_04"\
    "*.color12:      #$col_12"\
    "*.color5:       #$col_05"\
    "*.color13:      #$col_13"\
    "*.color6:       #$col_06"\
    "*.color14:      #$col_14"\
    "*.color7:       #$col_07"\
    "*.color15:      #$col_15"
end

for theme_path in (status dirname)/import/*.conf
    set -l theme_contents (cat $theme_path)
    set -l theme_name (basename $theme_path .conf)
    set -l theme_destination (status dirname)/originals/{$theme_name}.xresources

    echo Importing $theme_name

    printf '%s\n' (kitty_to_xresources $theme_contents) >$theme_destination
end
