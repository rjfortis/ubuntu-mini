#!/bin/bash

mkdir -p ~/.config/i3
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/picom
mkdir -p ~/.config/dunst

curl -o ~/.config/i3/config https://raw.githubusercontent.com/rjfortis/ubuntu-mini/main/i3/config

cat <<EOF > ~/.xprofile
#!/bin/sh
xrandr --output Virtual-1 --mode 1920x1080
EOF

chmod +x ~/.xprofile

cat <<EOF > ~/.config/alacritty/alacritty.toml
[window]
opacity = 1.0

[font]
normal = { family = "Inter", style = "Regular" }
size = 11.0
EOF

cat <<EOF > ~/.config/picom/picom.conf
backend = "glx";
vsync = true;
fading = false;
shadow = false;
EOF

systemctl --user --now enable pipewire pipewire-pulse wireplumber
sudo systemctl set-default graphical.target
sudo systemctl enable lightdm
