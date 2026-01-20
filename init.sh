#!/bin/bash

sudo apt update

sudo apt install -y \
  xorg xinit lightdm lightdm-gtk-greeter \
  i3-wm i3status i3lock xss-lock \
  pipewire pipewire-audio-client-libraries pipewire-pulse pipewire-alsa wireplumber pavucontrol \
  alacritty rofi picom feh lxappearance arandr \
  thunar gvfs gvfs-backends udiskie thunar-archive-plugin tumbler \
  dunst libnotify-bin \
  firefox \
  flameshot viewnior xclip \
  brightnessctl xfce4-power-manager policykit-1-gnome \
  network-manager xdg-utils dbus-x11 xdg-desktop-portal-gtk \
  dex xdotool htop curl wget rsync zip unzip p7zip-full p11-kit libvulkan1 \
  fonts-dejavu fonts-font-awesome fonts-noto-color-emoji fonts-liberation fonts-ubuntu

sudo apt update && sudo apt install -y xdg-user-dirs spice-vdagent
xdg-user-dirs-update
