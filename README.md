# dotfiles

## installation

- Generate a new ssh key: `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
- Add the ssh key to Github and Gitlab: `pbcopy < ~/.ssh/id_rsa.pub`
- Clone this repo `git clone git@github.com:ismay/dotfiles.git ~/.dotfiles`
- Run `./install.sh`
- Symlink dotfiles and build themes
- Update repositories with `mr update`
- Configure mac keyboard to use capslock as ctrl, and change mission control ctrl-left and ctrl-right shortcuts
- Sign into Firefox Sync and restore addons

## useful links

- Xresources themes: https://xcolors.herokuapp.com
- Gallery of 16-color themes: https://terminal.sexy
- Kitty themes: https://github.com/dexpota/kitty-themes
- Kitty base16 themes: https://github.com/kdrag0n/base16-kitty
- Vim and terminal colors: https://jeffkreeftmeijer.com/vim-16-color
- More themes: https://github.com/Mayccoll/Gogh

## node

If you're getting a [node version mismatch warning from nodenv](https://github.com/nodenv/nodenv/issues/108), run the following:

```
npm config set scripts-prepend-node-path auto
```

## xcode

If any node modules have trouble building because they can't find xcode, follow the instructions [here](https://github.com/nodejs/node-gyp/blob/master/macOS_Catalina.md#installation-notes-for-macos-catalina-v1015).

## keyboard shortcuts / mappings

- Kitty: https://sw.kovidgoyal.net/kitty/#tabs-and-windows
- Vim: https://i.imgur.com/4vTX6yP.jpg
- Fish: http://fishshell.com/docs/current/index.html#editor

## themes

- Challenger Deep: https://github.com/challenger-deep-theme/xresources
- Dracula: https://github.com/dracula/xresources
- Eighties: https://terminal.sexy 
- Gotham: https://github.com/whatyouhide/gotham-contrib
- Gruvbox: https://github.com/morhetz/gruvbox-contrib
- Monokai: https://terminal.sexy 
- Nord: https://github.com/arcticicestudio/nord-xresources
- Oceanic-next: https://github.com/logico-dev/Xresources-themes
- One: https://github.com/logico-dev/Xresources-themes
- Outrun: https://github.com/kdrag0n/base16-kitty
- Solarized: https://terminal.sexy 
- Srcery: https://github.com/srcery-colors/srcery-terminal
- Tomorrow: https://terminal.sexy 
- Zenburn: https://github.com/logico-dev/Xresources-themes
