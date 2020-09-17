syntax on
set modeline
set relativenumber
set expandtab
set updatetime=100
set tabstop=4
set shiftwidth=4
set number
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree' | 
    \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline'
Plug 'hzchirs/vim-material'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'frazrepo/vim-rainbow'
Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'mustache/vim-mustache-handlebars'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'easymotion/vim-easymotion'
call plug#end()

let g:rainbow_active = 1
colorscheme material
set smartindent
filetype indent on
autocmd BufRead,BufWritePre *.c normal gg=G
au BufReadPost *.ezt set syntax=html
au BufReadPost *.hbs set syntax=mustache

"VIM NerdTree autostart
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" nerdtree-git-plugin stuff
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " requires nerdfonts
let g:NERDTreeGitStatusShowIgnored = 1 " .gitignore files
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' 
let g:NERDTreeGitStatusShowClean = 1 
"let g:NERDTreeGitStatusConcealBrackets = 1 
set encoding=UTF-8

" vim rainbow 
let g:rainbow_active = 1
" vim floaterm
"unmap <C-n>
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
let g:NERDTreeShowHidden=1

" leader key
let mapleader=","
