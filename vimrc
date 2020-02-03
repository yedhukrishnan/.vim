call plug#begin('~/.vim/plugged')
""" Plugins
Plug 'scrooloose/nerdcommenter' " for better commenting
Plug '/usr/local/opt/fzf' " fzf - fuzzy finder
Plug 'junegunn/fzf.vim' " fzf - fuzzy finder
Plug 'tpope/vim-rails' " rails helpers for vim
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'vim-ruby/vim-ruby' " Ruby helpers for vim
Plug 'pangloss/vim-javascript' " Javascript highlighting
Plug 'mxw/vim-jsx' " JSX highlighting
Plug 'tpope/vim-surround' " Surround
Plug 'liuchengxu/vim-clap' " Interactive finder and dispatcher
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'slim-template/vim-slim'
Plug 'vim-python/python-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/goyo.vim' " distraction free mode
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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

set secure
set hidden "switch buffer without saving

""" Themes
" airline theme
let g:airline_theme='deus'
" Vim colorscheme.
" See colors directory for all available themes
colorscheme brogrammer
" colorscheme vendetta
" colorscheme jellybeans
" colorscheme adventurous

syntax enable
" End Themes

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

" Use space as the leader
let mapleader = " "

"Shortcuts
nmap <leader>ne :NERDTree<cr>
nmap <leader>p :Files<cr>
nmap <leader>. :Clap files<cr>

""" Aliases
cabbrev ag Ag
cabbrev Vsplit vsplit

autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespace on save

let g:ctrlp_working_path_mode = 'ra'

" Learn the hard way! No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

syntax on
filetype plugin indent on


" Move around panes easily
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTree settings
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
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

""" Line Numbering
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
""" End Line Numbering

" Always show 10 lines below the cursor at the bottom of the screen
set scrolloff=10

""" Folds
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2
"""
