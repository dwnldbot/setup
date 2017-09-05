set nocompatible
execute pathogen#infect()
filetype plugin indent on
syntax on
set encoding=utf-8
set number
set t_Co=256

set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
set shellslash
set grepprg=grep\ -nH\ $*

set ttyfast
set lazyredraw

set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo ='100,n$HOME/.vim/files/info/viminfo

set laststatus=2

" plugin settings

"let g:lightline = {'colorscheme': 'wombat',}
let g:vimwiki_list = [{'path': '~/.vimwiki/', 'path_html': '~/.vimwiki/.html/'}, {'path': '~/py/NeuronaleNerdse/wiki/', 'path_html': '~/py/NeuronaleNerdse/wiki/html/'}]


" minimalist statusline
set statusline=%f\ \ %m\ \ %R%=%{&ff}\ \|\ %Y\ \|\ %l/%L


" key mappings

imap jf <ESC>

let mapleader = "\<Space>"

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>wq :wq <CR>
autocmd FileType python nnoremap <silent> <leader>e :w<CR>:!clear;python %<CR>
autocmd FileType python nnoremap <silent> <leader>i :w<CR>:!clear;python -i %<CR>

" colors

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif


"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=NONE ctermfg=189 ctermbg=235 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#2b3b3e guibg=#00bd4c guisp=#00bd4c gui=NONE ctermfg=237 ctermbg=35 cterm=NONE
hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#2b3b3e guibg=#536991 guisp=#536991 gui=NONE ctermfg=237 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi Typedef guifg=#637bac guibg=NONE guisp=NONE gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi Title guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=bold ctermfg=189 ctermbg=235 cterm=bold
hi Folded guifg=#2b3b3e guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=237 ctermbg=248 cterm=NONE
hi PreCondit guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi Include guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi Float guifg=#bbc1c3 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#2b3b3e guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=237 ctermbg=66 cterm=bold
hi NonText guifg=#75868b guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#bbc1c3 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=7 ctermbg=88 cterm=NONE
hi Debug guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#59ff5f guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi Conditional guifg=#2dfa53 guibg=NONE guisp=NONE gui=bold ctermfg=84 ctermbg=NONE cterm=bold
hi StorageClass guifg=#637bac guibg=NONE guisp=NONE gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi Todo guifg=#f9f9ff guibg=#009c2a guisp=#009c2a gui=NONE ctermfg=189 ctermbg=34 cterm=NONE
hi Special guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi LineNr guifg=#878783 guibg=NONE guisp=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#2b3b3e guibg=#00bd52 guisp=#00bd52 gui=bold ctermfg=237 ctermbg=35 cterm=bold
hi Label guifg=#d6ab00 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#2b3b3e guibg=#00bd52 guisp=#00bd52 gui=NONE ctermfg=237 ctermbg=35 cterm=NONE
hi Search guifg=#000000 guibg=#00bd42 guisp=#00bd42 gui=NONE ctermfg=NONE ctermbg=35 cterm=NONE
hi Delimiter guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi Statement guifg=#4fff69 guibg=NONE guisp=NONE gui=bold ctermfg=84 ctermbg=NONE cterm=bold
hi SpellRare guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Comment guifg=#75868b guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Character guifg=#bbc1c3 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#2b3b3e guibg=#00bd52 guisp=#00bd52 gui=bold ctermfg=237 ctermbg=35 cterm=bold
hi Number guifg=#56ff9f guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Boolean guifg=#bbc1c3 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi Operator guifg=#ff5043 guibg=NONE guisp=NONE gui=bold ctermfg=203 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLineFill guifg=#2b3b3e guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=237 ctermbg=66 cterm=bold
hi WarningMsg guifg=#bbc1c3 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=7 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#2b3b3e guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=237 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#192224 guisp=#192224 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#ffffff guibg=#192224 guisp=#192224 gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi Function guifg=#00d338 guibg=NONE guisp=NONE gui=bold ctermfg=41 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#2b3b3e guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=237 ctermbg=248 cterm=NONE
hi PreProc guifg=#b9bdb9 guibg=NONE guisp=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
hi Visual guifg=#2b3b3e guibg=#F9F9FF guisp=#F9F9FF gui=NONE ctermfg=237 ctermbg=189 cterm=NONE
hi MoreMsg guifg=#d6ab00 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi SpellCap guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit guifg=#2b3b3e guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=237 ctermbg=66 cterm=bold
hi Exception guifg=#d6ab00 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi Keyword guifg=#d6ab00 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi Type guifg=#637bac guibg=NONE guisp=NONE gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Cursor guifg=#2b3b3e guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=237 ctermbg=15 cterm=NONE
hi SpellLocal guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#bbc1c3 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=7 ctermbg=88 cterm=NONE
hi PMenu guifg=#1e2729 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi SpecialKey guifg=#75868b guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Constant guifg=#bbc1c3 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi Tag guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi String guifg=#1ef984 guibg=NONE guisp=NONE gui=NONE ctermfg=48 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi MatchParen guifg=#d6ab00 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi Repeat guifg=#d6ab00 guibg=NONE guisp=NONE gui=bold ctermfg=178 ctermbg=NONE cterm=bold
hi SpellBad guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Directory guifg=#637bac guibg=NONE guisp=NONE gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi Structure guifg=#637bac guibg=NONE guisp=NONE gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi Macro guifg=#d6ab00 guibg=NONE guisp=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
hi Underlined guifg=#f9f9ff guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLine guifg=#2b3b3e guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=237 ctermbg=66 cterm=bold
hi cursorim guifg=#2b3b3e guibg=#536991 guisp=#536991 gui=NONE ctermfg=237 ctermbg=60 cterm=NONE


