#!/bin/bash

mkdir -p ~/.config/i3 ~/.config/alacritty ~/.config/picom ~/.config/dunst
mkdir -p ~/Downloads ~/Documents ~/Pictures ~/Videos ~/Music ~/Desktop

curl -sL https://raw.githubusercontent.com/rjfortis/ubuntu-mini/main/fonts.sh | bash

curl -o ~/.config/i3/config https://raw.githubusercontent.com/rjfortis/ubuntu-mini/main/i3/config
curl -o ~/.config/alacritty/alacritty.toml https://raw.githubusercontent.com/rjfortis/ubuntu-mini/main/alacritty/alacritty.toml
curl -o ~/.config/picom/picom.conf https://raw.githubusercontent.com/rjfortis/ubuntu-mini/main/picom/picom.conf

cat <<EOF > ~/.xprofile
#!/bin/sh
xrandr --output Virtual-1 --mode 1920x1080
EOF
chmod +x ~/.xprofile

systemctl --user --now enable pipewire pipewire-pulse wireplumber
sudo systemctl set-default graphical.target
sudo systemctl enable lightdm

sudo timedatectl set-timezone America/El_Salvador
sudo timedatectl set-ntp true

sudo snap connect firefox:home
