#!/bin/bash
git clone https://github.com/powerline/fonts.git
bash ./fonts/install.sh
rm -r ./fonts

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

cp ./vimrc ~/.vimrc
