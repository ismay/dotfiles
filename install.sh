#!/bin/bash

# Suppress welcome message
[ -f ~/.hushlogin ] && touch ~/.hushlogin

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Taps
brew tap homebrew/cask-fonts
brew tap thoughtbot/formulae

# Homebrew
brew install '1password'
brew install 'calibre'
brew install 'exa'
brew install 'fd'
brew install 'firefox'
brew install 'fish'
brew install 'fnm'
brew install 'font-ubuntu-mono-nerd-font'
brew install 'fzf'
brew install 'git'
brew install 'git-lfs'
brew install 'golang'
brew install 'google-chrome'
brew install 'kitty'
brew install 'mas'
brew install 'myrepos'
brew install 'rcm'
brew install 'ripgrep'
brew install 'soulseek'
brew install 'starship'
brew install 'sync'
brew install 'vim'
brew install 'zoxide'

# App store apps
# Affinity photo
mas install 824183456
# Affinity designer
mas install 824171161
# Affinity publisher
mas install 881418622
# Pages
mas install 409201541
# Numbers
mas install 409203825
# Keynote
mas install 409183694

# Create folders
mkdir ~/Projects
mkdir -p ~/.vim/undo ~/.vim/swap ~/.vim/backup

# Allow fish as default shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells

# Set fish as default shell
chsh -s /usr/local/bin/fish
