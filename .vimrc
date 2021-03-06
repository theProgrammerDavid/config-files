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
Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdcommenter'

Plug 'mustache/vim-mustache-handlebars'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'easymotion/vim-easymotion'

" FzF searcher
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Current Word
Plug 'dominikduda/vim_current_word'

" GLSL Highlighting
Plug 'tikhomirov/vim-glsl'
" web dev stuff 
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" COC auto-complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Super Tab
Plug 'ervandew/supertab'

call plug#end()

" Current Word Highlighting
" Twins of word under cursor:
let g:vim_current_word#highlight_twins = 1
" The word under cursor:
let g:vim_current_word#highlight_current_word = 1


" GLSL Highlighting 
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

" ALE Lint Stuff
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" Super Tab
let g:SuperTabDefaultCompletionType = "<c-n>" 

" js highlighting 
let g:javascript_plugin_jsdoc = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0

"end 
let g:rainbow_active = 1
colorscheme material
set smartindent
filetype indent on
autocmd BufRead,BufWritePre *.c normal gg=G
au BufReadPost *.ezt set syntax=html
au BufReadPost *.hbs set syntax=mustache
au BufReadPost *.ejs set syntax=html
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
"let g:NERDTreeGitStatusUntrackedFilesMode = 'all' 
let g:NERDTreeGitStatusShowClean = 1 
let g:NERDTreeGitStatusConcealBrackets = 1 
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

" Set Mouse
:set mouse=a

" Open NERDTree
nnoremap <C-w> :NERDTree<CR>
" FzF stuff
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

" NERDCommenter
" ------------------------------------------------------------------------------------------
filetype plugin on
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" -----------------------------------------------------------------------------


