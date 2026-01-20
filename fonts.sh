#!/bin/bash

FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip"

wget -q --show-progress "$URL" -O /tmp/jb.zip
unzip -o /tmp/jb.zip -d "$FONT_DIR"
rm /tmp/jb.zip

fc-cache -fv
