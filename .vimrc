" ================================
" Welcome to Ajinkya's vimrc file
" ================================

" --------------------------------
" Plugins
" --------------------------------
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

call plug#end()


" --------------------------------
" Plugin settings
" --------------------------------

let g:airline_powerline_fonts = 1

set bg=dark
colorscheme gruvbox
let g:airline_theme='gruvbox'

"rainbow Plugin Options (luochen1990/rainbow)
let g:rainbow_active = 1    " 0 if you want to enable it later via :RainbowToggle


" --------------------------------
" Basic stuff
" --------------------------------

set autoread        " Auto load files if they change on disc

set spelllang=en_us

set backspace=indent,eol,start " Backspace over autoindent, line breaks, start of insert

" Disable swap files
set noswapfile

set colorcolumn=80  " Colour at column 80

set number          " Line numbers
set relativenumber  " Relative line numbers

" Tab size
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Search settings
set hlsearch        " Highlight whole word when searching
set ignorecase      " Ignore case when searching...
set smartcase       " ...except when serach query contains a capital letter
set incsearch       " Show search results as you type

" --------------------------------
" Mappings 
" --------------------------------

let mapleader = " " " Set leader to spacebar 
let maplocalleader = "\\" " Set localleader to \

" Disable highlight when <leader><cr> is pressed
nnoremap <silent> <leader><ESC> :noh<cr>

" Open and source $MYVIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Copy/Paste from system clipboard
nnoremap <Leader>p :set paste<CR><esc>"*]p:set nopaste<cr>
vnoremap <Leader>y "+y 

" Pasting - indent last pasted
nnoremap gz '[='] 

" write/exit
nnoremap <Leader><Leader> :w<CR>
inoremap jj <ESC>:w<CR>
inoremap jk <ESC> 

" Capitalize last word
inoremap <c-u> <ESC>gUiwea

" --------------------------------
" Splits 
" --------------------------------

" Open new splits to right and bottom 
set splitbelow
set splitright

" Open current file in a new vertical split with '='
nnoremap = :vsplit<cr>

" Easy split navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" --------------------------------
" Disable keys
" --------------------------------

" Disable arrow keys in Escape mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
