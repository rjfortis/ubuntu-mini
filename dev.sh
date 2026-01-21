#!/bin/bash

curl -fsSL https://fnm.vercel.app/install | bash
sleep 0.5
export PATH="$HOME/.local/share/fnm:$PATH"
eval "$(fnm env)"
fnm install --lts
sleep 0.5

mkdir -p ~/Applications
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage -O ~/Applications/nvim.appimage
chmod +x ~/Applications/nvim.appimage
sudo ln -sf ~/Applications/nvim.appimage /usr/local/bin/nvim
sleep 0.5

mkdir -p ~/.config/nvim/lua/config
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
sleep 0.5
curl -o ~/.config/nvim/lua/config/keymaps.lua https://raw.githubusercontent.com/rjfortis/ubuntu-mini/main/nvim/keymaps.lua
sleep 0.5

curl -f https://zed.dev/install.sh | sh
sleep 0.5

git config --global user.email "rjfortisdev@gmail.com"
git config --global user.name "Ricardo Fortis"
sleep 0.5

# Manual Steps Reminder
echo ""
echo "=========================================================="
echo "MANUAL STEPS REQUIRED:"
echo "Generate SSH Key: ssh-keygen -t ed25519 -C \"rjfortisdev@gmail.com\""
echo "Add the public key to your GitHub account"
echo "cat ~/.ssh/id_ed25519.pub"
echo "=========================================================="
