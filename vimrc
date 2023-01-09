" remove annoying beep
set belloff=all

" set encoding
set encoding=utf-8 fileencodings=

" enable syntax highlighting
syntax on

" Shows matching brackets
set showmatch 

" set visible trailing characters
set list listchars=tab:»\ ,trail:·

" set numbers on the left
set number

" set line at 80 char
set cc=80

" indentation
filetype plugin indent on
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

" c braces setup
inoremap {<CR> {<CR>}<Esc>ko

" reduce latency when escaping
set ttimeoutlen=10

" makefiles settings
autocmd Filetype make setlocal noexpandtab

" c files
autocmd BufRead,BufNewFile *.c,*.h setlocal cinoptions+=:0 " case statement indent fix
autocmd BufRead,BufNewFile *.c,*.h setlocal comments=s:/**,mb:**,ex:*/,s:/*,mb:**,ex:*/

packadd termdebug

set backspace=indent,eol,start

set nocompatible              " be iMproved, required
filetype off                  " required

" Plugin settings
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

" Plugin list:
Plugin 'nanotech/jellybeans.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'frazrepo/vim-rainbow'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Color scheme
colorscheme jellybeans

" Rainbow parenthesis
let g:rainbow_active = 1
