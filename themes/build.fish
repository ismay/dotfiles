#!/usr/bin/env fish

function xresources_to_kitty --description "Convert xresources to kitty theme"
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

  # Print to kitty format
  printf "%s\n" \
    "background #$col_bg"\
    "foreground #$col_fg"\
    "color0 #$col_00"\
    "color1 #$col_01"\
    "color2 #$col_02"\
    "color3 #$col_03"\
    "color4 #$col_04"\
    "color5 #$col_05"\
    "color6 #$col_06"\
    "color7 #$col_07"\
    "color8 #$col_08"\
    "color9 #$col_09"\
    "color10 #$col_10"\
    "color11 #$col_11"\
    "color12 #$col_12"\
    "color13 #$col_13"\
    "color14 #$col_14"\
    "color15 #$col_15"\
    "url_color #$col_04"\
    "cursor #$col_07"\
    "cursor_text_color #$col_bg"\
    "selection_background #$col_fg"\
    "selection_foreground #$col_bg"\
    "active_tab_background #$col_08"\
    "active_tab_foreground #$col_15"\
    "inactive_tab_background #$col_08"\
    "tab_bar_background #$col_08"\
    "inactive_tab_foreground #$col_07"\
    "inactive_border_color #$col_fg"\
    "bell_border_color #$col_fg"
end

for theme_path in ./modified/*.xresources
  set -l theme_contents (cat $theme_path)
  set -l theme_name (basename $theme_path .xresources)
  set -l theme_destination ./build/{$theme_name}.conf

  echo Building $theme_name

  printf '%s\n' (xresources_to_kitty $theme_contents) > $theme_destination
end
