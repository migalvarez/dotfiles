set number
set relativenumber
set ruler
set backspace=indent,eol,start
set clipboard=unnamedplus
set background=dark
set spelllang=es_cl

" Search
set ignorecase
set nohlsearch
set incsearch


let mapleader =","


filetype plugin on

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim'
"Plug 'vim-pandoc/vim-rmarkdown'
"Plug 'vim-pandoc/vim-pandoc'
Plug 'jvirtanen/vim-octave'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'PotatoesMaster/i3-vim-syntax' 
Plug 'tpope/vim-surround'
call plug#end()

syntax on
colo default
syntax enable
vnoremap <C-c> "+y

set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab
set ai "auto indent
set si "smart indent
set wrap "wrap lines

set t_Co=256
set mouse=a
set nocompatible
set encoding=utf-8

let base16colorspace=256 

" Compiler
	map <leader>c :w! \| !compiler <c-r>%<CR>


" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set linebreak<CR>


nnoremap  <leader>p :exec '!python' shellescape(@%, 1)<cr>
hi Conceal NONE
