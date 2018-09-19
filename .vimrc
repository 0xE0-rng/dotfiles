set scrolloff=2
set linebreak "dont break between words
set autoread
set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces
"searching
set hlsearch
set smartcase

"line numbers
set nu
set relativenumber
set mouse=a
"only search case sensetive if capital letter
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab

if has("autocmd") 
  au BufReadPost * if &modifiable | retab | endif
endif

"plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline' "statusline
Plug 'vim-airline/vim-airline-themes' "themes
Plug 'ctrlpvim/ctrlp.vim' "fuzzi finder
Plug 'sheerun/vim-polyglot' "language packs
Plug 'mileszs/ack.vim' "ag integration
Plug 'mbbill/undotree' "undo tree visualizer
Plug 'tpope/vim-commentary' "uncommend with gcc
Plug 'tpope/vim-vinegar' "improvements for netrw
call plug#end()

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"styling let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
syntax on

"local undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

nnoremap <F5> :UndotreeToggle<cr>
