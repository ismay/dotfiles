# dotfiles

> "His gui is mindblowing.. [moves windows around a little] This system is insane, it's completely BSD based! Open source programming.. You don't see this in personal systems. I mean, outside of like San Francisco."

> https://www.youtube.com/watch?v=DNLB7bFA_U4

![screenshot](https://user-images.githubusercontent.com/7355199/115106617-20c20980-9f66-11eb-89c7-f71516501865.png)

## installation

- Generate a new ssh key: `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
- Add the ssh key to Github and Gitlab: `pbcopy < ~/.ssh/id_rsa.pub`
- Clone this repo `git clone git@github.com:ismay/dotfiles.git ~/.dotfiles`
- Run `./install.sh`
- Symlink dotfiles and build themes with `rcup rcrc && rcup`
- Update repositories with `mr update`

## useful links

- Using a single theme for all terminal utilities: https://jeffkreeftmeijer.com/vim-16-color
- Programming font gallery: https://www.programmingfonts.org
- Managing dotfiles: https://github.com/thoughtbot/rcm
- Icons cheat sheet: https://www.nerdfonts.com/cheat-sheet
- Repository manager: https://myrepos.branchable.com
- Terminal emulator: https://sw.kovidgoyal.net/kitty
- Navigation: https://github.com/ajeetdsouza/zoxide
- Prompt: https://github.com/starship/starship
- Fuzzy find: https://github.com/junegunn/fzf
- Theme builder: https://terminal.sexy
- Shell: https://fishshell.com

## xcode

If any node modules have trouble building because they can't find xcode, follow the instructions [here](https://github.com/nodejs/node-gyp/blob/master/macOS_Catalina.md#installation-notes-for-macos-catalina-v1015).
