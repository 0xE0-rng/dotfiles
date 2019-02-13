set scrolloff=2
set linebreak "dont break between words
set autoread
set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces
"searching
set hlsearch
set smartcase
nnoremap <silent> \ :noh<return>
"line numbers
set nu
"set relativenumber
set mouse=a
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab

"retab on save
if has("autocmd")
  au BufReadPost * if &modifiable | retab | endif
endif
" remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e



"Plugins
let mapleader = ","
nnoremap <silent> <leader>f :CtrlP<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>
let g:ctrlp_max_files=0
"let g:ctrlp_max_depth=40


"style theme
set guifont=Source\ Code\ Pro\ for\ Powerline:h16
colorscheme tango-dark

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

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
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
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
