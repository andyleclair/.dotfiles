# .dotfiles

## installation

```fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
curl https://rtx.pub/install.sh | sh
sudo apt install jq build-essential fzf unzip cmake libncurses5-dev autoconf m4 libwxgtk3.0-gtk3-dev libwxgtk-webview3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk
echo ".dotfiles" > .gitignore
git clone git@github.com:andyleclair/.dotfiles.git  ~/.dotfiles
source ~/.dotfiles/.config/fish/functions/config.fish
config status
config checkout
tide configure
```
