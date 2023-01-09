" remove annoying beep
set belloff=all

" set encoding
set encoding=utf-8 fileencodings=

" enable syntax highlighting
syntax on

" set numbers on the left
set number

" set line at 80 char
set cc=80

" indentation
set autoindent
set smartindent

" set tab size
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" custom shotcuts
let mapleader="\<Space>"
nnoremap <Space> <nop>
nnoremap <Leader>f :Explore<CR>
nnoremap <Leader>w :w<CR>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
nnoremap <leader>n :NERDTreeFocus<CR>

" reduce latency when escaping
set ttimeoutlen=10

" makefiles settings
autocmd Filetype make setlocal noexpandtab

packadd termdebug

set backspace=indent,eol,start

" PLUGINS
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

" Plugin list:
Plugin 'jonathanfilip/vim-lucius'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'frazrepo/vim-rainbow'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Color scheme
set background=dark
colorscheme lucius

" Rainbow parenthesis
let g:rainbow_active = 1
