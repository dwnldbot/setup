#!/bin/bash

# Update package repositories
pacman -Syu

# Install programs
pacman -S vim mutt git firefox xorg-server xorg-server-utils xorg-xinit arc-gtk-theme termite feh sudo htop alsa-utils mesa cmus polkit apvlv zip unzip

# Vim
bash ./vim.sh

# Configs
# mutt, termite, i3
cp Xresources .Xresources

# pacaur
bash ./pacaur.sh
pacaur -S i3-gaps i3blocks light
pacman -S i3lock

# i3
mkdir -p ~/.config/i3
cp -r ./i3/* ~/.config/i3
#TODO COPY i3blocklets
#TODO fontawesome
cp /etc/X11/xinit/xinitrc ~/.xinitrc
echo "exec i3" >> ~/.xinitrc

# Termite
mkdir -p ~/.config/termite
cp -r ./termite/* ~/.config/termite

# GTK
mkdir -p ~/.config/gtk-3.0
cp -r ./gtk-3.0/* ~/.config/gtk-3.0

# firmware
pacaur -S broadcom-wl-dkms aic94xx-firmware
mkinitcpio -p linux


useradd -m -g users -G wheel,games,power,optical,storage,scanner,lp,audio,video -s /bin/bash b0b
passwd b0b

# TODO SUDO

#alsa
echo -e "pcm.!default {\n\ttype hw\n\tcard Generic\n}\nctl.!default {\n\ttype hw\n\tcard Generic\n}" > /etc/asound.conf
echo -e "defaults.pcm.card 1\ndefaults.ctl.card 1" > ~/.asoundrc

