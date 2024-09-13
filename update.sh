#!/bin/zsh

git clone https://github.com/Creiner-CS1101-06/z-shell-config.git ~/z-shell-config
[ -f ~/.config/zsh/.zshrc ] && rm ~/.config/zsh/.zshrc
cp ~/z-shell-config/zshrc\(windows\) ~/.config/zsh/.zshrc
[ -f ~/.config/starship.toml ] && rm ~/.config/starship.toml
cp ~/z-shell-config/starship.toml ~/.config/starship.toml
source ~/.config/zsh/.zshrc
rm -rf ~/z-shell-config
