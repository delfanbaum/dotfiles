" minimal vimrc for pulling in as needed

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
set termguicolors
hi clear LineNr
hi clear SpellBad
hi clear SpellCap
hi LineNr ctermfg=darkgrey
hi SpellBad cterm=underline ctermfg=red
hi SpellCap cterm=underline 

" cursor on insert
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" backspace because... 
set backspace=indent,eol,start

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

" begin non-minimal elements
" call plug#begin()
" Plug 'https://github.com/rhysd/committia.vim'
" call plug#end()
