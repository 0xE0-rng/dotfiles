scriptencoding utf-8
set encoding=utf-8

set mouse=a
filetype plugin indent on

" ignores for ctrl p and vim
set wildignore+=*/tmp/*,*.mp3*,*.ldb,*.so,*.swp,*.pdf,*.zip,*.cache,*/node_modules/*,*.rawproto,*/build/intermediates/*

set scrolloff=2 "2 lines scrolling space
set linebreak "dont break between words

set clipboard^=unnamedplus "everything to default clipborad

" buffer switching imporved
se nostartofline "remember line

" Save current view settings on a per-window, per-buffer basis.
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

" Restore current view settings.
function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction

" When switching buffers, preserve window view.
if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
  endif

"searching
set hlsearch
set ignorecase " ignore case
set smartcase
" remove highlight
nnoremap <silent> \ :noh<return>

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



" tabbing
set tabstop=2 shiftwidth=2 expandtab

"retab on save
if has("autocmd")
  au BufReadPost * if &modifiable | retab | endif
endif
" remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e


"local undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

nnoremap <F5> :UndotreeToggle<cr>

"
" Plugins
"
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline' "statusline
Plug 'vim-airline/vim-airline-themes' "themes
Plug 'ctrlpvim/ctrlp.vim' "fuzzi finder
Plug 'sheerun/vim-polyglot' "language packs
Plug 'mileszs/ack.vim' "ag integration
Plug 'mbbill/undotree' "undo tree visualizer
Plug 'tpope/vim-commentary' "uncommend with gcc
Plug 'tpope/vim-vinegar' "improvements for netrw
Plug 'junegunn/vim-easy-align' "align around chrs
Plug 'ludovicchabant/vim-gutentags' " ctags manager
Plug 'christoomey/vim-tmux-navigator' "tmux = vim splits
Plug 'https://github.com/tpope/vim-fugitive.git' "Git
if has('nvim') "deoplete
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'deoplete-plugins/deoplete-jedi' "python deoplete
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'w0rp/ale'
Plug 'ayu-theme/ayu-vim' " ayu color scheme
" linter
Plug 'nvie/vim-flake8' "python
call plug#end()


"Plugins config
"vim-flake-8 python linter
" autocmd BufWritePost *.py call flake8#Flake8()
"
" airline
let g:airline_extensions = []
let g:airline_highlighting_cache = 1
" CTRLP
let mapleader = ","
nnoremap <silent> <leader>f :CtrlP<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>
let g:ctrlp_max_depth=40
let g:ctrlp_max_files=0
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] "ignore files in .gitignore

"syntastic
let g:ale_linters = {'javascript': ['eslint']}

"easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" deoplete
let g:deoplete#enable_at_startup = 1

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" visuals
set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces
set nu "line numbers
set cursorline
"style theme
set guifont=Source\ Code\ Pro\ for\ Powerline:h16
set termguicolors
" colorscheme tango-dark
let ayucolor="mirage"
colorscheme ayu

"styling let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
syntax on
set termguicolors
