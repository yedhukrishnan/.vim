set exrc

" colorscheme vendetta
" colorscheme jellybeans
" colorscheme brogrammer
colorscheme blackbeauty
syntax enable

set expandtab
set shiftwidth=2
set tabstop=2

set number              " show line numbers
set showcmd             " show command in bottom bar
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching brackets/braces
set ic                  " ignore case while searching
set incsearch
set hlsearch
set backspace=indent,eol,start

" jk is escape
inoremap jk <esc>

" Enable vim-airline on start
set laststatus=2

:let mapleader = ","

"Shortcuts
nmap <leader>ne :NERDTree<cr>
nmap <leader>p :CtrlPMixed<cr>

let g:ctrlp_working_path_mode = 'ra'

"Learn the hard way! No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd BufWritePre * StripWhitespace

" Split windows easily
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
