#!/bin/zsh

git clone https://github.com/Creiner-CS1101-06/z-shell-config.git ~/z-shell-config
[ -f ~/.zshrc ] && rm ~/.zshrc
cp ~/z-shell-config/zshrc\(windows\) ~/.zshrc
[ -f ~/.config/starship.toml ] && rm ~/.config/starship.toml
cp ~/z-shell-config/starship.toml ~/.config/starship.toml
source ~/.zshrc
rm -rf ~/z-shell-config
