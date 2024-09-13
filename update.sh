#!/bin/zsh

echo "Are you Mac-OS (m) or Windows/WSL/Linux (w)?"
read answer

git clone https://github.com/Creiner-CS1101-06/z-shell-config.git ~/z-shell-config

case "$answer" in
    [Mm]* )
        [ -f ~/.zshrc ] && rm ~/.zshrc
        echo "You have selected Mac-OS."
        cp ~/z-shell-config/zshrc\(mac-os\) ~/.zshrc
        ;;
    [Ww]* )
        [ -f ~/.zshrc ] && rm ~/.zshrc
        echo "You have selected Windows"
        cp ~/z-shell-config/zshrc\(windows\) ~/.zshrc
        ;;
    "alex" )
        [ -f ~/.config/zsh/.zshrc ] && rm ~/.config/zsh/.zshrc
        echo "You chose alex"
        cp ~/z-shell-config/zshrc.professor ~/.config/zsh/zsh.zshrc
        exit 1
        ;;
    *)
        echo "Invalid answer. Please run the script again and  either type the letter m if you are a Mac-OS user or w if you are a Windows/WSL/Linux user."
        exit 1
        ;;
esac

[ -f ~/.config/starship.toml ] && rm ~/.config/starship.toml
cp ~/z-shell-config/starship.toml ~/.config/starship.toml
source ~/.zshrc
rm -rf ~/z-shell-config
