execute pathogen#infect()
filetype plugin indent on
syntax enable
set t_Co=256
set background=dark
set encoding=utf-8
set laststatus=2
set tabstop=4
set shiftwidth=4
set number
set shellslash
set grepprg=grep\ -nH\ $*

let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'

imap jf <ESC>

let mapleader = "\<Space>"

nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>wq :wq <CR>
