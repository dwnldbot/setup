#!/bin/bash

### Setup powerline fonts
#git clone https://github.com/powerline/fonts.git
#bash ./fonts/install.sh
#rm -rf ./fonts

# Setup folder structure
mkdir -p ~/.vim/autoload ~/.vim/bundle
mkdir -p ~/.vim/files/backup
mkdir -p ~/.vim/files/swap
mkdir -p ~/.vim/files/undo
mkdir -p ~/.vim/files/info
mkdir -p ~/.vim/syntax
mkdir -p ~/.vimwiki

# Setup plugins
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
#git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
#git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

# Copy files
cp ./vimrc ~/.vim/vimrc
cp ./python.vim ~/.vim/syntax/python.vim
