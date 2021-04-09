# dotfiles

## installation

- Generate a new ssh key: `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
- Add the ssh key to Github and Gitlab: `pbcopy < ~/.ssh/id_rsa.pub`
- Clone this repo `git clone git@github.com:ismay/dotfiles.git ~/.dotfiles`
- Run `./install.sh`
- Symlink dotfiles and build themes with `rcup rcrc && rcup`
- Update repositories with `mr update`

## useful links

- Using a single theme for all terminal utilities: https://jeffkreeftmeijer.com/vim-16-color
- Managing dotfiles: https://github.com/thoughtbot/rcm
- Repository manager: https://myrepos.branchable.com
- Terminal emulator: https://sw.kovidgoyal.net/kitty
- Navigation: https://github.com/ajeetdsouza/zoxide
- Prompt: https://github.com/starship/starship
- Fuzzy find: https://github.com/junegunn/fzf
- Theme builder: https://terminal.sexy
- Shell: https://fishshell.com

## node

If you're getting a [node version mismatch warning from nodenv](https://github.com/nodenv/nodenv/issues/108), run the following:

```
npm config set scripts-prepend-node-path auto
```

## xcode

If any node modules have trouble building because they can't find xcode, follow the instructions [here](https://github.com/nodejs/node-gyp/blob/master/macOS_Catalina.md#installation-notes-for-macos-catalina-v1015).
