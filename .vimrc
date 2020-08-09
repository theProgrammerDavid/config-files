syntax on
set modeline
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set number
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline'
Plug 'hzchirs/vim-material'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'frazrepo/vim-rainbow'


call plug#end()

let g:rainbow_active = 1
colorscheme material

