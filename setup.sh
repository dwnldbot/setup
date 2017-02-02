#!/bin/bash

# Update package repositories
pacman -Syu

# Install programs
pacman -S vim mutt git firefox xorg-server xorg-server-utils xorg-init arc-gtk-theme termite compton screenfetch feh sudo htop

# Vim
bash ./vim.sh

# Configs
# mutt, termite, i3
cp Xresources .Xresources

# pacaur
bash ./pacaur.sh
pacaur -S i3-gaps i3blocks

# i3
mkdir -p ~/.config/i3
cp -r ./i3/* ~/.config/i3
#TODO fontawesome
echo "exec i3" >> ~/.xinitrc

# Termite
mkdir -p ~/.config/termite
cp -r ./termite/* ~/.config/termite

# GTK
mkdir -p ~/.config/gtk-3.0
cp -r ./gtk-3.0/* ~/.config/gtk-3.0



