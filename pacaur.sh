#!/bin/bash

## cower
gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53
git clone https://aur.archlinux.org/cower.git
makepkg -si ./cower/PKGBUILD

## pacaur
git clone https://aur.archlinux.org/pacaur.git
makepkg -si ./pacaur/PKGBUILD

pacaur -S cower pacaur

rm -r ./cower ./pacaur
