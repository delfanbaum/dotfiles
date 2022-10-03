" minimal vimrc for pulling in as needed

" environment defaults
syntax on
set nocompatible
set number
set encoding=utf-8
set splitright
set splitbelow
set scrolloff=3

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

" escape clear search
noremap <CR> :noh<CR><CR> 

" poor habits helper
:command W w

" prose
set spell
set spelllang=en
set wrap
set linebreak

" color things
set t_co=16

hi clear SpellBad
hi clear SpellCap
hi SpellBad cterm=underline ctermfg=red
hi SpellCap cterm=underline 

hi clear LineNr
hi LineNr ctermfg=darkgrey

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

" cursor on insert
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

