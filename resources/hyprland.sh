#!/usr/bin/env bash

cd ~/Downloads

git clone --recursive -b v0.35.0 "https://github.com/hyprwm/Hyprland"
cd Hyprland
make all
sudo make install

cd ..
rm -rf Hyprland
