#!/usr/bin/env bash


# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# PACKAGE INCLUDES build-essential.
sudo apt install -y meson \
wget \
build-essential \
ninja-build \
cmake-extras \
cmake \
seatd 
libtomlplusplus3
libgbm-dev \
xwayland \
kitty \
scdoc \
vulkan-validationlayers \
vulkan-utility-libraries-dev \
wget \
gettext \
gettext-base \
fontconfig \
libfontconfig-dev \
libffi-dev \
libxml2-dev \
libdrm-dev \
libxkbcommon-x11-dev \
libxkbregistry-dev \
libxkbcommon-dev \
libpixman-1-dev \
libudev-dev \
libseat-dev \
libxcb-dri3-dev \
libvulkan-dev \
libvulkan-volk-dev \
libvkfft-dev \
libgulkan-dev \
libegl-dev \
libgles2 \
libegl1-mesa-dev \
glslang-tools \
libinput-bin \
libinput-dev \
libxcb-composite0-dev \
libavutil-dev \
libavcodec-dev \
libavformat-dev \
libxcb-ewmh2 \
libxcb-ewmh-dev \
libxcb-present-dev \
libxcb-icccm4-dev \
libxcb-render-util0-dev \
libxcb-res0-dev \
libxcb-xinput-dev \
libpango1.0-dev \
xdg-desktop-portal-wlr \
hwdata \
libsystemd-dev 

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/


# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo apt install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
