#!/usr/bin/env fish

function theme_complete -d "Complete the theme command"
  # Only completes first argument
  if __fish_is_first_arg > /dev/null
    # Path to search for theme conf files
    set -l theme_folder (command realpath ~/.dotfiles/themes/build)

    for theme in $theme_folder/*.conf
      set -l theme_name (basename $theme .conf)
      echo $theme_name
    end
  end
end

complete -c theme -fk -a "(theme_complete)"
