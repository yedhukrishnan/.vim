call plug#begin('~/.vim/plugged')

""" Plugins
Plug 'scrooloose/nerdcommenter' " for better commenting
Plug '/usr/local/opt/fzf' " fzf - fuzzy finder
Plug 'junegunn/fzf.vim' " fzf - fuzzy finder
Plug 'tpope/vim-rails' " rails helpers for vim
" Plug 'tpope/vim-fugitive' " git commands for vim
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'vim-ruby/vim-ruby' " Ruby helpers for vim
Plug 'easymotion/vim-easymotion' " easy navigation through file
Plug 'pangloss/vim-javascript' " Javascript highlighting
Plug 'mxw/vim-jsx' " JSX highlighting
Plug 'tpope/vim-surround' " Surround
Plug 'liuchengxu/vim-clap' " Interactive finder and dispatcher
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'slim-template/vim-slim'
Plug 'vim-python/python-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-endwise'
Plug 'dense-analysis/ale'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-sensible'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/calendar.vim'

""" End of Plugins

call plug#end()

set exrc
set hidden "switch buffer without saving

""" airline theme
let g:airline_theme='deus'

"colorscheme vendetta
"colorscheme jellybeans
colorscheme brogrammer
"colorscheme adventurous
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
nmap <leader>p :Files<cr>
nmap <leader>. :Clap files<cr>

""" Aliases
cabbrev ag Ag
cabbrev Vsplit vsplit

autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespace on save

let g:ctrlp_working_path_mode = 'ra'

"Learn the hard way! No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

execute pathogen#infect()
syntax on
filetype plugin indent on


" Split windows easily
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTree settings
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" NERDTree Git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Change cursor in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set secure

""" Line numbering
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"""

""" Vim Sensible
set scrolloff=10
"""

""" Folds
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2
"""
