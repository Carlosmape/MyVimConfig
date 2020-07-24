set number
set clipboard=unnamed
syntax enable
set showcmd
set encoding=utf8
set relativenumber
set mouse=a
set showmatch

" PHP syntax
let php_parent_error_close = 1  
let php_parent_error_open = 1
let php_htmlInStrings = 1
let php_sql_query = 1

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

colorscheme gruvbox

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>