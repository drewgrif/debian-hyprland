#!/usr/bin/env bash

# Hyprland dependencies
bash ~/debian-hyprland/resources/01-dependencies
bash ~/debian-hyprland/resources/02-waypackages

# File Manager (thunar)
bash ~/debian-hyprland/resources/03-filemanager

# Install Hyprland
bash ~/debian-hyprland/resources/04-hyprland

# nwg-look
bash ~/debian-hyprland/resources/05-nwg-look

# fonts
bash ~/debian-hyprland/resources/06-fonts

# rofi wayland
bash ~/debian-hyprland/resources/07-rofi-wayland

# SDDM
bash ~/debian-hyprland/resources/08-login-manager


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
