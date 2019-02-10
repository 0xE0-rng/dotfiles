set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*.rawproto,*/build/intermediates/*

set scrolloff=2
set linebreak "dont break between words
set autoread
set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces

"searching
set hlsearch
set ignorecase " ignore case
set smartcase

nnoremap <silent> \ :noh<return>
"line numbers
set nu

set mouse=a
filetype plugin indent on


" tabbing
set tabstop=2 shiftwidth=2 expandtab
"retab on save
if has("autocmd")
  au BufReadPost * if &modifiable | retab | endif
endif
" remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e


"style theme
set guifont=Source\ Code\ Pro\ for\ Powerline:h16
colorscheme tango-dark



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
Plug 'junegunn/vim-easy-align'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()


"Plugins bindings
" CTRLP
let mapleader = ","
nnoremap <silent> <leader>f :CtrlP<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>

"easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:deoplete#enable_at_startup = 1

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
