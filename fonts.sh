#!/bin/bash

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip

unzip JetBrainsMono.zip -d ~/JetBrainsMono

mkdir -p ~/.local/share/fonts

mv ~/JetBrainsMono/*.ttf ~/.local/share/fonts/

fc-cache -fv

rm JetBrainsMono.zip
rm -rf ~/JetBrainsMono
