syntax on
filetype plugin indent on

" Plugin
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'terryma/vim-multiple-cursors'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'

call plug#end()

" Display
set number
set relativenumber
set mouse=a
set ruler
set cursorline

" Theme
colorscheme material-monokai
set noshowmode
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ }

" Indent
set smartindent
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start

" Fold
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Search
set incsearch
set hlsearch
set showmatch
nnoremap <silent> <F1> :nohl<CR>

" Brackets
inoremap {<CR>  {<CR>}<Esc>O
" inoremap [  []<left>

" Pathogen
execute pathogen#infect()

" To navigate between splits
set splitbelow
set splitright
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

" To open NERDTree
nnoremap <silent> <C-T> :NERDTree<CR> <C-W><C-L>
let NERDTreeWinSize = 20

" To compile files
:let g:asyncrun_open = 8
nnoremap <silent> <F2> :w<CR> :AsyncRun make<CR>
nnoremap <silent> <F3> :w<CR> :AsyncRun gcc % -std=c99   -Wall<CR>
nnoremap <silent> <F4> :w<CR> :AsyncRun g++ % -std=c++14 -O2 -Wall<CR>
nnoremap <silent> <F5> :!clear && time ./a.out <CR>
nnoremap <silent> <F6> :w<CR> !clear && python3 % <CR>

" To comment with NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

