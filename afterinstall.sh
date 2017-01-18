#!/bin/bash

pacman -Syu
pacman -S vim mutt git firefox xorg-server xorg-server-utils xorg-init arc-gtk-theme termite compton screenfetch feh sudo htop

+?lxappearance?

bash ./pacaur.sh

pacaur -S i3-gaps i3blocks
echo "exec i3" >> ~/.xinitrc


bash vim.sh


# Configs
# vim, mutt, xinitrc, Xresources (rofi), termite, i3
