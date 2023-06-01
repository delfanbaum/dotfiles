" vimrc for a-shell (and mini)

" environment defaults
syntax on
set nocompatible
set number
set encoding=utf-8
set splitright
set splitbelow
set scrolloff=5
set clipboard=unnamed

" tab things
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" search
set ignorecase
set smartcase
set hlsearch
set wrapscan
set mouse=nv

" escape clear search
noremap <CR> :noh<CR><CR> 

" poor habits helper
:command W w

" prose
set spell
set spelllang=en
set spellsuggest=best,5
set wrap
set linebreak

" color things
colorscheme onedark

" cursor on insert
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" key mappings for movement
noremap <silent> 0 g0
noremap <silent> $ g$
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk