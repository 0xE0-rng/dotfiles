"searching
set hlsearch
set smartcase 

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
Plug 'sheerun/vim-polyglot'
call plug#end()

"styling 
let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
syntax on
