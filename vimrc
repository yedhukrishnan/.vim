
"Choose color scheme: behelit
colorscheme behelit
syntax enable		     

" Spaces and Tabs
set expandtab       	  " tabs are spaces
set shiftwidth=2
set tabstop=2      	  " number of visual spaces per TAB

" UI Config
set number              " show line numbers
set showcmd             " show command in bottom bar
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching brackets/braces

" jk is escape
inoremap jk <esc>

" Enable vim-airline on start
set laststatus=2

" syntastic customizations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Change leader to ,
:let mapleader = ","

"Shortcuts
nmap <leader>ne :NERDTree<cr>
nmap <leader>p :CtrlP<cr>

"Learn the hard way! No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

execute pathogen#infect()
syntax on
filetype plugin indent on
