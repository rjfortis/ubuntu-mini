#!/bin/bash

mkdir -p ~/.config/i3
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/picom
mkdir -p ~/.config/dunst

cat <<EOF > ~/.config/i3/config
set \$mod Mod4

font pango:Inter 10

exec --always dex --autostart --environment i3
exec --always xss-lock -- i3lock -n
exec --always nm-applet
exec --always xfce4-power-manager
exec --always picom -b
exec --always feh --bg-fill /usr/share/backgrounds/ubuntu-default.wm.jpg
exec --always udiskie -t

bindsym \$mod+Return exec alacritty
bindsym \$mod+Shift+q kill
bindsym \$mod+d exec rofi -show run
bindsym \$mod+Shift+e exec i3-msg exit

bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +5%
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -5%
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle
bindsym XF86MonBrightnessUp exec brightnessctl set +10%
bindsym XF86MonBrightnessDown exec brightnessctl set 10%-

bindsym \$mod+h focus left
bindsym \$mod+j focus down
bindsym \$mod+k focus up
bindsym \$mod+l focus right

bindsym \$mod+Shift+r restart

bar {
        status_command i3status
        position top
}
EOF

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
