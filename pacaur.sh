#!/bin/bash

## cower
gpg --recv-keys 1EB2638FF56C0C53
git clone https://aur.archlinux.org/cower.git
mv ./cower/PKGBUILD ./
makepkg -si ./PKGBUILD

## pacaur
git clone https://aur.archlinux.org/pacaur.git
mv ./pacaur/PKGBUILD ./
makepkg -si ./PKGBUILD

pacaur -S cower pacaur

rm -rf ./cower ./pacaur ./PKGBUILD
