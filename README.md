# .dotfiles

## installation

```fish
sudo apt install build-essential fzf unzip cmake libncurses5-dev
echo ".dotfiles" > .gitignore
git clone git@github.com:andyleclair/.dotfiles.git  ~/.dotfiles
source ~/.dotfiles/.config/fish/functions/config.fish
config status
config checkout

```
