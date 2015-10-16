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

execute pathogen#infect()
syntax on
filetype plugin indent on
