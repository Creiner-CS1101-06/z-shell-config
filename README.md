# z-shell-config
Configuration files for the zsh terminal for my students
## Installation
For Mac OS users, copy and paste the following into the terminal (**this assumes you have brew installed already**)

```sh
brew install git zsh-syntax-highlighting zsh-autosuggestions starship
mkdir ~/temp-files
git clone https://github.com/Creiner-CS1101-06/z-shell-config.git ~/temp-files
touch ~/.zshrc
mv ~/.zshrc ~/.zshrc.bak
mv ~/temp-files/zshrc(mac-os) ~/.zshrc
mkdir ~/.config
mv ~/temp-files/starship.toml ~/.config
rm -r ~/temp-files/*
rmdir ~/temp-files
source ~/.zshrc
```

