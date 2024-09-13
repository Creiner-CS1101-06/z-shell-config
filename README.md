# z-shell-config
Configuration files for the zsh terminal for my students
## Updating your already installed configuration
#### Mac-OS Users
First, double check your home folder (i.e. `/home/user/` where user is your user name) and make sure there is no folder titled 'z-shell-config'. If there is, delete it. Then copy and paste the following into the terminal
```sh
git clone https://github.com/Creiner-CS1101-06/z-shell-config.git ~
if [ -f ~/.zshrc ] && rm ~/.zshrc
cp "~/z-shell-config/zshrc(mac-os)" ~/.zshrc
if [ -f ~/.config/starship.toml ] && rm ~/.config/starship.toml
cp "~/z-shell-config/starship.toml" ~/.config/starship.toml
source ~/.zshrc  
```

#### Windows/WSL/Linux Users
First, double check your home folder (i.e. `/home/user/` where user is your user name) and make sure there is no folder titled 'z-shell-config'. If there is, delete it. Then copy and paste the following into the terminal
```sh
git clone https://github.com/Creiner-CS1101-06/z-shell-config.git ~
if [ -f ~/.zshrc ] && rm ~/.zshrc
cp "~/z-shell-config/zshrc(windows)" ~/.zshrc
if [ -f ~/.config/starship.toml ] && rm ~/.config/starship.toml
cp "~/z-shell-config/starship.toml" ~/.config/starship.toml
source ~/.zshrc  
```

## Installation

#### Mac-OS Users
Copy and paste the following into the terminal
```sh
if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Add Homebrew to the PATH for the current session
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew install git zsh-syntax-highlighting zsh-autosuggestions starship
mkdir ~/temp-files
git clone https://github.com/Creiner-CS1101-06/z-shell-config.git ~/temp-files
touch ~/.zshrc
mv ~/.zshrc ~/.zshrc.bak
mv ~/temp-files/zshrc(mac-os) ~/.zshrc
mkdir ~/.config
mv ~/temp-files/starship.toml ~/.config
rm -r ~/temp-files
rmdir ~/temp-files
source ~/.zshrc
```

#### Windows-WSL/Linux Users
Copy and paste the following into the terminal (**this assumes you have installed zsh already**)
```sh
sudo apt install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
curl -sS https://starship.rs/install.sh | sh
mkdir ~/temp-files
git clone https://github.com/Creiner-CS1101-06/z-shell-config.git ~/temp-files
touch ~/.zshrc
mv ~/.zshrc ~/.zshrc.bak
mv ~/temp-files/zshrc(windows) ~/.zshrc
mkdir ~/.config
mv ~/temp-files/starship.toml ~/.config
rm -r ~/temp-files
rmdir ~/temp-files
source ~/.zshrc
```
