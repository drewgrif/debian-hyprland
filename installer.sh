#!/usr/bin/env bash

# Hyprland dependencies
bash ~/debian-hyprland/resources/01-dependencies
bash ~/debian-hyprland/resources/02-waypackages

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus
bash ~/debian-hyprland/resources/nerdfonts.sh

# rofi wayland
bash ~/debian-hyprland/resources/03-rofi-wayland

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# SDDM
sudo apt install --no-install-recommends -y sddm

# nwg-look
bash ~/debian-hyprland/resources/04-nwg-look

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
