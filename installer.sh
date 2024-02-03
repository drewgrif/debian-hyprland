#!/usr/bin/env bash


# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential \
    cmake \
    cmake-extras \
    curl \
    gettext \
    gir1.2-graphene-1.0 \
    git \
    glslang-tools \
    gobject-introspection \
    golang \
    hwdata \
    jq \
    libavcodec-dev \
    libavformat-dev \
    libavutil-dev \
    libcairo2-dev \
    libdeflate-dev \
    libdisplay-info-dev \
    libdrm-dev \
    libegl1-mesa-dev \
    libgbm-dev \
    libgdk-pixbuf-2.0-dev \
    libgdk-pixbuf2.0-bin \
    libgirepository1.0-dev \
    libgl1-mesa-dev \
    libgraphene-1.0-0 \
    libgraphene-1.0-dev \
    libgtk-3-dev \
    libgulkan-0.15-0 \
    libgulkan-dev \
    libinih-dev \
    libinput-dev \
    libjbig-dev \
    libjpeg-dev \
    libjpeg62-turbo-dev \
    liblerc-dev \
    libliftoff-dev \
    liblzma-dev \
    libnotify-bin \
    libpam0g-dev \
    libpango1.0-dev \
    libpipewire-0.3-dev \
    libqt6svg6 \
    libseat-dev \
    libstartup-notification0-dev \
    libswresample-dev \
    libsystemd-dev \
    libtiff-dev \
    libtiffxx6 \
    libudev-dev \
    libvkfft-dev \
    libvulkan-dev \
    libvulkan-volk-dev \
    libwayland-dev \
    libwebp-dev \
    libxcb-composite0-dev \
    libxcb-cursor-dev \
    libxcb-dri3-dev \
    libxcb-ewmh-dev \
    libxcb-icccm4-dev \
    libxcb-present-dev \
    libxcb-render-util0-dev \
    libxcb-res0-dev \
    libxcb-util-dev \
    libxcb-xinerama0-dev \
    libxcb-xinput-dev \
    libxcb-xkb-dev \
    libxkbcommon-dev \
    libxkbcommon-x11-dev \
    libxkbregistry-dev \
    libxml2-dev \
    libxxhash-dev \
    meson \
    ninja-build \
    openssl \
    psmisc \
    python3-mako \
    python3-markdown \
    python3-markupsafe \
    python3-yaml \
    qt6-base-dev \
    scdoc \
    seatd \
    spirv-tools \
    vulkan-validationlayers \
    vulkan-validationlayers-dev \
    wayland-protocols \
    xdg-desktop-portal \
    xwayland \

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

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa


# Packages needed for window manager installation
sudo apt install -y picom rofi dunst libnotify-bin unzip 


########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

bash ~/bookworm-scripts/resources/nerdfonts.sh

\cp ~/bookworm-scripts/resources/.bashrc ~


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
