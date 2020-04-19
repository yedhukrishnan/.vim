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
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'tpope/vim-endwise'
Plug 'tpope/vim-sensible'
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plug 'airblade/vim-gitgutter'
"Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'ajmwagar/vim-deus'

""" End of Plugins
call plug#end()

set secure
set hidden "switch buffer without saving

""" Themes
" airline theme
let g:airline_theme='deus'

" Vim colorscheme.
" See colors directory for all available themes
"colorscheme spacecamp
colorscheme deus

syntax enable
" End Themes

set expandtab
set shiftwidth=2
set tabstop=2
set history=1000

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

" Remap %:h to access files in current directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Enable vim-airline on start
set laststatus=2

" Use space as the leader
let mapleader = " "

"Shortcuts
nmap <leader>ne :NERDTree<cr>
nmap <leader>nf :NERDTreeFind<cr>
nmap <leader>p :Files<cr>
nmap <leader>. :Clap files<cr>

""" Aliases
cabbrev ag Ag
cabbrev Vsplit vsplit

autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespace on save

let g:ctrlp_working_path_mode = 'ra'

" Mapping buffer cycle keys
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Learn the hard way! No arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

syntax on
filetype plugin indent on

set nocompatible
filetype plugin on
runtime macros/matchit.vim

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
set foldnestmax=20
set foldlevel=2
set foldlevelstart=20
"""

set encoding=utf8
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
