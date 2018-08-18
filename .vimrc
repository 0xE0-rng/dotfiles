"searching
set hlsearch
set smartcase 

syntax on
"line numbers
set nu
set mouse=a
"only search case sensetive if capital letter
filetype plugin indent on
set tabstop=2
set shiftwidth=2

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
