call plug#begin('~/.local/share/nvim/plugged/')
    Plug 'tpope/vim-fugitive'
    Plug 'nerdypepper/vim-colors-plain'
    Plug 'junegunn/goyo.vim'
    Plug 'rhysd/open-pdf.vim'
    Plug 'lervag/vimtex'
    Plug 'vimwiki/vimwiki'
"    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'derekelkins/agda-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

set background=dark " Set to dark for a dark variant
colorscheme plain

filetype plugin indent on
syntax on                           " Turn on syntax highlighting
set encoding=utf-8                  " Set encoding to utf-8
set autoindent                      " Turn on auto indentation
set expandtab                       " Expand tabs to spaces
set softtabstop=4                   " TAB becomes X spaces in Vim
set shiftwidth=4                    " Number of spaces for indentation
set shiftround
set shellslash

" Spell checking
set spell spelllang=en

" Folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Statusline
set laststatus=2
set statusline=%f\ \ %m\ \ %R%=%y\ \ %l/%L

" VimWiki
let g:vimwiki_list = [{'path': '~/.vimwiki/', 'path_html': '~/.vimwiki/.html/'}]


" Automatically use UTF-8 glyphs if available
"set conceallevel=2
"highlight Conceal guifg=fg guibg=bg


"VimTeX configuration
setlocal keywordprg=texdoc


" Enables to find matching brackets via % and g% 
let g:matchup_override_vimtex = 1

" Automatically inserts cloing braces
let g:vimtex_complete_close_braces = 1

" Enables recursive searching for bibliography files, slows down compilation
let g:vimtex_complete_recursive_bib = 1

" Gives autocompletion for citations
let g:vimtex_complete_recursive_bib = 1

" Makes sure that vim detects .tex files as LaTeX files
let g:tex_flavor = 'latex'

" Set latexmk options:
" unset continuous compilation mode
let g:vimtex_compiler_latexmk = {
    \ 'continuous' : 1,
    \}

" Set zathura as default viewer
let g:vimtex_view_method = 'zathura'

" Enables to go to source file of packages etc.
let vimtex_includeexpr = 1

""" Deoplete autocompletion, needs depplete (e.g. from Arch repos)
"let g:deoplete#enable_at_startup = 1
"
"" Initialize Deoplete
"if !exists('g:deoplete#omni#input_patterns')
"    let g:deoplete#omni#input_patterns = {}
"endif
"let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete
"
"" Make TAB-Key cycle through suggestions
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Highlight TODOs
augroup HiglightTODO
    autocmd!
    autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'TODO', -1)
augroup END


" Keybindings
imap jf <ESC>

let mapleader = "\<Space>"
let maplocalleader = mapleader

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>wq :wq <CR>
autocmd FileType python nnoremap <silent> <leader>e :w<CR>:!clear;python %<CR>
autocmd FileType python nnoremap <silent> <leader>i :w<CR>:!clear;python -i %<CR>

nnoremap <leader>g :Gstatus <CR>

